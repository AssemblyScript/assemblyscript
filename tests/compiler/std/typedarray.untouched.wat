(module
 (type $iiii_ (func (param i32 i32 i32 i32)))
 (type $_ (func))
 (type $i_ (func (param i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $ii (func (param i32) (result i32)))
 (type $iii_ (func (param i32 i32 i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iiF_ (func (param i32 i32 f64)))
 (type $FFi (func (param f64 f64) (result i32)))
 (type $iiF (func (param i32 i32) (result f64)))
 (type $iiiii (func (param i32 i32 i32 i32) (result i32)))
 (type $iiI_ (func (param i32 i32 i64)))
 (type $IIiiI (func (param i64 i64 i32 i32) (result i64)))
 (type $iiII (func (param i32 i32 i64) (result i64)))
 (type $iif_ (func (param i32 i32 f32)))
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
 (data (i32.const 624) "\0c\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 656) "p\02\00\00\03\00\00\00")
 (data (i32.const 664) "\1a\00\00\00T\00y\00p\00e\00E\00r\00r\00o\00r\00:\00 \00t\00a\00r\00g\00e\00t\00 \00i\00s\00 \00n\00u\00l\00l\00.\00")
 (data (i32.const 720) "\1a\00\00\00T\00y\00p\00e\00E\00r\00r\00o\00r\00:\00 \00s\00o\00u\00r\00c\00e\00 \00i\00s\00 \00n\00u\00l\00l\00.\00")
 (data (i32.const 776) "\10\00\00\00i\003\002\00[\00]\00 \00t\00e\00s\00t\00 \00f\00a\00i\00l\00s\00")
 (data (i32.const 816) "\1e\00\00\00S\00i\00m\00i\00l\00a\00r\00 \00T\00y\00p\00e\00d\00A\00r\00r\00a\00y\00 \00t\00e\00s\00t\00 \00f\00a\00i\00l\00s\00.\00")
 (data (i32.const 880) "\18\00\00\00F\00l\00o\00a\00t\003\002\00A\00r\00r\00a\00y\00 \00t\00e\00s\00t\00 \00f\00a\00i\00l\00s\00.\00")
 (data (i32.const 936) " \00\00\00R\00a\00n\00g\00e\00E\00r\00r\00o\00r\00:\00 \00O\00f\00f\00s\00e\00t\00 \00i\00s\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e\00.\00")
 (data (i32.const 1008) "\15\00\00\00a\00r\00r\00a\00y\00l\00i\00k\00e\00 \00t\00e\00s\00t\00 \00f\00a\00i\00l\00s\00.\00")
 (table $0 101 funcref)
 (elem (i32.const 0) $null $~lib/internal/sort/COMPARATOR<f64>~anonymous|1 $std/typedarray/testReduce<Int8Array,i8>~anonymous|2 $std/typedarray/testReduce<Uint8Array,u8>~anonymous|3 $std/typedarray/testReduce<Uint8ClampedArray,u8>~anonymous|4 $std/typedarray/testReduce<Int16Array,i16>~anonymous|5 $std/typedarray/testReduce<Uint16Array,u16>~anonymous|6 $std/typedarray/testReduce<Int32Array,i32>~anonymous|7 $std/typedarray/testReduce<Uint32Array,u32>~anonymous|8 $std/typedarray/testReduce<Int64Array,i64>~anonymous|9 $std/typedarray/testReduce<Uint64Array,u64>~anonymous|10 $std/typedarray/testReduce<Float32Array,f32>~anonymous|11 $std/typedarray/testReduce<Float64Array,f64>~anonymous|12 $std/typedarray/testReduceRight<Int8Array,i8>~anonymous|13 $std/typedarray/testReduceRight<Uint8Array,u8>~anonymous|14 $std/typedarray/testReduceRight<Uint8ClampedArray,u8>~anonymous|15 $std/typedarray/testReduceRight<Int16Array,i16>~anonymous|16 $std/typedarray/testReduceRight<Uint16Array,u16>~anonymous|17 $std/typedarray/testReduceRight<Int32Array,i32>~anonymous|18 $std/typedarray/testReduceRight<Uint32Array,u32>~anonymous|19 $std/typedarray/testReduceRight<Int64Array,i64>~anonymous|20 $std/typedarray/testReduceRight<Uint64Array,u64>~anonymous|21 $std/typedarray/testReduceRight<Float32Array,f32>~anonymous|22 $std/typedarray/testReduceRight<Float64Array,f64>~anonymous|23 $std/typedarray/testArrayMap<Int8Array,i8>~anonymous|24 $std/typedarray/testArrayMap<Uint8Array,u8>~anonymous|25 $std/typedarray/testArrayMap<Uint8ClampedArray,u8>~anonymous|26 $std/typedarray/testArrayMap<Int16Array,i16>~anonymous|27 $std/typedarray/testArrayMap<Uint16Array,u16>~anonymous|28 $std/typedarray/testArrayMap<Int32Array,i32>~anonymous|29 $std/typedarray/testArrayMap<Uint32Array,u32>~anonymous|30 $std/typedarray/testArrayMap<Int64Array,i64>~anonymous|31 $std/typedarray/testArrayMap<Uint64Array,u64>~anonymous|32 $std/typedarray/testArrayMap<Float32Array,f32>~anonymous|33 $std/typedarray/testArrayMap<Float64Array,f64>~anonymous|34 $std/typedarray/testArraySome<Int8Array,i8>~anonymous|35 $std/typedarray/testArraySome<Int8Array,i8>~anonymous|36 $std/typedarray/testArraySome<Uint8Array,u8>~anonymous|37 $std/typedarray/testArraySome<Uint8Array,u8>~anonymous|38 $std/typedarray/testArraySome<Uint8ClampedArray,u8>~anonymous|39 $std/typedarray/testArraySome<Uint8ClampedArray,u8>~anonymous|40 $std/typedarray/testArraySome<Int16Array,i16>~anonymous|41 $std/typedarray/testArraySome<Int16Array,i16>~anonymous|42 $std/typedarray/testArraySome<Uint16Array,u16>~anonymous|43 $std/typedarray/testArraySome<Uint16Array,u16>~anonymous|44 $std/typedarray/testArraySome<Int32Array,i32>~anonymous|45 $std/typedarray/testArraySome<Int32Array,i32>~anonymous|46 $std/typedarray/testArraySome<Uint32Array,u32>~anonymous|47 $std/typedarray/testArraySome<Uint32Array,u32>~anonymous|48 $std/typedarray/testArraySome<Int64Array,i64>~anonymous|49 $std/typedarray/testArraySome<Int64Array,i64>~anonymous|50 $std/typedarray/testArraySome<Uint64Array,u64>~anonymous|51 $std/typedarray/testArraySome<Uint64Array,u64>~anonymous|52 $std/typedarray/testArraySome<Float32Array,f32>~anonymous|53 $std/typedarray/testArraySome<Float32Array,f32>~anonymous|54 $std/typedarray/testArraySome<Float64Array,f64>~anonymous|55 $std/typedarray/testArraySome<Float64Array,f64>~anonymous|56 $std/typedarray/testArrayFindIndex<Int8Array,i8>~anonymous|57 $std/typedarray/testArrayFindIndex<Int8Array,i8>~anonymous|58 $std/typedarray/testArrayFindIndex<Uint8Array,u8>~anonymous|59 $std/typedarray/testArrayFindIndex<Uint8Array,u8>~anonymous|60 $std/typedarray/testArrayFindIndex<Uint8ClampedArray,u8>~anonymous|61 $std/typedarray/testArrayFindIndex<Uint8ClampedArray,u8>~anonymous|62 $std/typedarray/testArrayFindIndex<Int16Array,i16>~anonymous|63 $std/typedarray/testArrayFindIndex<Int16Array,i16>~anonymous|64 $std/typedarray/testArrayFindIndex<Uint16Array,u16>~anonymous|65 $std/typedarray/testArrayFindIndex<Uint16Array,u16>~anonymous|66 $std/typedarray/testArrayFindIndex<Int32Array,i32>~anonymous|67 $std/typedarray/testArrayFindIndex<Int32Array,i32>~anonymous|68 $std/typedarray/testArrayFindIndex<Uint32Array,u32>~anonymous|69 $std/typedarray/testArrayFindIndex<Uint32Array,u32>~anonymous|70 $std/typedarray/testArrayFindIndex<Int64Array,i64>~anonymous|71 $std/typedarray/testArrayFindIndex<Int64Array,i64>~anonymous|72 $std/typedarray/testArrayFindIndex<Uint64Array,u64>~anonymous|73 $std/typedarray/testArrayFindIndex<Uint64Array,u64>~anonymous|74 $std/typedarray/testArrayFindIndex<Float32Array,f32>~anonymous|75 $std/typedarray/testArrayFindIndex<Float32Array,f32>~anonymous|76 $std/typedarray/testArrayFindIndex<Float64Array,f64>~anonymous|77 $std/typedarray/testArrayFindIndex<Float64Array,f64>~anonymous|78 $std/typedarray/testArrayEvery<Int8Array,i8>~anonymous|79 $std/typedarray/testArrayEvery<Int8Array,i8>~anonymous|80 $std/typedarray/testArrayEvery<Uint8Array,u8>~anonymous|81 $std/typedarray/testArrayEvery<Uint8Array,u8>~anonymous|82 $std/typedarray/testArrayEvery<Uint8ClampedArray,u8>~anonymous|83 $std/typedarray/testArrayEvery<Uint8ClampedArray,u8>~anonymous|84 $std/typedarray/testArrayEvery<Int16Array,i16>~anonymous|85 $std/typedarray/testArrayEvery<Int16Array,i16>~anonymous|86 $std/typedarray/testArrayEvery<Uint16Array,u16>~anonymous|87 $std/typedarray/testArrayEvery<Uint16Array,u16>~anonymous|88 $std/typedarray/testArrayEvery<Int32Array,i32>~anonymous|89 $std/typedarray/testArrayEvery<Int32Array,i32>~anonymous|90 $std/typedarray/testArrayEvery<Uint32Array,u32>~anonymous|91 $std/typedarray/testArrayEvery<Uint32Array,u32>~anonymous|92 $std/typedarray/testArrayEvery<Int64Array,i64>~anonymous|93 $std/typedarray/testArrayEvery<Int64Array,i64>~anonymous|94 $std/typedarray/testArrayEvery<Uint64Array,u64>~anonymous|95 $std/typedarray/testArrayEvery<Uint64Array,u64>~anonymous|96 $std/typedarray/testArrayEvery<Float32Array,f32>~anonymous|97 $std/typedarray/testArrayEvery<Float32Array,f32>~anonymous|98 $std/typedarray/testArrayEvery<Float64Array,f64>~anonymous|99 $std/typedarray/testArrayEvery<Float64Array,f64>~anonymous|100)
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
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $std/typedarray/arr (mut i32) (i32.const 0))
 (global $std/typedarray/af64 (mut i32) (i32.const 0))
 (global $~lib/argc (mut i32) (i32.const 0))
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
 (global $std/typedarray/arrayLikeValue (mut i32) (i32.const 0))
 (global $std/typedarray/setSource (mut i32) (i32.const 656))
 (global $~lib/memory/HEAP_BASE i32 (i32.const 1056))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $start:~lib/allocator/arena (; 1 ;) (type $_)
  global.get $~lib/memory/HEAP_BASE
  i32.const 7
  i32.add
  i32.const 7
  i32.const -1
  i32.xor
  i32.and
  global.set $~lib/allocator/arena/startOffset
  global.get $~lib/allocator/arena/startOffset
  global.set $~lib/allocator/arena/offset
 )
 (func $~lib/internal/arraybuffer/computeSize (; 2 ;) (type $ii) (param $0 i32) (result i32)
  i32.const 1
  i32.const 32
  local.get $0
  i32.const 8
  i32.add
  i32.const 1
  i32.sub
  i32.clz
  i32.sub
  i32.shl
 )
 (func $~lib/allocator/arena/__memory_allocate (; 3 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.const 1073741824
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/allocator/arena/offset
  local.set $1
  local.get $1
  local.get $0
  local.tee $2
  i32.const 1
  local.tee $3
  local.get $2
  local.get $3
  i32.gt_u
  select
  i32.add
  i32.const 7
  i32.add
  i32.const 7
  i32.const -1
  i32.xor
  i32.and
  local.set $4
  current_memory
  local.set $5
  local.get $4
  local.get $5
  i32.const 16
  i32.shl
  i32.gt_u
  if
   local.get $4
   local.get $1
   i32.sub
   i32.const 65535
   i32.add
   i32.const 65535
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.shr_u
   local.set $2
   local.get $5
   local.tee $3
   local.get $2
   local.tee $6
   local.get $3
   local.get $6
   i32.gt_s
   select
   local.set $3
   local.get $3
   grow_memory
   i32.const 0
   i32.lt_s
   if
    local.get $2
    grow_memory
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $4
  global.set $~lib/allocator/arena/offset
  local.get $1
 )
 (func $~lib/internal/arraybuffer/allocateUnsafe (; 4 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 1073741816
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
   local.get $0
   call $~lib/internal/arraybuffer/computeSize
   local.set $2
   local.get $2
   call $~lib/allocator/arena/__memory_allocate
   br $~lib/memory/memory.allocate|inlined.0
  end
  local.set $1
  local.get $1
  local.get $0
  i32.store
  local.get $1
 )
 (func $~lib/internal/memory/memset (; 5 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  local.get $2
  i32.eqz
  if
   return
  end
  local.get $0
  local.get $1
  i32.store8
  local.get $0
  local.get $2
  i32.add
  i32.const 1
  i32.sub
  local.get $1
  i32.store8
  local.get $2
  i32.const 2
  i32.le_u
  if
   return
  end
  local.get $0
  i32.const 1
  i32.add
  local.get $1
  i32.store8
  local.get $0
  i32.const 2
  i32.add
  local.get $1
  i32.store8
  local.get $0
  local.get $2
  i32.add
  i32.const 2
  i32.sub
  local.get $1
  i32.store8
  local.get $0
  local.get $2
  i32.add
  i32.const 3
  i32.sub
  local.get $1
  i32.store8
  local.get $2
  i32.const 6
  i32.le_u
  if
   return
  end
  local.get $0
  i32.const 3
  i32.add
  local.get $1
  i32.store8
  local.get $0
  local.get $2
  i32.add
  i32.const 4
  i32.sub
  local.get $1
  i32.store8
  local.get $2
  i32.const 8
  i32.le_u
  if
   return
  end
  i32.const 0
  local.get $0
  i32.sub
  i32.const 3
  i32.and
  local.set $3
  local.get $0
  local.get $3
  i32.add
  local.set $0
  local.get $2
  local.get $3
  i32.sub
  local.set $2
  local.get $2
  i32.const -4
  i32.and
  local.set $2
  i32.const -1
  i32.const 255
  i32.div_u
  local.get $1
  i32.const 255
  i32.and
  i32.mul
  local.set $4
  local.get $0
  local.get $4
  i32.store
  local.get $0
  local.get $2
  i32.add
  i32.const 4
  i32.sub
  local.get $4
  i32.store
  local.get $2
  i32.const 8
  i32.le_u
  if
   return
  end
  local.get $0
  i32.const 4
  i32.add
  local.get $4
  i32.store
  local.get $0
  i32.const 8
  i32.add
  local.get $4
  i32.store
  local.get $0
  local.get $2
  i32.add
  i32.const 12
  i32.sub
  local.get $4
  i32.store
  local.get $0
  local.get $2
  i32.add
  i32.const 8
  i32.sub
  local.get $4
  i32.store
  local.get $2
  i32.const 24
  i32.le_u
  if
   return
  end
  local.get $0
  i32.const 12
  i32.add
  local.get $4
  i32.store
  local.get $0
  i32.const 16
  i32.add
  local.get $4
  i32.store
  local.get $0
  i32.const 20
  i32.add
  local.get $4
  i32.store
  local.get $0
  i32.const 24
  i32.add
  local.get $4
  i32.store
  local.get $0
  local.get $2
  i32.add
  i32.const 28
  i32.sub
  local.get $4
  i32.store
  local.get $0
  local.get $2
  i32.add
  i32.const 24
  i32.sub
  local.get $4
  i32.store
  local.get $0
  local.get $2
  i32.add
  i32.const 20
  i32.sub
  local.get $4
  i32.store
  local.get $0
  local.get $2
  i32.add
  i32.const 16
  i32.sub
  local.get $4
  i32.store
  i32.const 24
  local.get $0
  i32.const 4
  i32.and
  i32.add
  local.set $3
  local.get $0
  local.get $3
  i32.add
  local.set $0
  local.get $2
  local.get $3
  i32.sub
  local.set $2
  local.get $4
  i64.extend_i32_u
  local.get $4
  i64.extend_i32_u
  i64.const 32
  i64.shl
  i64.or
  local.set $5
  block $break|0
   loop $continue|0
    local.get $2
    i32.const 32
    i32.ge_u
    if
     block
      local.get $0
      local.get $5
      i64.store
      local.get $0
      i32.const 8
      i32.add
      local.get $5
      i64.store
      local.get $0
      i32.const 16
      i32.add
      local.get $5
      i64.store
      local.get $0
      i32.const 24
      i32.add
      local.get $5
      i64.store
      local.get $2
      i32.const 32
      i32.sub
      local.set $2
      local.get $0
      i32.const 32
      i32.add
      local.set $0
     end
     br $continue|0
    end
   end
  end
 )
 (func $~lib/memory/memory.allocate (; 6 ;) (type $ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/allocator/arena/__memory_allocate
  return
 )
 (func $~lib/internal/typedarray/TypedArray<i8>#constructor (; 7 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
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
  local.get $1
  i32.const 0
  i32.shl
  local.set $2
  local.get $2
  call $~lib/internal/arraybuffer/allocateUnsafe
  local.set $3
  block $~lib/memory/memory.fill|inlined.0
   local.get $3
   i32.const 8
   i32.add
   local.set $4
   i32.const 0
   local.set $5
   local.get $2
   local.set $6
   local.get $4
   local.get $5
   local.get $6
   call $~lib/internal/memory/memset
  end
  block (result i32)
   local.get $0
   i32.eqz
   if
    i32.const 12
    call $~lib/memory/memory.allocate
    local.set $0
   end
   local.get $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=8
   local.get $0
  end
  local.get $3
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.get $2
  i32.store offset=8
  local.get $0
 )
 (func $~lib/typedarray/Int8Array#constructor (; 8 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 12
   call $~lib/memory/memory.allocate
   local.set $0
  end
  local.get $0
  local.get $1
  call $~lib/internal/typedarray/TypedArray<i8>#constructor
  local.set $0
  local.get $0
 )
 (func $~lib/internal/typedarray/TypedArray<u8>#constructor (; 9 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
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
  local.get $1
  i32.const 0
  i32.shl
  local.set $2
  local.get $2
  call $~lib/internal/arraybuffer/allocateUnsafe
  local.set $3
  block $~lib/memory/memory.fill|inlined.1
   local.get $3
   i32.const 8
   i32.add
   local.set $4
   i32.const 0
   local.set $5
   local.get $2
   local.set $6
   local.get $4
   local.get $5
   local.get $6
   call $~lib/internal/memory/memset
  end
  block (result i32)
   local.get $0
   i32.eqz
   if
    i32.const 12
    call $~lib/memory/memory.allocate
    local.set $0
   end
   local.get $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=8
   local.get $0
  end
  local.get $3
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.get $2
  i32.store offset=8
  local.get $0
 )
 (func $~lib/typedarray/Uint8Array#constructor (; 10 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 12
   call $~lib/memory/memory.allocate
   local.set $0
  end
  local.get $0
  local.get $1
  call $~lib/internal/typedarray/TypedArray<u8>#constructor
  local.set $0
  local.get $0
 )
 (func $~lib/typedarray/Uint8ClampedArray#constructor (; 11 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 12
   call $~lib/memory/memory.allocate
   local.set $0
  end
  local.get $0
  local.get $1
  call $~lib/typedarray/Uint8Array#constructor
  local.set $0
  local.get $0
 )
 (func $~lib/internal/typedarray/TypedArray<i16>#constructor (; 12 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
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
  local.get $1
  i32.const 1
  i32.shl
  local.set $2
  local.get $2
  call $~lib/internal/arraybuffer/allocateUnsafe
  local.set $3
  block $~lib/memory/memory.fill|inlined.2
   local.get $3
   i32.const 8
   i32.add
   local.set $4
   i32.const 0
   local.set $5
   local.get $2
   local.set $6
   local.get $4
   local.get $5
   local.get $6
   call $~lib/internal/memory/memset
  end
  block (result i32)
   local.get $0
   i32.eqz
   if
    i32.const 12
    call $~lib/memory/memory.allocate
    local.set $0
   end
   local.get $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=8
   local.get $0
  end
  local.get $3
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.get $2
  i32.store offset=8
  local.get $0
 )
 (func $~lib/typedarray/Int16Array#constructor (; 13 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 12
   call $~lib/memory/memory.allocate
   local.set $0
  end
  local.get $0
  local.get $1
  call $~lib/internal/typedarray/TypedArray<i16>#constructor
  local.set $0
  local.get $0
 )
 (func $~lib/internal/typedarray/TypedArray<u16>#constructor (; 14 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
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
  local.get $1
  i32.const 1
  i32.shl
  local.set $2
  local.get $2
  call $~lib/internal/arraybuffer/allocateUnsafe
  local.set $3
  block $~lib/memory/memory.fill|inlined.3
   local.get $3
   i32.const 8
   i32.add
   local.set $4
   i32.const 0
   local.set $5
   local.get $2
   local.set $6
   local.get $4
   local.get $5
   local.get $6
   call $~lib/internal/memory/memset
  end
  block (result i32)
   local.get $0
   i32.eqz
   if
    i32.const 12
    call $~lib/memory/memory.allocate
    local.set $0
   end
   local.get $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=8
   local.get $0
  end
  local.get $3
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.get $2
  i32.store offset=8
  local.get $0
 )
 (func $~lib/typedarray/Uint16Array#constructor (; 15 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 12
   call $~lib/memory/memory.allocate
   local.set $0
  end
  local.get $0
  local.get $1
  call $~lib/internal/typedarray/TypedArray<u16>#constructor
  local.set $0
  local.get $0
 )
 (func $~lib/internal/typedarray/TypedArray<i32>#constructor (; 16 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
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
  local.get $1
  i32.const 2
  i32.shl
  local.set $2
  local.get $2
  call $~lib/internal/arraybuffer/allocateUnsafe
  local.set $3
  block $~lib/memory/memory.fill|inlined.4
   local.get $3
   i32.const 8
   i32.add
   local.set $4
   i32.const 0
   local.set $5
   local.get $2
   local.set $6
   local.get $4
   local.get $5
   local.get $6
   call $~lib/internal/memory/memset
  end
  block (result i32)
   local.get $0
   i32.eqz
   if
    i32.const 12
    call $~lib/memory/memory.allocate
    local.set $0
   end
   local.get $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=8
   local.get $0
  end
  local.get $3
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.get $2
  i32.store offset=8
  local.get $0
 )
 (func $~lib/typedarray/Int32Array#constructor (; 17 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 12
   call $~lib/memory/memory.allocate
   local.set $0
  end
  local.get $0
  local.get $1
  call $~lib/internal/typedarray/TypedArray<i32>#constructor
  local.set $0
  local.get $0
 )
 (func $~lib/internal/typedarray/TypedArray<u32>#constructor (; 18 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
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
  local.get $1
  i32.const 2
  i32.shl
  local.set $2
  local.get $2
  call $~lib/internal/arraybuffer/allocateUnsafe
  local.set $3
  block $~lib/memory/memory.fill|inlined.5
   local.get $3
   i32.const 8
   i32.add
   local.set $4
   i32.const 0
   local.set $5
   local.get $2
   local.set $6
   local.get $4
   local.get $5
   local.get $6
   call $~lib/internal/memory/memset
  end
  block (result i32)
   local.get $0
   i32.eqz
   if
    i32.const 12
    call $~lib/memory/memory.allocate
    local.set $0
   end
   local.get $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=8
   local.get $0
  end
  local.get $3
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.get $2
  i32.store offset=8
  local.get $0
 )
 (func $~lib/typedarray/Uint32Array#constructor (; 19 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 12
   call $~lib/memory/memory.allocate
   local.set $0
  end
  local.get $0
  local.get $1
  call $~lib/internal/typedarray/TypedArray<u32>#constructor
  local.set $0
  local.get $0
 )
 (func $~lib/internal/typedarray/TypedArray<i64>#constructor (; 20 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
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
  local.get $1
  i32.const 3
  i32.shl
  local.set $2
  local.get $2
  call $~lib/internal/arraybuffer/allocateUnsafe
  local.set $3
  block $~lib/memory/memory.fill|inlined.6
   local.get $3
   i32.const 8
   i32.add
   local.set $4
   i32.const 0
   local.set $5
   local.get $2
   local.set $6
   local.get $4
   local.get $5
   local.get $6
   call $~lib/internal/memory/memset
  end
  block (result i32)
   local.get $0
   i32.eqz
   if
    i32.const 12
    call $~lib/memory/memory.allocate
    local.set $0
   end
   local.get $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=8
   local.get $0
  end
  local.get $3
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.get $2
  i32.store offset=8
  local.get $0
 )
 (func $~lib/typedarray/Int64Array#constructor (; 21 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 12
   call $~lib/memory/memory.allocate
   local.set $0
  end
  local.get $0
  local.get $1
  call $~lib/internal/typedarray/TypedArray<i64>#constructor
  local.set $0
  local.get $0
 )
 (func $~lib/internal/typedarray/TypedArray<u64>#constructor (; 22 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
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
  local.get $1
  i32.const 3
  i32.shl
  local.set $2
  local.get $2
  call $~lib/internal/arraybuffer/allocateUnsafe
  local.set $3
  block $~lib/memory/memory.fill|inlined.7
   local.get $3
   i32.const 8
   i32.add
   local.set $4
   i32.const 0
   local.set $5
   local.get $2
   local.set $6
   local.get $4
   local.get $5
   local.get $6
   call $~lib/internal/memory/memset
  end
  block (result i32)
   local.get $0
   i32.eqz
   if
    i32.const 12
    call $~lib/memory/memory.allocate
    local.set $0
   end
   local.get $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=8
   local.get $0
  end
  local.get $3
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.get $2
  i32.store offset=8
  local.get $0
 )
 (func $~lib/typedarray/Uint64Array#constructor (; 23 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 12
   call $~lib/memory/memory.allocate
   local.set $0
  end
  local.get $0
  local.get $1
  call $~lib/internal/typedarray/TypedArray<u64>#constructor
  local.set $0
  local.get $0
 )
 (func $~lib/internal/typedarray/TypedArray<f32>#constructor (; 24 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
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
  local.get $1
  i32.const 2
  i32.shl
  local.set $2
  local.get $2
  call $~lib/internal/arraybuffer/allocateUnsafe
  local.set $3
  block $~lib/memory/memory.fill|inlined.8
   local.get $3
   i32.const 8
   i32.add
   local.set $4
   i32.const 0
   local.set $5
   local.get $2
   local.set $6
   local.get $4
   local.get $5
   local.get $6
   call $~lib/internal/memory/memset
  end
  block (result i32)
   local.get $0
   i32.eqz
   if
    i32.const 12
    call $~lib/memory/memory.allocate
    local.set $0
   end
   local.get $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=8
   local.get $0
  end
  local.get $3
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.get $2
  i32.store offset=8
  local.get $0
 )
 (func $~lib/typedarray/Float32Array#constructor (; 25 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 12
   call $~lib/memory/memory.allocate
   local.set $0
  end
  local.get $0
  local.get $1
  call $~lib/internal/typedarray/TypedArray<f32>#constructor
  local.set $0
  local.get $0
 )
 (func $~lib/internal/typedarray/TypedArray<f64>#constructor (; 26 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
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
  local.get $1
  i32.const 3
  i32.shl
  local.set $2
  local.get $2
  call $~lib/internal/arraybuffer/allocateUnsafe
  local.set $3
  block $~lib/memory/memory.fill|inlined.9
   local.get $3
   i32.const 8
   i32.add
   local.set $4
   i32.const 0
   local.set $5
   local.get $2
   local.set $6
   local.get $4
   local.get $5
   local.get $6
   call $~lib/internal/memory/memset
  end
  block (result i32)
   local.get $0
   i32.eqz
   if
    i32.const 12
    call $~lib/memory/memory.allocate
    local.set $0
   end
   local.get $0
   i32.const 0
   i32.store
   local.get $0
   i32.const 0
   i32.store offset=4
   local.get $0
   i32.const 0
   i32.store offset=8
   local.get $0
  end
  local.get $3
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.get $2
  i32.store offset=8
  local.get $0
 )
 (func $~lib/typedarray/Float64Array#constructor (; 27 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 12
   call $~lib/memory/memory.allocate
   local.set $0
  end
  local.get $0
  local.get $1
  call $~lib/internal/typedarray/TypedArray<f64>#constructor
  local.set $0
  local.get $0
 )
 (func $std/typedarray/testInstantiate (; 28 ;) (type $i_) (param $0 i32)
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
  (local $12 i32)
  i32.const 0
  local.get $0
  call $~lib/typedarray/Int8Array#constructor
  local.set $1
  local.get $1
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
  local.get $1
  i32.load offset=8
  local.get $0
  global.get $~lib/typedarray/Int8Array.BYTES_PER_ELEMENT
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
   local.get $1
   local.set $2
   local.get $2
   i32.load offset=8
   i32.const 0
   i32.shr_u
  end
  local.get $0
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
  local.get $0
  call $~lib/typedarray/Uint8Array#constructor
  local.set $3
  local.get $3
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
  local.get $3
  i32.load offset=8
  local.get $0
  global.get $~lib/typedarray/Uint8Array.BYTES_PER_ELEMENT
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
   local.get $3
   local.set $2
   local.get $2
   i32.load offset=8
   i32.const 0
   i32.shr_u
  end
  local.get $0
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
  local.get $0
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.set $4
  local.get $4
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
  local.get $4
  i32.load offset=8
  local.get $0
  global.get $~lib/typedarray/Uint8Array.BYTES_PER_ELEMENT
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
   local.get $4
   local.set $2
   local.get $2
   i32.load offset=8
   i32.const 0
   i32.shr_u
  end
  local.get $0
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
  local.get $0
  call $~lib/typedarray/Int16Array#constructor
  local.set $5
  local.get $5
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
  local.get $5
  i32.load offset=8
  local.get $0
  global.get $~lib/typedarray/Int16Array.BYTES_PER_ELEMENT
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
   local.get $5
   local.set $2
   local.get $2
   i32.load offset=8
   i32.const 1
   i32.shr_u
  end
  local.get $0
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
  local.get $0
  call $~lib/typedarray/Uint16Array#constructor
  local.set $6
  local.get $6
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
  local.get $6
  i32.load offset=8
  local.get $0
  global.get $~lib/typedarray/Uint16Array.BYTES_PER_ELEMENT
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
   local.get $6
   local.set $2
   local.get $2
   i32.load offset=8
   i32.const 1
   i32.shr_u
  end
  local.get $0
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
  local.get $0
  call $~lib/typedarray/Int32Array#constructor
  local.set $7
  local.get $7
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
  local.get $7
  i32.load offset=8
  local.get $0
  global.get $~lib/typedarray/Int32Array.BYTES_PER_ELEMENT
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
   local.get $7
   local.set $2
   local.get $2
   i32.load offset=8
   i32.const 2
   i32.shr_u
  end
  local.get $0
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
  local.get $0
  call $~lib/typedarray/Uint32Array#constructor
  local.set $8
  local.get $8
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
  local.get $8
  i32.load offset=8
  local.get $0
  global.get $~lib/typedarray/Uint32Array.BYTES_PER_ELEMENT
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
   local.get $8
   local.set $2
   local.get $2
   i32.load offset=8
   i32.const 2
   i32.shr_u
  end
  local.get $0
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
  local.get $0
  call $~lib/typedarray/Int64Array#constructor
  local.set $9
  local.get $9
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
  local.get $9
  i32.load offset=8
  local.get $0
  global.get $~lib/typedarray/Int64Array.BYTES_PER_ELEMENT
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
   local.get $9
   local.set $2
   local.get $2
   i32.load offset=8
   i32.const 3
   i32.shr_u
  end
  local.get $0
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
  local.get $0
  call $~lib/typedarray/Uint64Array#constructor
  local.set $10
  local.get $10
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
  local.get $10
  i32.load offset=8
  local.get $0
  global.get $~lib/typedarray/Uint64Array.BYTES_PER_ELEMENT
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
   local.get $10
   local.set $2
   local.get $2
   i32.load offset=8
   i32.const 3
   i32.shr_u
  end
  local.get $0
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
  local.get $0
  call $~lib/typedarray/Float32Array#constructor
  local.set $11
  local.get $11
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
  local.get $11
  i32.load offset=8
  local.get $0
  global.get $~lib/typedarray/Float32Array.BYTES_PER_ELEMENT
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
   local.get $11
   local.set $2
   local.get $2
   i32.load offset=8
   i32.const 2
   i32.shr_u
  end
  local.get $0
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
  local.get $0
  call $~lib/typedarray/Float64Array#constructor
  local.set $12
  local.get $12
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
  local.get $12
  i32.load offset=8
  local.get $0
  global.get $~lib/typedarray/Float64Array.BYTES_PER_ELEMENT
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
   local.get $12
   local.set $2
   local.get $2
   i32.load offset=8
   i32.const 3
   i32.shr_u
  end
  local.get $0
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
 (func $~lib/internal/typedarray/TypedArray<i32>#__set (; 29 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  local.get $0
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
  block $~lib/internal/arraybuffer/STORE<i32,i32>|inlined.0
   local.get $0
   i32.load
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $0
   i32.load offset=4
   local.set $6
   local.get $3
   local.get $4
   i32.const 2
   i32.shl
   i32.add
   local.get $6
   i32.add
   local.get $5
   i32.store offset=8
  end
 )
 (func $~lib/internal/typedarray/TypedArray<i32>#__get (; 30 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  local.get $0
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
   local.get $0
   i32.load
   local.set $2
   local.get $1
   local.set $3
   local.get $0
   i32.load offset=4
   local.set $4
   local.get $2
   local.get $3
   i32.const 2
   i32.shl
   i32.add
   local.get $4
   i32.add
   i32.load offset=8
  end
 )
 (func $~lib/typedarray/Int32Array#subarray (; 31 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  local.set $3
  local.get $1
  local.set $4
  local.get $2
  local.set $5
  block $~lib/internal/typedarray/TypedArray<i32>#get:length|inlined.2 (result i32)
   local.get $3
   local.set $6
   local.get $6
   i32.load offset=8
   i32.const 2
   i32.shr_u
  end
  local.set $6
  local.get $4
  i32.const 0
  i32.lt_s
  if
   local.get $6
   local.get $4
   i32.add
   local.tee $7
   i32.const 0
   local.tee $8
   local.get $7
   local.get $8
   i32.gt_s
   select
   local.set $4
  else   
   local.get $4
   local.tee $7
   local.get $6
   local.tee $8
   local.get $7
   local.get $8
   i32.lt_s
   select
   local.set $4
  end
  local.get $5
  i32.const 0
  i32.lt_s
  if
   local.get $6
   local.get $5
   i32.add
   local.tee $7
   local.get $4
   local.tee $8
   local.get $7
   local.get $8
   i32.gt_s
   select
   local.set $5
  else   
   local.get $5
   local.tee $7
   local.get $6
   local.tee $8
   local.get $7
   local.get $8
   i32.lt_s
   select
   local.tee $7
   local.get $4
   local.tee $8
   local.get $7
   local.get $8
   i32.gt_s
   select
   local.set $5
  end
  block $~lib/memory/memory.allocate|inlined.1 (result i32)
   i32.const 12
   local.set $7
   local.get $7
   call $~lib/allocator/arena/__memory_allocate
   br $~lib/memory/memory.allocate|inlined.1
  end
  local.set $7
  local.get $7
  local.get $3
  i32.load
  i32.store
  local.get $7
  local.get $3
  i32.load offset=4
  local.get $4
  i32.const 2
  i32.shl
  i32.add
  i32.store offset=4
  local.get $7
  local.get $5
  local.get $4
  i32.sub
  i32.const 2
  i32.shl
  i32.store offset=8
  local.get $7
 )
 (func $~lib/internal/typedarray/TypedArray<f64>#__set (; 32 ;) (type $iiF_) (param $0 i32) (param $1 i32) (param $2 f64)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 i32)
  local.get $1
  local.get $0
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
  block $~lib/internal/arraybuffer/STORE<f64,f64>|inlined.0
   local.get $0
   i32.load
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $0
   i32.load offset=4
   local.set $6
   local.get $3
   local.get $4
   i32.const 3
   i32.shl
   i32.add
   local.get $6
   i32.add
   local.get $5
   f64.store offset=8
  end
 )
 (func $~lib/typedarray/Float64Array#subarray (; 33 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  local.set $3
  local.get $1
  local.set $4
  local.get $2
  local.set $5
  block $~lib/internal/typedarray/TypedArray<f64>#get:length|inlined.1 (result i32)
   local.get $3
   local.set $6
   local.get $6
   i32.load offset=8
   i32.const 3
   i32.shr_u
  end
  local.set $6
  local.get $4
  i32.const 0
  i32.lt_s
  if
   local.get $6
   local.get $4
   i32.add
   local.tee $7
   i32.const 0
   local.tee $8
   local.get $7
   local.get $8
   i32.gt_s
   select
   local.set $4
  else   
   local.get $4
   local.tee $7
   local.get $6
   local.tee $8
   local.get $7
   local.get $8
   i32.lt_s
   select
   local.set $4
  end
  local.get $5
  i32.const 0
  i32.lt_s
  if
   local.get $6
   local.get $5
   i32.add
   local.tee $7
   local.get $4
   local.tee $8
   local.get $7
   local.get $8
   i32.gt_s
   select
   local.set $5
  else   
   local.get $5
   local.tee $7
   local.get $6
   local.tee $8
   local.get $7
   local.get $8
   i32.lt_s
   select
   local.tee $7
   local.get $4
   local.tee $8
   local.get $7
   local.get $8
   i32.gt_s
   select
   local.set $5
  end
  block $~lib/memory/memory.allocate|inlined.2 (result i32)
   i32.const 12
   local.set $7
   local.get $7
   call $~lib/allocator/arena/__memory_allocate
   br $~lib/memory/memory.allocate|inlined.2
  end
  local.set $7
  local.get $7
  local.get $3
  i32.load
  i32.store
  local.get $7
  local.get $3
  i32.load offset=4
  local.get $4
  i32.const 3
  i32.shl
  i32.add
  i32.store offset=4
  local.get $7
  local.get $5
  local.get $4
  i32.sub
  i32.const 3
  i32.shl
  i32.store offset=8
  local.get $7
 )
 (func $~lib/internal/sort/insertionSort<f64> (; 34 ;) (type $iiii_) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 f64)
  (local $9 i32)
  (local $10 f64)
  (local $11 f64)
  block $break|0
   i32.const 0
   local.set $4
   loop $repeat|0
    local.get $4
    local.get $2
    i32.lt_s
    i32.eqz
    br_if $break|0
    block
     block $~lib/internal/arraybuffer/LOAD<f64,f64>|inlined.2 (result f64)
      local.get $0
      local.set $5
      local.get $4
      local.set $6
      local.get $1
      local.set $7
      local.get $5
      local.get $6
      i32.const 3
      i32.shl
      i32.add
      local.get $7
      i32.add
      f64.load offset=8
     end
     local.set $8
     local.get $4
     i32.const 1
     i32.sub
     local.set $7
     block $break|1
      loop $continue|1
       local.get $7
       i32.const 0
       i32.ge_s
       if
        block
         block $~lib/internal/arraybuffer/LOAD<f64,f64>|inlined.3 (result f64)
          local.get $0
          local.set $6
          local.get $7
          local.set $5
          local.get $1
          local.set $9
          local.get $6
          local.get $5
          i32.const 3
          i32.shl
          i32.add
          local.get $9
          i32.add
          f64.load offset=8
         end
         local.set $10
         block (result i32)
          i32.const 2
          global.set $~lib/argc
          local.get $8
          local.get $10
          local.get $3
          call_indirect (type $FFi)
         end
         i32.const 0
         i32.lt_s
         if
          local.get $0
          local.set $9
          block (result i32)
           local.get $7
           local.tee $5
           i32.const 1
           i32.sub
           local.set $7
           local.get $5
          end
          i32.const 1
          i32.add
          local.set $5
          local.get $10
          local.set $11
          local.get $1
          local.set $6
          local.get $9
          local.get $5
          i32.const 3
          i32.shl
          i32.add
          local.get $6
          i32.add
          local.get $11
          f64.store offset=8
         else          
          br $break|1
         end
        end
        br $continue|1
       end
      end
     end
     block $~lib/internal/arraybuffer/STORE<f64,f64>|inlined.4
      local.get $0
      local.set $6
      local.get $7
      i32.const 1
      i32.add
      local.set $5
      local.get $8
      local.set $10
      local.get $1
      local.set $9
      local.get $6
      local.get $5
      i32.const 3
      i32.shl
      i32.add
      local.get $9
      i32.add
      local.get $10
      f64.store offset=8
     end
    end
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $~lib/allocator/arena/__memory_free (; 35 ;) (type $i_) (param $0 i32)
  nop
 )
 (func $~lib/internal/sort/weakHeapSort<f64> (; 36 ;) (type $iiii_) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 f64)
  (local $13 f64)
  (local $14 f64)
  (local $15 f64)
  local.get $2
  i32.const 31
  i32.add
  i32.const 5
  i32.shr_s
  i32.const 2
  i32.shl
  local.set $4
  block $~lib/memory/memory.allocate|inlined.3 (result i32)
   local.get $4
   local.set $5
   local.get $5
   call $~lib/allocator/arena/__memory_allocate
   br $~lib/memory/memory.allocate|inlined.3
  end
  local.set $6
  block $~lib/memory/memory.fill|inlined.10
   local.get $6
   local.set $5
   i32.const 0
   local.set $7
   local.get $4
   local.set $8
   local.get $5
   local.get $7
   local.get $8
   call $~lib/internal/memory/memset
  end
  block $break|0
   local.get $2
   i32.const 1
   i32.sub
   local.set $8
   loop $repeat|0
    local.get $8
    i32.const 0
    i32.gt_s
    i32.eqz
    br_if $break|0
    block
     local.get $8
     local.set $7
     block $break|1
      loop $continue|1
       local.get $7
       i32.const 1
       i32.and
       local.get $6
       local.get $7
       i32.const 6
       i32.shr_s
       i32.const 2
       i32.shl
       i32.add
       i32.load
       local.get $7
       i32.const 1
       i32.shr_s
       i32.const 31
       i32.and
       i32.shr_u
       i32.const 1
       i32.and
       i32.eq
       if
        local.get $7
        i32.const 1
        i32.shr_s
        local.set $7
        br $continue|1
       end
      end
     end
     local.get $7
     i32.const 1
     i32.shr_s
     local.set $5
     block $~lib/internal/arraybuffer/LOAD<f64,f64>|inlined.4 (result f64)
      local.get $0
      local.set $9
      local.get $5
      local.set $10
      local.get $1
      local.set $11
      local.get $9
      local.get $10
      i32.const 3
      i32.shl
      i32.add
      local.get $11
      i32.add
      f64.load offset=8
     end
     local.set $12
     block $~lib/internal/arraybuffer/LOAD<f64,f64>|inlined.5 (result f64)
      local.get $0
      local.set $11
      local.get $8
      local.set $10
      local.get $1
      local.set $9
      local.get $11
      local.get $10
      i32.const 3
      i32.shl
      i32.add
      local.get $9
      i32.add
      f64.load offset=8
     end
     local.set $13
     block (result i32)
      i32.const 2
      global.set $~lib/argc
      local.get $12
      local.get $13
      local.get $3
      call_indirect (type $FFi)
     end
     i32.const 0
     i32.lt_s
     if
      local.get $6
      local.get $8
      i32.const 5
      i32.shr_s
      i32.const 2
      i32.shl
      i32.add
      local.get $6
      local.get $8
      i32.const 5
      i32.shr_s
      i32.const 2
      i32.shl
      i32.add
      i32.load
      i32.const 1
      local.get $8
      i32.const 31
      i32.and
      i32.shl
      i32.xor
      i32.store
      block $~lib/internal/arraybuffer/STORE<f64,f64>|inlined.5
       local.get $0
       local.set $9
       local.get $8
       local.set $10
       local.get $12
       local.set $14
       local.get $1
       local.set $11
       local.get $9
       local.get $10
       i32.const 3
       i32.shl
       i32.add
       local.get $11
       i32.add
       local.get $14
       f64.store offset=8
      end
      block $~lib/internal/arraybuffer/STORE<f64,f64>|inlined.6
       local.get $0
       local.set $11
       local.get $5
       local.set $10
       local.get $13
       local.set $14
       local.get $1
       local.set $9
       local.get $11
       local.get $10
       i32.const 3
       i32.shl
       i32.add
       local.get $9
       i32.add
       local.get $14
       f64.store offset=8
      end
     end
    end
    local.get $8
    i32.const 1
    i32.sub
    local.set $8
    br $repeat|0
    unreachable
   end
   unreachable
  end
  block $break|2
   local.get $2
   i32.const 1
   i32.sub
   local.set $8
   loop $repeat|2
    local.get $8
    i32.const 2
    i32.ge_s
    i32.eqz
    br_if $break|2
    block
     block $~lib/internal/arraybuffer/LOAD<f64,f64>|inlined.6 (result f64)
      local.get $0
      local.set $5
      i32.const 0
      local.set $7
      local.get $1
      local.set $9
      local.get $5
      local.get $7
      i32.const 3
      i32.shl
      i32.add
      local.get $9
      i32.add
      f64.load offset=8
     end
     local.set $13
     block $~lib/internal/arraybuffer/STORE<f64,f64>|inlined.7
      local.get $0
      local.set $9
      i32.const 0
      local.set $7
      block $~lib/internal/arraybuffer/LOAD<f64,f64>|inlined.7 (result f64)
       local.get $0
       local.set $5
       local.get $8
       local.set $10
       local.get $1
       local.set $11
       local.get $5
       local.get $10
       i32.const 3
       i32.shl
       i32.add
       local.get $11
       i32.add
       f64.load offset=8
      end
      local.set $12
      local.get $1
      local.set $11
      local.get $9
      local.get $7
      i32.const 3
      i32.shl
      i32.add
      local.get $11
      i32.add
      local.get $12
      f64.store offset=8
     end
     block $~lib/internal/arraybuffer/STORE<f64,f64>|inlined.8
      local.get $0
      local.set $11
      local.get $8
      local.set $7
      local.get $13
      local.set $12
      local.get $1
      local.set $9
      local.get $11
      local.get $7
      i32.const 3
      i32.shl
      i32.add
      local.get $9
      i32.add
      local.get $12
      f64.store offset=8
     end
     i32.const 1
     local.set $9
     block $break|3
      loop $continue|3
       local.get $9
       i32.const 1
       i32.shl
       local.get $6
       local.get $9
       i32.const 5
       i32.shr_s
       i32.const 2
       i32.shl
       i32.add
       i32.load
       local.get $9
       i32.const 31
       i32.and
       i32.shr_u
       i32.const 1
       i32.and
       i32.add
       local.tee $7
       local.get $8
       i32.lt_s
       if
        local.get $7
        local.set $9
        br $continue|3
       end
      end
     end
     block $break|4
      loop $continue|4
       local.get $9
       i32.const 0
       i32.gt_s
       if
        block
         block $~lib/internal/arraybuffer/LOAD<f64,f64>|inlined.8 (result f64)
          local.get $0
          local.set $11
          i32.const 0
          local.set $10
          local.get $1
          local.set $5
          local.get $11
          local.get $10
          i32.const 3
          i32.shl
          i32.add
          local.get $5
          i32.add
          f64.load offset=8
         end
         local.set $13
         block $~lib/internal/arraybuffer/LOAD<f64,f64>|inlined.9 (result f64)
          local.get $0
          local.set $5
          local.get $9
          local.set $10
          local.get $1
          local.set $11
          local.get $5
          local.get $10
          i32.const 3
          i32.shl
          i32.add
          local.get $11
          i32.add
          f64.load offset=8
         end
         local.set $12
         block (result i32)
          i32.const 2
          global.set $~lib/argc
          local.get $13
          local.get $12
          local.get $3
          call_indirect (type $FFi)
         end
         i32.const 0
         i32.lt_s
         if
          local.get $6
          local.get $9
          i32.const 5
          i32.shr_s
          i32.const 2
          i32.shl
          i32.add
          local.get $6
          local.get $9
          i32.const 5
          i32.shr_s
          i32.const 2
          i32.shl
          i32.add
          i32.load
          i32.const 1
          local.get $9
          i32.const 31
          i32.and
          i32.shl
          i32.xor
          i32.store
          block $~lib/internal/arraybuffer/STORE<f64,f64>|inlined.9
           local.get $0
           local.set $11
           local.get $9
           local.set $10
           local.get $13
           local.set $14
           local.get $1
           local.set $5
           local.get $11
           local.get $10
           i32.const 3
           i32.shl
           i32.add
           local.get $5
           i32.add
           local.get $14
           f64.store offset=8
          end
          block $~lib/internal/arraybuffer/STORE<f64,f64>|inlined.10
           local.get $0
           local.set $5
           i32.const 0
           local.set $10
           local.get $12
           local.set $14
           local.get $1
           local.set $11
           local.get $5
           local.get $10
           i32.const 3
           i32.shl
           i32.add
           local.get $11
           i32.add
           local.get $14
           f64.store offset=8
          end
         end
         local.get $9
         i32.const 1
         i32.shr_s
         local.set $9
        end
        br $continue|4
       end
      end
     end
    end
    local.get $8
    i32.const 1
    i32.sub
    local.set $8
    br $repeat|2
    unreachable
   end
   unreachable
  end
  block $~lib/memory/memory.free|inlined.0
   local.get $6
   local.set $8
   local.get $8
   call $~lib/allocator/arena/__memory_free
   br $~lib/memory/memory.free|inlined.0
  end
  block $~lib/internal/arraybuffer/LOAD<f64,f64>|inlined.10 (result f64)
   local.get $0
   local.set $8
   i32.const 1
   local.set $7
   local.get $1
   local.set $9
   local.get $8
   local.get $7
   i32.const 3
   i32.shl
   i32.add
   local.get $9
   i32.add
   f64.load offset=8
  end
  local.set $15
  block $~lib/internal/arraybuffer/STORE<f64,f64>|inlined.11
   local.get $0
   local.set $9
   i32.const 1
   local.set $7
   block $~lib/internal/arraybuffer/LOAD<f64,f64>|inlined.11 (result f64)
    local.get $0
    local.set $8
    i32.const 0
    local.set $11
    local.get $1
    local.set $10
    local.get $8
    local.get $11
    i32.const 3
    i32.shl
    i32.add
    local.get $10
    i32.add
    f64.load offset=8
   end
   local.set $13
   local.get $1
   local.set $10
   local.get $9
   local.get $7
   i32.const 3
   i32.shl
   i32.add
   local.get $10
   i32.add
   local.get $13
   f64.store offset=8
  end
  block $~lib/internal/arraybuffer/STORE<f64,f64>|inlined.12
   local.get $0
   local.set $10
   i32.const 0
   local.set $7
   local.get $15
   local.set $13
   local.get $1
   local.set $9
   local.get $10
   local.get $7
   i32.const 3
   i32.shl
   i32.add
   local.get $9
   i32.add
   local.get $13
   f64.store offset=8
  end
 )
 (func $~lib/typedarray/Float64Array#sort (; 37 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 f64)
  (local $11 f64)
  (local $12 f64)
  (local $13 i32)
  block $~lib/internal/typedarray/SORT<Float64Array,f64>|inlined.0 (result i32)
   local.get $0
   local.set $2
   local.get $1
   local.set $3
   local.get $2
   i32.load offset=4
   local.set $4
   block $~lib/internal/typedarray/TypedArray<f64>#get:length|inlined.3 (result i32)
    local.get $2
    local.set $5
    local.get $5
    i32.load offset=8
    i32.const 3
    i32.shr_u
   end
   local.set $5
   local.get $5
   i32.const 1
   i32.le_s
   if
    local.get $2
    br $~lib/internal/typedarray/SORT<Float64Array,f64>|inlined.0
   end
   local.get $2
   i32.load
   local.set $6
   local.get $5
   i32.const 2
   i32.eq
   if
    block $~lib/internal/arraybuffer/LOAD<f64,f64>|inlined.0 (result f64)
     local.get $6
     local.set $7
     i32.const 1
     local.set $8
     local.get $4
     local.set $9
     local.get $7
     local.get $8
     i32.const 3
     i32.shl
     i32.add
     local.get $9
     i32.add
     f64.load offset=8
    end
    local.set $10
    block $~lib/internal/arraybuffer/LOAD<f64,f64>|inlined.1 (result f64)
     local.get $6
     local.set $9
     i32.const 0
     local.set $8
     local.get $4
     local.set $7
     local.get $9
     local.get $8
     i32.const 3
     i32.shl
     i32.add
     local.get $7
     i32.add
     f64.load offset=8
    end
    local.set $11
    block (result i32)
     i32.const 2
     global.set $~lib/argc
     local.get $10
     local.get $11
     local.get $3
     call_indirect (type $FFi)
    end
    i32.const 0
    i32.lt_s
    if
     block $~lib/internal/arraybuffer/STORE<f64,f64>|inlined.1
      local.get $6
      local.set $7
      i32.const 1
      local.set $8
      local.get $11
      local.set $12
      local.get $4
      local.set $9
      local.get $7
      local.get $8
      i32.const 3
      i32.shl
      i32.add
      local.get $9
      i32.add
      local.get $12
      f64.store offset=8
     end
     block $~lib/internal/arraybuffer/STORE<f64,f64>|inlined.2
      local.get $6
      local.set $9
      i32.const 0
      local.set $8
      local.get $10
      local.set $12
      local.get $4
      local.set $7
      local.get $9
      local.get $8
      i32.const 3
      i32.shl
      i32.add
      local.get $7
      i32.add
      local.get $12
      f64.store offset=8
     end
    end
    local.get $2
    br $~lib/internal/typedarray/SORT<Float64Array,f64>|inlined.0
   end
   block $~lib/internal/sort/SORT<f64>|inlined.0
    local.get $6
    local.set $7
    local.get $4
    local.set $8
    local.get $5
    local.set $9
    local.get $3
    local.set $13
    local.get $9
    i32.const 256
    i32.lt_s
    if
     local.get $7
     local.get $8
     local.get $9
     local.get $13
     call $~lib/internal/sort/insertionSort<f64>
    else     
     local.get $7
     local.get $8
     local.get $9
     local.get $13
     call $~lib/internal/sort/weakHeapSort<f64>
    end
   end
   local.get $2
  end
 )
 (func $~lib/internal/sort/COMPARATOR<f64>~anonymous|1 (; 38 ;) (type $FFi) (param $0 f64) (param $1 f64) (result i32)
  (local $2 i64)
  (local $3 i64)
  local.get $0
  i64.reinterpret_f64
  local.set $2
  local.get $1
  i64.reinterpret_f64
  local.set $3
  local.get $2
  local.get $2
  i64.const 63
  i64.shr_s
  i64.const 1
  i64.shr_u
  i64.xor
  local.set $2
  local.get $3
  local.get $3
  i64.const 63
  i64.shr_s
  i64.const 1
  i64.shr_u
  i64.xor
  local.set $3
  local.get $2
  local.get $3
  i64.gt_s
  local.get $2
  local.get $3
  i64.lt_s
  i32.sub
 )
 (func $~lib/typedarray/Float64Array#sort|trampoline (; 39 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~lib/argc
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   block $~lib/internal/sort/COMPARATOR<f64>|inlined.0 (result i32)
    i32.const 1
    br $~lib/internal/sort/COMPARATOR<f64>|inlined.0
   end
   local.set $1
  end
  local.get $0
  local.get $1
  call $~lib/typedarray/Float64Array#sort
 )
 (func $~lib/internal/typedarray/TypedArray<f64>#__get (; 40 ;) (type $iiF) (param $0 i32) (param $1 i32) (result f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  local.get $0
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
   local.get $0
   i32.load
   local.set $2
   local.get $1
   local.set $3
   local.get $0
   i32.load offset=4
   local.set $4
   local.get $2
   local.get $3
   i32.const 3
   i32.shl
   i32.add
   local.get $4
   i32.add
   f64.load offset=8
  end
 )
 (func $~lib/typedarray/clampToByte (; 41 ;) (type $ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 31
  i32.shr_s
  i32.const -1
  i32.xor
  i32.const 255
  local.get $0
  i32.sub
  i32.const 31
  i32.shr_s
  local.get $0
  i32.or
  i32.and
 )
 (func $~lib/internal/typedarray/TypedArray<u8>#__set (; 42 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  local.get $0
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
  block $~lib/internal/arraybuffer/STORE<u8,u32>|inlined.0
   local.get $0
   i32.load
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $0
   i32.load offset=4
   local.set $6
   local.get $3
   local.get $4
   i32.const 0
   i32.shl
   i32.add
   local.get $6
   i32.add
   local.get $5
   i32.store8 offset=8
  end
 )
 (func $~lib/typedarray/Uint8ClampedArray#__set (; 43 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  local.get $1
  local.get $2
  call $~lib/typedarray/clampToByte
  call $~lib/internal/typedarray/TypedArray<u8>#__set
 )
 (func $~lib/internal/typedarray/TypedArray<u8>#__get (; 44 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  local.get $0
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
   local.get $0
   i32.load
   local.set $2
   local.get $1
   local.set $3
   local.get $0
   i32.load offset=4
   local.set $4
   local.get $2
   local.get $3
   i32.const 0
   i32.shl
   i32.add
   local.get $4
   i32.add
   i32.load8_u offset=8
  end
 )
 (func $~lib/internal/typedarray/TypedArray<i8>#__set (; 45 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  local.get $0
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
  block $~lib/internal/arraybuffer/STORE<i8,i32>|inlined.0
   local.get $0
   i32.load
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $0
   i32.load offset=4
   local.set $6
   local.get $3
   local.get $4
   i32.const 0
   i32.shl
   i32.add
   local.get $6
   i32.add
   local.get $5
   i32.store8 offset=8
  end
 )
 (func $~lib/typedarray/Int8Array#fill (; 46 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  local.get $0
  local.set $4
  local.get $1
  local.set $5
  local.get $2
  local.set $6
  local.get $3
  local.set $7
  local.get $4
  i32.load
  local.set $8
  local.get $4
  i32.load offset=4
  local.set $9
  block $~lib/internal/typedarray/TypedArray<i8>#get:length|inlined.1 (result i32)
   local.get $4
   local.set $10
   local.get $10
   i32.load offset=8
   i32.const 0
   i32.shr_u
  end
  local.set $10
  local.get $6
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $10
   local.get $6
   i32.add
   local.tee $11
   i32.const 0
   local.tee $12
   local.get $11
   local.get $12
   i32.gt_s
   select
  else   
   local.get $6
   local.tee $11
   local.get $10
   local.tee $12
   local.get $11
   local.get $12
   i32.lt_s
   select
  end
  local.set $6
  local.get $7
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $10
   local.get $7
   i32.add
   local.tee $11
   i32.const 0
   local.tee $12
   local.get $11
   local.get $12
   i32.gt_s
   select
  else   
   local.get $7
   local.tee $11
   local.get $10
   local.tee $12
   local.get $11
   local.get $12
   i32.lt_s
   select
  end
  local.set $7
  local.get $6
  local.get $7
  i32.lt_s
  if
   local.get $8
   local.get $6
   i32.add
   local.get $9
   i32.add
   i32.const 8
   i32.add
   local.set $11
   local.get $5
   local.set $12
   local.get $7
   local.get $6
   i32.sub
   local.set $13
   local.get $11
   local.get $12
   local.get $13
   call $~lib/internal/memory/memset
  end
  local.get $4
 )
 (func $~lib/internal/typedarray/TypedArray<i8>#__get (; 47 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  local.get $0
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
   local.get $0
   i32.load
   local.set $2
   local.get $1
   local.set $3
   local.get $0
   i32.load offset=4
   local.set $4
   local.get $2
   local.get $3
   i32.const 0
   i32.shl
   i32.add
   local.get $4
   i32.add
   i32.load8_s offset=8
  end
 )
 (func $~lib/array/Array<i8>#__get (; 48 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load
  local.set $2
  local.get $1
  local.get $2
  i32.load
  i32.const 0
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $2
   local.set $3
   local.get $1
   local.set $4
   i32.const 0
   local.set $5
   local.get $3
   local.get $4
   i32.const 0
   i32.shl
   i32.add
   local.get $5
   i32.add
   i32.load8_s offset=8
  else   
   unreachable
  end
 )
 (func $std/typedarray/isInt8ArrayEqual (; 49 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  block $~lib/internal/typedarray/TypedArray<i8>#get:length|inlined.3 (result i32)
   local.get $0
   local.set $2
   local.get $2
   i32.load offset=8
   i32.const 0
   i32.shr_u
  end
  block $~lib/array/Array<i8>#get:length|inlined.1 (result i32)
   local.get $1
   local.set $2
   local.get $2
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
    local.set $2
    block $~lib/internal/typedarray/TypedArray<i8>#get:length|inlined.4 (result i32)
     local.get $0
     local.set $3
     local.get $3
     i32.load offset=8
     i32.const 0
     i32.shr_u
    end
    local.set $3
   end
   loop $repeat|0
    local.get $2
    local.get $3
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $2
    call $~lib/internal/typedarray/TypedArray<i8>#__get
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    local.get $1
    local.get $2
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
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
  i32.const 1
 )
 (func $~lib/typedarray/Int8Array#fill|trampoline (; 50 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~lib/argc
      i32.const 1
      i32.sub
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 0
    local.set $2
   end
   global.get $~lib/builtins/i32.MAX_VALUE
   local.set $3
  end
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  call $~lib/typedarray/Int8Array#fill
 )
 (func $~lib/typedarray/Int8Array#subarray (; 51 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  local.set $3
  local.get $1
  local.set $4
  local.get $2
  local.set $5
  block $~lib/internal/typedarray/TypedArray<i8>#get:length|inlined.5 (result i32)
   local.get $3
   local.set $6
   local.get $6
   i32.load offset=8
   i32.const 0
   i32.shr_u
  end
  local.set $6
  local.get $4
  i32.const 0
  i32.lt_s
  if
   local.get $6
   local.get $4
   i32.add
   local.tee $7
   i32.const 0
   local.tee $8
   local.get $7
   local.get $8
   i32.gt_s
   select
   local.set $4
  else   
   local.get $4
   local.tee $7
   local.get $6
   local.tee $8
   local.get $7
   local.get $8
   i32.lt_s
   select
   local.set $4
  end
  local.get $5
  i32.const 0
  i32.lt_s
  if
   local.get $6
   local.get $5
   i32.add
   local.tee $7
   local.get $4
   local.tee $8
   local.get $7
   local.get $8
   i32.gt_s
   select
   local.set $5
  else   
   local.get $5
   local.tee $7
   local.get $6
   local.tee $8
   local.get $7
   local.get $8
   i32.lt_s
   select
   local.tee $7
   local.get $4
   local.tee $8
   local.get $7
   local.get $8
   i32.gt_s
   select
   local.set $5
  end
  block $~lib/memory/memory.allocate|inlined.4 (result i32)
   i32.const 12
   local.set $7
   local.get $7
   call $~lib/allocator/arena/__memory_allocate
   br $~lib/memory/memory.allocate|inlined.4
  end
  local.set $7
  local.get $7
  local.get $3
  i32.load
  i32.store
  local.get $7
  local.get $3
  i32.load offset=4
  local.get $4
  i32.const 0
  i32.shl
  i32.add
  i32.store offset=4
  local.get $7
  local.get $5
  local.get $4
  i32.sub
  i32.const 0
  i32.shl
  i32.store offset=8
  local.get $7
 )
 (func $~lib/typedarray/Int32Array#fill (; 52 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  local.get $0
  local.set $4
  local.get $1
  local.set $5
  local.get $2
  local.set $6
  local.get $3
  local.set $7
  local.get $4
  i32.load
  local.set $8
  local.get $4
  i32.load offset=4
  local.set $9
  block $~lib/internal/typedarray/TypedArray<i32>#get:length|inlined.4 (result i32)
   local.get $4
   local.set $10
   local.get $10
   i32.load offset=8
   i32.const 2
   i32.shr_u
  end
  local.set $10
  local.get $6
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $10
   local.get $6
   i32.add
   local.tee $11
   i32.const 0
   local.tee $12
   local.get $11
   local.get $12
   i32.gt_s
   select
  else   
   local.get $6
   local.tee $11
   local.get $10
   local.tee $12
   local.get $11
   local.get $12
   i32.lt_s
   select
  end
  local.set $6
  local.get $7
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $10
   local.get $7
   i32.add
   local.tee $11
   i32.const 0
   local.tee $12
   local.get $11
   local.get $12
   i32.gt_s
   select
  else   
   local.get $7
   local.tee $11
   local.get $10
   local.tee $12
   local.get $11
   local.get $12
   i32.lt_s
   select
  end
  local.set $7
  block $break|0
   loop $repeat|0
    local.get $6
    local.get $7
    i32.lt_s
    i32.eqz
    br_if $break|0
    block $~lib/internal/arraybuffer/STORE<i32,i32>|inlined.1
     local.get $8
     local.set $11
     local.get $6
     local.set $12
     local.get $5
     local.set $13
     local.get $9
     local.set $14
     local.get $11
     local.get $12
     i32.const 2
     i32.shl
     i32.add
     local.get $14
     i32.add
     local.get $13
     i32.store offset=8
    end
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $4
 )
 (func $~lib/array/Array<i32>#__get (; 53 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load
  local.set $2
  local.get $1
  local.get $2
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $2
   local.set $3
   local.get $1
   local.set $4
   i32.const 0
   local.set $5
   local.get $3
   local.get $4
   i32.const 2
   i32.shl
   i32.add
   local.get $5
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
 )
 (func $std/typedarray/isInt32ArrayEqual (; 54 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  block $~lib/internal/typedarray/TypedArray<i32>#get:length|inlined.6 (result i32)
   local.get $0
   local.set $2
   local.get $2
   i32.load offset=8
   i32.const 2
   i32.shr_u
  end
  block $~lib/array/Array<i32>#get:length|inlined.1 (result i32)
   local.get $1
   local.set $2
   local.get $2
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
    local.set $2
    block $~lib/internal/typedarray/TypedArray<i32>#get:length|inlined.7 (result i32)
     local.get $0
     local.set $3
     local.get $3
     i32.load offset=8
     i32.const 2
     i32.shr_u
    end
    local.set $3
   end
   loop $repeat|0
    local.get $2
    local.get $3
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $2
    call $~lib/internal/typedarray/TypedArray<i32>#__get
    local.get $1
    local.get $2
    call $~lib/array/Array<i32>#__get
    i32.ne
    if
     i32.const 0
     return
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $repeat|0
    unreachable
   end
   unreachable
  end
  i32.const 1
 )
 (func $~lib/typedarray/Int32Array#fill|trampoline (; 55 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~lib/argc
      i32.const 1
      i32.sub
      br_table $0of2 $1of2 $2of2 $outOfRange
     end
     unreachable
    end
    i32.const 0
    local.set $2
   end
   global.get $~lib/builtins/i32.MAX_VALUE
   local.set $3
  end
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  call $~lib/typedarray/Int32Array#fill
 )
 (func $std/typedarray/testReduce<Int8Array,i8>~anonymous|2 (; 56 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $~lib/typedarray/Int8Array#reduce<i8> (; 57 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  local.get $0
  local.set $3
  local.get $1
  local.set $4
  local.get $2
  local.set $5
  block $~lib/internal/typedarray/TypedArray<i8>#get:length|inlined.10 (result i32)
   local.get $3
   local.set $6
   local.get $6
   i32.load offset=8
   i32.const 0
   i32.shr_u
  end
  local.set $6
  local.get $3
  i32.load
  local.set $7
  local.get $3
  i32.load offset=4
  local.set $8
  block $break|0
   i32.const 0
   local.set $9
   loop $repeat|0
    local.get $9
    local.get $6
    i32.lt_s
    i32.eqz
    br_if $break|0
    block (result i32)
     i32.const 4
     global.set $~lib/argc
     local.get $5
     block $~lib/internal/arraybuffer/LOAD<i8,i8>|inlined.2 (result i32)
      local.get $7
      local.set $10
      local.get $9
      local.set $11
      local.get $8
      local.set $12
      local.get $10
      local.get $11
      i32.const 0
      i32.shl
      i32.add
      local.get $12
      i32.add
      i32.load8_s offset=8
     end
     local.get $9
     local.get $3
     local.get $4
     call_indirect (type $iiiii)
    end
    local.set $5
    local.get $9
    i32.const 1
    i32.add
    local.set $9
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $5
 )
 (func $std/typedarray/testReduce<Int8Array,i8> (; 58 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i8>#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i8>#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i8>#__set
  local.get $0
  i32.const 2
  i32.const 0
  call $~lib/typedarray/Int8Array#reduce<i8>
  local.set $1
  local.get $1
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
 (func $std/typedarray/testReduce<Uint8Array,u8>~anonymous|3 (; 59 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $~lib/typedarray/Uint8Array#reduce<u8> (; 60 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  local.get $0
  local.set $3
  local.get $1
  local.set $4
  local.get $2
  local.set $5
  block $~lib/internal/typedarray/TypedArray<u8>#get:length|inlined.2 (result i32)
   local.get $3
   local.set $6
   local.get $6
   i32.load offset=8
   i32.const 0
   i32.shr_u
  end
  local.set $6
  local.get $3
  i32.load
  local.set $7
  local.get $3
  i32.load offset=4
  local.set $8
  block $break|0
   i32.const 0
   local.set $9
   loop $repeat|0
    local.get $9
    local.get $6
    i32.lt_s
    i32.eqz
    br_if $break|0
    block (result i32)
     i32.const 4
     global.set $~lib/argc
     local.get $5
     block $~lib/internal/arraybuffer/LOAD<u8,u8>|inlined.1 (result i32)
      local.get $7
      local.set $10
      local.get $9
      local.set $11
      local.get $8
      local.set $12
      local.get $10
      local.get $11
      i32.const 0
      i32.shl
      i32.add
      local.get $12
      i32.add
      i32.load8_u offset=8
     end
     local.get $9
     local.get $3
     local.get $4
     call_indirect (type $iiiii)
    end
    local.set $5
    local.get $9
    i32.const 1
    i32.add
    local.set $9
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $5
 )
 (func $std/typedarray/testReduce<Uint8Array,u8> (; 61 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint8Array#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  local.get $0
  i32.const 3
  i32.const 0
  call $~lib/typedarray/Uint8Array#reduce<u8>
  local.set $1
  local.get $1
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
 (func $std/typedarray/testReduce<Uint8ClampedArray,u8>~anonymous|4 (; 62 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $std/typedarray/testReduce<Uint8ClampedArray,u8> (; 63 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  i32.const 4
  i32.const 0
  call $~lib/typedarray/Uint8Array#reduce<u8>
  local.set $1
  local.get $1
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
 (func $~lib/internal/typedarray/TypedArray<i16>#__set (; 64 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  local.get $0
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
  block $~lib/internal/arraybuffer/STORE<i16,i32>|inlined.0
   local.get $0
   i32.load
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $0
   i32.load offset=4
   local.set $6
   local.get $3
   local.get $4
   i32.const 1
   i32.shl
   i32.add
   local.get $6
   i32.add
   local.get $5
   i32.store16 offset=8
  end
 )
 (func $std/typedarray/testReduce<Int16Array,i16>~anonymous|5 (; 65 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $~lib/typedarray/Int16Array#reduce<i16> (; 66 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  local.get $0
  local.set $3
  local.get $1
  local.set $4
  local.get $2
  local.set $5
  block $~lib/internal/typedarray/TypedArray<i16>#get:length|inlined.1 (result i32)
   local.get $3
   local.set $6
   local.get $6
   i32.load offset=8
   i32.const 1
   i32.shr_u
  end
  local.set $6
  local.get $3
  i32.load
  local.set $7
  local.get $3
  i32.load offset=4
  local.set $8
  block $break|0
   i32.const 0
   local.set $9
   loop $repeat|0
    local.get $9
    local.get $6
    i32.lt_s
    i32.eqz
    br_if $break|0
    block (result i32)
     i32.const 4
     global.set $~lib/argc
     local.get $5
     block $~lib/internal/arraybuffer/LOAD<i16,i16>|inlined.0 (result i32)
      local.get $7
      local.set $10
      local.get $9
      local.set $11
      local.get $8
      local.set $12
      local.get $10
      local.get $11
      i32.const 1
      i32.shl
      i32.add
      local.get $12
      i32.add
      i32.load16_s offset=8
     end
     local.get $9
     local.get $3
     local.get $4
     call_indirect (type $iiiii)
    end
    local.set $5
    local.get $9
    i32.const 1
    i32.add
    local.set $9
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $5
 )
 (func $std/typedarray/testReduce<Int16Array,i16> (; 67 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i16>#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i16>#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i16>#__set
  local.get $0
  i32.const 5
  i32.const 0
  call $~lib/typedarray/Int16Array#reduce<i16>
  local.set $1
  local.get $1
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
 (func $~lib/internal/typedarray/TypedArray<u16>#__set (; 68 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  local.get $0
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
  block $~lib/internal/arraybuffer/STORE<u16,u32>|inlined.0
   local.get $0
   i32.load
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $0
   i32.load offset=4
   local.set $6
   local.get $3
   local.get $4
   i32.const 1
   i32.shl
   i32.add
   local.get $6
   i32.add
   local.get $5
   i32.store16 offset=8
  end
 )
 (func $std/typedarray/testReduce<Uint16Array,u16>~anonymous|6 (; 69 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $~lib/typedarray/Uint16Array#reduce<u16> (; 70 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  local.get $0
  local.set $3
  local.get $1
  local.set $4
  local.get $2
  local.set $5
  block $~lib/internal/typedarray/TypedArray<u16>#get:length|inlined.1 (result i32)
   local.get $3
   local.set $6
   local.get $6
   i32.load offset=8
   i32.const 1
   i32.shr_u
  end
  local.set $6
  local.get $3
  i32.load
  local.set $7
  local.get $3
  i32.load offset=4
  local.set $8
  block $break|0
   i32.const 0
   local.set $9
   loop $repeat|0
    local.get $9
    local.get $6
    i32.lt_s
    i32.eqz
    br_if $break|0
    block (result i32)
     i32.const 4
     global.set $~lib/argc
     local.get $5
     block $~lib/internal/arraybuffer/LOAD<u16,u16>|inlined.0 (result i32)
      local.get $7
      local.set $10
      local.get $9
      local.set $11
      local.get $8
      local.set $12
      local.get $10
      local.get $11
      i32.const 1
      i32.shl
      i32.add
      local.get $12
      i32.add
      i32.load16_u offset=8
     end
     local.get $9
     local.get $3
     local.get $4
     call_indirect (type $iiiii)
    end
    local.set $5
    local.get $9
    i32.const 1
    i32.add
    local.set $9
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $5
 )
 (func $std/typedarray/testReduce<Uint16Array,u16> (; 71 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint16Array#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u16>#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u16>#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u16>#__set
  local.get $0
  i32.const 6
  i32.const 0
  call $~lib/typedarray/Uint16Array#reduce<u16>
  local.set $1
  local.get $1
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
 (func $std/typedarray/testReduce<Int32Array,i32>~anonymous|7 (; 72 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $~lib/typedarray/Int32Array#reduce<i32> (; 73 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  local.get $0
  local.set $3
  local.get $1
  local.set $4
  local.get $2
  local.set $5
  block $~lib/internal/typedarray/TypedArray<i32>#get:length|inlined.9 (result i32)
   local.get $3
   local.set $6
   local.get $6
   i32.load offset=8
   i32.const 2
   i32.shr_u
  end
  local.set $6
  local.get $3
  i32.load
  local.set $7
  local.get $3
  i32.load offset=4
  local.set $8
  block $break|0
   i32.const 0
   local.set $9
   loop $repeat|0
    local.get $9
    local.get $6
    i32.lt_s
    i32.eqz
    br_if $break|0
    block (result i32)
     i32.const 4
     global.set $~lib/argc
     local.get $5
     block $~lib/internal/arraybuffer/LOAD<i32,i32>|inlined.2 (result i32)
      local.get $7
      local.set $10
      local.get $9
      local.set $11
      local.get $8
      local.set $12
      local.get $10
      local.get $11
      i32.const 2
      i32.shl
      i32.add
      local.get $12
      i32.add
      i32.load offset=8
     end
     local.get $9
     local.get $3
     local.get $4
     call_indirect (type $iiiii)
    end
    local.set $5
    local.get $9
    i32.const 1
    i32.add
    local.set $9
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $5
 )
 (func $std/typedarray/testReduce<Int32Array,i32> (; 74 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  local.get $0
  i32.const 7
  i32.const 0
  call $~lib/typedarray/Int32Array#reduce<i32>
  local.set $1
  local.get $1
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
 (func $~lib/internal/typedarray/TypedArray<u32>#__set (; 75 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  local.get $0
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
  block $~lib/internal/arraybuffer/STORE<u32,u32>|inlined.0
   local.get $0
   i32.load
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $0
   i32.load offset=4
   local.set $6
   local.get $3
   local.get $4
   i32.const 2
   i32.shl
   i32.add
   local.get $6
   i32.add
   local.get $5
   i32.store offset=8
  end
 )
 (func $std/typedarray/testReduce<Uint32Array,u32>~anonymous|8 (; 76 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $~lib/typedarray/Uint32Array#reduce<u32> (; 77 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  local.get $0
  local.set $3
  local.get $1
  local.set $4
  local.get $2
  local.set $5
  block $~lib/internal/typedarray/TypedArray<u32>#get:length|inlined.1 (result i32)
   local.get $3
   local.set $6
   local.get $6
   i32.load offset=8
   i32.const 2
   i32.shr_u
  end
  local.set $6
  local.get $3
  i32.load
  local.set $7
  local.get $3
  i32.load offset=4
  local.set $8
  block $break|0
   i32.const 0
   local.set $9
   loop $repeat|0
    local.get $9
    local.get $6
    i32.lt_s
    i32.eqz
    br_if $break|0
    block (result i32)
     i32.const 4
     global.set $~lib/argc
     local.get $5
     block $~lib/internal/arraybuffer/LOAD<u32,u32>|inlined.0 (result i32)
      local.get $7
      local.set $10
      local.get $9
      local.set $11
      local.get $8
      local.set $12
      local.get $10
      local.get $11
      i32.const 2
      i32.shl
      i32.add
      local.get $12
      i32.add
      i32.load offset=8
     end
     local.get $9
     local.get $3
     local.get $4
     call_indirect (type $iiiii)
    end
    local.set $5
    local.get $9
    i32.const 1
    i32.add
    local.set $9
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $5
 )
 (func $std/typedarray/testReduce<Uint32Array,u32> (; 78 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint32Array#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u32>#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u32>#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u32>#__set
  local.get $0
  i32.const 8
  i32.const 0
  call $~lib/typedarray/Uint32Array#reduce<u32>
  local.set $1
  local.get $1
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
 (func $~lib/internal/typedarray/TypedArray<i64>#__set (; 79 ;) (type $iiI_) (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  local.get $1
  local.get $0
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
  block $~lib/internal/arraybuffer/STORE<i64,i64>|inlined.0
   local.get $0
   i32.load
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $0
   i32.load offset=4
   local.set $6
   local.get $3
   local.get $4
   i32.const 3
   i32.shl
   i32.add
   local.get $6
   i32.add
   local.get $5
   i64.store offset=8
  end
 )
 (func $std/typedarray/testReduce<Int64Array,i64>~anonymous|9 (; 80 ;) (type $IIiiI) (param $0 i64) (param $1 i64) (param $2 i32) (param $3 i32) (result i64)
  local.get $0
  local.get $1
  i64.add
 )
 (func $~lib/typedarray/Int64Array#reduce<i64> (; 81 ;) (type $iiII) (param $0 i32) (param $1 i32) (param $2 i64) (result i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  local.get $0
  local.set $3
  local.get $1
  local.set $4
  local.get $2
  local.set $5
  block $~lib/internal/typedarray/TypedArray<i64>#get:length|inlined.1 (result i32)
   local.get $3
   local.set $6
   local.get $6
   i32.load offset=8
   i32.const 3
   i32.shr_u
  end
  local.set $6
  local.get $3
  i32.load
  local.set $7
  local.get $3
  i32.load offset=4
  local.set $8
  block $break|0
   i32.const 0
   local.set $9
   loop $repeat|0
    local.get $9
    local.get $6
    i32.lt_s
    i32.eqz
    br_if $break|0
    block (result i64)
     i32.const 4
     global.set $~lib/argc
     local.get $5
     block $~lib/internal/arraybuffer/LOAD<i64,i64>|inlined.0 (result i64)
      local.get $7
      local.set $10
      local.get $9
      local.set $11
      local.get $8
      local.set $12
      local.get $10
      local.get $11
      i32.const 3
      i32.shl
      i32.add
      local.get $12
      i32.add
      i64.load offset=8
     end
     local.get $9
     local.get $3
     local.get $4
     call_indirect (type $IIiiI)
    end
    local.set $5
    local.get $9
    i32.const 1
    i32.add
    local.set $9
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $5
 )
 (func $std/typedarray/testReduce<Int64Array,i64> (; 82 ;) (type $_)
  (local $0 i32)
  (local $1 i64)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.set $0
  local.get $0
  i32.const 0
  i64.const 1
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  local.get $0
  i32.const 1
  i64.const 2
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  local.get $0
  i32.const 2
  i64.const 3
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  local.get $0
  i32.const 9
  i64.const 0
  call $~lib/typedarray/Int64Array#reduce<i64>
  local.set $1
  local.get $1
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
 (func $~lib/internal/typedarray/TypedArray<u64>#__set (; 83 ;) (type $iiI_) (param $0 i32) (param $1 i32) (param $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  local.get $1
  local.get $0
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
  block $~lib/internal/arraybuffer/STORE<u64,u64>|inlined.0
   local.get $0
   i32.load
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $0
   i32.load offset=4
   local.set $6
   local.get $3
   local.get $4
   i32.const 3
   i32.shl
   i32.add
   local.get $6
   i32.add
   local.get $5
   i64.store offset=8
  end
 )
 (func $std/typedarray/testReduce<Uint64Array,u64>~anonymous|10 (; 84 ;) (type $IIiiI) (param $0 i64) (param $1 i64) (param $2 i32) (param $3 i32) (result i64)
  local.get $0
  local.get $1
  i64.add
 )
 (func $~lib/typedarray/Uint64Array#reduce<u64> (; 85 ;) (type $iiII) (param $0 i32) (param $1 i32) (param $2 i64) (result i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  local.get $0
  local.set $3
  local.get $1
  local.set $4
  local.get $2
  local.set $5
  block $~lib/internal/typedarray/TypedArray<u64>#get:length|inlined.1 (result i32)
   local.get $3
   local.set $6
   local.get $6
   i32.load offset=8
   i32.const 3
   i32.shr_u
  end
  local.set $6
  local.get $3
  i32.load
  local.set $7
  local.get $3
  i32.load offset=4
  local.set $8
  block $break|0
   i32.const 0
   local.set $9
   loop $repeat|0
    local.get $9
    local.get $6
    i32.lt_s
    i32.eqz
    br_if $break|0
    block (result i64)
     i32.const 4
     global.set $~lib/argc
     local.get $5
     block $~lib/internal/arraybuffer/LOAD<u64,u64>|inlined.0 (result i64)
      local.get $7
      local.set $10
      local.get $9
      local.set $11
      local.get $8
      local.set $12
      local.get $10
      local.get $11
      i32.const 3
      i32.shl
      i32.add
      local.get $12
      i32.add
      i64.load offset=8
     end
     local.get $9
     local.get $3
     local.get $4
     call_indirect (type $IIiiI)
    end
    local.set $5
    local.get $9
    i32.const 1
    i32.add
    local.set $9
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $5
 )
 (func $std/typedarray/testReduce<Uint64Array,u64> (; 86 ;) (type $_)
  (local $0 i32)
  (local $1 i64)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint64Array#constructor
  local.set $0
  local.get $0
  i32.const 0
  i64.const 1
  call $~lib/internal/typedarray/TypedArray<u64>#__set
  local.get $0
  i32.const 1
  i64.const 2
  call $~lib/internal/typedarray/TypedArray<u64>#__set
  local.get $0
  i32.const 2
  i64.const 3
  call $~lib/internal/typedarray/TypedArray<u64>#__set
  local.get $0
  i32.const 10
  i64.const 0
  call $~lib/typedarray/Uint64Array#reduce<u64>
  local.set $1
  local.get $1
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
 (func $~lib/internal/typedarray/TypedArray<f32>#__set (; 87 ;) (type $iif_) (param $0 i32) (param $1 i32) (param $2 f32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f32)
  (local $6 i32)
  local.get $1
  local.get $0
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
  block $~lib/internal/arraybuffer/STORE<f32,f32>|inlined.0
   local.get $0
   i32.load
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $0
   i32.load offset=4
   local.set $6
   local.get $3
   local.get $4
   i32.const 2
   i32.shl
   i32.add
   local.get $6
   i32.add
   local.get $5
   f32.store offset=8
  end
 )
 (func $std/typedarray/testReduce<Float32Array,f32>~anonymous|11 (; 88 ;) (type $ffiif) (param $0 f32) (param $1 f32) (param $2 i32) (param $3 i32) (result f32)
  local.get $0
  local.get $1
  f32.add
 )
 (func $~lib/typedarray/Float32Array#reduce<f32> (; 89 ;) (type $iiff) (param $0 i32) (param $1 i32) (param $2 f32) (result f32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  local.get $0
  local.set $3
  local.get $1
  local.set $4
  local.get $2
  local.set $5
  block $~lib/internal/typedarray/TypedArray<f32>#get:length|inlined.1 (result i32)
   local.get $3
   local.set $6
   local.get $6
   i32.load offset=8
   i32.const 2
   i32.shr_u
  end
  local.set $6
  local.get $3
  i32.load
  local.set $7
  local.get $3
  i32.load offset=4
  local.set $8
  block $break|0
   i32.const 0
   local.set $9
   loop $repeat|0
    local.get $9
    local.get $6
    i32.lt_s
    i32.eqz
    br_if $break|0
    block (result f32)
     i32.const 4
     global.set $~lib/argc
     local.get $5
     block $~lib/internal/arraybuffer/LOAD<f32,f32>|inlined.0 (result f32)
      local.get $7
      local.set $10
      local.get $9
      local.set $11
      local.get $8
      local.set $12
      local.get $10
      local.get $11
      i32.const 2
      i32.shl
      i32.add
      local.get $12
      i32.add
      f32.load offset=8
     end
     local.get $9
     local.get $3
     local.get $4
     call_indirect (type $ffiif)
    end
    local.set $5
    local.get $9
    i32.const 1
    i32.add
    local.set $9
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $5
 )
 (func $std/typedarray/testReduce<Float32Array,f32> (; 90 ;) (type $_)
  (local $0 i32)
  (local $1 f32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Float32Array#constructor
  local.set $0
  local.get $0
  i32.const 0
  f32.const 1
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  local.get $0
  i32.const 1
  f32.const 2
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  local.get $0
  i32.const 2
  f32.const 3
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  local.get $0
  i32.const 11
  f32.const 0
  call $~lib/typedarray/Float32Array#reduce<f32>
  local.set $1
  local.get $1
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
 (func $std/typedarray/testReduce<Float64Array,f64>~anonymous|12 (; 91 ;) (type $FFiiF) (param $0 f64) (param $1 f64) (param $2 i32) (param $3 i32) (result f64)
  local.get $0
  local.get $1
  f64.add
 )
 (func $~lib/typedarray/Float64Array#reduce<f64> (; 92 ;) (type $iiFF) (param $0 i32) (param $1 i32) (param $2 f64) (result f64)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  local.get $0
  local.set $3
  local.get $1
  local.set $4
  local.get $2
  local.set $5
  block $~lib/internal/typedarray/TypedArray<f64>#get:length|inlined.4 (result i32)
   local.get $3
   local.set $6
   local.get $6
   i32.load offset=8
   i32.const 3
   i32.shr_u
  end
  local.set $6
  local.get $3
  i32.load
  local.set $7
  local.get $3
  i32.load offset=4
  local.set $8
  block $break|0
   i32.const 0
   local.set $9
   loop $repeat|0
    local.get $9
    local.get $6
    i32.lt_s
    i32.eqz
    br_if $break|0
    block (result f64)
     i32.const 4
     global.set $~lib/argc
     local.get $5
     block $~lib/internal/arraybuffer/LOAD<f64,f64>|inlined.13 (result f64)
      local.get $7
      local.set $10
      local.get $9
      local.set $11
      local.get $8
      local.set $12
      local.get $10
      local.get $11
      i32.const 3
      i32.shl
      i32.add
      local.get $12
      i32.add
      f64.load offset=8
     end
     local.get $9
     local.get $3
     local.get $4
     call_indirect (type $FFiiF)
    end
    local.set $5
    local.get $9
    i32.const 1
    i32.add
    local.set $9
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $5
 )
 (func $std/typedarray/testReduce<Float64Array,f64> (; 93 ;) (type $_)
  (local $0 i32)
  (local $1 f64)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Float64Array#constructor
  local.set $0
  local.get $0
  i32.const 0
  f64.const 1
  call $~lib/internal/typedarray/TypedArray<f64>#__set
  local.get $0
  i32.const 1
  f64.const 2
  call $~lib/internal/typedarray/TypedArray<f64>#__set
  local.get $0
  i32.const 2
  f64.const 3
  call $~lib/internal/typedarray/TypedArray<f64>#__set
  local.get $0
  i32.const 12
  f64.const 0
  call $~lib/typedarray/Float64Array#reduce<f64>
  local.set $1
  local.get $1
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
 (func $std/typedarray/testReduceRight<Int8Array,i8>~anonymous|13 (; 94 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $~lib/typedarray/Int8Array#reduceRight<i8> (; 95 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $0
  local.set $3
  local.get $1
  local.set $4
  local.get $2
  local.set $5
  local.get $3
  i32.load
  local.set $6
  local.get $3
  i32.load offset=4
  local.set $7
  block $break|0
   block $~lib/internal/typedarray/TypedArray<i8>#get:length|inlined.11 (result i32)
    local.get $3
    local.set $8
    local.get $8
    i32.load offset=8
    i32.const 0
    i32.shr_u
   end
   i32.const 1
   i32.sub
   local.set $8
   loop $repeat|0
    local.get $8
    i32.const 0
    i32.ge_s
    i32.eqz
    br_if $break|0
    block (result i32)
     i32.const 4
     global.set $~lib/argc
     local.get $5
     block $~lib/internal/arraybuffer/LOAD<i8,i8>|inlined.3 (result i32)
      local.get $6
      local.set $9
      local.get $8
      local.set $10
      local.get $7
      local.set $11
      local.get $9
      local.get $10
      i32.const 0
      i32.shl
      i32.add
      local.get $11
      i32.add
      i32.load8_s offset=8
     end
     local.get $8
     local.get $3
     local.get $4
     call_indirect (type $iiiii)
    end
    local.set $5
    local.get $8
    i32.const 1
    i32.sub
    local.set $8
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $5
 )
 (func $std/typedarray/testReduceRight<Int8Array,i8> (; 96 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i8>#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i8>#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i8>#__set
  local.get $0
  i32.const 13
  i32.const 0
  call $~lib/typedarray/Int8Array#reduceRight<i8>
  local.set $1
  local.get $1
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
 (func $std/typedarray/testReduceRight<Uint8Array,u8>~anonymous|14 (; 97 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $~lib/typedarray/Uint8Array#reduceRight<u8> (; 98 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $0
  local.set $3
  local.get $1
  local.set $4
  local.get $2
  local.set $5
  local.get $3
  i32.load
  local.set $6
  local.get $3
  i32.load offset=4
  local.set $7
  block $break|0
   block $~lib/internal/typedarray/TypedArray<u8>#get:length|inlined.3 (result i32)
    local.get $3
    local.set $8
    local.get $8
    i32.load offset=8
    i32.const 0
    i32.shr_u
   end
   i32.const 1
   i32.sub
   local.set $8
   loop $repeat|0
    local.get $8
    i32.const 0
    i32.ge_s
    i32.eqz
    br_if $break|0
    block (result i32)
     i32.const 4
     global.set $~lib/argc
     local.get $5
     block $~lib/internal/arraybuffer/LOAD<u8,u8>|inlined.2 (result i32)
      local.get $6
      local.set $9
      local.get $8
      local.set $10
      local.get $7
      local.set $11
      local.get $9
      local.get $10
      i32.const 0
      i32.shl
      i32.add
      local.get $11
      i32.add
      i32.load8_u offset=8
     end
     local.get $8
     local.get $3
     local.get $4
     call_indirect (type $iiiii)
    end
    local.set $5
    local.get $8
    i32.const 1
    i32.sub
    local.set $8
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $5
 )
 (func $std/typedarray/testReduceRight<Uint8Array,u8> (; 99 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint8Array#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  local.get $0
  i32.const 14
  i32.const 0
  call $~lib/typedarray/Uint8Array#reduceRight<u8>
  local.set $1
  local.get $1
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
 (func $std/typedarray/testReduceRight<Uint8ClampedArray,u8>~anonymous|15 (; 100 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $std/typedarray/testReduceRight<Uint8ClampedArray,u8> (; 101 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  i32.const 15
  i32.const 0
  call $~lib/typedarray/Uint8Array#reduceRight<u8>
  local.set $1
  local.get $1
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
 (func $std/typedarray/testReduceRight<Int16Array,i16>~anonymous|16 (; 102 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $~lib/typedarray/Int16Array#reduceRight<i16> (; 103 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $0
  local.set $3
  local.get $1
  local.set $4
  local.get $2
  local.set $5
  local.get $3
  i32.load
  local.set $6
  local.get $3
  i32.load offset=4
  local.set $7
  block $break|0
   block $~lib/internal/typedarray/TypedArray<i16>#get:length|inlined.2 (result i32)
    local.get $3
    local.set $8
    local.get $8
    i32.load offset=8
    i32.const 1
    i32.shr_u
   end
   i32.const 1
   i32.sub
   local.set $8
   loop $repeat|0
    local.get $8
    i32.const 0
    i32.ge_s
    i32.eqz
    br_if $break|0
    block (result i32)
     i32.const 4
     global.set $~lib/argc
     local.get $5
     block $~lib/internal/arraybuffer/LOAD<i16,i16>|inlined.1 (result i32)
      local.get $6
      local.set $9
      local.get $8
      local.set $10
      local.get $7
      local.set $11
      local.get $9
      local.get $10
      i32.const 1
      i32.shl
      i32.add
      local.get $11
      i32.add
      i32.load16_s offset=8
     end
     local.get $8
     local.get $3
     local.get $4
     call_indirect (type $iiiii)
    end
    local.set $5
    local.get $8
    i32.const 1
    i32.sub
    local.set $8
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $5
 )
 (func $std/typedarray/testReduceRight<Int16Array,i16> (; 104 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i16>#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i16>#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i16>#__set
  local.get $0
  i32.const 16
  i32.const 0
  call $~lib/typedarray/Int16Array#reduceRight<i16>
  local.set $1
  local.get $1
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
 (func $std/typedarray/testReduceRight<Uint16Array,u16>~anonymous|17 (; 105 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $~lib/typedarray/Uint16Array#reduceRight<u16> (; 106 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $0
  local.set $3
  local.get $1
  local.set $4
  local.get $2
  local.set $5
  local.get $3
  i32.load
  local.set $6
  local.get $3
  i32.load offset=4
  local.set $7
  block $break|0
   block $~lib/internal/typedarray/TypedArray<u16>#get:length|inlined.2 (result i32)
    local.get $3
    local.set $8
    local.get $8
    i32.load offset=8
    i32.const 1
    i32.shr_u
   end
   i32.const 1
   i32.sub
   local.set $8
   loop $repeat|0
    local.get $8
    i32.const 0
    i32.ge_s
    i32.eqz
    br_if $break|0
    block (result i32)
     i32.const 4
     global.set $~lib/argc
     local.get $5
     block $~lib/internal/arraybuffer/LOAD<u16,u16>|inlined.1 (result i32)
      local.get $6
      local.set $9
      local.get $8
      local.set $10
      local.get $7
      local.set $11
      local.get $9
      local.get $10
      i32.const 1
      i32.shl
      i32.add
      local.get $11
      i32.add
      i32.load16_u offset=8
     end
     local.get $8
     local.get $3
     local.get $4
     call_indirect (type $iiiii)
    end
    local.set $5
    local.get $8
    i32.const 1
    i32.sub
    local.set $8
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $5
 )
 (func $std/typedarray/testReduceRight<Uint16Array,u16> (; 107 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint16Array#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u16>#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u16>#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u16>#__set
  local.get $0
  i32.const 17
  i32.const 0
  call $~lib/typedarray/Uint16Array#reduceRight<u16>
  local.set $1
  local.get $1
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
 (func $std/typedarray/testReduceRight<Int32Array,i32>~anonymous|18 (; 108 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $~lib/typedarray/Int32Array#reduceRight<i32> (; 109 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $0
  local.set $3
  local.get $1
  local.set $4
  local.get $2
  local.set $5
  local.get $3
  i32.load
  local.set $6
  local.get $3
  i32.load offset=4
  local.set $7
  block $break|0
   block $~lib/internal/typedarray/TypedArray<i32>#get:length|inlined.10 (result i32)
    local.get $3
    local.set $8
    local.get $8
    i32.load offset=8
    i32.const 2
    i32.shr_u
   end
   i32.const 1
   i32.sub
   local.set $8
   loop $repeat|0
    local.get $8
    i32.const 0
    i32.ge_s
    i32.eqz
    br_if $break|0
    block (result i32)
     i32.const 4
     global.set $~lib/argc
     local.get $5
     block $~lib/internal/arraybuffer/LOAD<i32,i32>|inlined.3 (result i32)
      local.get $6
      local.set $9
      local.get $8
      local.set $10
      local.get $7
      local.set $11
      local.get $9
      local.get $10
      i32.const 2
      i32.shl
      i32.add
      local.get $11
      i32.add
      i32.load offset=8
     end
     local.get $8
     local.get $3
     local.get $4
     call_indirect (type $iiiii)
    end
    local.set $5
    local.get $8
    i32.const 1
    i32.sub
    local.set $8
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $5
 )
 (func $std/typedarray/testReduceRight<Int32Array,i32> (; 110 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  local.get $0
  i32.const 18
  i32.const 0
  call $~lib/typedarray/Int32Array#reduceRight<i32>
  local.set $1
  local.get $1
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
 (func $std/typedarray/testReduceRight<Uint32Array,u32>~anonymous|19 (; 111 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $~lib/typedarray/Uint32Array#reduceRight<u32> (; 112 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $0
  local.set $3
  local.get $1
  local.set $4
  local.get $2
  local.set $5
  local.get $3
  i32.load
  local.set $6
  local.get $3
  i32.load offset=4
  local.set $7
  block $break|0
   block $~lib/internal/typedarray/TypedArray<u32>#get:length|inlined.2 (result i32)
    local.get $3
    local.set $8
    local.get $8
    i32.load offset=8
    i32.const 2
    i32.shr_u
   end
   i32.const 1
   i32.sub
   local.set $8
   loop $repeat|0
    local.get $8
    i32.const 0
    i32.ge_s
    i32.eqz
    br_if $break|0
    block (result i32)
     i32.const 4
     global.set $~lib/argc
     local.get $5
     block $~lib/internal/arraybuffer/LOAD<u32,u32>|inlined.1 (result i32)
      local.get $6
      local.set $9
      local.get $8
      local.set $10
      local.get $7
      local.set $11
      local.get $9
      local.get $10
      i32.const 2
      i32.shl
      i32.add
      local.get $11
      i32.add
      i32.load offset=8
     end
     local.get $8
     local.get $3
     local.get $4
     call_indirect (type $iiiii)
    end
    local.set $5
    local.get $8
    i32.const 1
    i32.sub
    local.set $8
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $5
 )
 (func $std/typedarray/testReduceRight<Uint32Array,u32> (; 113 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint32Array#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u32>#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u32>#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u32>#__set
  local.get $0
  i32.const 19
  i32.const 0
  call $~lib/typedarray/Uint32Array#reduceRight<u32>
  local.set $1
  local.get $1
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
 (func $std/typedarray/testReduceRight<Int64Array,i64>~anonymous|20 (; 114 ;) (type $IIiiI) (param $0 i64) (param $1 i64) (param $2 i32) (param $3 i32) (result i64)
  local.get $0
  local.get $1
  i64.add
 )
 (func $~lib/typedarray/Int64Array#reduceRight<i64> (; 115 ;) (type $iiII) (param $0 i32) (param $1 i32) (param $2 i64) (result i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $0
  local.set $3
  local.get $1
  local.set $4
  local.get $2
  local.set $5
  local.get $3
  i32.load
  local.set $6
  local.get $3
  i32.load offset=4
  local.set $7
  block $break|0
   block $~lib/internal/typedarray/TypedArray<i64>#get:length|inlined.2 (result i32)
    local.get $3
    local.set $8
    local.get $8
    i32.load offset=8
    i32.const 3
    i32.shr_u
   end
   i32.const 1
   i32.sub
   local.set $8
   loop $repeat|0
    local.get $8
    i32.const 0
    i32.ge_s
    i32.eqz
    br_if $break|0
    block (result i64)
     i32.const 4
     global.set $~lib/argc
     local.get $5
     block $~lib/internal/arraybuffer/LOAD<i64,i64>|inlined.1 (result i64)
      local.get $6
      local.set $9
      local.get $8
      local.set $10
      local.get $7
      local.set $11
      local.get $9
      local.get $10
      i32.const 3
      i32.shl
      i32.add
      local.get $11
      i32.add
      i64.load offset=8
     end
     local.get $8
     local.get $3
     local.get $4
     call_indirect (type $IIiiI)
    end
    local.set $5
    local.get $8
    i32.const 1
    i32.sub
    local.set $8
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $5
 )
 (func $std/typedarray/testReduceRight<Int64Array,i64> (; 116 ;) (type $_)
  (local $0 i32)
  (local $1 i64)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.set $0
  local.get $0
  i32.const 0
  i64.const 1
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  local.get $0
  i32.const 1
  i64.const 2
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  local.get $0
  i32.const 2
  i64.const 3
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  local.get $0
  i32.const 20
  i64.const 0
  call $~lib/typedarray/Int64Array#reduceRight<i64>
  local.set $1
  local.get $1
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
 (func $std/typedarray/testReduceRight<Uint64Array,u64>~anonymous|21 (; 117 ;) (type $IIiiI) (param $0 i64) (param $1 i64) (param $2 i32) (param $3 i32) (result i64)
  local.get $0
  local.get $1
  i64.add
 )
 (func $~lib/typedarray/Uint64Array#reduceRight<u64> (; 118 ;) (type $iiII) (param $0 i32) (param $1 i32) (param $2 i64) (result i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $0
  local.set $3
  local.get $1
  local.set $4
  local.get $2
  local.set $5
  local.get $3
  i32.load
  local.set $6
  local.get $3
  i32.load offset=4
  local.set $7
  block $break|0
   block $~lib/internal/typedarray/TypedArray<u64>#get:length|inlined.2 (result i32)
    local.get $3
    local.set $8
    local.get $8
    i32.load offset=8
    i32.const 3
    i32.shr_u
   end
   i32.const 1
   i32.sub
   local.set $8
   loop $repeat|0
    local.get $8
    i32.const 0
    i32.ge_s
    i32.eqz
    br_if $break|0
    block (result i64)
     i32.const 4
     global.set $~lib/argc
     local.get $5
     block $~lib/internal/arraybuffer/LOAD<u64,u64>|inlined.1 (result i64)
      local.get $6
      local.set $9
      local.get $8
      local.set $10
      local.get $7
      local.set $11
      local.get $9
      local.get $10
      i32.const 3
      i32.shl
      i32.add
      local.get $11
      i32.add
      i64.load offset=8
     end
     local.get $8
     local.get $3
     local.get $4
     call_indirect (type $IIiiI)
    end
    local.set $5
    local.get $8
    i32.const 1
    i32.sub
    local.set $8
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $5
 )
 (func $std/typedarray/testReduceRight<Uint64Array,u64> (; 119 ;) (type $_)
  (local $0 i32)
  (local $1 i64)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint64Array#constructor
  local.set $0
  local.get $0
  i32.const 0
  i64.const 1
  call $~lib/internal/typedarray/TypedArray<u64>#__set
  local.get $0
  i32.const 1
  i64.const 2
  call $~lib/internal/typedarray/TypedArray<u64>#__set
  local.get $0
  i32.const 2
  i64.const 3
  call $~lib/internal/typedarray/TypedArray<u64>#__set
  local.get $0
  i32.const 21
  i64.const 0
  call $~lib/typedarray/Uint64Array#reduceRight<u64>
  local.set $1
  local.get $1
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
 (func $std/typedarray/testReduceRight<Float32Array,f32>~anonymous|22 (; 120 ;) (type $ffiif) (param $0 f32) (param $1 f32) (param $2 i32) (param $3 i32) (result f32)
  local.get $0
  local.get $1
  f32.add
 )
 (func $~lib/typedarray/Float32Array#reduceRight<f32> (; 121 ;) (type $iiff) (param $0 i32) (param $1 i32) (param $2 f32) (result f32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $0
  local.set $3
  local.get $1
  local.set $4
  local.get $2
  local.set $5
  local.get $3
  i32.load
  local.set $6
  local.get $3
  i32.load offset=4
  local.set $7
  block $break|0
   block $~lib/internal/typedarray/TypedArray<f32>#get:length|inlined.2 (result i32)
    local.get $3
    local.set $8
    local.get $8
    i32.load offset=8
    i32.const 2
    i32.shr_u
   end
   i32.const 1
   i32.sub
   local.set $8
   loop $repeat|0
    local.get $8
    i32.const 0
    i32.ge_s
    i32.eqz
    br_if $break|0
    block (result f32)
     i32.const 4
     global.set $~lib/argc
     local.get $5
     block $~lib/internal/arraybuffer/LOAD<f32,f32>|inlined.1 (result f32)
      local.get $6
      local.set $9
      local.get $8
      local.set $10
      local.get $7
      local.set $11
      local.get $9
      local.get $10
      i32.const 2
      i32.shl
      i32.add
      local.get $11
      i32.add
      f32.load offset=8
     end
     local.get $8
     local.get $3
     local.get $4
     call_indirect (type $ffiif)
    end
    local.set $5
    local.get $8
    i32.const 1
    i32.sub
    local.set $8
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $5
 )
 (func $std/typedarray/testReduceRight<Float32Array,f32> (; 122 ;) (type $_)
  (local $0 i32)
  (local $1 f32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Float32Array#constructor
  local.set $0
  local.get $0
  i32.const 0
  f32.const 1
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  local.get $0
  i32.const 1
  f32.const 2
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  local.get $0
  i32.const 2
  f32.const 3
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  local.get $0
  i32.const 22
  f32.const 0
  call $~lib/typedarray/Float32Array#reduceRight<f32>
  local.set $1
  local.get $1
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
 (func $std/typedarray/testReduceRight<Float64Array,f64>~anonymous|23 (; 123 ;) (type $FFiiF) (param $0 f64) (param $1 f64) (param $2 i32) (param $3 i32) (result f64)
  local.get $0
  local.get $1
  f64.add
 )
 (func $~lib/typedarray/Float64Array#reduceRight<f64> (; 124 ;) (type $iiFF) (param $0 i32) (param $1 i32) (param $2 f64) (result f64)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $0
  local.set $3
  local.get $1
  local.set $4
  local.get $2
  local.set $5
  local.get $3
  i32.load
  local.set $6
  local.get $3
  i32.load offset=4
  local.set $7
  block $break|0
   block $~lib/internal/typedarray/TypedArray<f64>#get:length|inlined.5 (result i32)
    local.get $3
    local.set $8
    local.get $8
    i32.load offset=8
    i32.const 3
    i32.shr_u
   end
   i32.const 1
   i32.sub
   local.set $8
   loop $repeat|0
    local.get $8
    i32.const 0
    i32.ge_s
    i32.eqz
    br_if $break|0
    block (result f64)
     i32.const 4
     global.set $~lib/argc
     local.get $5
     block $~lib/internal/arraybuffer/LOAD<f64,f64>|inlined.14 (result f64)
      local.get $6
      local.set $9
      local.get $8
      local.set $10
      local.get $7
      local.set $11
      local.get $9
      local.get $10
      i32.const 3
      i32.shl
      i32.add
      local.get $11
      i32.add
      f64.load offset=8
     end
     local.get $8
     local.get $3
     local.get $4
     call_indirect (type $FFiiF)
    end
    local.set $5
    local.get $8
    i32.const 1
    i32.sub
    local.set $8
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $5
 )
 (func $std/typedarray/testReduceRight<Float64Array,f64> (; 125 ;) (type $_)
  (local $0 i32)
  (local $1 f64)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Float64Array#constructor
  local.set $0
  local.get $0
  i32.const 0
  f64.const 1
  call $~lib/internal/typedarray/TypedArray<f64>#__set
  local.get $0
  i32.const 1
  f64.const 2
  call $~lib/internal/typedarray/TypedArray<f64>#__set
  local.get $0
  i32.const 2
  f64.const 3
  call $~lib/internal/typedarray/TypedArray<f64>#__set
  local.get $0
  i32.const 23
  f64.const 0
  call $~lib/typedarray/Float64Array#reduceRight<f64>
  local.set $1
  local.get $1
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
 (func $std/typedarray/testArrayMap<Int8Array,i8>~anonymous|24 (; 126 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  local.get $0
  i32.mul
 )
 (func $~lib/typedarray/Int8Array#map (; 127 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  local.get $0
  local.set $2
  local.get $1
  local.set $3
  block $~lib/internal/typedarray/TypedArray<i8>#get:length|inlined.12 (result i32)
   local.get $2
   local.set $4
   local.get $4
   i32.load offset=8
   i32.const 0
   i32.shr_u
  end
  local.set $4
  local.get $2
  i32.load
  local.set $5
  local.get $2
  i32.load offset=4
  local.set $6
  i32.const 0
  local.get $4
  call $~lib/typedarray/Int8Array#constructor
  local.set $7
  local.get $7
  i32.load
  local.set $8
  block $break|0
   i32.const 0
   local.set $9
   loop $repeat|0
    local.get $9
    local.get $4
    i32.lt_s
    i32.eqz
    br_if $break|0
    block $~lib/internal/arraybuffer/STORE<i8,i32>|inlined.1
     local.get $8
     local.set $10
     local.get $9
     local.set $11
     block (result i32)
      i32.const 3
      global.set $~lib/argc
      block $~lib/internal/arraybuffer/LOAD<i8,i8>|inlined.4 (result i32)
       local.get $5
       local.set $12
       local.get $9
       local.set $13
       local.get $6
       local.set $14
       local.get $12
       local.get $13
       i32.const 0
       i32.shl
       i32.add
       local.get $14
       i32.add
       i32.load8_s offset=8
      end
      local.get $9
      local.get $2
      local.get $3
      call_indirect (type $iiii)
     end
     i32.const 24
     i32.shl
     i32.const 24
     i32.shr_s
     local.set $14
     i32.const 0
     local.set $13
     local.get $10
     local.get $11
     i32.const 0
     i32.shl
     i32.add
     local.get $13
     i32.add
     local.get $14
     i32.store8 offset=8
    end
    local.get $9
    i32.const 1
    i32.add
    local.set $9
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $7
 )
 (func $std/typedarray/testArrayMap<Int8Array,i8> (; 128 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i8>#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i8>#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i8>#__set
  local.get $0
  i32.const 24
  call $~lib/typedarray/Int8Array#map
  local.set $1
  local.get $1
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
  local.get $1
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
  local.get $1
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
 (func $std/typedarray/testArrayMap<Uint8Array,u8>~anonymous|25 (; 129 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  local.get $0
  i32.mul
 )
 (func $~lib/typedarray/Uint8Array#map (; 130 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  local.get $0
  local.set $2
  local.get $1
  local.set $3
  block $~lib/internal/typedarray/TypedArray<u8>#get:length|inlined.4 (result i32)
   local.get $2
   local.set $4
   local.get $4
   i32.load offset=8
   i32.const 0
   i32.shr_u
  end
  local.set $4
  local.get $2
  i32.load
  local.set $5
  local.get $2
  i32.load offset=4
  local.set $6
  i32.const 0
  local.get $4
  call $~lib/typedarray/Uint8Array#constructor
  local.set $7
  local.get $7
  i32.load
  local.set $8
  block $break|0
   i32.const 0
   local.set $9
   loop $repeat|0
    local.get $9
    local.get $4
    i32.lt_s
    i32.eqz
    br_if $break|0
    block $~lib/internal/arraybuffer/STORE<u8,u32>|inlined.1
     local.get $8
     local.set $10
     local.get $9
     local.set $11
     block (result i32)
      i32.const 3
      global.set $~lib/argc
      block $~lib/internal/arraybuffer/LOAD<u8,u8>|inlined.3 (result i32)
       local.get $5
       local.set $12
       local.get $9
       local.set $13
       local.get $6
       local.set $14
       local.get $12
       local.get $13
       i32.const 0
       i32.shl
       i32.add
       local.get $14
       i32.add
       i32.load8_u offset=8
      end
      local.get $9
      local.get $2
      local.get $3
      call_indirect (type $iiii)
     end
     i32.const 255
     i32.and
     local.set $14
     i32.const 0
     local.set $13
     local.get $10
     local.get $11
     i32.const 0
     i32.shl
     i32.add
     local.get $13
     i32.add
     local.get $14
     i32.store8 offset=8
    end
    local.get $9
    i32.const 1
    i32.add
    local.set $9
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $7
 )
 (func $std/typedarray/testArrayMap<Uint8Array,u8> (; 131 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint8Array#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  local.get $0
  i32.const 25
  call $~lib/typedarray/Uint8Array#map
  local.set $1
  local.get $1
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
  local.get $1
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
  local.get $1
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
 (func $std/typedarray/testArrayMap<Uint8ClampedArray,u8>~anonymous|26 (; 132 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  local.get $0
  i32.mul
 )
 (func $~lib/typedarray/Uint8ClampedArray#map (; 133 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  local.get $0
  local.set $2
  local.get $1
  local.set $3
  block $~lib/internal/typedarray/TypedArray<u8>#get:length|inlined.5 (result i32)
   local.get $2
   local.set $4
   local.get $4
   i32.load offset=8
   i32.const 0
   i32.shr_u
  end
  local.set $4
  local.get $2
  i32.load
  local.set $5
  local.get $2
  i32.load offset=4
  local.set $6
  i32.const 0
  local.get $4
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.set $7
  local.get $7
  i32.load
  local.set $8
  block $break|0
   i32.const 0
   local.set $9
   loop $repeat|0
    local.get $9
    local.get $4
    i32.lt_s
    i32.eqz
    br_if $break|0
    block $~lib/internal/arraybuffer/STORE<u8,u32>|inlined.2
     local.get $8
     local.set $10
     local.get $9
     local.set $11
     block (result i32)
      i32.const 3
      global.set $~lib/argc
      block $~lib/internal/arraybuffer/LOAD<u8,u8>|inlined.4 (result i32)
       local.get $5
       local.set $12
       local.get $9
       local.set $13
       local.get $6
       local.set $14
       local.get $12
       local.get $13
       i32.const 0
       i32.shl
       i32.add
       local.get $14
       i32.add
       i32.load8_u offset=8
      end
      local.get $9
      local.get $2
      local.get $3
      call_indirect (type $iiii)
     end
     i32.const 255
     i32.and
     local.set $14
     i32.const 0
     local.set $13
     local.get $10
     local.get $11
     i32.const 0
     i32.shl
     i32.add
     local.get $13
     i32.add
     local.get $14
     i32.store8 offset=8
    end
    local.get $9
    i32.const 1
    i32.add
    local.set $9
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $7
 )
 (func $std/typedarray/testArrayMap<Uint8ClampedArray,u8> (; 134 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  i32.const 26
  call $~lib/typedarray/Uint8ClampedArray#map
  local.set $1
  local.get $1
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
  local.get $1
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
  local.get $1
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
 (func $std/typedarray/testArrayMap<Int16Array,i16>~anonymous|27 (; 135 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  local.get $0
  i32.mul
 )
 (func $~lib/typedarray/Int16Array#map (; 136 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  local.get $0
  local.set $2
  local.get $1
  local.set $3
  block $~lib/internal/typedarray/TypedArray<i16>#get:length|inlined.3 (result i32)
   local.get $2
   local.set $4
   local.get $4
   i32.load offset=8
   i32.const 1
   i32.shr_u
  end
  local.set $4
  local.get $2
  i32.load
  local.set $5
  local.get $2
  i32.load offset=4
  local.set $6
  i32.const 0
  local.get $4
  call $~lib/typedarray/Int16Array#constructor
  local.set $7
  local.get $7
  i32.load
  local.set $8
  block $break|0
   i32.const 0
   local.set $9
   loop $repeat|0
    local.get $9
    local.get $4
    i32.lt_s
    i32.eqz
    br_if $break|0
    block $~lib/internal/arraybuffer/STORE<i16,i32>|inlined.1
     local.get $8
     local.set $10
     local.get $9
     local.set $11
     block (result i32)
      i32.const 3
      global.set $~lib/argc
      block $~lib/internal/arraybuffer/LOAD<i16,i16>|inlined.2 (result i32)
       local.get $5
       local.set $12
       local.get $9
       local.set $13
       local.get $6
       local.set $14
       local.get $12
       local.get $13
       i32.const 1
       i32.shl
       i32.add
       local.get $14
       i32.add
       i32.load16_s offset=8
      end
      local.get $9
      local.get $2
      local.get $3
      call_indirect (type $iiii)
     end
     i32.const 16
     i32.shl
     i32.const 16
     i32.shr_s
     local.set $14
     i32.const 0
     local.set $13
     local.get $10
     local.get $11
     i32.const 1
     i32.shl
     i32.add
     local.get $13
     i32.add
     local.get $14
     i32.store16 offset=8
    end
    local.get $9
    i32.const 1
    i32.add
    local.set $9
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $7
 )
 (func $~lib/internal/typedarray/TypedArray<i16>#__get (; 137 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  local.get $0
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
   local.get $0
   i32.load
   local.set $2
   local.get $1
   local.set $3
   local.get $0
   i32.load offset=4
   local.set $4
   local.get $2
   local.get $3
   i32.const 1
   i32.shl
   i32.add
   local.get $4
   i32.add
   i32.load16_s offset=8
  end
 )
 (func $std/typedarray/testArrayMap<Int16Array,i16> (; 138 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i16>#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i16>#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i16>#__set
  local.get $0
  i32.const 27
  call $~lib/typedarray/Int16Array#map
  local.set $1
  local.get $1
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
  local.get $1
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
  local.get $1
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
 (func $std/typedarray/testArrayMap<Uint16Array,u16>~anonymous|28 (; 139 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  local.get $0
  i32.mul
 )
 (func $~lib/typedarray/Uint16Array#map (; 140 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  local.get $0
  local.set $2
  local.get $1
  local.set $3
  block $~lib/internal/typedarray/TypedArray<u16>#get:length|inlined.3 (result i32)
   local.get $2
   local.set $4
   local.get $4
   i32.load offset=8
   i32.const 1
   i32.shr_u
  end
  local.set $4
  local.get $2
  i32.load
  local.set $5
  local.get $2
  i32.load offset=4
  local.set $6
  i32.const 0
  local.get $4
  call $~lib/typedarray/Uint16Array#constructor
  local.set $7
  local.get $7
  i32.load
  local.set $8
  block $break|0
   i32.const 0
   local.set $9
   loop $repeat|0
    local.get $9
    local.get $4
    i32.lt_s
    i32.eqz
    br_if $break|0
    block $~lib/internal/arraybuffer/STORE<u16,u32>|inlined.1
     local.get $8
     local.set $10
     local.get $9
     local.set $11
     block (result i32)
      i32.const 3
      global.set $~lib/argc
      block $~lib/internal/arraybuffer/LOAD<u16,u16>|inlined.2 (result i32)
       local.get $5
       local.set $12
       local.get $9
       local.set $13
       local.get $6
       local.set $14
       local.get $12
       local.get $13
       i32.const 1
       i32.shl
       i32.add
       local.get $14
       i32.add
       i32.load16_u offset=8
      end
      local.get $9
      local.get $2
      local.get $3
      call_indirect (type $iiii)
     end
     i32.const 65535
     i32.and
     local.set $14
     i32.const 0
     local.set $13
     local.get $10
     local.get $11
     i32.const 1
     i32.shl
     i32.add
     local.get $13
     i32.add
     local.get $14
     i32.store16 offset=8
    end
    local.get $9
    i32.const 1
    i32.add
    local.set $9
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $7
 )
 (func $~lib/internal/typedarray/TypedArray<u16>#__get (; 141 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  local.get $0
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
   local.get $0
   i32.load
   local.set $2
   local.get $1
   local.set $3
   local.get $0
   i32.load offset=4
   local.set $4
   local.get $2
   local.get $3
   i32.const 1
   i32.shl
   i32.add
   local.get $4
   i32.add
   i32.load16_u offset=8
  end
 )
 (func $std/typedarray/testArrayMap<Uint16Array,u16> (; 142 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint16Array#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u16>#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u16>#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u16>#__set
  local.get $0
  i32.const 28
  call $~lib/typedarray/Uint16Array#map
  local.set $1
  local.get $1
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
  local.get $1
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
  local.get $1
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
 (func $std/typedarray/testArrayMap<Int32Array,i32>~anonymous|29 (; 143 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  local.get $0
  i32.mul
 )
 (func $~lib/typedarray/Int32Array#map (; 144 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  local.get $0
  local.set $2
  local.get $1
  local.set $3
  block $~lib/internal/typedarray/TypedArray<i32>#get:length|inlined.11 (result i32)
   local.get $2
   local.set $4
   local.get $4
   i32.load offset=8
   i32.const 2
   i32.shr_u
  end
  local.set $4
  local.get $2
  i32.load
  local.set $5
  local.get $2
  i32.load offset=4
  local.set $6
  i32.const 0
  local.get $4
  call $~lib/typedarray/Int32Array#constructor
  local.set $7
  local.get $7
  i32.load
  local.set $8
  block $break|0
   i32.const 0
   local.set $9
   loop $repeat|0
    local.get $9
    local.get $4
    i32.lt_s
    i32.eqz
    br_if $break|0
    block $~lib/internal/arraybuffer/STORE<i32,i32>|inlined.2
     local.get $8
     local.set $10
     local.get $9
     local.set $11
     block (result i32)
      i32.const 3
      global.set $~lib/argc
      block $~lib/internal/arraybuffer/LOAD<i32,i32>|inlined.4 (result i32)
       local.get $5
       local.set $12
       local.get $9
       local.set $13
       local.get $6
       local.set $14
       local.get $12
       local.get $13
       i32.const 2
       i32.shl
       i32.add
       local.get $14
       i32.add
       i32.load offset=8
      end
      local.get $9
      local.get $2
      local.get $3
      call_indirect (type $iiii)
     end
     local.set $14
     i32.const 0
     local.set $13
     local.get $10
     local.get $11
     i32.const 2
     i32.shl
     i32.add
     local.get $13
     i32.add
     local.get $14
     i32.store offset=8
    end
    local.get $9
    i32.const 1
    i32.add
    local.set $9
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $7
 )
 (func $std/typedarray/testArrayMap<Int32Array,i32> (; 145 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  local.get $0
  i32.const 29
  call $~lib/typedarray/Int32Array#map
  local.set $1
  local.get $1
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
  local.get $1
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
  local.get $1
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
 (func $std/typedarray/testArrayMap<Uint32Array,u32>~anonymous|30 (; 146 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  local.get $0
  i32.mul
 )
 (func $~lib/typedarray/Uint32Array#map (; 147 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  local.get $0
  local.set $2
  local.get $1
  local.set $3
  block $~lib/internal/typedarray/TypedArray<u32>#get:length|inlined.3 (result i32)
   local.get $2
   local.set $4
   local.get $4
   i32.load offset=8
   i32.const 2
   i32.shr_u
  end
  local.set $4
  local.get $2
  i32.load
  local.set $5
  local.get $2
  i32.load offset=4
  local.set $6
  i32.const 0
  local.get $4
  call $~lib/typedarray/Uint32Array#constructor
  local.set $7
  local.get $7
  i32.load
  local.set $8
  block $break|0
   i32.const 0
   local.set $9
   loop $repeat|0
    local.get $9
    local.get $4
    i32.lt_s
    i32.eqz
    br_if $break|0
    block $~lib/internal/arraybuffer/STORE<u32,u32>|inlined.1
     local.get $8
     local.set $10
     local.get $9
     local.set $11
     block (result i32)
      i32.const 3
      global.set $~lib/argc
      block $~lib/internal/arraybuffer/LOAD<u32,u32>|inlined.2 (result i32)
       local.get $5
       local.set $12
       local.get $9
       local.set $13
       local.get $6
       local.set $14
       local.get $12
       local.get $13
       i32.const 2
       i32.shl
       i32.add
       local.get $14
       i32.add
       i32.load offset=8
      end
      local.get $9
      local.get $2
      local.get $3
      call_indirect (type $iiii)
     end
     local.set $14
     i32.const 0
     local.set $13
     local.get $10
     local.get $11
     i32.const 2
     i32.shl
     i32.add
     local.get $13
     i32.add
     local.get $14
     i32.store offset=8
    end
    local.get $9
    i32.const 1
    i32.add
    local.set $9
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $7
 )
 (func $~lib/internal/typedarray/TypedArray<u32>#__get (; 148 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  local.get $0
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
   local.get $0
   i32.load
   local.set $2
   local.get $1
   local.set $3
   local.get $0
   i32.load offset=4
   local.set $4
   local.get $2
   local.get $3
   i32.const 2
   i32.shl
   i32.add
   local.get $4
   i32.add
   i32.load offset=8
  end
 )
 (func $std/typedarray/testArrayMap<Uint32Array,u32> (; 149 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint32Array#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u32>#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u32>#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u32>#__set
  local.get $0
  i32.const 30
  call $~lib/typedarray/Uint32Array#map
  local.set $1
  local.get $1
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
  local.get $1
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
  local.get $1
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
 (func $std/typedarray/testArrayMap<Int64Array,i64>~anonymous|31 (; 150 ;) (type $IiiI) (param $0 i64) (param $1 i32) (param $2 i32) (result i64)
  local.get $0
  local.get $0
  i64.mul
 )
 (func $~lib/typedarray/Int64Array#map (; 151 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i64)
  local.get $0
  local.set $2
  local.get $1
  local.set $3
  block $~lib/internal/typedarray/TypedArray<i64>#get:length|inlined.3 (result i32)
   local.get $2
   local.set $4
   local.get $4
   i32.load offset=8
   i32.const 3
   i32.shr_u
  end
  local.set $4
  local.get $2
  i32.load
  local.set $5
  local.get $2
  i32.load offset=4
  local.set $6
  i32.const 0
  local.get $4
  call $~lib/typedarray/Int64Array#constructor
  local.set $7
  local.get $7
  i32.load
  local.set $8
  block $break|0
   i32.const 0
   local.set $9
   loop $repeat|0
    local.get $9
    local.get $4
    i32.lt_s
    i32.eqz
    br_if $break|0
    block $~lib/internal/arraybuffer/STORE<i64,i64>|inlined.1
     local.get $8
     local.set $10
     local.get $9
     local.set $11
     block (result i64)
      i32.const 3
      global.set $~lib/argc
      block $~lib/internal/arraybuffer/LOAD<i64,i64>|inlined.2 (result i64)
       local.get $5
       local.set $12
       local.get $9
       local.set $13
       local.get $6
       local.set $14
       local.get $12
       local.get $13
       i32.const 3
       i32.shl
       i32.add
       local.get $14
       i32.add
       i64.load offset=8
      end
      local.get $9
      local.get $2
      local.get $3
      call_indirect (type $IiiI)
     end
     local.set $15
     i32.const 0
     local.set $14
     local.get $10
     local.get $11
     i32.const 3
     i32.shl
     i32.add
     local.get $14
     i32.add
     local.get $15
     i64.store offset=8
    end
    local.get $9
    i32.const 1
    i32.add
    local.set $9
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $7
 )
 (func $~lib/internal/typedarray/TypedArray<i64>#__get (; 152 ;) (type $iiI) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  local.get $0
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
   local.get $0
   i32.load
   local.set $2
   local.get $1
   local.set $3
   local.get $0
   i32.load offset=4
   local.set $4
   local.get $2
   local.get $3
   i32.const 3
   i32.shl
   i32.add
   local.get $4
   i32.add
   i64.load offset=8
  end
 )
 (func $std/typedarray/testArrayMap<Int64Array,i64> (; 153 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.set $0
  local.get $0
  i32.const 0
  i64.const 1
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  local.get $0
  i32.const 1
  i64.const 2
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  local.get $0
  i32.const 2
  i64.const 3
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  local.get $0
  i32.const 31
  call $~lib/typedarray/Int64Array#map
  local.set $1
  local.get $1
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
  local.get $1
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
  local.get $1
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
 (func $std/typedarray/testArrayMap<Uint64Array,u64>~anonymous|32 (; 154 ;) (type $IiiI) (param $0 i64) (param $1 i32) (param $2 i32) (result i64)
  local.get $0
  local.get $0
  i64.mul
 )
 (func $~lib/typedarray/Uint64Array#map (; 155 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i64)
  local.get $0
  local.set $2
  local.get $1
  local.set $3
  block $~lib/internal/typedarray/TypedArray<u64>#get:length|inlined.3 (result i32)
   local.get $2
   local.set $4
   local.get $4
   i32.load offset=8
   i32.const 3
   i32.shr_u
  end
  local.set $4
  local.get $2
  i32.load
  local.set $5
  local.get $2
  i32.load offset=4
  local.set $6
  i32.const 0
  local.get $4
  call $~lib/typedarray/Uint64Array#constructor
  local.set $7
  local.get $7
  i32.load
  local.set $8
  block $break|0
   i32.const 0
   local.set $9
   loop $repeat|0
    local.get $9
    local.get $4
    i32.lt_s
    i32.eqz
    br_if $break|0
    block $~lib/internal/arraybuffer/STORE<u64,u64>|inlined.1
     local.get $8
     local.set $10
     local.get $9
     local.set $11
     block (result i64)
      i32.const 3
      global.set $~lib/argc
      block $~lib/internal/arraybuffer/LOAD<u64,u64>|inlined.2 (result i64)
       local.get $5
       local.set $12
       local.get $9
       local.set $13
       local.get $6
       local.set $14
       local.get $12
       local.get $13
       i32.const 3
       i32.shl
       i32.add
       local.get $14
       i32.add
       i64.load offset=8
      end
      local.get $9
      local.get $2
      local.get $3
      call_indirect (type $IiiI)
     end
     local.set $15
     i32.const 0
     local.set $14
     local.get $10
     local.get $11
     i32.const 3
     i32.shl
     i32.add
     local.get $14
     i32.add
     local.get $15
     i64.store offset=8
    end
    local.get $9
    i32.const 1
    i32.add
    local.set $9
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $7
 )
 (func $~lib/internal/typedarray/TypedArray<u64>#__get (; 156 ;) (type $iiI) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  local.get $0
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
   local.get $0
   i32.load
   local.set $2
   local.get $1
   local.set $3
   local.get $0
   i32.load offset=4
   local.set $4
   local.get $2
   local.get $3
   i32.const 3
   i32.shl
   i32.add
   local.get $4
   i32.add
   i64.load offset=8
  end
 )
 (func $std/typedarray/testArrayMap<Uint64Array,u64> (; 157 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint64Array#constructor
  local.set $0
  local.get $0
  i32.const 0
  i64.const 1
  call $~lib/internal/typedarray/TypedArray<u64>#__set
  local.get $0
  i32.const 1
  i64.const 2
  call $~lib/internal/typedarray/TypedArray<u64>#__set
  local.get $0
  i32.const 2
  i64.const 3
  call $~lib/internal/typedarray/TypedArray<u64>#__set
  local.get $0
  i32.const 32
  call $~lib/typedarray/Uint64Array#map
  local.set $1
  local.get $1
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
  local.get $1
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
  local.get $1
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
 (func $std/typedarray/testArrayMap<Float32Array,f32>~anonymous|33 (; 158 ;) (type $fiif) (param $0 f32) (param $1 i32) (param $2 i32) (result f32)
  local.get $0
  local.get $0
  f32.mul
 )
 (func $~lib/typedarray/Float32Array#map (; 159 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 f32)
  local.get $0
  local.set $2
  local.get $1
  local.set $3
  block $~lib/internal/typedarray/TypedArray<f32>#get:length|inlined.3 (result i32)
   local.get $2
   local.set $4
   local.get $4
   i32.load offset=8
   i32.const 2
   i32.shr_u
  end
  local.set $4
  local.get $2
  i32.load
  local.set $5
  local.get $2
  i32.load offset=4
  local.set $6
  i32.const 0
  local.get $4
  call $~lib/typedarray/Float32Array#constructor
  local.set $7
  local.get $7
  i32.load
  local.set $8
  block $break|0
   i32.const 0
   local.set $9
   loop $repeat|0
    local.get $9
    local.get $4
    i32.lt_s
    i32.eqz
    br_if $break|0
    block $~lib/internal/arraybuffer/STORE<f32,f32>|inlined.1
     local.get $8
     local.set $10
     local.get $9
     local.set $11
     block (result f32)
      i32.const 3
      global.set $~lib/argc
      block $~lib/internal/arraybuffer/LOAD<f32,f32>|inlined.2 (result f32)
       local.get $5
       local.set $12
       local.get $9
       local.set $13
       local.get $6
       local.set $14
       local.get $12
       local.get $13
       i32.const 2
       i32.shl
       i32.add
       local.get $14
       i32.add
       f32.load offset=8
      end
      local.get $9
      local.get $2
      local.get $3
      call_indirect (type $fiif)
     end
     local.set $15
     i32.const 0
     local.set $14
     local.get $10
     local.get $11
     i32.const 2
     i32.shl
     i32.add
     local.get $14
     i32.add
     local.get $15
     f32.store offset=8
    end
    local.get $9
    i32.const 1
    i32.add
    local.set $9
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $7
 )
 (func $~lib/internal/typedarray/TypedArray<f32>#__get (; 160 ;) (type $iif) (param $0 i32) (param $1 i32) (result f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  local.get $0
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
   local.get $0
   i32.load
   local.set $2
   local.get $1
   local.set $3
   local.get $0
   i32.load offset=4
   local.set $4
   local.get $2
   local.get $3
   i32.const 2
   i32.shl
   i32.add
   local.get $4
   i32.add
   f32.load offset=8
  end
 )
 (func $std/typedarray/testArrayMap<Float32Array,f32> (; 161 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Float32Array#constructor
  local.set $0
  local.get $0
  i32.const 0
  f32.const 1
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  local.get $0
  i32.const 1
  f32.const 2
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  local.get $0
  i32.const 2
  f32.const 3
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  local.get $0
  i32.const 33
  call $~lib/typedarray/Float32Array#map
  local.set $1
  local.get $1
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
  local.get $1
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
  local.get $1
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
 (func $std/typedarray/testArrayMap<Float64Array,f64>~anonymous|34 (; 162 ;) (type $FiiF) (param $0 f64) (param $1 i32) (param $2 i32) (result f64)
  local.get $0
  local.get $0
  f64.mul
 )
 (func $~lib/typedarray/Float64Array#map (; 163 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 f64)
  local.get $0
  local.set $2
  local.get $1
  local.set $3
  block $~lib/internal/typedarray/TypedArray<f64>#get:length|inlined.6 (result i32)
   local.get $2
   local.set $4
   local.get $4
   i32.load offset=8
   i32.const 3
   i32.shr_u
  end
  local.set $4
  local.get $2
  i32.load
  local.set $5
  local.get $2
  i32.load offset=4
  local.set $6
  i32.const 0
  local.get $4
  call $~lib/typedarray/Float64Array#constructor
  local.set $7
  local.get $7
  i32.load
  local.set $8
  block $break|0
   i32.const 0
   local.set $9
   loop $repeat|0
    local.get $9
    local.get $4
    i32.lt_s
    i32.eqz
    br_if $break|0
    block $~lib/internal/arraybuffer/STORE<f64,f64>|inlined.13
     local.get $8
     local.set $10
     local.get $9
     local.set $11
     block (result f64)
      i32.const 3
      global.set $~lib/argc
      block $~lib/internal/arraybuffer/LOAD<f64,f64>|inlined.15 (result f64)
       local.get $5
       local.set $12
       local.get $9
       local.set $13
       local.get $6
       local.set $14
       local.get $12
       local.get $13
       i32.const 3
       i32.shl
       i32.add
       local.get $14
       i32.add
       f64.load offset=8
      end
      local.get $9
      local.get $2
      local.get $3
      call_indirect (type $FiiF)
     end
     local.set $15
     i32.const 0
     local.set $14
     local.get $10
     local.get $11
     i32.const 3
     i32.shl
     i32.add
     local.get $14
     i32.add
     local.get $15
     f64.store offset=8
    end
    local.get $9
    i32.const 1
    i32.add
    local.set $9
    br $repeat|0
    unreachable
   end
   unreachable
  end
  local.get $7
 )
 (func $std/typedarray/testArrayMap<Float64Array,f64> (; 164 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Float64Array#constructor
  local.set $0
  local.get $0
  i32.const 0
  f64.const 1
  call $~lib/internal/typedarray/TypedArray<f64>#__set
  local.get $0
  i32.const 1
  f64.const 2
  call $~lib/internal/typedarray/TypedArray<f64>#__set
  local.get $0
  i32.const 2
  f64.const 3
  call $~lib/internal/typedarray/TypedArray<f64>#__set
  local.get $0
  i32.const 34
  call $~lib/typedarray/Float64Array#map
  local.set $1
  local.get $1
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
  local.get $1
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
  local.get $1
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
 (func $std/typedarray/testArraySome<Int8Array,i8>~anonymous|35 (; 165 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 2
  i32.eq
 )
 (func $~lib/typedarray/Int8Array#some (; 166 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  block $~lib/internal/typedarray/SOME<Int8Array,i8>|inlined.0 (result i32)
   local.get $0
   local.set $2
   local.get $1
   local.set $3
   block $~lib/internal/typedarray/TypedArray<i8>#get:length|inlined.13 (result i32)
    local.get $2
    local.set $4
    local.get $4
    i32.load offset=8
    i32.const 0
    i32.shr_u
   end
   local.set $4
   local.get $2
   i32.load
   local.set $5
   local.get $2
   i32.load offset=4
   local.set $6
   block $break|0
    i32.const 0
    local.set $7
    loop $repeat|0
     local.get $7
     local.get $4
     i32.lt_s
     i32.eqz
     br_if $break|0
     block (result i32)
      i32.const 3
      global.set $~lib/argc
      block $~lib/internal/arraybuffer/LOAD<i8,i8>|inlined.6 (result i32)
       local.get $5
       local.set $10
       local.get $7
       local.set $9
       local.get $6
       local.set $8
       local.get $10
       local.get $9
       i32.const 0
       i32.shl
       i32.add
       local.get $8
       i32.add
       i32.load8_s offset=8
      end
      local.get $7
      local.get $2
      local.get $3
      call_indirect (type $iiii)
     end
     i32.const 0
     i32.ne
     if
      i32.const 1
      br $~lib/internal/typedarray/SOME<Int8Array,i8>|inlined.0
     end
     local.get $7
     i32.const 1
     i32.add
     local.set $7
     br $repeat|0
     unreachable
    end
    unreachable
   end
   i32.const 0
  end
 )
 (func $std/typedarray/testArraySome<Int8Array,i8>~anonymous|36 (; 167 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 0
  i32.eq
 )
 (func $std/typedarray/testArraySome<Int8Array,i8> (; 168 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i8>#__set
  local.get $0
  i32.const 1
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<i8>#__set
  local.get $0
  i32.const 2
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<i8>#__set
  local.get $0
  i32.const 35
  call $~lib/typedarray/Int8Array#some
  local.set $1
  local.get $1
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
  local.get $0
  i32.const 36
  call $~lib/typedarray/Int8Array#some
  local.set $2
  local.get $2
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
 (func $std/typedarray/testArraySome<Uint8Array,u8>~anonymous|37 (; 169 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 255
  i32.and
  i32.const 2
  i32.eq
 )
 (func $~lib/typedarray/Uint8Array#some (; 170 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  block $~lib/internal/typedarray/SOME<Uint8Array,u8>|inlined.0 (result i32)
   local.get $0
   local.set $2
   local.get $1
   local.set $3
   block $~lib/internal/typedarray/TypedArray<u8>#get:length|inlined.6 (result i32)
    local.get $2
    local.set $4
    local.get $4
    i32.load offset=8
    i32.const 0
    i32.shr_u
   end
   local.set $4
   local.get $2
   i32.load
   local.set $5
   local.get $2
   i32.load offset=4
   local.set $6
   block $break|0
    i32.const 0
    local.set $7
    loop $repeat|0
     local.get $7
     local.get $4
     i32.lt_s
     i32.eqz
     br_if $break|0
     block (result i32)
      i32.const 3
      global.set $~lib/argc
      block $~lib/internal/arraybuffer/LOAD<u8,u8>|inlined.6 (result i32)
       local.get $5
       local.set $10
       local.get $7
       local.set $9
       local.get $6
       local.set $8
       local.get $10
       local.get $9
       i32.const 0
       i32.shl
       i32.add
       local.get $8
       i32.add
       i32.load8_u offset=8
      end
      local.get $7
      local.get $2
      local.get $3
      call_indirect (type $iiii)
     end
     i32.const 0
     i32.ne
     if
      i32.const 1
      br $~lib/internal/typedarray/SOME<Uint8Array,u8>|inlined.0
     end
     local.get $7
     i32.const 1
     i32.add
     local.set $7
     br $repeat|0
     unreachable
    end
    unreachable
   end
   i32.const 0
  end
 )
 (func $std/typedarray/testArraySome<Uint8Array,u8>~anonymous|38 (; 171 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 255
  i32.and
  i32.const 0
  i32.eq
 )
 (func $std/typedarray/testArraySome<Uint8Array,u8> (; 172 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint8Array#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  local.get $0
  i32.const 1
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  local.get $0
  i32.const 2
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  local.get $0
  i32.const 37
  call $~lib/typedarray/Uint8Array#some
  local.set $1
  local.get $1
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
  local.get $0
  i32.const 38
  call $~lib/typedarray/Uint8Array#some
  local.set $2
  local.get $2
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
 (func $std/typedarray/testArraySome<Uint8ClampedArray,u8>~anonymous|39 (; 173 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 255
  i32.and
  i32.const 2
  i32.eq
 )
 (func $~lib/typedarray/Uint8ClampedArray#some (; 174 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  block $~lib/internal/typedarray/SOME<Uint8ClampedArray,u8>|inlined.0 (result i32)
   local.get $0
   local.set $2
   local.get $1
   local.set $3
   block $~lib/internal/typedarray/TypedArray<u8>#get:length|inlined.7 (result i32)
    local.get $2
    local.set $4
    local.get $4
    i32.load offset=8
    i32.const 0
    i32.shr_u
   end
   local.set $4
   local.get $2
   i32.load
   local.set $5
   local.get $2
   i32.load offset=4
   local.set $6
   block $break|0
    i32.const 0
    local.set $7
    loop $repeat|0
     local.get $7
     local.get $4
     i32.lt_s
     i32.eqz
     br_if $break|0
     block (result i32)
      i32.const 3
      global.set $~lib/argc
      block $~lib/internal/arraybuffer/LOAD<u8,u8>|inlined.8 (result i32)
       local.get $5
       local.set $10
       local.get $7
       local.set $9
       local.get $6
       local.set $8
       local.get $10
       local.get $9
       i32.const 0
       i32.shl
       i32.add
       local.get $8
       i32.add
       i32.load8_u offset=8
      end
      local.get $7
      local.get $2
      local.get $3
      call_indirect (type $iiii)
     end
     i32.const 0
     i32.ne
     if
      i32.const 1
      br $~lib/internal/typedarray/SOME<Uint8ClampedArray,u8>|inlined.0
     end
     local.get $7
     i32.const 1
     i32.add
     local.set $7
     br $repeat|0
     unreachable
    end
    unreachable
   end
   i32.const 0
  end
 )
 (func $std/typedarray/testArraySome<Uint8ClampedArray,u8>~anonymous|40 (; 175 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 255
  i32.and
  i32.const 0
  i32.eq
 )
 (func $std/typedarray/testArraySome<Uint8ClampedArray,u8> (; 176 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  i32.const 39
  call $~lib/typedarray/Uint8ClampedArray#some
  local.set $1
  local.get $1
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
  local.get $0
  i32.const 40
  call $~lib/typedarray/Uint8ClampedArray#some
  local.set $2
  local.get $2
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
 (func $std/typedarray/testArraySome<Int16Array,i16>~anonymous|41 (; 177 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 2
  i32.eq
 )
 (func $~lib/typedarray/Int16Array#some (; 178 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  block $~lib/internal/typedarray/SOME<Int16Array,i16>|inlined.0 (result i32)
   local.get $0
   local.set $2
   local.get $1
   local.set $3
   block $~lib/internal/typedarray/TypedArray<i16>#get:length|inlined.4 (result i32)
    local.get $2
    local.set $4
    local.get $4
    i32.load offset=8
    i32.const 1
    i32.shr_u
   end
   local.set $4
   local.get $2
   i32.load
   local.set $5
   local.get $2
   i32.load offset=4
   local.set $6
   block $break|0
    i32.const 0
    local.set $7
    loop $repeat|0
     local.get $7
     local.get $4
     i32.lt_s
     i32.eqz
     br_if $break|0
     block (result i32)
      i32.const 3
      global.set $~lib/argc
      block $~lib/internal/arraybuffer/LOAD<i16,i16>|inlined.5 (result i32)
       local.get $5
       local.set $10
       local.get $7
       local.set $9
       local.get $6
       local.set $8
       local.get $10
       local.get $9
       i32.const 1
       i32.shl
       i32.add
       local.get $8
       i32.add
       i32.load16_s offset=8
      end
      local.get $7
      local.get $2
      local.get $3
      call_indirect (type $iiii)
     end
     i32.const 0
     i32.ne
     if
      i32.const 1
      br $~lib/internal/typedarray/SOME<Int16Array,i16>|inlined.0
     end
     local.get $7
     i32.const 1
     i32.add
     local.set $7
     br $repeat|0
     unreachable
    end
    unreachable
   end
   i32.const 0
  end
 )
 (func $std/typedarray/testArraySome<Int16Array,i16>~anonymous|42 (; 179 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 0
  i32.eq
 )
 (func $std/typedarray/testArraySome<Int16Array,i16> (; 180 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i16>#__set
  local.get $0
  i32.const 1
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<i16>#__set
  local.get $0
  i32.const 2
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<i16>#__set
  local.get $0
  i32.const 41
  call $~lib/typedarray/Int16Array#some
  local.set $1
  local.get $1
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
  local.get $0
  i32.const 42
  call $~lib/typedarray/Int16Array#some
  local.set $2
  local.get $2
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
 (func $std/typedarray/testArraySome<Uint16Array,u16>~anonymous|43 (; 181 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 65535
  i32.and
  i32.const 2
  i32.eq
 )
 (func $~lib/typedarray/Uint16Array#some (; 182 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  block $~lib/internal/typedarray/SOME<Uint16Array,u16>|inlined.0 (result i32)
   local.get $0
   local.set $2
   local.get $1
   local.set $3
   block $~lib/internal/typedarray/TypedArray<u16>#get:length|inlined.4 (result i32)
    local.get $2
    local.set $4
    local.get $4
    i32.load offset=8
    i32.const 1
    i32.shr_u
   end
   local.set $4
   local.get $2
   i32.load
   local.set $5
   local.get $2
   i32.load offset=4
   local.set $6
   block $break|0
    i32.const 0
    local.set $7
    loop $repeat|0
     local.get $7
     local.get $4
     i32.lt_s
     i32.eqz
     br_if $break|0
     block (result i32)
      i32.const 3
      global.set $~lib/argc
      block $~lib/internal/arraybuffer/LOAD<u16,u16>|inlined.5 (result i32)
       local.get $5
       local.set $10
       local.get $7
       local.set $9
       local.get $6
       local.set $8
       local.get $10
       local.get $9
       i32.const 1
       i32.shl
       i32.add
       local.get $8
       i32.add
       i32.load16_u offset=8
      end
      local.get $7
      local.get $2
      local.get $3
      call_indirect (type $iiii)
     end
     i32.const 0
     i32.ne
     if
      i32.const 1
      br $~lib/internal/typedarray/SOME<Uint16Array,u16>|inlined.0
     end
     local.get $7
     i32.const 1
     i32.add
     local.set $7
     br $repeat|0
     unreachable
    end
    unreachable
   end
   i32.const 0
  end
 )
 (func $std/typedarray/testArraySome<Uint16Array,u16>~anonymous|44 (; 183 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 65535
  i32.and
  i32.const 0
  i32.eq
 )
 (func $std/typedarray/testArraySome<Uint16Array,u16> (; 184 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint16Array#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u16>#__set
  local.get $0
  i32.const 1
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<u16>#__set
  local.get $0
  i32.const 2
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<u16>#__set
  local.get $0
  i32.const 43
  call $~lib/typedarray/Uint16Array#some
  local.set $1
  local.get $1
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
  local.get $0
  i32.const 44
  call $~lib/typedarray/Uint16Array#some
  local.set $2
  local.get $2
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
 (func $std/typedarray/testArraySome<Int32Array,i32>~anonymous|45 (; 185 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 2
  i32.eq
 )
 (func $~lib/typedarray/Int32Array#some (; 186 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  block $~lib/internal/typedarray/SOME<Int32Array,i32>|inlined.0 (result i32)
   local.get $0
   local.set $2
   local.get $1
   local.set $3
   block $~lib/internal/typedarray/TypedArray<i32>#get:length|inlined.12 (result i32)
    local.get $2
    local.set $4
    local.get $4
    i32.load offset=8
    i32.const 2
    i32.shr_u
   end
   local.set $4
   local.get $2
   i32.load
   local.set $5
   local.get $2
   i32.load offset=4
   local.set $6
   block $break|0
    i32.const 0
    local.set $7
    loop $repeat|0
     local.get $7
     local.get $4
     i32.lt_s
     i32.eqz
     br_if $break|0
     block (result i32)
      i32.const 3
      global.set $~lib/argc
      block $~lib/internal/arraybuffer/LOAD<i32,i32>|inlined.6 (result i32)
       local.get $5
       local.set $10
       local.get $7
       local.set $9
       local.get $6
       local.set $8
       local.get $10
       local.get $9
       i32.const 2
       i32.shl
       i32.add
       local.get $8
       i32.add
       i32.load offset=8
      end
      local.get $7
      local.get $2
      local.get $3
      call_indirect (type $iiii)
     end
     i32.const 0
     i32.ne
     if
      i32.const 1
      br $~lib/internal/typedarray/SOME<Int32Array,i32>|inlined.0
     end
     local.get $7
     i32.const 1
     i32.add
     local.set $7
     br $repeat|0
     unreachable
    end
    unreachable
   end
   i32.const 0
  end
 )
 (func $std/typedarray/testArraySome<Int32Array,i32>~anonymous|46 (; 187 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 0
  i32.eq
 )
 (func $std/typedarray/testArraySome<Int32Array,i32> (; 188 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  local.get $0
  i32.const 1
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  local.get $0
  i32.const 2
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  local.get $0
  i32.const 45
  call $~lib/typedarray/Int32Array#some
  local.set $1
  local.get $1
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
  local.get $0
  i32.const 46
  call $~lib/typedarray/Int32Array#some
  local.set $2
  local.get $2
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
 (func $std/typedarray/testArraySome<Uint32Array,u32>~anonymous|47 (; 189 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 2
  i32.eq
 )
 (func $~lib/typedarray/Uint32Array#some (; 190 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  block $~lib/internal/typedarray/SOME<Uint32Array,u32>|inlined.0 (result i32)
   local.get $0
   local.set $2
   local.get $1
   local.set $3
   block $~lib/internal/typedarray/TypedArray<u32>#get:length|inlined.4 (result i32)
    local.get $2
    local.set $4
    local.get $4
    i32.load offset=8
    i32.const 2
    i32.shr_u
   end
   local.set $4
   local.get $2
   i32.load
   local.set $5
   local.get $2
   i32.load offset=4
   local.set $6
   block $break|0
    i32.const 0
    local.set $7
    loop $repeat|0
     local.get $7
     local.get $4
     i32.lt_s
     i32.eqz
     br_if $break|0
     block (result i32)
      i32.const 3
      global.set $~lib/argc
      block $~lib/internal/arraybuffer/LOAD<u32,u32>|inlined.5 (result i32)
       local.get $5
       local.set $10
       local.get $7
       local.set $9
       local.get $6
       local.set $8
       local.get $10
       local.get $9
       i32.const 2
       i32.shl
       i32.add
       local.get $8
       i32.add
       i32.load offset=8
      end
      local.get $7
      local.get $2
      local.get $3
      call_indirect (type $iiii)
     end
     i32.const 0
     i32.ne
     if
      i32.const 1
      br $~lib/internal/typedarray/SOME<Uint32Array,u32>|inlined.0
     end
     local.get $7
     i32.const 1
     i32.add
     local.set $7
     br $repeat|0
     unreachable
    end
    unreachable
   end
   i32.const 0
  end
 )
 (func $std/typedarray/testArraySome<Uint32Array,u32>~anonymous|48 (; 191 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 0
  i32.eq
 )
 (func $std/typedarray/testArraySome<Uint32Array,u32> (; 192 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint32Array#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u32>#__set
  local.get $0
  i32.const 1
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<u32>#__set
  local.get $0
  i32.const 2
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<u32>#__set
  local.get $0
  i32.const 47
  call $~lib/typedarray/Uint32Array#some
  local.set $1
  local.get $1
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
  local.get $0
  i32.const 48
  call $~lib/typedarray/Uint32Array#some
  local.set $2
  local.get $2
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
 (func $std/typedarray/testArraySome<Int64Array,i64>~anonymous|49 (; 193 ;) (type $Iiii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i64.const 2
  i64.eq
 )
 (func $~lib/typedarray/Int64Array#some (; 194 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  block $~lib/internal/typedarray/SOME<Int64Array,i64>|inlined.0 (result i32)
   local.get $0
   local.set $2
   local.get $1
   local.set $3
   block $~lib/internal/typedarray/TypedArray<i64>#get:length|inlined.4 (result i32)
    local.get $2
    local.set $4
    local.get $4
    i32.load offset=8
    i32.const 3
    i32.shr_u
   end
   local.set $4
   local.get $2
   i32.load
   local.set $5
   local.get $2
   i32.load offset=4
   local.set $6
   block $break|0
    i32.const 0
    local.set $7
    loop $repeat|0
     local.get $7
     local.get $4
     i32.lt_s
     i32.eqz
     br_if $break|0
     block (result i32)
      i32.const 3
      global.set $~lib/argc
      block $~lib/internal/arraybuffer/LOAD<i64,i64>|inlined.5 (result i64)
       local.get $5
       local.set $10
       local.get $7
       local.set $9
       local.get $6
       local.set $8
       local.get $10
       local.get $9
       i32.const 3
       i32.shl
       i32.add
       local.get $8
       i32.add
       i64.load offset=8
      end
      local.get $7
      local.get $2
      local.get $3
      call_indirect (type $Iiii)
     end
     i32.const 0
     i32.ne
     if
      i32.const 1
      br $~lib/internal/typedarray/SOME<Int64Array,i64>|inlined.0
     end
     local.get $7
     i32.const 1
     i32.add
     local.set $7
     br $repeat|0
     unreachable
    end
    unreachable
   end
   i32.const 0
  end
 )
 (func $std/typedarray/testArraySome<Int64Array,i64>~anonymous|50 (; 195 ;) (type $Iiii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i64.const 0
  i64.eq
 )
 (func $std/typedarray/testArraySome<Int64Array,i64> (; 196 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.set $0
  local.get $0
  i32.const 0
  i64.const 2
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  local.get $0
  i32.const 1
  i64.const 4
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  local.get $0
  i32.const 2
  i64.const 6
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  local.get $0
  i32.const 49
  call $~lib/typedarray/Int64Array#some
  local.set $1
  local.get $1
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
  local.get $0
  i32.const 50
  call $~lib/typedarray/Int64Array#some
  local.set $2
  local.get $2
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
 (func $std/typedarray/testArraySome<Uint64Array,u64>~anonymous|51 (; 197 ;) (type $Iiii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i64.const 2
  i64.eq
 )
 (func $~lib/typedarray/Uint64Array#some (; 198 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  block $~lib/internal/typedarray/SOME<Uint64Array,u64>|inlined.0 (result i32)
   local.get $0
   local.set $2
   local.get $1
   local.set $3
   block $~lib/internal/typedarray/TypedArray<u64>#get:length|inlined.4 (result i32)
    local.get $2
    local.set $4
    local.get $4
    i32.load offset=8
    i32.const 3
    i32.shr_u
   end
   local.set $4
   local.get $2
   i32.load
   local.set $5
   local.get $2
   i32.load offset=4
   local.set $6
   block $break|0
    i32.const 0
    local.set $7
    loop $repeat|0
     local.get $7
     local.get $4
     i32.lt_s
     i32.eqz
     br_if $break|0
     block (result i32)
      i32.const 3
      global.set $~lib/argc
      block $~lib/internal/arraybuffer/LOAD<u64,u64>|inlined.5 (result i64)
       local.get $5
       local.set $10
       local.get $7
       local.set $9
       local.get $6
       local.set $8
       local.get $10
       local.get $9
       i32.const 3
       i32.shl
       i32.add
       local.get $8
       i32.add
       i64.load offset=8
      end
      local.get $7
      local.get $2
      local.get $3
      call_indirect (type $Iiii)
     end
     i32.const 0
     i32.ne
     if
      i32.const 1
      br $~lib/internal/typedarray/SOME<Uint64Array,u64>|inlined.0
     end
     local.get $7
     i32.const 1
     i32.add
     local.set $7
     br $repeat|0
     unreachable
    end
    unreachable
   end
   i32.const 0
  end
 )
 (func $std/typedarray/testArraySome<Uint64Array,u64>~anonymous|52 (; 199 ;) (type $Iiii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i64.const 0
  i64.eq
 )
 (func $std/typedarray/testArraySome<Uint64Array,u64> (; 200 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint64Array#constructor
  local.set $0
  local.get $0
  i32.const 0
  i64.const 2
  call $~lib/internal/typedarray/TypedArray<u64>#__set
  local.get $0
  i32.const 1
  i64.const 4
  call $~lib/internal/typedarray/TypedArray<u64>#__set
  local.get $0
  i32.const 2
  i64.const 6
  call $~lib/internal/typedarray/TypedArray<u64>#__set
  local.get $0
  i32.const 51
  call $~lib/typedarray/Uint64Array#some
  local.set $1
  local.get $1
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
  local.get $0
  i32.const 52
  call $~lib/typedarray/Uint64Array#some
  local.set $2
  local.get $2
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
 (func $std/typedarray/testArraySome<Float32Array,f32>~anonymous|53 (; 201 ;) (type $fiii) (param $0 f32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  f32.const 2
  f32.eq
 )
 (func $~lib/typedarray/Float32Array#some (; 202 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  block $~lib/internal/typedarray/SOME<Float32Array,f32>|inlined.0 (result i32)
   local.get $0
   local.set $2
   local.get $1
   local.set $3
   block $~lib/internal/typedarray/TypedArray<f32>#get:length|inlined.4 (result i32)
    local.get $2
    local.set $4
    local.get $4
    i32.load offset=8
    i32.const 2
    i32.shr_u
   end
   local.set $4
   local.get $2
   i32.load
   local.set $5
   local.get $2
   i32.load offset=4
   local.set $6
   block $break|0
    i32.const 0
    local.set $7
    loop $repeat|0
     local.get $7
     local.get $4
     i32.lt_s
     i32.eqz
     br_if $break|0
     block (result i32)
      i32.const 3
      global.set $~lib/argc
      block $~lib/internal/arraybuffer/LOAD<f32,f32>|inlined.5 (result f32)
       local.get $5
       local.set $10
       local.get $7
       local.set $9
       local.get $6
       local.set $8
       local.get $10
       local.get $9
       i32.const 2
       i32.shl
       i32.add
       local.get $8
       i32.add
       f32.load offset=8
      end
      local.get $7
      local.get $2
      local.get $3
      call_indirect (type $fiii)
     end
     i32.const 0
     i32.ne
     if
      i32.const 1
      br $~lib/internal/typedarray/SOME<Float32Array,f32>|inlined.0
     end
     local.get $7
     i32.const 1
     i32.add
     local.set $7
     br $repeat|0
     unreachable
    end
    unreachable
   end
   i32.const 0
  end
 )
 (func $std/typedarray/testArraySome<Float32Array,f32>~anonymous|54 (; 203 ;) (type $fiii) (param $0 f32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  f32.const 0
  f32.eq
 )
 (func $std/typedarray/testArraySome<Float32Array,f32> (; 204 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Float32Array#constructor
  local.set $0
  local.get $0
  i32.const 0
  f32.const 2
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  local.get $0
  i32.const 1
  f32.const 4
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  local.get $0
  i32.const 2
  f32.const 6
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  local.get $0
  i32.const 53
  call $~lib/typedarray/Float32Array#some
  local.set $1
  local.get $1
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
  local.get $0
  i32.const 54
  call $~lib/typedarray/Float32Array#some
  local.set $2
  local.get $2
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
 (func $std/typedarray/testArraySome<Float64Array,f64>~anonymous|55 (; 205 ;) (type $Fiii) (param $0 f64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  f64.const 2
  f64.eq
 )
 (func $~lib/typedarray/Float64Array#some (; 206 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  block $~lib/internal/typedarray/SOME<Float64Array,f64>|inlined.0 (result i32)
   local.get $0
   local.set $2
   local.get $1
   local.set $3
   block $~lib/internal/typedarray/TypedArray<f64>#get:length|inlined.7 (result i32)
    local.get $2
    local.set $4
    local.get $4
    i32.load offset=8
    i32.const 3
    i32.shr_u
   end
   local.set $4
   local.get $2
   i32.load
   local.set $5
   local.get $2
   i32.load offset=4
   local.set $6
   block $break|0
    i32.const 0
    local.set $7
    loop $repeat|0
     local.get $7
     local.get $4
     i32.lt_s
     i32.eqz
     br_if $break|0
     block (result i32)
      i32.const 3
      global.set $~lib/argc
      block $~lib/internal/arraybuffer/LOAD<f64,f64>|inlined.17 (result f64)
       local.get $5
       local.set $10
       local.get $7
       local.set $9
       local.get $6
       local.set $8
       local.get $10
       local.get $9
       i32.const 3
       i32.shl
       i32.add
       local.get $8
       i32.add
       f64.load offset=8
      end
      local.get $7
      local.get $2
      local.get $3
      call_indirect (type $Fiii)
     end
     i32.const 0
     i32.ne
     if
      i32.const 1
      br $~lib/internal/typedarray/SOME<Float64Array,f64>|inlined.0
     end
     local.get $7
     i32.const 1
     i32.add
     local.set $7
     br $repeat|0
     unreachable
    end
    unreachable
   end
   i32.const 0
  end
 )
 (func $std/typedarray/testArraySome<Float64Array,f64>~anonymous|56 (; 207 ;) (type $Fiii) (param $0 f64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  f64.const 0
  f64.eq
 )
 (func $std/typedarray/testArraySome<Float64Array,f64> (; 208 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Float64Array#constructor
  local.set $0
  local.get $0
  i32.const 0
  f64.const 2
  call $~lib/internal/typedarray/TypedArray<f64>#__set
  local.get $0
  i32.const 1
  f64.const 4
  call $~lib/internal/typedarray/TypedArray<f64>#__set
  local.get $0
  i32.const 2
  f64.const 6
  call $~lib/internal/typedarray/TypedArray<f64>#__set
  local.get $0
  i32.const 55
  call $~lib/typedarray/Float64Array#some
  local.set $1
  local.get $1
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
  local.get $0
  i32.const 56
  call $~lib/typedarray/Float64Array#some
  local.set $2
  local.get $2
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
 (func $std/typedarray/testArrayFindIndex<Int8Array,i8>~anonymous|57 (; 209 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 2
  i32.eq
 )
 (func $~lib/typedarray/Int8Array#findIndex (; 210 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  block $~lib/internal/typedarray/FIND_INDEX<Int8Array,i8>|inlined.0 (result i32)
   local.get $0
   local.set $2
   local.get $1
   local.set $3
   block $~lib/internal/typedarray/TypedArray<i8>#get:length|inlined.14 (result i32)
    local.get $2
    local.set $4
    local.get $4
    i32.load offset=8
    i32.const 0
    i32.shr_u
   end
   local.set $4
   local.get $2
   i32.load
   local.set $5
   local.get $2
   i32.load offset=4
   local.set $6
   block $break|0
    i32.const 0
    local.set $7
    loop $repeat|0
     local.get $7
     local.get $4
     i32.lt_s
     i32.eqz
     br_if $break|0
     block (result i32)
      i32.const 3
      global.set $~lib/argc
      block $~lib/internal/arraybuffer/LOAD<i8,i8>|inlined.8 (result i32)
       local.get $5
       local.set $10
       local.get $7
       local.set $9
       local.get $6
       local.set $8
       local.get $10
       local.get $9
       i32.const 0
       i32.shl
       i32.add
       local.get $8
       i32.add
       i32.load8_s offset=8
      end
      local.get $7
      local.get $2
      local.get $3
      call_indirect (type $iiii)
     end
     i32.const 0
     i32.ne
     if
      local.get $7
      br $~lib/internal/typedarray/FIND_INDEX<Int8Array,i8>|inlined.0
     end
     local.get $7
     i32.const 1
     i32.add
     local.set $7
     br $repeat|0
     unreachable
    end
    unreachable
   end
   i32.const -1
  end
 )
 (func $std/typedarray/testArrayFindIndex<Int8Array,i8>~anonymous|58 (; 211 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 4
  i32.eq
 )
 (func $std/typedarray/testArrayFindIndex<Int8Array,i8> (; 212 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i8>#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i8>#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i8>#__set
  local.get $0
  i32.const 57
  call $~lib/typedarray/Int8Array#findIndex
  local.set $1
  local.get $1
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
  local.get $0
  i32.const 58
  call $~lib/typedarray/Int8Array#findIndex
  local.set $2
  local.get $2
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
 (func $std/typedarray/testArrayFindIndex<Uint8Array,u8>~anonymous|59 (; 213 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 255
  i32.and
  i32.const 2
  i32.eq
 )
 (func $~lib/typedarray/Uint8Array#findIndex (; 214 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  block $~lib/internal/typedarray/FIND_INDEX<Uint8Array,u8>|inlined.0 (result i32)
   local.get $0
   local.set $2
   local.get $1
   local.set $3
   block $~lib/internal/typedarray/TypedArray<u8>#get:length|inlined.8 (result i32)
    local.get $2
    local.set $4
    local.get $4
    i32.load offset=8
    i32.const 0
    i32.shr_u
   end
   local.set $4
   local.get $2
   i32.load
   local.set $5
   local.get $2
   i32.load offset=4
   local.set $6
   block $break|0
    i32.const 0
    local.set $7
    loop $repeat|0
     local.get $7
     local.get $4
     i32.lt_s
     i32.eqz
     br_if $break|0
     block (result i32)
      i32.const 3
      global.set $~lib/argc
      block $~lib/internal/arraybuffer/LOAD<u8,u8>|inlined.10 (result i32)
       local.get $5
       local.set $10
       local.get $7
       local.set $9
       local.get $6
       local.set $8
       local.get $10
       local.get $9
       i32.const 0
       i32.shl
       i32.add
       local.get $8
       i32.add
       i32.load8_u offset=8
      end
      local.get $7
      local.get $2
      local.get $3
      call_indirect (type $iiii)
     end
     i32.const 0
     i32.ne
     if
      local.get $7
      br $~lib/internal/typedarray/FIND_INDEX<Uint8Array,u8>|inlined.0
     end
     local.get $7
     i32.const 1
     i32.add
     local.set $7
     br $repeat|0
     unreachable
    end
    unreachable
   end
   i32.const -1
  end
 )
 (func $std/typedarray/testArrayFindIndex<Uint8Array,u8>~anonymous|60 (; 215 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 255
  i32.and
  i32.const 4
  i32.eq
 )
 (func $std/typedarray/testArrayFindIndex<Uint8Array,u8> (; 216 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint8Array#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  local.get $0
  i32.const 59
  call $~lib/typedarray/Uint8Array#findIndex
  local.set $1
  local.get $1
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
  local.get $0
  i32.const 60
  call $~lib/typedarray/Uint8Array#findIndex
  local.set $2
  local.get $2
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
 (func $std/typedarray/testArrayFindIndex<Uint8ClampedArray,u8>~anonymous|61 (; 217 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 255
  i32.and
  i32.const 2
  i32.eq
 )
 (func $~lib/typedarray/Uint8ClampedArray#findIndex (; 218 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  block $~lib/internal/typedarray/FIND_INDEX<Uint8ClampedArray,u8>|inlined.0 (result i32)
   local.get $0
   local.set $2
   local.get $1
   local.set $3
   block $~lib/internal/typedarray/TypedArray<u8>#get:length|inlined.9 (result i32)
    local.get $2
    local.set $4
    local.get $4
    i32.load offset=8
    i32.const 0
    i32.shr_u
   end
   local.set $4
   local.get $2
   i32.load
   local.set $5
   local.get $2
   i32.load offset=4
   local.set $6
   block $break|0
    i32.const 0
    local.set $7
    loop $repeat|0
     local.get $7
     local.get $4
     i32.lt_s
     i32.eqz
     br_if $break|0
     block (result i32)
      i32.const 3
      global.set $~lib/argc
      block $~lib/internal/arraybuffer/LOAD<u8,u8>|inlined.12 (result i32)
       local.get $5
       local.set $10
       local.get $7
       local.set $9
       local.get $6
       local.set $8
       local.get $10
       local.get $9
       i32.const 0
       i32.shl
       i32.add
       local.get $8
       i32.add
       i32.load8_u offset=8
      end
      local.get $7
      local.get $2
      local.get $3
      call_indirect (type $iiii)
     end
     i32.const 0
     i32.ne
     if
      local.get $7
      br $~lib/internal/typedarray/FIND_INDEX<Uint8ClampedArray,u8>|inlined.0
     end
     local.get $7
     i32.const 1
     i32.add
     local.set $7
     br $repeat|0
     unreachable
    end
    unreachable
   end
   i32.const -1
  end
 )
 (func $std/typedarray/testArrayFindIndex<Uint8ClampedArray,u8>~anonymous|62 (; 219 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 255
  i32.and
  i32.const 4
  i32.eq
 )
 (func $std/typedarray/testArrayFindIndex<Uint8ClampedArray,u8> (; 220 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  i32.const 61
  call $~lib/typedarray/Uint8ClampedArray#findIndex
  local.set $1
  local.get $1
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
  local.get $0
  i32.const 62
  call $~lib/typedarray/Uint8ClampedArray#findIndex
  local.set $2
  local.get $2
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
 (func $std/typedarray/testArrayFindIndex<Int16Array,i16>~anonymous|63 (; 221 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 2
  i32.eq
 )
 (func $~lib/typedarray/Int16Array#findIndex (; 222 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  block $~lib/internal/typedarray/FIND_INDEX<Int16Array,i16>|inlined.0 (result i32)
   local.get $0
   local.set $2
   local.get $1
   local.set $3
   block $~lib/internal/typedarray/TypedArray<i16>#get:length|inlined.5 (result i32)
    local.get $2
    local.set $4
    local.get $4
    i32.load offset=8
    i32.const 1
    i32.shr_u
   end
   local.set $4
   local.get $2
   i32.load
   local.set $5
   local.get $2
   i32.load offset=4
   local.set $6
   block $break|0
    i32.const 0
    local.set $7
    loop $repeat|0
     local.get $7
     local.get $4
     i32.lt_s
     i32.eqz
     br_if $break|0
     block (result i32)
      i32.const 3
      global.set $~lib/argc
      block $~lib/internal/arraybuffer/LOAD<i16,i16>|inlined.7 (result i32)
       local.get $5
       local.set $10
       local.get $7
       local.set $9
       local.get $6
       local.set $8
       local.get $10
       local.get $9
       i32.const 1
       i32.shl
       i32.add
       local.get $8
       i32.add
       i32.load16_s offset=8
      end
      local.get $7
      local.get $2
      local.get $3
      call_indirect (type $iiii)
     end
     i32.const 0
     i32.ne
     if
      local.get $7
      br $~lib/internal/typedarray/FIND_INDEX<Int16Array,i16>|inlined.0
     end
     local.get $7
     i32.const 1
     i32.add
     local.set $7
     br $repeat|0
     unreachable
    end
    unreachable
   end
   i32.const -1
  end
 )
 (func $std/typedarray/testArrayFindIndex<Int16Array,i16>~anonymous|64 (; 223 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 4
  i32.eq
 )
 (func $std/typedarray/testArrayFindIndex<Int16Array,i16> (; 224 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i16>#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i16>#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i16>#__set
  local.get $0
  i32.const 63
  call $~lib/typedarray/Int16Array#findIndex
  local.set $1
  local.get $1
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
  local.get $0
  i32.const 64
  call $~lib/typedarray/Int16Array#findIndex
  local.set $2
  local.get $2
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
 (func $std/typedarray/testArrayFindIndex<Uint16Array,u16>~anonymous|65 (; 225 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 65535
  i32.and
  i32.const 2
  i32.eq
 )
 (func $~lib/typedarray/Uint16Array#findIndex (; 226 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  block $~lib/internal/typedarray/FIND_INDEX<Uint16Array,u16>|inlined.0 (result i32)
   local.get $0
   local.set $2
   local.get $1
   local.set $3
   block $~lib/internal/typedarray/TypedArray<u16>#get:length|inlined.5 (result i32)
    local.get $2
    local.set $4
    local.get $4
    i32.load offset=8
    i32.const 1
    i32.shr_u
   end
   local.set $4
   local.get $2
   i32.load
   local.set $5
   local.get $2
   i32.load offset=4
   local.set $6
   block $break|0
    i32.const 0
    local.set $7
    loop $repeat|0
     local.get $7
     local.get $4
     i32.lt_s
     i32.eqz
     br_if $break|0
     block (result i32)
      i32.const 3
      global.set $~lib/argc
      block $~lib/internal/arraybuffer/LOAD<u16,u16>|inlined.7 (result i32)
       local.get $5
       local.set $10
       local.get $7
       local.set $9
       local.get $6
       local.set $8
       local.get $10
       local.get $9
       i32.const 1
       i32.shl
       i32.add
       local.get $8
       i32.add
       i32.load16_u offset=8
      end
      local.get $7
      local.get $2
      local.get $3
      call_indirect (type $iiii)
     end
     i32.const 0
     i32.ne
     if
      local.get $7
      br $~lib/internal/typedarray/FIND_INDEX<Uint16Array,u16>|inlined.0
     end
     local.get $7
     i32.const 1
     i32.add
     local.set $7
     br $repeat|0
     unreachable
    end
    unreachable
   end
   i32.const -1
  end
 )
 (func $std/typedarray/testArrayFindIndex<Uint16Array,u16>~anonymous|66 (; 227 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 65535
  i32.and
  i32.const 4
  i32.eq
 )
 (func $std/typedarray/testArrayFindIndex<Uint16Array,u16> (; 228 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint16Array#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u16>#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u16>#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u16>#__set
  local.get $0
  i32.const 65
  call $~lib/typedarray/Uint16Array#findIndex
  local.set $1
  local.get $1
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
  local.get $0
  i32.const 66
  call $~lib/typedarray/Uint16Array#findIndex
  local.set $2
  local.get $2
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
 (func $std/typedarray/testArrayFindIndex<Int32Array,i32>~anonymous|67 (; 229 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 2
  i32.eq
 )
 (func $~lib/typedarray/Int32Array#findIndex (; 230 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  block $~lib/internal/typedarray/FIND_INDEX<Int32Array,i32>|inlined.0 (result i32)
   local.get $0
   local.set $2
   local.get $1
   local.set $3
   block $~lib/internal/typedarray/TypedArray<i32>#get:length|inlined.13 (result i32)
    local.get $2
    local.set $4
    local.get $4
    i32.load offset=8
    i32.const 2
    i32.shr_u
   end
   local.set $4
   local.get $2
   i32.load
   local.set $5
   local.get $2
   i32.load offset=4
   local.set $6
   block $break|0
    i32.const 0
    local.set $7
    loop $repeat|0
     local.get $7
     local.get $4
     i32.lt_s
     i32.eqz
     br_if $break|0
     block (result i32)
      i32.const 3
      global.set $~lib/argc
      block $~lib/internal/arraybuffer/LOAD<i32,i32>|inlined.8 (result i32)
       local.get $5
       local.set $10
       local.get $7
       local.set $9
       local.get $6
       local.set $8
       local.get $10
       local.get $9
       i32.const 2
       i32.shl
       i32.add
       local.get $8
       i32.add
       i32.load offset=8
      end
      local.get $7
      local.get $2
      local.get $3
      call_indirect (type $iiii)
     end
     i32.const 0
     i32.ne
     if
      local.get $7
      br $~lib/internal/typedarray/FIND_INDEX<Int32Array,i32>|inlined.0
     end
     local.get $7
     i32.const 1
     i32.add
     local.set $7
     br $repeat|0
     unreachable
    end
    unreachable
   end
   i32.const -1
  end
 )
 (func $std/typedarray/testArrayFindIndex<Int32Array,i32>~anonymous|68 (; 231 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 4
  i32.eq
 )
 (func $std/typedarray/testArrayFindIndex<Int32Array,i32> (; 232 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  local.get $0
  i32.const 67
  call $~lib/typedarray/Int32Array#findIndex
  local.set $1
  local.get $1
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
  local.get $0
  i32.const 68
  call $~lib/typedarray/Int32Array#findIndex
  local.set $2
  local.get $2
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
 (func $std/typedarray/testArrayFindIndex<Uint32Array,u32>~anonymous|69 (; 233 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 2
  i32.eq
 )
 (func $~lib/typedarray/Uint32Array#findIndex (; 234 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  block $~lib/internal/typedarray/FIND_INDEX<Uint32Array,u32>|inlined.0 (result i32)
   local.get $0
   local.set $2
   local.get $1
   local.set $3
   block $~lib/internal/typedarray/TypedArray<u32>#get:length|inlined.5 (result i32)
    local.get $2
    local.set $4
    local.get $4
    i32.load offset=8
    i32.const 2
    i32.shr_u
   end
   local.set $4
   local.get $2
   i32.load
   local.set $5
   local.get $2
   i32.load offset=4
   local.set $6
   block $break|0
    i32.const 0
    local.set $7
    loop $repeat|0
     local.get $7
     local.get $4
     i32.lt_s
     i32.eqz
     br_if $break|0
     block (result i32)
      i32.const 3
      global.set $~lib/argc
      block $~lib/internal/arraybuffer/LOAD<u32,u32>|inlined.7 (result i32)
       local.get $5
       local.set $10
       local.get $7
       local.set $9
       local.get $6
       local.set $8
       local.get $10
       local.get $9
       i32.const 2
       i32.shl
       i32.add
       local.get $8
       i32.add
       i32.load offset=8
      end
      local.get $7
      local.get $2
      local.get $3
      call_indirect (type $iiii)
     end
     i32.const 0
     i32.ne
     if
      local.get $7
      br $~lib/internal/typedarray/FIND_INDEX<Uint32Array,u32>|inlined.0
     end
     local.get $7
     i32.const 1
     i32.add
     local.set $7
     br $repeat|0
     unreachable
    end
    unreachable
   end
   i32.const -1
  end
 )
 (func $std/typedarray/testArrayFindIndex<Uint32Array,u32>~anonymous|70 (; 235 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 4
  i32.eq
 )
 (func $std/typedarray/testArrayFindIndex<Uint32Array,u32> (; 236 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint32Array#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u32>#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u32>#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u32>#__set
  local.get $0
  i32.const 69
  call $~lib/typedarray/Uint32Array#findIndex
  local.set $1
  local.get $1
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
  local.get $0
  i32.const 70
  call $~lib/typedarray/Uint32Array#findIndex
  local.set $2
  local.get $2
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
 (func $std/typedarray/testArrayFindIndex<Int64Array,i64>~anonymous|71 (; 237 ;) (type $Iiii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i64.const 2
  i64.eq
 )
 (func $~lib/typedarray/Int64Array#findIndex (; 238 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  block $~lib/internal/typedarray/FIND_INDEX<Int64Array,i64>|inlined.0 (result i32)
   local.get $0
   local.set $2
   local.get $1
   local.set $3
   block $~lib/internal/typedarray/TypedArray<i64>#get:length|inlined.5 (result i32)
    local.get $2
    local.set $4
    local.get $4
    i32.load offset=8
    i32.const 3
    i32.shr_u
   end
   local.set $4
   local.get $2
   i32.load
   local.set $5
   local.get $2
   i32.load offset=4
   local.set $6
   block $break|0
    i32.const 0
    local.set $7
    loop $repeat|0
     local.get $7
     local.get $4
     i32.lt_s
     i32.eqz
     br_if $break|0
     block (result i32)
      i32.const 3
      global.set $~lib/argc
      block $~lib/internal/arraybuffer/LOAD<i64,i64>|inlined.7 (result i64)
       local.get $5
       local.set $10
       local.get $7
       local.set $9
       local.get $6
       local.set $8
       local.get $10
       local.get $9
       i32.const 3
       i32.shl
       i32.add
       local.get $8
       i32.add
       i64.load offset=8
      end
      local.get $7
      local.get $2
      local.get $3
      call_indirect (type $Iiii)
     end
     i32.const 0
     i32.ne
     if
      local.get $7
      br $~lib/internal/typedarray/FIND_INDEX<Int64Array,i64>|inlined.0
     end
     local.get $7
     i32.const 1
     i32.add
     local.set $7
     br $repeat|0
     unreachable
    end
    unreachable
   end
   i32.const -1
  end
 )
 (func $std/typedarray/testArrayFindIndex<Int64Array,i64>~anonymous|72 (; 239 ;) (type $Iiii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i64.const 4
  i64.eq
 )
 (func $std/typedarray/testArrayFindIndex<Int64Array,i64> (; 240 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.set $0
  local.get $0
  i32.const 0
  i64.const 1
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  local.get $0
  i32.const 1
  i64.const 2
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  local.get $0
  i32.const 2
  i64.const 3
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  local.get $0
  i32.const 71
  call $~lib/typedarray/Int64Array#findIndex
  local.set $1
  local.get $1
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
  local.get $0
  i32.const 72
  call $~lib/typedarray/Int64Array#findIndex
  local.set $2
  local.get $2
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
 (func $std/typedarray/testArrayFindIndex<Uint64Array,u64>~anonymous|73 (; 241 ;) (type $Iiii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i64.const 2
  i64.eq
 )
 (func $~lib/typedarray/Uint64Array#findIndex (; 242 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  block $~lib/internal/typedarray/FIND_INDEX<Uint64Array,u64>|inlined.0 (result i32)
   local.get $0
   local.set $2
   local.get $1
   local.set $3
   block $~lib/internal/typedarray/TypedArray<u64>#get:length|inlined.5 (result i32)
    local.get $2
    local.set $4
    local.get $4
    i32.load offset=8
    i32.const 3
    i32.shr_u
   end
   local.set $4
   local.get $2
   i32.load
   local.set $5
   local.get $2
   i32.load offset=4
   local.set $6
   block $break|0
    i32.const 0
    local.set $7
    loop $repeat|0
     local.get $7
     local.get $4
     i32.lt_s
     i32.eqz
     br_if $break|0
     block (result i32)
      i32.const 3
      global.set $~lib/argc
      block $~lib/internal/arraybuffer/LOAD<u64,u64>|inlined.7 (result i64)
       local.get $5
       local.set $10
       local.get $7
       local.set $9
       local.get $6
       local.set $8
       local.get $10
       local.get $9
       i32.const 3
       i32.shl
       i32.add
       local.get $8
       i32.add
       i64.load offset=8
      end
      local.get $7
      local.get $2
      local.get $3
      call_indirect (type $Iiii)
     end
     i32.const 0
     i32.ne
     if
      local.get $7
      br $~lib/internal/typedarray/FIND_INDEX<Uint64Array,u64>|inlined.0
     end
     local.get $7
     i32.const 1
     i32.add
     local.set $7
     br $repeat|0
     unreachable
    end
    unreachable
   end
   i32.const -1
  end
 )
 (func $std/typedarray/testArrayFindIndex<Uint64Array,u64>~anonymous|74 (; 243 ;) (type $Iiii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i64.const 4
  i64.eq
 )
 (func $std/typedarray/testArrayFindIndex<Uint64Array,u64> (; 244 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint64Array#constructor
  local.set $0
  local.get $0
  i32.const 0
  i64.const 1
  call $~lib/internal/typedarray/TypedArray<u64>#__set
  local.get $0
  i32.const 1
  i64.const 2
  call $~lib/internal/typedarray/TypedArray<u64>#__set
  local.get $0
  i32.const 2
  i64.const 3
  call $~lib/internal/typedarray/TypedArray<u64>#__set
  local.get $0
  i32.const 73
  call $~lib/typedarray/Uint64Array#findIndex
  local.set $1
  local.get $1
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
  local.get $0
  i32.const 74
  call $~lib/typedarray/Uint64Array#findIndex
  local.set $2
  local.get $2
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
 (func $std/typedarray/testArrayFindIndex<Float32Array,f32>~anonymous|75 (; 245 ;) (type $fiii) (param $0 f32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  f32.const 2
  f32.eq
 )
 (func $~lib/typedarray/Float32Array#findIndex (; 246 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  block $~lib/internal/typedarray/FIND_INDEX<Float32Array,f32>|inlined.0 (result i32)
   local.get $0
   local.set $2
   local.get $1
   local.set $3
   block $~lib/internal/typedarray/TypedArray<f32>#get:length|inlined.5 (result i32)
    local.get $2
    local.set $4
    local.get $4
    i32.load offset=8
    i32.const 2
    i32.shr_u
   end
   local.set $4
   local.get $2
   i32.load
   local.set $5
   local.get $2
   i32.load offset=4
   local.set $6
   block $break|0
    i32.const 0
    local.set $7
    loop $repeat|0
     local.get $7
     local.get $4
     i32.lt_s
     i32.eqz
     br_if $break|0
     block (result i32)
      i32.const 3
      global.set $~lib/argc
      block $~lib/internal/arraybuffer/LOAD<f32,f32>|inlined.7 (result f32)
       local.get $5
       local.set $10
       local.get $7
       local.set $9
       local.get $6
       local.set $8
       local.get $10
       local.get $9
       i32.const 2
       i32.shl
       i32.add
       local.get $8
       i32.add
       f32.load offset=8
      end
      local.get $7
      local.get $2
      local.get $3
      call_indirect (type $fiii)
     end
     i32.const 0
     i32.ne
     if
      local.get $7
      br $~lib/internal/typedarray/FIND_INDEX<Float32Array,f32>|inlined.0
     end
     local.get $7
     i32.const 1
     i32.add
     local.set $7
     br $repeat|0
     unreachable
    end
    unreachable
   end
   i32.const -1
  end
 )
 (func $std/typedarray/testArrayFindIndex<Float32Array,f32>~anonymous|76 (; 247 ;) (type $fiii) (param $0 f32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  f32.const 4
  f32.eq
 )
 (func $std/typedarray/testArrayFindIndex<Float32Array,f32> (; 248 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Float32Array#constructor
  local.set $0
  local.get $0
  i32.const 0
  f32.const 1
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  local.get $0
  i32.const 1
  f32.const 2
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  local.get $0
  i32.const 2
  f32.const 3
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  local.get $0
  i32.const 75
  call $~lib/typedarray/Float32Array#findIndex
  local.set $1
  local.get $1
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
  local.get $0
  i32.const 76
  call $~lib/typedarray/Float32Array#findIndex
  local.set $2
  local.get $2
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
 (func $std/typedarray/testArrayFindIndex<Float64Array,f64>~anonymous|77 (; 249 ;) (type $Fiii) (param $0 f64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  f64.const 2
  f64.eq
 )
 (func $~lib/typedarray/Float64Array#findIndex (; 250 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  block $~lib/internal/typedarray/FIND_INDEX<Float64Array,f64>|inlined.0 (result i32)
   local.get $0
   local.set $2
   local.get $1
   local.set $3
   block $~lib/internal/typedarray/TypedArray<f64>#get:length|inlined.8 (result i32)
    local.get $2
    local.set $4
    local.get $4
    i32.load offset=8
    i32.const 3
    i32.shr_u
   end
   local.set $4
   local.get $2
   i32.load
   local.set $5
   local.get $2
   i32.load offset=4
   local.set $6
   block $break|0
    i32.const 0
    local.set $7
    loop $repeat|0
     local.get $7
     local.get $4
     i32.lt_s
     i32.eqz
     br_if $break|0
     block (result i32)
      i32.const 3
      global.set $~lib/argc
      block $~lib/internal/arraybuffer/LOAD<f64,f64>|inlined.19 (result f64)
       local.get $5
       local.set $10
       local.get $7
       local.set $9
       local.get $6
       local.set $8
       local.get $10
       local.get $9
       i32.const 3
       i32.shl
       i32.add
       local.get $8
       i32.add
       f64.load offset=8
      end
      local.get $7
      local.get $2
      local.get $3
      call_indirect (type $Fiii)
     end
     i32.const 0
     i32.ne
     if
      local.get $7
      br $~lib/internal/typedarray/FIND_INDEX<Float64Array,f64>|inlined.0
     end
     local.get $7
     i32.const 1
     i32.add
     local.set $7
     br $repeat|0
     unreachable
    end
    unreachable
   end
   i32.const -1
  end
 )
 (func $std/typedarray/testArrayFindIndex<Float64Array,f64>~anonymous|78 (; 251 ;) (type $Fiii) (param $0 f64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  f64.const 4
  f64.eq
 )
 (func $std/typedarray/testArrayFindIndex<Float64Array,f64> (; 252 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Float64Array#constructor
  local.set $0
  local.get $0
  i32.const 0
  f64.const 1
  call $~lib/internal/typedarray/TypedArray<f64>#__set
  local.get $0
  i32.const 1
  f64.const 2
  call $~lib/internal/typedarray/TypedArray<f64>#__set
  local.get $0
  i32.const 2
  f64.const 3
  call $~lib/internal/typedarray/TypedArray<f64>#__set
  local.get $0
  i32.const 77
  call $~lib/typedarray/Float64Array#findIndex
  local.set $1
  local.get $1
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
  local.get $0
  i32.const 78
  call $~lib/typedarray/Float64Array#findIndex
  local.set $2
  local.get $2
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
 (func $std/typedarray/testArrayEvery<Int8Array,i8>~anonymous|79 (; 253 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 2
  i32.rem_s
  i32.const 0
  i32.eq
 )
 (func $~lib/typedarray/Int8Array#every (; 254 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  block $~lib/internal/typedarray/EVERY<Int8Array,i8>|inlined.0 (result i32)
   local.get $0
   local.set $2
   local.get $1
   local.set $3
   block $~lib/internal/typedarray/TypedArray<i8>#get:length|inlined.15 (result i32)
    local.get $2
    local.set $4
    local.get $4
    i32.load offset=8
    i32.const 0
    i32.shr_u
   end
   local.set $4
   local.get $2
   i32.load
   local.set $5
   local.get $2
   i32.load offset=4
   local.set $6
   block $break|0
    i32.const 0
    local.set $7
    loop $repeat|0
     block $continue|0
      local.get $7
      local.get $4
      i32.lt_s
      i32.eqz
      br_if $break|0
      block
       block (result i32)
        i32.const 3
        global.set $~lib/argc
        block $~lib/internal/arraybuffer/LOAD<i8,i8>|inlined.10 (result i32)
         local.get $5
         local.set $10
         local.get $7
         local.set $9
         local.get $6
         local.set $8
         local.get $10
         local.get $9
         i32.const 0
         i32.shl
         i32.add
         local.get $8
         i32.add
         i32.load8_s offset=8
        end
        local.get $7
        local.get $2
        local.get $3
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
     local.get $7
     i32.const 1
     i32.add
     local.set $7
     br $repeat|0
     unreachable
    end
    unreachable
   end
   i32.const 1
  end
 )
 (func $std/typedarray/testArrayEvery<Int8Array,i8>~anonymous|80 (; 255 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 2
  i32.eq
 )
 (func $std/typedarray/testArrayEvery<Int8Array,i8> (; 256 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i8>#__set
  local.get $0
  i32.const 1
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<i8>#__set
  local.get $0
  i32.const 2
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<i8>#__set
  local.get $0
  i32.const 79
  call $~lib/typedarray/Int8Array#every
  local.set $1
  local.get $1
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
  local.get $0
  i32.const 80
  call $~lib/typedarray/Int8Array#every
  local.set $2
  local.get $2
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
 (func $std/typedarray/testArrayEvery<Uint8Array,u8>~anonymous|81 (; 257 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 255
  i32.and
  i32.const 2
  i32.rem_u
  i32.const 0
  i32.eq
 )
 (func $~lib/typedarray/Uint8Array#every (; 258 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  block $~lib/internal/typedarray/EVERY<Uint8Array,u8>|inlined.0 (result i32)
   local.get $0
   local.set $2
   local.get $1
   local.set $3
   block $~lib/internal/typedarray/TypedArray<u8>#get:length|inlined.10 (result i32)
    local.get $2
    local.set $4
    local.get $4
    i32.load offset=8
    i32.const 0
    i32.shr_u
   end
   local.set $4
   local.get $2
   i32.load
   local.set $5
   local.get $2
   i32.load offset=4
   local.set $6
   block $break|0
    i32.const 0
    local.set $7
    loop $repeat|0
     block $continue|0
      local.get $7
      local.get $4
      i32.lt_s
      i32.eqz
      br_if $break|0
      block
       block (result i32)
        i32.const 3
        global.set $~lib/argc
        block $~lib/internal/arraybuffer/LOAD<u8,u8>|inlined.14 (result i32)
         local.get $5
         local.set $10
         local.get $7
         local.set $9
         local.get $6
         local.set $8
         local.get $10
         local.get $9
         i32.const 0
         i32.shl
         i32.add
         local.get $8
         i32.add
         i32.load8_u offset=8
        end
        local.get $7
        local.get $2
        local.get $3
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
     local.get $7
     i32.const 1
     i32.add
     local.set $7
     br $repeat|0
     unreachable
    end
    unreachable
   end
   i32.const 1
  end
 )
 (func $std/typedarray/testArrayEvery<Uint8Array,u8>~anonymous|82 (; 259 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 255
  i32.and
  i32.const 2
  i32.eq
 )
 (func $std/typedarray/testArrayEvery<Uint8Array,u8> (; 260 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint8Array#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  local.get $0
  i32.const 1
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  local.get $0
  i32.const 2
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  local.get $0
  i32.const 81
  call $~lib/typedarray/Uint8Array#every
  local.set $1
  local.get $1
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
  local.get $0
  i32.const 82
  call $~lib/typedarray/Uint8Array#every
  local.set $2
  local.get $2
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
 (func $std/typedarray/testArrayEvery<Uint8ClampedArray,u8>~anonymous|83 (; 261 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 255
  i32.and
  i32.const 2
  i32.rem_u
  i32.const 0
  i32.eq
 )
 (func $~lib/typedarray/Uint8ClampedArray#every (; 262 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  block $~lib/internal/typedarray/EVERY<Uint8ClampedArray,u8>|inlined.0 (result i32)
   local.get $0
   local.set $2
   local.get $1
   local.set $3
   block $~lib/internal/typedarray/TypedArray<u8>#get:length|inlined.11 (result i32)
    local.get $2
    local.set $4
    local.get $4
    i32.load offset=8
    i32.const 0
    i32.shr_u
   end
   local.set $4
   local.get $2
   i32.load
   local.set $5
   local.get $2
   i32.load offset=4
   local.set $6
   block $break|0
    i32.const 0
    local.set $7
    loop $repeat|0
     block $continue|0
      local.get $7
      local.get $4
      i32.lt_s
      i32.eqz
      br_if $break|0
      block
       block (result i32)
        i32.const 3
        global.set $~lib/argc
        block $~lib/internal/arraybuffer/LOAD<u8,u8>|inlined.16 (result i32)
         local.get $5
         local.set $10
         local.get $7
         local.set $9
         local.get $6
         local.set $8
         local.get $10
         local.get $9
         i32.const 0
         i32.shl
         i32.add
         local.get $8
         i32.add
         i32.load8_u offset=8
        end
        local.get $7
        local.get $2
        local.get $3
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
     local.get $7
     i32.const 1
     i32.add
     local.set $7
     br $repeat|0
     unreachable
    end
    unreachable
   end
   i32.const 1
  end
 )
 (func $std/typedarray/testArrayEvery<Uint8ClampedArray,u8>~anonymous|84 (; 263 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 255
  i32.and
  i32.const 2
  i32.eq
 )
 (func $std/typedarray/testArrayEvery<Uint8ClampedArray,u8> (; 264 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  i32.const 83
  call $~lib/typedarray/Uint8ClampedArray#every
  local.set $1
  local.get $1
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
  local.get $0
  i32.const 84
  call $~lib/typedarray/Uint8ClampedArray#every
  local.set $2
  local.get $2
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
 (func $std/typedarray/testArrayEvery<Int16Array,i16>~anonymous|85 (; 265 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 2
  i32.rem_s
  i32.const 0
  i32.eq
 )
 (func $~lib/typedarray/Int16Array#every (; 266 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  block $~lib/internal/typedarray/EVERY<Int16Array,i16>|inlined.0 (result i32)
   local.get $0
   local.set $2
   local.get $1
   local.set $3
   block $~lib/internal/typedarray/TypedArray<i16>#get:length|inlined.6 (result i32)
    local.get $2
    local.set $4
    local.get $4
    i32.load offset=8
    i32.const 1
    i32.shr_u
   end
   local.set $4
   local.get $2
   i32.load
   local.set $5
   local.get $2
   i32.load offset=4
   local.set $6
   block $break|0
    i32.const 0
    local.set $7
    loop $repeat|0
     block $continue|0
      local.get $7
      local.get $4
      i32.lt_s
      i32.eqz
      br_if $break|0
      block
       block (result i32)
        i32.const 3
        global.set $~lib/argc
        block $~lib/internal/arraybuffer/LOAD<i16,i16>|inlined.9 (result i32)
         local.get $5
         local.set $10
         local.get $7
         local.set $9
         local.get $6
         local.set $8
         local.get $10
         local.get $9
         i32.const 1
         i32.shl
         i32.add
         local.get $8
         i32.add
         i32.load16_s offset=8
        end
        local.get $7
        local.get $2
        local.get $3
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
     local.get $7
     i32.const 1
     i32.add
     local.set $7
     br $repeat|0
     unreachable
    end
    unreachable
   end
   i32.const 1
  end
 )
 (func $std/typedarray/testArrayEvery<Int16Array,i16>~anonymous|86 (; 267 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 2
  i32.eq
 )
 (func $std/typedarray/testArrayEvery<Int16Array,i16> (; 268 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i16>#__set
  local.get $0
  i32.const 1
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<i16>#__set
  local.get $0
  i32.const 2
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<i16>#__set
  local.get $0
  i32.const 85
  call $~lib/typedarray/Int16Array#every
  local.set $1
  local.get $1
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
  local.get $0
  i32.const 86
  call $~lib/typedarray/Int16Array#every
  local.set $2
  local.get $2
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
 (func $std/typedarray/testArrayEvery<Uint16Array,u16>~anonymous|87 (; 269 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 65535
  i32.and
  i32.const 2
  i32.rem_u
  i32.const 0
  i32.eq
 )
 (func $~lib/typedarray/Uint16Array#every (; 270 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  block $~lib/internal/typedarray/EVERY<Uint16Array,u16>|inlined.0 (result i32)
   local.get $0
   local.set $2
   local.get $1
   local.set $3
   block $~lib/internal/typedarray/TypedArray<u16>#get:length|inlined.6 (result i32)
    local.get $2
    local.set $4
    local.get $4
    i32.load offset=8
    i32.const 1
    i32.shr_u
   end
   local.set $4
   local.get $2
   i32.load
   local.set $5
   local.get $2
   i32.load offset=4
   local.set $6
   block $break|0
    i32.const 0
    local.set $7
    loop $repeat|0
     block $continue|0
      local.get $7
      local.get $4
      i32.lt_s
      i32.eqz
      br_if $break|0
      block
       block (result i32)
        i32.const 3
        global.set $~lib/argc
        block $~lib/internal/arraybuffer/LOAD<u16,u16>|inlined.9 (result i32)
         local.get $5
         local.set $10
         local.get $7
         local.set $9
         local.get $6
         local.set $8
         local.get $10
         local.get $9
         i32.const 1
         i32.shl
         i32.add
         local.get $8
         i32.add
         i32.load16_u offset=8
        end
        local.get $7
        local.get $2
        local.get $3
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
     local.get $7
     i32.const 1
     i32.add
     local.set $7
     br $repeat|0
     unreachable
    end
    unreachable
   end
   i32.const 1
  end
 )
 (func $std/typedarray/testArrayEvery<Uint16Array,u16>~anonymous|88 (; 271 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 65535
  i32.and
  i32.const 2
  i32.eq
 )
 (func $std/typedarray/testArrayEvery<Uint16Array,u16> (; 272 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint16Array#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u16>#__set
  local.get $0
  i32.const 1
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<u16>#__set
  local.get $0
  i32.const 2
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<u16>#__set
  local.get $0
  i32.const 87
  call $~lib/typedarray/Uint16Array#every
  local.set $1
  local.get $1
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
  local.get $0
  i32.const 88
  call $~lib/typedarray/Uint16Array#every
  local.set $2
  local.get $2
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
 (func $std/typedarray/testArrayEvery<Int32Array,i32>~anonymous|89 (; 273 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 2
  i32.rem_s
  i32.const 0
  i32.eq
 )
 (func $~lib/typedarray/Int32Array#every (; 274 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  block $~lib/internal/typedarray/EVERY<Int32Array,i32>|inlined.0 (result i32)
   local.get $0
   local.set $2
   local.get $1
   local.set $3
   block $~lib/internal/typedarray/TypedArray<i32>#get:length|inlined.14 (result i32)
    local.get $2
    local.set $4
    local.get $4
    i32.load offset=8
    i32.const 2
    i32.shr_u
   end
   local.set $4
   local.get $2
   i32.load
   local.set $5
   local.get $2
   i32.load offset=4
   local.set $6
   block $break|0
    i32.const 0
    local.set $7
    loop $repeat|0
     block $continue|0
      local.get $7
      local.get $4
      i32.lt_s
      i32.eqz
      br_if $break|0
      block
       block (result i32)
        i32.const 3
        global.set $~lib/argc
        block $~lib/internal/arraybuffer/LOAD<i32,i32>|inlined.10 (result i32)
         local.get $5
         local.set $10
         local.get $7
         local.set $9
         local.get $6
         local.set $8
         local.get $10
         local.get $9
         i32.const 2
         i32.shl
         i32.add
         local.get $8
         i32.add
         i32.load offset=8
        end
        local.get $7
        local.get $2
        local.get $3
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
     local.get $7
     i32.const 1
     i32.add
     local.set $7
     br $repeat|0
     unreachable
    end
    unreachable
   end
   i32.const 1
  end
 )
 (func $std/typedarray/testArrayEvery<Int32Array,i32>~anonymous|90 (; 275 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 2
  i32.eq
 )
 (func $std/typedarray/testArrayEvery<Int32Array,i32> (; 276 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  local.get $0
  i32.const 1
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  local.get $0
  i32.const 2
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  local.get $0
  i32.const 89
  call $~lib/typedarray/Int32Array#every
  local.set $1
  local.get $1
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
  local.get $0
  i32.const 90
  call $~lib/typedarray/Int32Array#every
  local.set $2
  local.get $2
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
 (func $std/typedarray/testArrayEvery<Uint32Array,u32>~anonymous|91 (; 277 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 2
  i32.rem_u
  i32.const 0
  i32.eq
 )
 (func $~lib/typedarray/Uint32Array#every (; 278 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  block $~lib/internal/typedarray/EVERY<Uint32Array,u32>|inlined.0 (result i32)
   local.get $0
   local.set $2
   local.get $1
   local.set $3
   block $~lib/internal/typedarray/TypedArray<u32>#get:length|inlined.6 (result i32)
    local.get $2
    local.set $4
    local.get $4
    i32.load offset=8
    i32.const 2
    i32.shr_u
   end
   local.set $4
   local.get $2
   i32.load
   local.set $5
   local.get $2
   i32.load offset=4
   local.set $6
   block $break|0
    i32.const 0
    local.set $7
    loop $repeat|0
     block $continue|0
      local.get $7
      local.get $4
      i32.lt_s
      i32.eqz
      br_if $break|0
      block
       block (result i32)
        i32.const 3
        global.set $~lib/argc
        block $~lib/internal/arraybuffer/LOAD<u32,u32>|inlined.9 (result i32)
         local.get $5
         local.set $10
         local.get $7
         local.set $9
         local.get $6
         local.set $8
         local.get $10
         local.get $9
         i32.const 2
         i32.shl
         i32.add
         local.get $8
         i32.add
         i32.load offset=8
        end
        local.get $7
        local.get $2
        local.get $3
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
     local.get $7
     i32.const 1
     i32.add
     local.set $7
     br $repeat|0
     unreachable
    end
    unreachable
   end
   i32.const 1
  end
 )
 (func $std/typedarray/testArrayEvery<Uint32Array,u32>~anonymous|92 (; 279 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 2
  i32.eq
 )
 (func $std/typedarray/testArrayEvery<Uint32Array,u32> (; 280 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint32Array#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u32>#__set
  local.get $0
  i32.const 1
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<u32>#__set
  local.get $0
  i32.const 2
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<u32>#__set
  local.get $0
  i32.const 91
  call $~lib/typedarray/Uint32Array#every
  local.set $1
  local.get $1
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
  local.get $0
  i32.const 92
  call $~lib/typedarray/Uint32Array#every
  local.set $2
  local.get $2
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
 (func $std/typedarray/testArrayEvery<Int64Array,i64>~anonymous|93 (; 281 ;) (type $Iiii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i64.const 2
  i64.rem_s
  i64.const 0
  i64.eq
 )
 (func $~lib/typedarray/Int64Array#every (; 282 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  block $~lib/internal/typedarray/EVERY<Int64Array,i64>|inlined.0 (result i32)
   local.get $0
   local.set $2
   local.get $1
   local.set $3
   block $~lib/internal/typedarray/TypedArray<i64>#get:length|inlined.6 (result i32)
    local.get $2
    local.set $4
    local.get $4
    i32.load offset=8
    i32.const 3
    i32.shr_u
   end
   local.set $4
   local.get $2
   i32.load
   local.set $5
   local.get $2
   i32.load offset=4
   local.set $6
   block $break|0
    i32.const 0
    local.set $7
    loop $repeat|0
     block $continue|0
      local.get $7
      local.get $4
      i32.lt_s
      i32.eqz
      br_if $break|0
      block
       block (result i32)
        i32.const 3
        global.set $~lib/argc
        block $~lib/internal/arraybuffer/LOAD<i64,i64>|inlined.9 (result i64)
         local.get $5
         local.set $10
         local.get $7
         local.set $9
         local.get $6
         local.set $8
         local.get $10
         local.get $9
         i32.const 3
         i32.shl
         i32.add
         local.get $8
         i32.add
         i64.load offset=8
        end
        local.get $7
        local.get $2
        local.get $3
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
     local.get $7
     i32.const 1
     i32.add
     local.set $7
     br $repeat|0
     unreachable
    end
    unreachable
   end
   i32.const 1
  end
 )
 (func $std/typedarray/testArrayEvery<Int64Array,i64>~anonymous|94 (; 283 ;) (type $Iiii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i64.const 2
  i64.eq
 )
 (func $std/typedarray/testArrayEvery<Int64Array,i64> (; 284 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.set $0
  local.get $0
  i32.const 0
  i64.const 2
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  local.get $0
  i32.const 1
  i64.const 4
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  local.get $0
  i32.const 2
  i64.const 6
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  local.get $0
  i32.const 93
  call $~lib/typedarray/Int64Array#every
  local.set $1
  local.get $1
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
  local.get $0
  i32.const 94
  call $~lib/typedarray/Int64Array#every
  local.set $2
  local.get $2
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
 (func $std/typedarray/testArrayEvery<Uint64Array,u64>~anonymous|95 (; 285 ;) (type $Iiii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i64.const 2
  i64.rem_u
  i64.const 0
  i64.eq
 )
 (func $~lib/typedarray/Uint64Array#every (; 286 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  block $~lib/internal/typedarray/EVERY<Uint64Array,u64>|inlined.0 (result i32)
   local.get $0
   local.set $2
   local.get $1
   local.set $3
   block $~lib/internal/typedarray/TypedArray<u64>#get:length|inlined.6 (result i32)
    local.get $2
    local.set $4
    local.get $4
    i32.load offset=8
    i32.const 3
    i32.shr_u
   end
   local.set $4
   local.get $2
   i32.load
   local.set $5
   local.get $2
   i32.load offset=4
   local.set $6
   block $break|0
    i32.const 0
    local.set $7
    loop $repeat|0
     block $continue|0
      local.get $7
      local.get $4
      i32.lt_s
      i32.eqz
      br_if $break|0
      block
       block (result i32)
        i32.const 3
        global.set $~lib/argc
        block $~lib/internal/arraybuffer/LOAD<u64,u64>|inlined.9 (result i64)
         local.get $5
         local.set $10
         local.get $7
         local.set $9
         local.get $6
         local.set $8
         local.get $10
         local.get $9
         i32.const 3
         i32.shl
         i32.add
         local.get $8
         i32.add
         i64.load offset=8
        end
        local.get $7
        local.get $2
        local.get $3
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
     local.get $7
     i32.const 1
     i32.add
     local.set $7
     br $repeat|0
     unreachable
    end
    unreachable
   end
   i32.const 1
  end
 )
 (func $std/typedarray/testArrayEvery<Uint64Array,u64>~anonymous|96 (; 287 ;) (type $Iiii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i64.const 2
  i64.eq
 )
 (func $std/typedarray/testArrayEvery<Uint64Array,u64> (; 288 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint64Array#constructor
  local.set $0
  local.get $0
  i32.const 0
  i64.const 2
  call $~lib/internal/typedarray/TypedArray<u64>#__set
  local.get $0
  i32.const 1
  i64.const 4
  call $~lib/internal/typedarray/TypedArray<u64>#__set
  local.get $0
  i32.const 2
  i64.const 6
  call $~lib/internal/typedarray/TypedArray<u64>#__set
  local.get $0
  i32.const 95
  call $~lib/typedarray/Uint64Array#every
  local.set $1
  local.get $1
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
  local.get $0
  i32.const 96
  call $~lib/typedarray/Uint64Array#every
  local.set $2
  local.get $2
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
 (func $~lib/math/NativeMathf.mod (; 289 ;) (type $fff) (param $0 f32) (param $1 f32) (result f32)
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
  local.get $0
  i32.reinterpret_f32
  local.set $2
  local.get $1
  i32.reinterpret_f32
  local.set $3
  local.get $2
  i32.const 23
  i32.shr_u
  i32.const 255
  i32.and
  local.set $4
  local.get $3
  i32.const 23
  i32.shr_u
  i32.const 255
  i32.and
  local.set $5
  local.get $2
  i32.const -2147483648
  i32.and
  local.set $6
  local.get $3
  i32.const 1
  i32.shl
  local.set $7
  local.get $7
  i32.const 0
  i32.eq
  local.tee $8
  if (result i32)
   local.get $8
  else   
   local.get $4
   i32.const 255
   i32.eq
  end
  local.tee $8
  if (result i32)
   local.get $8
  else   
   local.get $1
   local.set $9
   local.get $9
   local.get $9
   f32.ne
  end
  i32.const 0
  i32.ne
  if
   local.get $0
   local.get $1
   f32.mul
   local.set $9
   local.get $9
   local.get $9
   f32.div
   return
  end
  local.get $2
  i32.const 1
  i32.shl
  local.set $10
  local.get $10
  local.get $7
  i32.le_u
  if
   local.get $10
   local.get $7
   i32.eq
   if
    f32.const 0
    local.get $0
    f32.mul
    return
   end
   local.get $0
   return
  end
  local.get $4
  i32.eqz
  if
   local.get $4
   local.get $2
   i32.const 9
   i32.shl
   i32.clz
   i32.sub
   local.set $4
   local.get $2
   i32.const 0
   local.get $4
   i32.sub
   i32.const 1
   i32.add
   i32.shl
   local.set $2
  else   
   local.get $2
   i32.const -1
   i32.const 9
   i32.shr_u
   i32.and
   local.set $2
   local.get $2
   i32.const 1
   i32.const 23
   i32.shl
   i32.or
   local.set $2
  end
  local.get $5
  i32.eqz
  if
   local.get $5
   local.get $3
   i32.const 9
   i32.shl
   i32.clz
   i32.sub
   local.set $5
   local.get $3
   i32.const 0
   local.get $5
   i32.sub
   i32.const 1
   i32.add
   i32.shl
   local.set $3
  else   
   local.get $3
   i32.const -1
   i32.const 9
   i32.shr_u
   i32.and
   local.set $3
   local.get $3
   i32.const 1
   i32.const 23
   i32.shl
   i32.or
   local.set $3
  end
  block $break|0
   loop $continue|0
    local.get $4
    local.get $5
    i32.gt_s
    if
     block
      local.get $2
      local.get $3
      i32.ge_u
      if
       local.get $2
       local.get $3
       i32.eq
       if
        f32.const 0
        local.get $0
        f32.mul
        return
       end
       local.get $2
       local.get $3
       i32.sub
       local.set $2
      end
      local.get $2
      i32.const 1
      i32.shl
      local.set $2
      local.get $4
      i32.const 1
      i32.sub
      local.set $4
     end
     br $continue|0
    end
   end
  end
  local.get $2
  local.get $3
  i32.ge_u
  if
   local.get $2
   local.get $3
   i32.eq
   if
    f32.const 0
    local.get $0
    f32.mul
    return
   end
   local.get $2
   local.get $3
   i32.sub
   local.set $2
  end
  local.get $2
  i32.const 8
  i32.shl
  i32.clz
  local.set $11
  local.get $4
  local.get $11
  i32.sub
  local.set $4
  local.get $2
  local.get $11
  i32.shl
  local.set $2
  local.get $4
  i32.const 0
  i32.gt_s
  if
   local.get $2
   i32.const 1
   i32.const 23
   i32.shl
   i32.sub
   local.set $2
   local.get $2
   local.get $4
   i32.const 23
   i32.shl
   i32.or
   local.set $2
  else   
   local.get $2
   i32.const 0
   local.get $4
   i32.sub
   i32.const 1
   i32.add
   i32.shr_u
   local.set $2
  end
  local.get $2
  local.get $6
  i32.or
  local.set $2
  local.get $2
  f32.reinterpret_i32
 )
 (func $std/typedarray/testArrayEvery<Float32Array,f32>~anonymous|97 (; 290 ;) (type $fiii) (param $0 f32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  f32.const 2
  call $~lib/math/NativeMathf.mod
  f32.const 0
  f32.eq
 )
 (func $~lib/typedarray/Float32Array#every (; 291 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  block $~lib/internal/typedarray/EVERY<Float32Array,f32>|inlined.0 (result i32)
   local.get $0
   local.set $2
   local.get $1
   local.set $3
   block $~lib/internal/typedarray/TypedArray<f32>#get:length|inlined.6 (result i32)
    local.get $2
    local.set $4
    local.get $4
    i32.load offset=8
    i32.const 2
    i32.shr_u
   end
   local.set $4
   local.get $2
   i32.load
   local.set $5
   local.get $2
   i32.load offset=4
   local.set $6
   block $break|0
    i32.const 0
    local.set $7
    loop $repeat|0
     block $continue|0
      local.get $7
      local.get $4
      i32.lt_s
      i32.eqz
      br_if $break|0
      block
       block (result i32)
        i32.const 3
        global.set $~lib/argc
        block $~lib/internal/arraybuffer/LOAD<f32,f32>|inlined.9 (result f32)
         local.get $5
         local.set $10
         local.get $7
         local.set $9
         local.get $6
         local.set $8
         local.get $10
         local.get $9
         i32.const 2
         i32.shl
         i32.add
         local.get $8
         i32.add
         f32.load offset=8
        end
        local.get $7
        local.get $2
        local.get $3
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
     local.get $7
     i32.const 1
     i32.add
     local.set $7
     br $repeat|0
     unreachable
    end
    unreachable
   end
   i32.const 1
  end
 )
 (func $std/typedarray/testArrayEvery<Float32Array,f32>~anonymous|98 (; 292 ;) (type $fiii) (param $0 f32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  f32.const 2
  f32.eq
 )
 (func $std/typedarray/testArrayEvery<Float32Array,f32> (; 293 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Float32Array#constructor
  local.set $0
  local.get $0
  i32.const 0
  f32.const 2
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  local.get $0
  i32.const 1
  f32.const 4
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  local.get $0
  i32.const 2
  f32.const 6
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  local.get $0
  i32.const 97
  call $~lib/typedarray/Float32Array#every
  local.set $1
  local.get $1
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
  local.get $0
  i32.const 98
  call $~lib/typedarray/Float32Array#every
  local.set $2
  local.get $2
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
 (func $~lib/math/NativeMath.mod (; 294 ;) (type $FFF) (param $0 f64) (param $1 f64) (result f64)
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
  local.get $0
  i64.reinterpret_f64
  local.set $2
  local.get $1
  i64.reinterpret_f64
  local.set $3
  local.get $2
  i64.const 52
  i64.shr_u
  i64.const 2047
  i64.and
  local.set $4
  local.get $3
  i64.const 52
  i64.shr_u
  i64.const 2047
  i64.and
  local.set $5
  local.get $2
  i64.const 63
  i64.shr_u
  local.set $6
  local.get $3
  i64.const 1
  i64.shl
  local.set $7
  local.get $7
  i64.const 0
  i64.eq
  local.tee $8
  if (result i32)
   local.get $8
  else   
   local.get $4
   i64.const 2047
   i64.eq
  end
  local.tee $8
  if (result i32)
   local.get $8
  else   
   local.get $1
   local.set $9
   local.get $9
   local.get $9
   f64.ne
  end
  i32.const 0
  i32.ne
  if
   local.get $0
   local.get $1
   f64.mul
   local.set $9
   local.get $9
   local.get $9
   f64.div
   return
  end
  local.get $2
  i64.const 1
  i64.shl
  local.set $10
  local.get $10
  local.get $7
  i64.le_u
  if
   local.get $10
   local.get $7
   i64.eq
   if
    f64.const 0
    local.get $0
    f64.mul
    return
   end
   local.get $0
   return
  end
  local.get $4
  i64.eqz
  if
   local.get $4
   local.get $2
   i64.const 12
   i64.shl
   i64.clz
   i64.sub
   local.set $4
   local.get $2
   i64.const 0
   local.get $4
   i64.sub
   i64.const 1
   i64.add
   i64.shl
   local.set $2
  else   
   local.get $2
   i64.const -1
   i64.const 12
   i64.shr_u
   i64.and
   local.set $2
   local.get $2
   i64.const 1
   i64.const 52
   i64.shl
   i64.or
   local.set $2
  end
  local.get $5
  i64.eqz
  if
   local.get $5
   local.get $3
   i64.const 12
   i64.shl
   i64.clz
   i64.sub
   local.set $5
   local.get $3
   i64.const 0
   local.get $5
   i64.sub
   i64.const 1
   i64.add
   i64.shl
   local.set $3
  else   
   local.get $3
   i64.const -1
   i64.const 12
   i64.shr_u
   i64.and
   local.set $3
   local.get $3
   i64.const 1
   i64.const 52
   i64.shl
   i64.or
   local.set $3
  end
  block $break|0
   loop $continue|0
    local.get $4
    local.get $5
    i64.gt_s
    if
     block
      local.get $2
      local.get $3
      i64.ge_u
      if
       local.get $2
       local.get $3
       i64.eq
       if
        f64.const 0
        local.get $0
        f64.mul
        return
       end
       local.get $2
       local.get $3
       i64.sub
       local.set $2
      end
      local.get $2
      i64.const 1
      i64.shl
      local.set $2
      local.get $4
      i64.const 1
      i64.sub
      local.set $4
     end
     br $continue|0
    end
   end
  end
  local.get $2
  local.get $3
  i64.ge_u
  if
   local.get $2
   local.get $3
   i64.eq
   if
    f64.const 0
    local.get $0
    f64.mul
    return
   end
   local.get $2
   local.get $3
   i64.sub
   local.set $2
  end
  local.get $2
  i64.const 11
  i64.shl
  i64.clz
  local.set $11
  local.get $4
  local.get $11
  i64.sub
  local.set $4
  local.get $2
  local.get $11
  i64.shl
  local.set $2
  local.get $4
  i64.const 0
  i64.gt_s
  if
   local.get $2
   i64.const 1
   i64.const 52
   i64.shl
   i64.sub
   local.set $2
   local.get $2
   local.get $4
   i64.const 52
   i64.shl
   i64.or
   local.set $2
  else   
   local.get $2
   i64.const 0
   local.get $4
   i64.sub
   i64.const 1
   i64.add
   i64.shr_u
   local.set $2
  end
  local.get $2
  local.get $6
  i64.const 63
  i64.shl
  i64.or
  local.set $2
  local.get $2
  f64.reinterpret_i64
 )
 (func $std/typedarray/testArrayEvery<Float64Array,f64>~anonymous|99 (; 295 ;) (type $Fiii) (param $0 f64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  f64.const 2
  call $~lib/math/NativeMath.mod
  f64.const 0
  f64.eq
 )
 (func $~lib/typedarray/Float64Array#every (; 296 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  block $~lib/internal/typedarray/EVERY<Float64Array,f64>|inlined.0 (result i32)
   local.get $0
   local.set $2
   local.get $1
   local.set $3
   block $~lib/internal/typedarray/TypedArray<f64>#get:length|inlined.9 (result i32)
    local.get $2
    local.set $4
    local.get $4
    i32.load offset=8
    i32.const 3
    i32.shr_u
   end
   local.set $4
   local.get $2
   i32.load
   local.set $5
   local.get $2
   i32.load offset=4
   local.set $6
   block $break|0
    i32.const 0
    local.set $7
    loop $repeat|0
     block $continue|0
      local.get $7
      local.get $4
      i32.lt_s
      i32.eqz
      br_if $break|0
      block
       block (result i32)
        i32.const 3
        global.set $~lib/argc
        block $~lib/internal/arraybuffer/LOAD<f64,f64>|inlined.21 (result f64)
         local.get $5
         local.set $10
         local.get $7
         local.set $9
         local.get $6
         local.set $8
         local.get $10
         local.get $9
         i32.const 3
         i32.shl
         i32.add
         local.get $8
         i32.add
         f64.load offset=8
        end
        local.get $7
        local.get $2
        local.get $3
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
     local.get $7
     i32.const 1
     i32.add
     local.set $7
     br $repeat|0
     unreachable
    end
    unreachable
   end
   i32.const 1
  end
 )
 (func $std/typedarray/testArrayEvery<Float64Array,f64>~anonymous|100 (; 297 ;) (type $Fiii) (param $0 f64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  f64.const 2
  f64.eq
 )
 (func $std/typedarray/testArrayEvery<Float64Array,f64> (; 298 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Float64Array#constructor
  local.set $0
  local.get $0
  i32.const 0
  f64.const 2
  call $~lib/internal/typedarray/TypedArray<f64>#__set
  local.get $0
  i32.const 1
  f64.const 4
  call $~lib/internal/typedarray/TypedArray<f64>#__set
  local.get $0
  i32.const 2
  f64.const 6
  call $~lib/internal/typedarray/TypedArray<f64>#__set
  local.get $0
  i32.const 99
  call $~lib/typedarray/Float64Array#every
  local.set $1
  local.get $1
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
  local.get $0
  i32.const 100
  call $~lib/typedarray/Float64Array#every
  local.set $2
  local.get $2
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
 (func $std/typedarray/ArrayLike#constructor (; 299 ;) (type $ii) (param $0 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 4
   call $~lib/memory/memory.allocate
   local.set $0
  end
  local.get $0
  i32.const 3
  i32.store
  local.get $0
 )
 (func $~lib/array/Array<i32>#__unchecked_get (; 300 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load
  local.set $2
  local.get $1
  local.set $3
  i32.const 0
  local.set $4
  local.get $2
  local.get $3
  i32.const 2
  i32.shl
  i32.add
  local.get $4
  i32.add
  i32.load offset=8
 )
 (func $~lib/typedarray/Int8Array#set<Array<i32>> (; 301 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  block $~lib/internal/typedarray/SET<Int8Array,i8,Array<i32>>|inlined.0
   local.get $0
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $3
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 664
    i32.const 48
    i32.const 242
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $4
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 720
    i32.const 48
    i32.const 243
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   block $~lib/array/Array<i32>#get:length|inlined.3 (result i32)
    local.get $4
    local.set $6
    local.get $6
    i32.load offset=4
   end
   i32.const 0
   i32.eq
   if
    br $~lib/internal/typedarray/SET<Int8Array,i8,Array<i32>>|inlined.0
   end
   local.get $3
   i32.load
   local.set $6
   local.get $3
   i32.load offset=4
   local.set $7
   local.get $4
   i32.load
   local.set $8
   block $~lib/array/Array<i32>#get:length|inlined.4 (result i32)
    local.get $4
    local.set $9
    local.get $9
    i32.load offset=4
   end
   local.set $9
   local.get $4
   i32.const 0
   call $~lib/array/Array<i32>#__unchecked_get
   local.set $10
   block $~lib/internal/typedarray/SET_COPY<i8,i32>|inlined.0
    local.get $6
    local.set $11
    local.get $7
    local.set $12
    local.get $8
    local.set $13
    i32.const 0
    local.set $14
    local.get $5
    local.set $15
    local.get $9
    local.set $16
    block $break|0
     local.get $16
     i32.const 1
     i32.sub
     local.set $17
     loop $repeat|0
      local.get $17
      i32.const 0
      i32.ge_s
      i32.eqz
      br_if $break|0
      block $~lib/internal/arraybuffer/STORE<i8,i8>|inlined.0
       local.get $11
       local.set $18
       local.get $17
       local.get $15
       i32.add
       local.set $19
       block $~lib/internal/arraybuffer/LOAD<i32,i32>|inlined.12 (result i32)
        local.get $13
        local.set $20
        local.get $17
        local.set $21
        local.get $14
        local.set $22
        local.get $20
        local.get $21
        i32.const 2
        i32.shl
        i32.add
        local.get $22
        i32.add
        i32.load offset=8
       end
       local.set $22
       local.get $12
       local.set $21
       local.get $18
       local.get $19
       i32.const 0
       i32.shl
       i32.add
       local.get $21
       i32.add
       local.get $22
       i32.store8 offset=8
      end
      local.get $17
      i32.const 1
      i32.sub
      local.set $17
      br $repeat|0
      unreachable
     end
     unreachable
    end
   end
  end
 )
 (func $~lib/internal/memory/memcpy (; 302 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $break|0
   loop $continue|0
    local.get $2
    if (result i32)
     local.get $1
     i32.const 3
     i32.and
    else     
     local.get $2
    end
    if
     block
      block (result i32)
       local.get $0
       local.tee $5
       i32.const 1
       i32.add
       local.set $0
       local.get $5
      end
      block (result i32)
       local.get $1
       local.tee $5
       i32.const 1
       i32.add
       local.set $1
       local.get $5
      end
      i32.load8_u
      i32.store8
      local.get $2
      i32.const 1
      i32.sub
      local.set $2
     end
     br $continue|0
    end
   end
  end
  local.get $0
  i32.const 3
  i32.and
  i32.const 0
  i32.eq
  if
   block $break|1
    loop $continue|1
     local.get $2
     i32.const 16
     i32.ge_u
     if
      block
       local.get $0
       local.get $1
       i32.load
       i32.store
       local.get $0
       i32.const 4
       i32.add
       local.get $1
       i32.const 4
       i32.add
       i32.load
       i32.store
       local.get $0
       i32.const 8
       i32.add
       local.get $1
       i32.const 8
       i32.add
       i32.load
       i32.store
       local.get $0
       i32.const 12
       i32.add
       local.get $1
       i32.const 12
       i32.add
       i32.load
       i32.store
       local.get $1
       i32.const 16
       i32.add
       local.set $1
       local.get $0
       i32.const 16
       i32.add
       local.set $0
       local.get $2
       i32.const 16
       i32.sub
       local.set $2
      end
      br $continue|1
     end
    end
   end
   local.get $2
   i32.const 8
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $0
    i32.const 4
    i32.add
    local.get $1
    i32.const 4
    i32.add
    i32.load
    i32.store
    local.get $0
    i32.const 8
    i32.add
    local.set $0
    local.get $1
    i32.const 8
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 4
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $0
    i32.const 4
    i32.add
    local.set $0
    local.get $1
    i32.const 4
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 2
   i32.and
   if
    local.get $0
    local.get $1
    i32.load16_u
    i32.store16
    local.get $0
    i32.const 2
    i32.add
    local.set $0
    local.get $1
    i32.const 2
    i32.add
    local.set $1
   end
   local.get $2
   i32.const 1
   i32.and
   if
    block (result i32)
     local.get $0
     local.tee $5
     i32.const 1
     i32.add
     local.set $0
     local.get $5
    end
    block (result i32)
     local.get $1
     local.tee $5
     i32.const 1
     i32.add
     local.set $1
     local.get $5
    end
    i32.load8_u
    i32.store8
   end
   return
  end
  local.get $2
  i32.const 32
  i32.ge_u
  if
   block $break|2
    block $case2|2
     block $case1|2
      block $case0|2
       local.get $0
       i32.const 3
       i32.and
       local.set $5
       local.get $5
       i32.const 1
       i32.eq
       br_if $case0|2
       local.get $5
       i32.const 2
       i32.eq
       br_if $case1|2
       local.get $5
       i32.const 3
       i32.eq
       br_if $case2|2
       br $break|2
      end
      block
       local.get $1
       i32.load
       local.set $3
       block (result i32)
        local.get $0
        local.tee $5
        i32.const 1
        i32.add
        local.set $0
        local.get $5
       end
       block (result i32)
        local.get $1
        local.tee $5
        i32.const 1
        i32.add
        local.set $1
        local.get $5
       end
       i32.load8_u
       i32.store8
       block (result i32)
        local.get $0
        local.tee $5
        i32.const 1
        i32.add
        local.set $0
        local.get $5
       end
       block (result i32)
        local.get $1
        local.tee $5
        i32.const 1
        i32.add
        local.set $1
        local.get $5
       end
       i32.load8_u
       i32.store8
       block (result i32)
        local.get $0
        local.tee $5
        i32.const 1
        i32.add
        local.set $0
        local.get $5
       end
       block (result i32)
        local.get $1
        local.tee $5
        i32.const 1
        i32.add
        local.set $1
        local.get $5
       end
       i32.load8_u
       i32.store8
       local.get $2
       i32.const 3
       i32.sub
       local.set $2
       block $break|3
        loop $continue|3
         local.get $2
         i32.const 17
         i32.ge_u
         if
          block
           local.get $1
           i32.const 1
           i32.add
           i32.load
           local.set $4
           local.get $0
           local.get $3
           i32.const 24
           i32.shr_u
           local.get $4
           i32.const 8
           i32.shl
           i32.or
           i32.store
           local.get $1
           i32.const 5
           i32.add
           i32.load
           local.set $3
           local.get $0
           i32.const 4
           i32.add
           local.get $4
           i32.const 24
           i32.shr_u
           local.get $3
           i32.const 8
           i32.shl
           i32.or
           i32.store
           local.get $1
           i32.const 9
           i32.add
           i32.load
           local.set $4
           local.get $0
           i32.const 8
           i32.add
           local.get $3
           i32.const 24
           i32.shr_u
           local.get $4
           i32.const 8
           i32.shl
           i32.or
           i32.store
           local.get $1
           i32.const 13
           i32.add
           i32.load
           local.set $3
           local.get $0
           i32.const 12
           i32.add
           local.get $4
           i32.const 24
           i32.shr_u
           local.get $3
           i32.const 8
           i32.shl
           i32.or
           i32.store
           local.get $1
           i32.const 16
           i32.add
           local.set $1
           local.get $0
           i32.const 16
           i32.add
           local.set $0
           local.get $2
           i32.const 16
           i32.sub
           local.set $2
          end
          br $continue|3
         end
        end
       end
       br $break|2
       unreachable
      end
      unreachable
     end
     block
      local.get $1
      i32.load
      local.set $3
      block (result i32)
       local.get $0
       local.tee $5
       i32.const 1
       i32.add
       local.set $0
       local.get $5
      end
      block (result i32)
       local.get $1
       local.tee $5
       i32.const 1
       i32.add
       local.set $1
       local.get $5
      end
      i32.load8_u
      i32.store8
      block (result i32)
       local.get $0
       local.tee $5
       i32.const 1
       i32.add
       local.set $0
       local.get $5
      end
      block (result i32)
       local.get $1
       local.tee $5
       i32.const 1
       i32.add
       local.set $1
       local.get $5
      end
      i32.load8_u
      i32.store8
      local.get $2
      i32.const 2
      i32.sub
      local.set $2
      block $break|4
       loop $continue|4
        local.get $2
        i32.const 18
        i32.ge_u
        if
         block
          local.get $1
          i32.const 2
          i32.add
          i32.load
          local.set $4
          local.get $0
          local.get $3
          i32.const 16
          i32.shr_u
          local.get $4
          i32.const 16
          i32.shl
          i32.or
          i32.store
          local.get $1
          i32.const 6
          i32.add
          i32.load
          local.set $3
          local.get $0
          i32.const 4
          i32.add
          local.get $4
          i32.const 16
          i32.shr_u
          local.get $3
          i32.const 16
          i32.shl
          i32.or
          i32.store
          local.get $1
          i32.const 10
          i32.add
          i32.load
          local.set $4
          local.get $0
          i32.const 8
          i32.add
          local.get $3
          i32.const 16
          i32.shr_u
          local.get $4
          i32.const 16
          i32.shl
          i32.or
          i32.store
          local.get $1
          i32.const 14
          i32.add
          i32.load
          local.set $3
          local.get $0
          i32.const 12
          i32.add
          local.get $4
          i32.const 16
          i32.shr_u
          local.get $3
          i32.const 16
          i32.shl
          i32.or
          i32.store
          local.get $1
          i32.const 16
          i32.add
          local.set $1
          local.get $0
          i32.const 16
          i32.add
          local.set $0
          local.get $2
          i32.const 16
          i32.sub
          local.set $2
         end
         br $continue|4
        end
       end
      end
      br $break|2
      unreachable
     end
     unreachable
    end
    block
     local.get $1
     i32.load
     local.set $3
     block (result i32)
      local.get $0
      local.tee $5
      i32.const 1
      i32.add
      local.set $0
      local.get $5
     end
     block (result i32)
      local.get $1
      local.tee $5
      i32.const 1
      i32.add
      local.set $1
      local.get $5
     end
     i32.load8_u
     i32.store8
     local.get $2
     i32.const 1
     i32.sub
     local.set $2
     block $break|5
      loop $continue|5
       local.get $2
       i32.const 19
       i32.ge_u
       if
        block
         local.get $1
         i32.const 3
         i32.add
         i32.load
         local.set $4
         local.get $0
         local.get $3
         i32.const 8
         i32.shr_u
         local.get $4
         i32.const 24
         i32.shl
         i32.or
         i32.store
         local.get $1
         i32.const 7
         i32.add
         i32.load
         local.set $3
         local.get $0
         i32.const 4
         i32.add
         local.get $4
         i32.const 8
         i32.shr_u
         local.get $3
         i32.const 24
         i32.shl
         i32.or
         i32.store
         local.get $1
         i32.const 11
         i32.add
         i32.load
         local.set $4
         local.get $0
         i32.const 8
         i32.add
         local.get $3
         i32.const 8
         i32.shr_u
         local.get $4
         i32.const 24
         i32.shl
         i32.or
         i32.store
         local.get $1
         i32.const 15
         i32.add
         i32.load
         local.set $3
         local.get $0
         i32.const 12
         i32.add
         local.get $4
         i32.const 8
         i32.shr_u
         local.get $3
         i32.const 24
         i32.shl
         i32.or
         i32.store
         local.get $1
         i32.const 16
         i32.add
         local.set $1
         local.get $0
         i32.const 16
         i32.add
         local.set $0
         local.get $2
         i32.const 16
         i32.sub
         local.set $2
        end
        br $continue|5
       end
      end
     end
     br $break|2
     unreachable
    end
    unreachable
   end
  end
  local.get $2
  i32.const 16
  i32.and
  if
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 8
  i32.and
  if
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 4
  i32.and
  if
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 2
  i32.and
  if
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 1
  i32.and
  if
   block (result i32)
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
   end
   block (result i32)
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
   end
   i32.load8_u
   i32.store8
  end
 )
 (func $~lib/internal/memory/memmove (; 303 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $0
  local.get $1
  i32.eq
  if
   return
  end
  local.get $1
  local.get $2
  i32.add
  local.get $0
  i32.le_u
  local.tee $3
  if (result i32)
   local.get $3
  else   
   local.get $0
   local.get $2
   i32.add
   local.get $1
   i32.le_u
  end
  if
   local.get $0
   local.get $1
   local.get $2
   call $~lib/internal/memory/memcpy
   return
  end
  local.get $0
  local.get $1
  i32.lt_u
  if
   local.get $1
   i32.const 7
   i32.and
   local.get $0
   i32.const 7
   i32.and
   i32.eq
   if
    block $break|0
     loop $continue|0
      local.get $0
      i32.const 7
      i32.and
      if
       block
        local.get $2
        i32.eqz
        if
         return
        end
        local.get $2
        i32.const 1
        i32.sub
        local.set $2
        block (result i32)
         local.get $0
         local.tee $3
         i32.const 1
         i32.add
         local.set $0
         local.get $3
        end
        block (result i32)
         local.get $1
         local.tee $3
         i32.const 1
         i32.add
         local.set $1
         local.get $3
        end
        i32.load8_u
        i32.store8
       end
       br $continue|0
      end
     end
    end
    block $break|1
     loop $continue|1
      local.get $2
      i32.const 8
      i32.ge_u
      if
       block
        local.get $0
        local.get $1
        i64.load
        i64.store
        local.get $2
        i32.const 8
        i32.sub
        local.set $2
        local.get $0
        i32.const 8
        i32.add
        local.set $0
        local.get $1
        i32.const 8
        i32.add
        local.set $1
       end
       br $continue|1
      end
     end
    end
   end
   block $break|2
    loop $continue|2
     local.get $2
     if
      block
       block (result i32)
        local.get $0
        local.tee $3
        i32.const 1
        i32.add
        local.set $0
        local.get $3
       end
       block (result i32)
        local.get $1
        local.tee $3
        i32.const 1
        i32.add
        local.set $1
        local.get $3
       end
       i32.load8_u
       i32.store8
       local.get $2
       i32.const 1
       i32.sub
       local.set $2
      end
      br $continue|2
     end
    end
   end
  else   
   local.get $1
   i32.const 7
   i32.and
   local.get $0
   i32.const 7
   i32.and
   i32.eq
   if
    block $break|3
     loop $continue|3
      local.get $0
      local.get $2
      i32.add
      i32.const 7
      i32.and
      if
       block
        local.get $2
        i32.eqz
        if
         return
        end
        local.get $0
        local.get $2
        i32.const 1
        i32.sub
        local.tee $2
        i32.add
        local.get $1
        local.get $2
        i32.add
        i32.load8_u
        i32.store8
       end
       br $continue|3
      end
     end
    end
    block $break|4
     loop $continue|4
      local.get $2
      i32.const 8
      i32.ge_u
      if
       block
        local.get $2
        i32.const 8
        i32.sub
        local.set $2
        local.get $0
        local.get $2
        i32.add
        local.get $1
        local.get $2
        i32.add
        i64.load
        i64.store
       end
       br $continue|4
      end
     end
    end
   end
   block $break|5
    loop $continue|5
     local.get $2
     if
      local.get $0
      local.get $2
      i32.const 1
      i32.sub
      local.tee $2
      i32.add
      local.get $1
      local.get $2
      i32.add
      i32.load8_u
      i32.store8
      br $continue|5
     end
    end
   end
  end
 )
 (func $~lib/typedarray/Int8Array#set<Int8Array> (; 304 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  block $~lib/internal/typedarray/SET<Int8Array,i8,Int8Array>|inlined.0
   local.get $0
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $3
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 664
    i32.const 48
    i32.const 242
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $4
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 720
    i32.const 48
    i32.const 243
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   block $~lib/internal/typedarray/TypedArray<i8>#get:length|inlined.17 (result i32)
    local.get $4
    local.set $6
    local.get $6
    i32.load offset=8
    i32.const 0
    i32.shr_u
   end
   i32.const 0
   i32.eq
   if
    br $~lib/internal/typedarray/SET<Int8Array,i8,Int8Array>|inlined.0
   end
   block $~lib/internal/typedarray/SET_SAME<Int8Array,i8>|inlined.0
    local.get $3
    local.set $6
    local.get $4
    local.set $7
    local.get $5
    local.set $8
    block $~lib/memory/memory.copy|inlined.0
     block $~lib/arraybuffer/ArrayBuffer#get:data|inlined.0 (result i32)
      local.get $6
      i32.load
      local.set $9
      local.get $9
      i32.const 8
      i32.add
     end
     local.get $6
     i32.load offset=4
     i32.add
     local.get $8
     i32.const 0
     i32.shl
     i32.add
     local.set $9
     block $~lib/arraybuffer/ArrayBuffer#get:data|inlined.1 (result i32)
      local.get $7
      i32.load
      local.set $10
      local.get $10
      i32.const 8
      i32.add
     end
     local.get $7
     i32.load offset=4
     i32.add
     local.set $10
     local.get $7
     i32.load
     i32.load
     local.set $11
     local.get $9
     local.get $10
     local.get $11
     call $~lib/internal/memory/memmove
    end
   end
  end
 )
 (func $~lib/typedarray/Int8Array#set<Float32Array> (; 305 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  block $~lib/internal/typedarray/SET<Int8Array,i8,Float32Array>|inlined.0
   local.get $0
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $3
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 664
    i32.const 48
    i32.const 242
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $4
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 720
    i32.const 48
    i32.const 243
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   block $~lib/internal/typedarray/TypedArray<f32>#get:length|inlined.8 (result i32)
    local.get $4
    local.set $6
    local.get $6
    i32.load offset=8
    i32.const 2
    i32.shr_u
   end
   i32.const 0
   i32.eq
   if
    br $~lib/internal/typedarray/SET<Int8Array,i8,Float32Array>|inlined.0
   end
   block $~lib/internal/typedarray/SET_COPY<i8,f32>|inlined.0
    local.get $3
    i32.load
    local.set $6
    local.get $3
    i32.load offset=4
    local.set $7
    local.get $4
    i32.load
    local.set $8
    local.get $4
    i32.load offset=4
    local.set $9
    local.get $5
    local.set $10
    block $~lib/internal/typedarray/TypedArray<f32>#get:length|inlined.9 (result i32)
     local.get $4
     local.set $11
     local.get $11
     i32.load offset=8
     i32.const 2
     i32.shr_u
    end
    local.set $11
    block $break|0
     local.get $11
     i32.const 1
     i32.sub
     local.set $12
     loop $repeat|0
      local.get $12
      i32.const 0
      i32.ge_s
      i32.eqz
      br_if $break|0
      block $~lib/internal/arraybuffer/STORE<i8,i8>|inlined.1
       local.get $6
       local.set $13
       local.get $12
       local.get $10
       i32.add
       local.set $14
       block $~lib/internal/arraybuffer/LOAD<f32,f32>|inlined.10 (result f32)
        local.get $8
        local.set $15
        local.get $12
        local.set $16
        local.get $9
        local.set $17
        local.get $15
        local.get $16
        i32.const 2
        i32.shl
        i32.add
        local.get $17
        i32.add
        f32.load offset=8
       end
       i32.trunc_f32_s
       local.set $17
       local.get $7
       local.set $16
       local.get $13
       local.get $14
       i32.const 0
       i32.shl
       i32.add
       local.get $16
       i32.add
       local.get $17
       i32.store8 offset=8
      end
      local.get $12
      i32.const 1
      i32.sub
      local.set $12
      br $repeat|0
      unreachable
     end
     unreachable
    end
   end
  end
 )
 (func $~lib/typedarray/Int8Array#set<Int64Array> (; 306 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  block $~lib/internal/typedarray/SET<Int8Array,i8,Int64Array>|inlined.0
   local.get $0
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $3
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 664
    i32.const 48
    i32.const 242
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $4
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 720
    i32.const 48
    i32.const 243
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   block $~lib/internal/typedarray/TypedArray<i64>#get:length|inlined.8 (result i32)
    local.get $4
    local.set $6
    local.get $6
    i32.load offset=8
    i32.const 3
    i32.shr_u
   end
   i32.const 0
   i32.eq
   if
    br $~lib/internal/typedarray/SET<Int8Array,i8,Int64Array>|inlined.0
   end
   block $~lib/internal/typedarray/SET_COPY<i8,i64>|inlined.0
    local.get $3
    i32.load
    local.set $6
    local.get $3
    i32.load offset=4
    local.set $7
    local.get $4
    i32.load
    local.set $8
    local.get $4
    i32.load offset=4
    local.set $9
    local.get $5
    local.set $10
    block $~lib/internal/typedarray/TypedArray<i64>#get:length|inlined.9 (result i32)
     local.get $4
     local.set $11
     local.get $11
     i32.load offset=8
     i32.const 3
     i32.shr_u
    end
    local.set $11
    block $break|0
     local.get $11
     i32.const 1
     i32.sub
     local.set $12
     loop $repeat|0
      local.get $12
      i32.const 0
      i32.ge_s
      i32.eqz
      br_if $break|0
      block $~lib/internal/arraybuffer/STORE<i8,i8>|inlined.2
       local.get $6
       local.set $13
       local.get $12
       local.get $10
       i32.add
       local.set $14
       block $~lib/internal/arraybuffer/LOAD<i64,i64>|inlined.10 (result i64)
        local.get $8
        local.set $15
        local.get $12
        local.set $16
        local.get $9
        local.set $17
        local.get $15
        local.get $16
        i32.const 3
        i32.shl
        i32.add
        local.get $17
        i32.add
        i64.load offset=8
       end
       i32.wrap_i64
       local.set $17
       local.get $7
       local.set $16
       local.get $13
       local.get $14
       i32.const 0
       i32.shl
       i32.add
       local.get $16
       i32.add
       local.get $17
       i32.store8 offset=8
      end
      local.get $12
      i32.const 1
      i32.sub
      local.set $12
      br $repeat|0
      unreachable
     end
     unreachable
    end
   end
  end
 )
 (func $std/typedarray/ArrayLike#__get (; 307 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
 )
 (func $~lib/typedarray/Int8Array#set<ArrayLike> (; 308 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  block $~lib/internal/typedarray/SET<Int8Array,i8,ArrayLike>|inlined.0
   local.get $0
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $3
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 664
    i32.const 48
    i32.const 242
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $4
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 720
    i32.const 48
    i32.const 243
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $4
   i32.load
   i32.const 0
   i32.eq
   if
    br $~lib/internal/typedarray/SET<Int8Array,i8,ArrayLike>|inlined.0
   end
   local.get $4
   i32.load
   local.set $6
   block $~lib/internal/typedarray/TypedArray<i8>#get:length|inlined.18 (result i32)
    local.get $3
    local.set $7
    local.get $7
    i32.load offset=8
    i32.const 0
    i32.shr_u
   end
   local.set $7
   local.get $6
   local.get $5
   i32.add
   local.get $7
   i32.le_s
   i32.eqz
   if
    i32.const 936
    i32.const 48
    i32.const 456
    i32.const 8
    call $~lib/env/abort
    unreachable
   end
   local.get $3
   i32.load
   local.set $8
   local.get $3
   i32.load offset=4
   local.set $9
   block $break|0
    local.get $4
    i32.load
    i32.const 1
    i32.sub
    local.set $10
    loop $repeat|0
     local.get $10
     i32.const 0
     i32.ge_s
     i32.eqz
     br_if $break|0
     block $~lib/internal/arraybuffer/STORE<i8,i8>|inlined.3
      local.get $8
      local.set $11
      local.get $10
      local.get $5
      i32.add
      local.set $12
      local.get $4
      local.get $10
      call $std/typedarray/ArrayLike#__get
      local.set $13
      local.get $9
      local.set $14
      local.get $11
      local.get $12
      i32.const 0
      i32.shl
      i32.add
      local.get $14
      i32.add
      local.get $13
      i32.store8 offset=8
     end
     local.get $10
     i32.const 1
     i32.sub
     local.set $10
     br $repeat|0
     unreachable
    end
    unreachable
   end
  end
 )
 (func $std/typedarray/testArraySet<Int8Array,i8> (; 309 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 10
  call $~lib/typedarray/Int8Array#constructor
  local.set $0
  local.get $0
  global.get $std/typedarray/setSource
  i32.const 4
  call $~lib/typedarray/Int8Array#set<Array<i32>>
  local.get $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<i8>#__get
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 431
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i8>#__get
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 432
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i8>#__get
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 433
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i8>#__get
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 434
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<i8>#__get
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 435
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<i8>#__get
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 436
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<i8>#__get
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 437
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 7
  call $~lib/internal/typedarray/TypedArray<i8>#__get
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 438
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 8
  call $~lib/internal/typedarray/TypedArray<i8>#__get
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 439
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/internal/typedarray/TypedArray<i8>#__get
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 440
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  local.set $1
  local.get $1
  i32.const 0
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<i8>#__set
  local.get $1
  i32.const 1
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<i8>#__set
  local.get $1
  i32.const 2
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<i8>#__set
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/typedarray/Int8Array#set<Int8Array>
  local.get $0
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
   i32.const 816
   i32.const 8
   i32.const 449
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i8>#__get
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 450
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i8>#__get
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 451
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i8>#__get
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 452
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<i8>#__get
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 453
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<i8>#__get
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 454
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<i8>#__get
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 455
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 7
  call $~lib/internal/typedarray/TypedArray<i8>#__get
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 456
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 8
  call $~lib/internal/typedarray/TypedArray<i8>#__get
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 457
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/internal/typedarray/TypedArray<i8>#__get
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 458
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Float32Array#constructor
  local.set $2
  local.get $2
  i32.const 0
  f32.const 7
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  local.get $2
  i32.const 1
  f32.const 8
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  local.get $2
  i32.const 2
  f32.const 9
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  local.get $0
  local.get $2
  i32.const 7
  call $~lib/typedarray/Int8Array#set<Float32Array>
  local.get $0
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
   i32.const 880
   i32.const 8
   i32.const 467
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i8>#__get
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 468
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i8>#__get
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 469
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i8>#__get
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 470
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<i8>#__get
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 471
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<i8>#__get
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 472
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<i8>#__get
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 473
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 7
  call $~lib/internal/typedarray/TypedArray<i8>#__get
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 7
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 474
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 8
  call $~lib/internal/typedarray/TypedArray<i8>#__get
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 475
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/internal/typedarray/TypedArray<i8>#__get
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 9
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 476
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.set $3
  local.get $3
  i32.const 0
  i64.const 10
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  local.get $3
  i32.const 1
  i64.const 11
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  local.get $3
  i32.const 2
  i64.const 12
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  local.get $0
  local.get $3
  i32.const 3
  call $~lib/typedarray/Int8Array#set<Int64Array>
  local.get $0
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
   i32.const 880
   i32.const 8
   i32.const 485
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i8>#__get
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 486
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i8>#__get
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 487
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i8>#__get
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 10
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 488
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<i8>#__get
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 11
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 489
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<i8>#__get
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 12
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 490
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<i8>#__get
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 491
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 7
  call $~lib/internal/typedarray/TypedArray<i8>#__get
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 7
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 492
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 8
  call $~lib/internal/typedarray/TypedArray<i8>#__get
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 493
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/internal/typedarray/TypedArray<i8>#__get
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 9
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 494
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  global.get $std/typedarray/arrayLikeValue
  i32.const 2
  call $~lib/typedarray/Int8Array#set<ArrayLike>
  local.get $0
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
   i32.const 1008
   i32.const 8
   i32.const 498
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i8>#__get
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 499
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i8>#__get
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 500
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i8>#__get
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 501
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<i8>#__get
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 502
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<i8>#__get
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 12
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 503
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<i8>#__get
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 504
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 7
  call $~lib/internal/typedarray/TypedArray<i8>#__get
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 7
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 505
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 8
  call $~lib/internal/typedarray/TypedArray<i8>#__get
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 506
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/internal/typedarray/TypedArray<i8>#__get
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 9
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 507
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Uint8Array#set<Array<i32>> (; 310 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  block $~lib/internal/typedarray/SET<Uint8Array,u8,Array<i32>>|inlined.0
   local.get $0
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $3
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 664
    i32.const 48
    i32.const 242
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $4
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 720
    i32.const 48
    i32.const 243
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   block $~lib/array/Array<i32>#get:length|inlined.6 (result i32)
    local.get $4
    local.set $6
    local.get $6
    i32.load offset=4
   end
   i32.const 0
   i32.eq
   if
    br $~lib/internal/typedarray/SET<Uint8Array,u8,Array<i32>>|inlined.0
   end
   local.get $3
   i32.load
   local.set $6
   local.get $3
   i32.load offset=4
   local.set $7
   local.get $4
   i32.load
   local.set $8
   block $~lib/array/Array<i32>#get:length|inlined.7 (result i32)
    local.get $4
    local.set $9
    local.get $9
    i32.load offset=4
   end
   local.set $9
   local.get $4
   i32.const 0
   call $~lib/array/Array<i32>#__unchecked_get
   local.set $10
   block $~lib/internal/typedarray/SET_COPY<u8,i32>|inlined.0
    local.get $6
    local.set $11
    local.get $7
    local.set $12
    local.get $8
    local.set $13
    i32.const 0
    local.set $14
    local.get $5
    local.set $15
    local.get $9
    local.set $16
    block $break|0
     local.get $16
     i32.const 1
     i32.sub
     local.set $17
     loop $repeat|0
      local.get $17
      i32.const 0
      i32.ge_s
      i32.eqz
      br_if $break|0
      block $~lib/internal/arraybuffer/STORE<u8,u8>|inlined.0
       local.get $11
       local.set $18
       local.get $17
       local.get $15
       i32.add
       local.set $19
       block $~lib/internal/arraybuffer/LOAD<i32,i32>|inlined.13 (result i32)
        local.get $13
        local.set $20
        local.get $17
        local.set $21
        local.get $14
        local.set $22
        local.get $20
        local.get $21
        i32.const 2
        i32.shl
        i32.add
        local.get $22
        i32.add
        i32.load offset=8
       end
       local.set $22
       local.get $12
       local.set $21
       local.get $18
       local.get $19
       i32.const 0
       i32.shl
       i32.add
       local.get $21
       i32.add
       local.get $22
       i32.store8 offset=8
      end
      local.get $17
      i32.const 1
      i32.sub
      local.set $17
      br $repeat|0
      unreachable
     end
     unreachable
    end
   end
  end
 )
 (func $~lib/typedarray/Uint8Array#set<Uint8Array> (; 311 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  block $~lib/internal/typedarray/SET<Uint8Array,u8,Uint8Array>|inlined.0
   local.get $0
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $3
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 664
    i32.const 48
    i32.const 242
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $4
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 720
    i32.const 48
    i32.const 243
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   block $~lib/internal/typedarray/TypedArray<u8>#get:length|inlined.13 (result i32)
    local.get $4
    local.set $6
    local.get $6
    i32.load offset=8
    i32.const 0
    i32.shr_u
   end
   i32.const 0
   i32.eq
   if
    br $~lib/internal/typedarray/SET<Uint8Array,u8,Uint8Array>|inlined.0
   end
   block $~lib/internal/typedarray/SET_SAME<Uint8Array,u8>|inlined.0
    local.get $3
    local.set $6
    local.get $4
    local.set $7
    local.get $5
    local.set $8
    block $~lib/memory/memory.copy|inlined.1
     block $~lib/arraybuffer/ArrayBuffer#get:data|inlined.2 (result i32)
      local.get $6
      i32.load
      local.set $9
      local.get $9
      i32.const 8
      i32.add
     end
     local.get $6
     i32.load offset=4
     i32.add
     local.get $8
     i32.const 0
     i32.shl
     i32.add
     local.set $9
     block $~lib/arraybuffer/ArrayBuffer#get:data|inlined.3 (result i32)
      local.get $7
      i32.load
      local.set $10
      local.get $10
      i32.const 8
      i32.add
     end
     local.get $7
     i32.load offset=4
     i32.add
     local.set $10
     local.get $7
     i32.load
     i32.load
     local.set $11
     local.get $9
     local.get $10
     local.get $11
     call $~lib/internal/memory/memmove
    end
   end
  end
 )
 (func $~lib/typedarray/Uint8Array#set<Float32Array> (; 312 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  block $~lib/internal/typedarray/SET<Uint8Array,u8,Float32Array>|inlined.0
   local.get $0
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $3
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 664
    i32.const 48
    i32.const 242
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $4
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 720
    i32.const 48
    i32.const 243
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   block $~lib/internal/typedarray/TypedArray<f32>#get:length|inlined.11 (result i32)
    local.get $4
    local.set $6
    local.get $6
    i32.load offset=8
    i32.const 2
    i32.shr_u
   end
   i32.const 0
   i32.eq
   if
    br $~lib/internal/typedarray/SET<Uint8Array,u8,Float32Array>|inlined.0
   end
   block $~lib/internal/typedarray/SET_COPY<u8,f32>|inlined.0
    local.get $3
    i32.load
    local.set $6
    local.get $3
    i32.load offset=4
    local.set $7
    local.get $4
    i32.load
    local.set $8
    local.get $4
    i32.load offset=4
    local.set $9
    local.get $5
    local.set $10
    block $~lib/internal/typedarray/TypedArray<f32>#get:length|inlined.12 (result i32)
     local.get $4
     local.set $11
     local.get $11
     i32.load offset=8
     i32.const 2
     i32.shr_u
    end
    local.set $11
    block $break|0
     local.get $11
     i32.const 1
     i32.sub
     local.set $12
     loop $repeat|0
      local.get $12
      i32.const 0
      i32.ge_s
      i32.eqz
      br_if $break|0
      block $~lib/internal/arraybuffer/STORE<u8,u8>|inlined.1
       local.get $6
       local.set $13
       local.get $12
       local.get $10
       i32.add
       local.set $14
       block $~lib/internal/arraybuffer/LOAD<f32,f32>|inlined.11 (result f32)
        local.get $8
        local.set $15
        local.get $12
        local.set $16
        local.get $9
        local.set $17
        local.get $15
        local.get $16
        i32.const 2
        i32.shl
        i32.add
        local.get $17
        i32.add
        f32.load offset=8
       end
       i32.trunc_f32_u
       local.set $17
       local.get $7
       local.set $16
       local.get $13
       local.get $14
       i32.const 0
       i32.shl
       i32.add
       local.get $16
       i32.add
       local.get $17
       i32.store8 offset=8
      end
      local.get $12
      i32.const 1
      i32.sub
      local.set $12
      br $repeat|0
      unreachable
     end
     unreachable
    end
   end
  end
 )
 (func $~lib/typedarray/Uint8Array#set<Int64Array> (; 313 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  block $~lib/internal/typedarray/SET<Uint8Array,u8,Int64Array>|inlined.0
   local.get $0
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $3
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 664
    i32.const 48
    i32.const 242
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $4
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 720
    i32.const 48
    i32.const 243
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   block $~lib/internal/typedarray/TypedArray<i64>#get:length|inlined.11 (result i32)
    local.get $4
    local.set $6
    local.get $6
    i32.load offset=8
    i32.const 3
    i32.shr_u
   end
   i32.const 0
   i32.eq
   if
    br $~lib/internal/typedarray/SET<Uint8Array,u8,Int64Array>|inlined.0
   end
   block $~lib/internal/typedarray/SET_COPY<u8,i64>|inlined.0
    local.get $3
    i32.load
    local.set $6
    local.get $3
    i32.load offset=4
    local.set $7
    local.get $4
    i32.load
    local.set $8
    local.get $4
    i32.load offset=4
    local.set $9
    local.get $5
    local.set $10
    block $~lib/internal/typedarray/TypedArray<i64>#get:length|inlined.12 (result i32)
     local.get $4
     local.set $11
     local.get $11
     i32.load offset=8
     i32.const 3
     i32.shr_u
    end
    local.set $11
    block $break|0
     local.get $11
     i32.const 1
     i32.sub
     local.set $12
     loop $repeat|0
      local.get $12
      i32.const 0
      i32.ge_s
      i32.eqz
      br_if $break|0
      block $~lib/internal/arraybuffer/STORE<u8,u8>|inlined.2
       local.get $6
       local.set $13
       local.get $12
       local.get $10
       i32.add
       local.set $14
       block $~lib/internal/arraybuffer/LOAD<i64,i64>|inlined.11 (result i64)
        local.get $8
        local.set $15
        local.get $12
        local.set $16
        local.get $9
        local.set $17
        local.get $15
        local.get $16
        i32.const 3
        i32.shl
        i32.add
        local.get $17
        i32.add
        i64.load offset=8
       end
       i32.wrap_i64
       local.set $17
       local.get $7
       local.set $16
       local.get $13
       local.get $14
       i32.const 0
       i32.shl
       i32.add
       local.get $16
       i32.add
       local.get $17
       i32.store8 offset=8
      end
      local.get $12
      i32.const 1
      i32.sub
      local.set $12
      br $repeat|0
      unreachable
     end
     unreachable
    end
   end
  end
 )
 (func $~lib/typedarray/Uint8Array#set<ArrayLike> (; 314 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  block $~lib/internal/typedarray/SET<Uint8Array,u8,ArrayLike>|inlined.0
   local.get $0
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $3
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 664
    i32.const 48
    i32.const 242
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $4
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 720
    i32.const 48
    i32.const 243
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $4
   i32.load
   i32.const 0
   i32.eq
   if
    br $~lib/internal/typedarray/SET<Uint8Array,u8,ArrayLike>|inlined.0
   end
   local.get $4
   i32.load
   local.set $6
   block $~lib/internal/typedarray/TypedArray<u8>#get:length|inlined.14 (result i32)
    local.get $3
    local.set $7
    local.get $7
    i32.load offset=8
    i32.const 0
    i32.shr_u
   end
   local.set $7
   local.get $6
   local.get $5
   i32.add
   local.get $7
   i32.le_s
   i32.eqz
   if
    i32.const 936
    i32.const 48
    i32.const 456
    i32.const 8
    call $~lib/env/abort
    unreachable
   end
   local.get $3
   i32.load
   local.set $8
   local.get $3
   i32.load offset=4
   local.set $9
   block $break|0
    local.get $4
    i32.load
    i32.const 1
    i32.sub
    local.set $10
    loop $repeat|0
     local.get $10
     i32.const 0
     i32.ge_s
     i32.eqz
     br_if $break|0
     block $~lib/internal/arraybuffer/STORE<u8,u8>|inlined.3
      local.get $8
      local.set $11
      local.get $10
      local.get $5
      i32.add
      local.set $12
      local.get $4
      local.get $10
      call $std/typedarray/ArrayLike#__get
      local.set $13
      local.get $9
      local.set $14
      local.get $11
      local.get $12
      i32.const 0
      i32.shl
      i32.add
      local.get $14
      i32.add
      local.get $13
      i32.store8 offset=8
     end
     local.get $10
     i32.const 1
     i32.sub
     local.set $10
     br $repeat|0
     unreachable
    end
    unreachable
   end
  end
 )
 (func $std/typedarray/testArraySet<Uint8Array,u8> (; 315 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 10
  call $~lib/typedarray/Uint8Array#constructor
  local.set $0
  local.get $0
  global.get $std/typedarray/setSource
  i32.const 4
  call $~lib/typedarray/Uint8Array#set<Array<i32>>
  local.get $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 431
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 432
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 433
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 434
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 435
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 436
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 437
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 7
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 438
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 8
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 439
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 440
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint8Array#constructor
  local.set $1
  local.get $1
  i32.const 0
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  local.get $1
  i32.const 1
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  local.get $1
  i32.const 2
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/typedarray/Uint8Array#set<Uint8Array>
  local.get $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 449
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 450
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 451
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 452
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 453
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 454
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 455
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 7
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 456
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 8
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 457
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 458
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Float32Array#constructor
  local.set $2
  local.get $2
  i32.const 0
  f32.const 7
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  local.get $2
  i32.const 1
  f32.const 8
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  local.get $2
  i32.const 2
  f32.const 9
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  local.get $0
  local.get $2
  i32.const 7
  call $~lib/typedarray/Uint8Array#set<Float32Array>
  local.get $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 467
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 468
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 469
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 470
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 471
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 472
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 473
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 7
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 7
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 474
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 8
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 475
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 9
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 476
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.set $3
  local.get $3
  i32.const 0
  i64.const 10
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  local.get $3
  i32.const 1
  i64.const 11
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  local.get $3
  i32.const 2
  i64.const 12
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  local.get $0
  local.get $3
  i32.const 3
  call $~lib/typedarray/Uint8Array#set<Int64Array>
  local.get $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 485
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 486
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 487
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 10
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 488
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 11
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 489
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 12
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 490
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 491
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 7
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 7
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 492
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 8
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 493
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 9
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 494
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  global.get $std/typedarray/arrayLikeValue
  i32.const 2
  call $~lib/typedarray/Uint8Array#set<ArrayLike>
  local.get $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 498
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 499
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 500
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 501
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 502
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 12
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 503
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 504
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 7
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 7
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 505
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 8
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 506
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 9
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 507
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Uint8ClampedArray#set<Array<i32>> (; 316 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  block $~lib/internal/typedarray/SET<Uint8ClampedArray,u8,Array<i32>>|inlined.0
   local.get $0
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $3
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 664
    i32.const 48
    i32.const 242
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $4
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 720
    i32.const 48
    i32.const 243
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   block $~lib/array/Array<i32>#get:length|inlined.9 (result i32)
    local.get $4
    local.set $6
    local.get $6
    i32.load offset=4
   end
   i32.const 0
   i32.eq
   if
    br $~lib/internal/typedarray/SET<Uint8ClampedArray,u8,Array<i32>>|inlined.0
   end
   local.get $3
   i32.load
   local.set $6
   local.get $3
   i32.load offset=4
   local.set $7
   local.get $4
   i32.load
   local.set $8
   block $~lib/array/Array<i32>#get:length|inlined.10 (result i32)
    local.get $4
    local.set $9
    local.get $9
    i32.load offset=4
   end
   local.set $9
   local.get $4
   i32.const 0
   call $~lib/array/Array<i32>#__unchecked_get
   local.set $10
   block $~lib/internal/typedarray/SET_COPY<u8,i32>|inlined.1
    local.get $6
    local.set $11
    local.get $7
    local.set $12
    local.get $8
    local.set $13
    i32.const 0
    local.set $14
    local.get $5
    local.set $15
    local.get $9
    local.set $16
    block $break|0
     local.get $16
     i32.const 1
     i32.sub
     local.set $17
     loop $repeat|0
      local.get $17
      i32.const 0
      i32.ge_s
      i32.eqz
      br_if $break|0
      block $~lib/internal/arraybuffer/STORE<u8,u8>|inlined.4
       local.get $11
       local.set $18
       local.get $17
       local.get $15
       i32.add
       local.set $19
       block $~lib/internal/arraybuffer/LOAD<i32,i32>|inlined.14 (result i32)
        local.get $13
        local.set $20
        local.get $17
        local.set $21
        local.get $14
        local.set $22
        local.get $20
        local.get $21
        i32.const 2
        i32.shl
        i32.add
        local.get $22
        i32.add
        i32.load offset=8
       end
       local.set $22
       local.get $12
       local.set $21
       local.get $18
       local.get $19
       i32.const 0
       i32.shl
       i32.add
       local.get $21
       i32.add
       local.get $22
       i32.store8 offset=8
      end
      local.get $17
      i32.const 1
      i32.sub
      local.set $17
      br $repeat|0
      unreachable
     end
     unreachable
    end
   end
  end
 )
 (func $~lib/typedarray/Uint8ClampedArray#set<Uint8ClampedArray> (; 317 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  block $~lib/internal/typedarray/SET<Uint8ClampedArray,u8,Uint8ClampedArray>|inlined.0
   local.get $0
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $3
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 664
    i32.const 48
    i32.const 242
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $4
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 720
    i32.const 48
    i32.const 243
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   block $~lib/internal/typedarray/TypedArray<u8>#get:length|inlined.16 (result i32)
    local.get $4
    local.set $6
    local.get $6
    i32.load offset=8
    i32.const 0
    i32.shr_u
   end
   i32.const 0
   i32.eq
   if
    br $~lib/internal/typedarray/SET<Uint8ClampedArray,u8,Uint8ClampedArray>|inlined.0
   end
   block $~lib/internal/typedarray/SET_SAME<Uint8Array,u8>|inlined.1
    local.get $3
    local.set $6
    local.get $4
    local.set $7
    local.get $5
    local.set $8
    block $~lib/memory/memory.copy|inlined.2
     block $~lib/arraybuffer/ArrayBuffer#get:data|inlined.4 (result i32)
      local.get $6
      i32.load
      local.set $9
      local.get $9
      i32.const 8
      i32.add
     end
     local.get $6
     i32.load offset=4
     i32.add
     local.get $8
     i32.const 0
     i32.shl
     i32.add
     local.set $9
     block $~lib/arraybuffer/ArrayBuffer#get:data|inlined.5 (result i32)
      local.get $7
      i32.load
      local.set $10
      local.get $10
      i32.const 8
      i32.add
     end
     local.get $7
     i32.load offset=4
     i32.add
     local.set $10
     local.get $7
     i32.load
     i32.load
     local.set $11
     local.get $9
     local.get $10
     local.get $11
     call $~lib/internal/memory/memmove
    end
   end
  end
 )
 (func $~lib/typedarray/Uint8ClampedArray#set<Float32Array> (; 318 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  block $~lib/internal/typedarray/SET<Uint8ClampedArray,u8,Float32Array>|inlined.0
   local.get $0
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $3
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 664
    i32.const 48
    i32.const 242
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $4
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 720
    i32.const 48
    i32.const 243
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   block $~lib/internal/typedarray/TypedArray<f32>#get:length|inlined.14 (result i32)
    local.get $4
    local.set $6
    local.get $6
    i32.load offset=8
    i32.const 2
    i32.shr_u
   end
   i32.const 0
   i32.eq
   if
    br $~lib/internal/typedarray/SET<Uint8ClampedArray,u8,Float32Array>|inlined.0
   end
   block $~lib/internal/typedarray/SET_COPY<u8,f32>|inlined.1
    local.get $3
    i32.load
    local.set $6
    local.get $3
    i32.load offset=4
    local.set $7
    local.get $4
    i32.load
    local.set $8
    local.get $4
    i32.load offset=4
    local.set $9
    local.get $5
    local.set $10
    block $~lib/internal/typedarray/TypedArray<f32>#get:length|inlined.15 (result i32)
     local.get $4
     local.set $11
     local.get $11
     i32.load offset=8
     i32.const 2
     i32.shr_u
    end
    local.set $11
    block $break|0
     local.get $11
     i32.const 1
     i32.sub
     local.set $12
     loop $repeat|0
      local.get $12
      i32.const 0
      i32.ge_s
      i32.eqz
      br_if $break|0
      block $~lib/internal/arraybuffer/STORE<u8,u8>|inlined.5
       local.get $6
       local.set $13
       local.get $12
       local.get $10
       i32.add
       local.set $14
       block $~lib/internal/arraybuffer/LOAD<f32,f32>|inlined.12 (result f32)
        local.get $8
        local.set $15
        local.get $12
        local.set $16
        local.get $9
        local.set $17
        local.get $15
        local.get $16
        i32.const 2
        i32.shl
        i32.add
        local.get $17
        i32.add
        f32.load offset=8
       end
       i32.trunc_f32_u
       local.set $17
       local.get $7
       local.set $16
       local.get $13
       local.get $14
       i32.const 0
       i32.shl
       i32.add
       local.get $16
       i32.add
       local.get $17
       i32.store8 offset=8
      end
      local.get $12
      i32.const 1
      i32.sub
      local.set $12
      br $repeat|0
      unreachable
     end
     unreachable
    end
   end
  end
 )
 (func $~lib/typedarray/Uint8ClampedArray#set<Int64Array> (; 319 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  block $~lib/internal/typedarray/SET<Uint8ClampedArray,u8,Int64Array>|inlined.0
   local.get $0
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $3
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 664
    i32.const 48
    i32.const 242
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $4
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 720
    i32.const 48
    i32.const 243
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   block $~lib/internal/typedarray/TypedArray<i64>#get:length|inlined.14 (result i32)
    local.get $4
    local.set $6
    local.get $6
    i32.load offset=8
    i32.const 3
    i32.shr_u
   end
   i32.const 0
   i32.eq
   if
    br $~lib/internal/typedarray/SET<Uint8ClampedArray,u8,Int64Array>|inlined.0
   end
   block $~lib/internal/typedarray/SET_COPY<u8,i64>|inlined.1
    local.get $3
    i32.load
    local.set $6
    local.get $3
    i32.load offset=4
    local.set $7
    local.get $4
    i32.load
    local.set $8
    local.get $4
    i32.load offset=4
    local.set $9
    local.get $5
    local.set $10
    block $~lib/internal/typedarray/TypedArray<i64>#get:length|inlined.15 (result i32)
     local.get $4
     local.set $11
     local.get $11
     i32.load offset=8
     i32.const 3
     i32.shr_u
    end
    local.set $11
    block $break|0
     local.get $11
     i32.const 1
     i32.sub
     local.set $12
     loop $repeat|0
      local.get $12
      i32.const 0
      i32.ge_s
      i32.eqz
      br_if $break|0
      block $~lib/internal/arraybuffer/STORE<u8,u8>|inlined.6
       local.get $6
       local.set $13
       local.get $12
       local.get $10
       i32.add
       local.set $14
       block $~lib/internal/arraybuffer/LOAD<i64,i64>|inlined.12 (result i64)
        local.get $8
        local.set $15
        local.get $12
        local.set $16
        local.get $9
        local.set $17
        local.get $15
        local.get $16
        i32.const 3
        i32.shl
        i32.add
        local.get $17
        i32.add
        i64.load offset=8
       end
       i32.wrap_i64
       local.set $17
       local.get $7
       local.set $16
       local.get $13
       local.get $14
       i32.const 0
       i32.shl
       i32.add
       local.get $16
       i32.add
       local.get $17
       i32.store8 offset=8
      end
      local.get $12
      i32.const 1
      i32.sub
      local.set $12
      br $repeat|0
      unreachable
     end
     unreachable
    end
   end
  end
 )
 (func $~lib/typedarray/Uint8ClampedArray#set<ArrayLike> (; 320 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  block $~lib/internal/typedarray/SET<Uint8ClampedArray,u8,ArrayLike>|inlined.0
   local.get $0
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $3
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 664
    i32.const 48
    i32.const 242
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $4
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 720
    i32.const 48
    i32.const 243
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $4
   i32.load
   i32.const 0
   i32.eq
   if
    br $~lib/internal/typedarray/SET<Uint8ClampedArray,u8,ArrayLike>|inlined.0
   end
   local.get $4
   i32.load
   local.set $6
   block $~lib/internal/typedarray/TypedArray<u8>#get:length|inlined.17 (result i32)
    local.get $3
    local.set $7
    local.get $7
    i32.load offset=8
    i32.const 0
    i32.shr_u
   end
   local.set $7
   local.get $6
   local.get $5
   i32.add
   local.get $7
   i32.le_s
   i32.eqz
   if
    i32.const 936
    i32.const 48
    i32.const 456
    i32.const 8
    call $~lib/env/abort
    unreachable
   end
   local.get $3
   i32.load
   local.set $8
   local.get $3
   i32.load offset=4
   local.set $9
   block $break|0
    local.get $4
    i32.load
    i32.const 1
    i32.sub
    local.set $10
    loop $repeat|0
     local.get $10
     i32.const 0
     i32.ge_s
     i32.eqz
     br_if $break|0
     block $~lib/internal/arraybuffer/STORE<u8,u8>|inlined.7
      local.get $8
      local.set $11
      local.get $10
      local.get $5
      i32.add
      local.set $12
      local.get $4
      local.get $10
      call $std/typedarray/ArrayLike#__get
      local.set $13
      local.get $9
      local.set $14
      local.get $11
      local.get $12
      i32.const 0
      i32.shl
      i32.add
      local.get $14
      i32.add
      local.get $13
      i32.store8 offset=8
     end
     local.get $10
     i32.const 1
     i32.sub
     local.set $10
     br $repeat|0
     unreachable
    end
    unreachable
   end
  end
 )
 (func $std/typedarray/testArraySet<Uint8ClampedArray,u8> (; 321 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 10
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.set $0
  local.get $0
  global.get $std/typedarray/setSource
  i32.const 4
  call $~lib/typedarray/Uint8ClampedArray#set<Array<i32>>
  local.get $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 431
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 432
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 433
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 434
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 435
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 436
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 437
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 7
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 438
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 8
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 439
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 440
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.set $1
  local.get $1
  i32.const 0
  i32.const 4
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $1
  i32.const 1
  i32.const 5
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $1
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/typedarray/Uint8ClampedArray#set<Uint8ClampedArray>
  local.get $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 449
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 450
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 451
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 452
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 453
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 454
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 455
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 7
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 456
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 8
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 457
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 458
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Float32Array#constructor
  local.set $2
  local.get $2
  i32.const 0
  f32.const 7
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  local.get $2
  i32.const 1
  f32.const 8
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  local.get $2
  i32.const 2
  f32.const 9
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  local.get $0
  local.get $2
  i32.const 7
  call $~lib/typedarray/Uint8ClampedArray#set<Float32Array>
  local.get $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 467
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 468
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 469
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 470
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 471
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 472
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 473
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 7
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 7
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 474
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 8
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 475
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 9
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 476
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.set $3
  local.get $3
  i32.const 0
  i64.const 10
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  local.get $3
  i32.const 1
  i64.const 11
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  local.get $3
  i32.const 2
  i64.const 12
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  local.get $0
  local.get $3
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#set<Int64Array>
  local.get $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 485
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 486
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 487
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 10
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 488
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 11
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 489
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 12
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 490
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 491
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 7
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 7
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 492
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 8
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 493
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 9
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 494
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  global.get $std/typedarray/arrayLikeValue
  i32.const 2
  call $~lib/typedarray/Uint8ClampedArray#set<ArrayLike>
  local.get $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 498
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 499
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 500
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 501
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 502
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 12
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 503
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 504
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 7
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 7
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 505
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 8
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 506
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 9
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 507
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Int16Array#set<Array<i32>> (; 322 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  block $~lib/internal/typedarray/SET<Int16Array,i16,Array<i32>>|inlined.0
   local.get $0
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $3
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 664
    i32.const 48
    i32.const 242
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $4
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 720
    i32.const 48
    i32.const 243
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   block $~lib/array/Array<i32>#get:length|inlined.12 (result i32)
    local.get $4
    local.set $6
    local.get $6
    i32.load offset=4
   end
   i32.const 0
   i32.eq
   if
    br $~lib/internal/typedarray/SET<Int16Array,i16,Array<i32>>|inlined.0
   end
   local.get $3
   i32.load
   local.set $6
   local.get $3
   i32.load offset=4
   local.set $7
   local.get $4
   i32.load
   local.set $8
   block $~lib/array/Array<i32>#get:length|inlined.13 (result i32)
    local.get $4
    local.set $9
    local.get $9
    i32.load offset=4
   end
   local.set $9
   local.get $4
   i32.const 0
   call $~lib/array/Array<i32>#__unchecked_get
   local.set $10
   block $~lib/internal/typedarray/SET_COPY<i16,i32>|inlined.0
    local.get $6
    local.set $11
    local.get $7
    local.set $12
    local.get $8
    local.set $13
    i32.const 0
    local.set $14
    local.get $5
    local.set $15
    local.get $9
    local.set $16
    block $break|0
     local.get $16
     i32.const 1
     i32.sub
     local.set $17
     loop $repeat|0
      local.get $17
      i32.const 0
      i32.ge_s
      i32.eqz
      br_if $break|0
      block $~lib/internal/arraybuffer/STORE<i16,i16>|inlined.0
       local.get $11
       local.set $18
       local.get $17
       local.get $15
       i32.add
       local.set $19
       block $~lib/internal/arraybuffer/LOAD<i32,i32>|inlined.15 (result i32)
        local.get $13
        local.set $20
        local.get $17
        local.set $21
        local.get $14
        local.set $22
        local.get $20
        local.get $21
        i32.const 2
        i32.shl
        i32.add
        local.get $22
        i32.add
        i32.load offset=8
       end
       local.set $22
       local.get $12
       local.set $21
       local.get $18
       local.get $19
       i32.const 1
       i32.shl
       i32.add
       local.get $21
       i32.add
       local.get $22
       i32.store16 offset=8
      end
      local.get $17
      i32.const 1
      i32.sub
      local.set $17
      br $repeat|0
      unreachable
     end
     unreachable
    end
   end
  end
 )
 (func $~lib/typedarray/Int16Array#set<Int16Array> (; 323 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  block $~lib/internal/typedarray/SET<Int16Array,i16,Int16Array>|inlined.0
   local.get $0
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $3
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 664
    i32.const 48
    i32.const 242
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $4
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 720
    i32.const 48
    i32.const 243
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   block $~lib/internal/typedarray/TypedArray<i16>#get:length|inlined.8 (result i32)
    local.get $4
    local.set $6
    local.get $6
    i32.load offset=8
    i32.const 1
    i32.shr_u
   end
   i32.const 0
   i32.eq
   if
    br $~lib/internal/typedarray/SET<Int16Array,i16,Int16Array>|inlined.0
   end
   block $~lib/internal/typedarray/SET_SAME<Int16Array,i16>|inlined.0
    local.get $3
    local.set $6
    local.get $4
    local.set $7
    local.get $5
    local.set $8
    block $~lib/memory/memory.copy|inlined.3
     block $~lib/arraybuffer/ArrayBuffer#get:data|inlined.6 (result i32)
      local.get $6
      i32.load
      local.set $9
      local.get $9
      i32.const 8
      i32.add
     end
     local.get $6
     i32.load offset=4
     i32.add
     local.get $8
     i32.const 1
     i32.shl
     i32.add
     local.set $9
     block $~lib/arraybuffer/ArrayBuffer#get:data|inlined.7 (result i32)
      local.get $7
      i32.load
      local.set $10
      local.get $10
      i32.const 8
      i32.add
     end
     local.get $7
     i32.load offset=4
     i32.add
     local.set $10
     local.get $7
     i32.load
     i32.load
     local.set $11
     local.get $9
     local.get $10
     local.get $11
     call $~lib/internal/memory/memmove
    end
   end
  end
 )
 (func $~lib/typedarray/Int16Array#set<Float32Array> (; 324 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  block $~lib/internal/typedarray/SET<Int16Array,i16,Float32Array>|inlined.0
   local.get $0
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $3
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 664
    i32.const 48
    i32.const 242
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $4
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 720
    i32.const 48
    i32.const 243
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   block $~lib/internal/typedarray/TypedArray<f32>#get:length|inlined.17 (result i32)
    local.get $4
    local.set $6
    local.get $6
    i32.load offset=8
    i32.const 2
    i32.shr_u
   end
   i32.const 0
   i32.eq
   if
    br $~lib/internal/typedarray/SET<Int16Array,i16,Float32Array>|inlined.0
   end
   block $~lib/internal/typedarray/SET_COPY<i16,f32>|inlined.0
    local.get $3
    i32.load
    local.set $6
    local.get $3
    i32.load offset=4
    local.set $7
    local.get $4
    i32.load
    local.set $8
    local.get $4
    i32.load offset=4
    local.set $9
    local.get $5
    local.set $10
    block $~lib/internal/typedarray/TypedArray<f32>#get:length|inlined.18 (result i32)
     local.get $4
     local.set $11
     local.get $11
     i32.load offset=8
     i32.const 2
     i32.shr_u
    end
    local.set $11
    block $break|0
     local.get $11
     i32.const 1
     i32.sub
     local.set $12
     loop $repeat|0
      local.get $12
      i32.const 0
      i32.ge_s
      i32.eqz
      br_if $break|0
      block $~lib/internal/arraybuffer/STORE<i16,i16>|inlined.1
       local.get $6
       local.set $13
       local.get $12
       local.get $10
       i32.add
       local.set $14
       block $~lib/internal/arraybuffer/LOAD<f32,f32>|inlined.13 (result f32)
        local.get $8
        local.set $15
        local.get $12
        local.set $16
        local.get $9
        local.set $17
        local.get $15
        local.get $16
        i32.const 2
        i32.shl
        i32.add
        local.get $17
        i32.add
        f32.load offset=8
       end
       i32.trunc_f32_s
       local.set $17
       local.get $7
       local.set $16
       local.get $13
       local.get $14
       i32.const 1
       i32.shl
       i32.add
       local.get $16
       i32.add
       local.get $17
       i32.store16 offset=8
      end
      local.get $12
      i32.const 1
      i32.sub
      local.set $12
      br $repeat|0
      unreachable
     end
     unreachable
    end
   end
  end
 )
 (func $~lib/typedarray/Int16Array#set<Int64Array> (; 325 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  block $~lib/internal/typedarray/SET<Int16Array,i16,Int64Array>|inlined.0
   local.get $0
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $3
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 664
    i32.const 48
    i32.const 242
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $4
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 720
    i32.const 48
    i32.const 243
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   block $~lib/internal/typedarray/TypedArray<i64>#get:length|inlined.17 (result i32)
    local.get $4
    local.set $6
    local.get $6
    i32.load offset=8
    i32.const 3
    i32.shr_u
   end
   i32.const 0
   i32.eq
   if
    br $~lib/internal/typedarray/SET<Int16Array,i16,Int64Array>|inlined.0
   end
   block $~lib/internal/typedarray/SET_COPY<i16,i64>|inlined.0
    local.get $3
    i32.load
    local.set $6
    local.get $3
    i32.load offset=4
    local.set $7
    local.get $4
    i32.load
    local.set $8
    local.get $4
    i32.load offset=4
    local.set $9
    local.get $5
    local.set $10
    block $~lib/internal/typedarray/TypedArray<i64>#get:length|inlined.18 (result i32)
     local.get $4
     local.set $11
     local.get $11
     i32.load offset=8
     i32.const 3
     i32.shr_u
    end
    local.set $11
    block $break|0
     local.get $11
     i32.const 1
     i32.sub
     local.set $12
     loop $repeat|0
      local.get $12
      i32.const 0
      i32.ge_s
      i32.eqz
      br_if $break|0
      block $~lib/internal/arraybuffer/STORE<i16,i16>|inlined.2
       local.get $6
       local.set $13
       local.get $12
       local.get $10
       i32.add
       local.set $14
       block $~lib/internal/arraybuffer/LOAD<i64,i64>|inlined.13 (result i64)
        local.get $8
        local.set $15
        local.get $12
        local.set $16
        local.get $9
        local.set $17
        local.get $15
        local.get $16
        i32.const 3
        i32.shl
        i32.add
        local.get $17
        i32.add
        i64.load offset=8
       end
       i32.wrap_i64
       local.set $17
       local.get $7
       local.set $16
       local.get $13
       local.get $14
       i32.const 1
       i32.shl
       i32.add
       local.get $16
       i32.add
       local.get $17
       i32.store16 offset=8
      end
      local.get $12
      i32.const 1
      i32.sub
      local.set $12
      br $repeat|0
      unreachable
     end
     unreachable
    end
   end
  end
 )
 (func $~lib/typedarray/Int16Array#set<ArrayLike> (; 326 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  block $~lib/internal/typedarray/SET<Int16Array,i16,ArrayLike>|inlined.0
   local.get $0
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $3
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 664
    i32.const 48
    i32.const 242
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $4
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 720
    i32.const 48
    i32.const 243
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $4
   i32.load
   i32.const 0
   i32.eq
   if
    br $~lib/internal/typedarray/SET<Int16Array,i16,ArrayLike>|inlined.0
   end
   local.get $4
   i32.load
   local.set $6
   block $~lib/internal/typedarray/TypedArray<i16>#get:length|inlined.9 (result i32)
    local.get $3
    local.set $7
    local.get $7
    i32.load offset=8
    i32.const 1
    i32.shr_u
   end
   local.set $7
   local.get $6
   local.get $5
   i32.add
   local.get $7
   i32.le_s
   i32.eqz
   if
    i32.const 936
    i32.const 48
    i32.const 456
    i32.const 8
    call $~lib/env/abort
    unreachable
   end
   local.get $3
   i32.load
   local.set $8
   local.get $3
   i32.load offset=4
   local.set $9
   block $break|0
    local.get $4
    i32.load
    i32.const 1
    i32.sub
    local.set $10
    loop $repeat|0
     local.get $10
     i32.const 0
     i32.ge_s
     i32.eqz
     br_if $break|0
     block $~lib/internal/arraybuffer/STORE<i16,i16>|inlined.3
      local.get $8
      local.set $11
      local.get $10
      local.get $5
      i32.add
      local.set $12
      local.get $4
      local.get $10
      call $std/typedarray/ArrayLike#__get
      local.set $13
      local.get $9
      local.set $14
      local.get $11
      local.get $12
      i32.const 1
      i32.shl
      i32.add
      local.get $14
      i32.add
      local.get $13
      i32.store16 offset=8
     end
     local.get $10
     i32.const 1
     i32.sub
     local.set $10
     br $repeat|0
     unreachable
    end
    unreachable
   end
  end
 )
 (func $std/typedarray/testArraySet<Int16Array,i16> (; 327 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 10
  call $~lib/typedarray/Int16Array#constructor
  local.set $0
  local.get $0
  global.get $std/typedarray/setSource
  i32.const 4
  call $~lib/typedarray/Int16Array#set<Array<i32>>
  local.get $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<i16>#__get
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 431
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i16>#__get
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 432
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i16>#__get
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 433
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i16>#__get
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 434
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<i16>#__get
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 435
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<i16>#__get
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 436
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<i16>#__get
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 437
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 7
  call $~lib/internal/typedarray/TypedArray<i16>#__get
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 438
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 8
  call $~lib/internal/typedarray/TypedArray<i16>#__get
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 439
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/internal/typedarray/TypedArray<i16>#__get
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 440
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.set $1
  local.get $1
  i32.const 0
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<i16>#__set
  local.get $1
  i32.const 1
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<i16>#__set
  local.get $1
  i32.const 2
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<i16>#__set
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/typedarray/Int16Array#set<Int16Array>
  local.get $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<i16>#__get
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 449
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i16>#__get
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 450
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i16>#__get
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 451
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i16>#__get
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 452
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<i16>#__get
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 453
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<i16>#__get
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 454
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<i16>#__get
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 455
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 7
  call $~lib/internal/typedarray/TypedArray<i16>#__get
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 456
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 8
  call $~lib/internal/typedarray/TypedArray<i16>#__get
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 457
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/internal/typedarray/TypedArray<i16>#__get
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 458
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Float32Array#constructor
  local.set $2
  local.get $2
  i32.const 0
  f32.const 7
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  local.get $2
  i32.const 1
  f32.const 8
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  local.get $2
  i32.const 2
  f32.const 9
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  local.get $0
  local.get $2
  i32.const 7
  call $~lib/typedarray/Int16Array#set<Float32Array>
  local.get $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<i16>#__get
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 467
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i16>#__get
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 468
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i16>#__get
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 469
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i16>#__get
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 470
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<i16>#__get
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 471
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<i16>#__get
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 472
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<i16>#__get
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 473
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 7
  call $~lib/internal/typedarray/TypedArray<i16>#__get
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 7
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 474
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 8
  call $~lib/internal/typedarray/TypedArray<i16>#__get
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 475
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/internal/typedarray/TypedArray<i16>#__get
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 9
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 476
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.set $3
  local.get $3
  i32.const 0
  i64.const 10
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  local.get $3
  i32.const 1
  i64.const 11
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  local.get $3
  i32.const 2
  i64.const 12
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  local.get $0
  local.get $3
  i32.const 3
  call $~lib/typedarray/Int16Array#set<Int64Array>
  local.get $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<i16>#__get
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 485
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i16>#__get
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 486
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i16>#__get
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 487
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i16>#__get
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 10
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 488
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<i16>#__get
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 11
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 489
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<i16>#__get
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 12
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 490
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<i16>#__get
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 491
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 7
  call $~lib/internal/typedarray/TypedArray<i16>#__get
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 7
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 492
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 8
  call $~lib/internal/typedarray/TypedArray<i16>#__get
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 493
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/internal/typedarray/TypedArray<i16>#__get
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 9
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 494
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  global.get $std/typedarray/arrayLikeValue
  i32.const 2
  call $~lib/typedarray/Int16Array#set<ArrayLike>
  local.get $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<i16>#__get
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 498
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i16>#__get
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 499
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i16>#__get
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 500
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i16>#__get
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 501
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<i16>#__get
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 502
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<i16>#__get
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 12
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 503
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<i16>#__get
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 504
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 7
  call $~lib/internal/typedarray/TypedArray<i16>#__get
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 7
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 505
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 8
  call $~lib/internal/typedarray/TypedArray<i16>#__get
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 506
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/internal/typedarray/TypedArray<i16>#__get
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 9
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 507
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Uint16Array#set<Array<i32>> (; 328 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  block $~lib/internal/typedarray/SET<Uint16Array,u16,Array<i32>>|inlined.0
   local.get $0
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $3
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 664
    i32.const 48
    i32.const 242
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $4
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 720
    i32.const 48
    i32.const 243
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   block $~lib/array/Array<i32>#get:length|inlined.15 (result i32)
    local.get $4
    local.set $6
    local.get $6
    i32.load offset=4
   end
   i32.const 0
   i32.eq
   if
    br $~lib/internal/typedarray/SET<Uint16Array,u16,Array<i32>>|inlined.0
   end
   local.get $3
   i32.load
   local.set $6
   local.get $3
   i32.load offset=4
   local.set $7
   local.get $4
   i32.load
   local.set $8
   block $~lib/array/Array<i32>#get:length|inlined.16 (result i32)
    local.get $4
    local.set $9
    local.get $9
    i32.load offset=4
   end
   local.set $9
   local.get $4
   i32.const 0
   call $~lib/array/Array<i32>#__unchecked_get
   local.set $10
   block $~lib/internal/typedarray/SET_COPY<u16,i32>|inlined.0
    local.get $6
    local.set $11
    local.get $7
    local.set $12
    local.get $8
    local.set $13
    i32.const 0
    local.set $14
    local.get $5
    local.set $15
    local.get $9
    local.set $16
    block $break|0
     local.get $16
     i32.const 1
     i32.sub
     local.set $17
     loop $repeat|0
      local.get $17
      i32.const 0
      i32.ge_s
      i32.eqz
      br_if $break|0
      block $~lib/internal/arraybuffer/STORE<u16,u16>|inlined.0
       local.get $11
       local.set $18
       local.get $17
       local.get $15
       i32.add
       local.set $19
       block $~lib/internal/arraybuffer/LOAD<i32,i32>|inlined.16 (result i32)
        local.get $13
        local.set $20
        local.get $17
        local.set $21
        local.get $14
        local.set $22
        local.get $20
        local.get $21
        i32.const 2
        i32.shl
        i32.add
        local.get $22
        i32.add
        i32.load offset=8
       end
       local.set $22
       local.get $12
       local.set $21
       local.get $18
       local.get $19
       i32.const 1
       i32.shl
       i32.add
       local.get $21
       i32.add
       local.get $22
       i32.store16 offset=8
      end
      local.get $17
      i32.const 1
      i32.sub
      local.set $17
      br $repeat|0
      unreachable
     end
     unreachable
    end
   end
  end
 )
 (func $~lib/typedarray/Uint16Array#set<Uint16Array> (; 329 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  block $~lib/internal/typedarray/SET<Uint16Array,u16,Uint16Array>|inlined.0
   local.get $0
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $3
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 664
    i32.const 48
    i32.const 242
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $4
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 720
    i32.const 48
    i32.const 243
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   block $~lib/internal/typedarray/TypedArray<u16>#get:length|inlined.8 (result i32)
    local.get $4
    local.set $6
    local.get $6
    i32.load offset=8
    i32.const 1
    i32.shr_u
   end
   i32.const 0
   i32.eq
   if
    br $~lib/internal/typedarray/SET<Uint16Array,u16,Uint16Array>|inlined.0
   end
   block $~lib/internal/typedarray/SET_SAME<Uint16Array,u16>|inlined.0
    local.get $3
    local.set $6
    local.get $4
    local.set $7
    local.get $5
    local.set $8
    block $~lib/memory/memory.copy|inlined.4
     block $~lib/arraybuffer/ArrayBuffer#get:data|inlined.8 (result i32)
      local.get $6
      i32.load
      local.set $9
      local.get $9
      i32.const 8
      i32.add
     end
     local.get $6
     i32.load offset=4
     i32.add
     local.get $8
     i32.const 1
     i32.shl
     i32.add
     local.set $9
     block $~lib/arraybuffer/ArrayBuffer#get:data|inlined.9 (result i32)
      local.get $7
      i32.load
      local.set $10
      local.get $10
      i32.const 8
      i32.add
     end
     local.get $7
     i32.load offset=4
     i32.add
     local.set $10
     local.get $7
     i32.load
     i32.load
     local.set $11
     local.get $9
     local.get $10
     local.get $11
     call $~lib/internal/memory/memmove
    end
   end
  end
 )
 (func $~lib/typedarray/Uint16Array#set<Float32Array> (; 330 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  block $~lib/internal/typedarray/SET<Uint16Array,u16,Float32Array>|inlined.0
   local.get $0
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $3
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 664
    i32.const 48
    i32.const 242
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $4
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 720
    i32.const 48
    i32.const 243
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   block $~lib/internal/typedarray/TypedArray<f32>#get:length|inlined.20 (result i32)
    local.get $4
    local.set $6
    local.get $6
    i32.load offset=8
    i32.const 2
    i32.shr_u
   end
   i32.const 0
   i32.eq
   if
    br $~lib/internal/typedarray/SET<Uint16Array,u16,Float32Array>|inlined.0
   end
   block $~lib/internal/typedarray/SET_COPY<u16,f32>|inlined.0
    local.get $3
    i32.load
    local.set $6
    local.get $3
    i32.load offset=4
    local.set $7
    local.get $4
    i32.load
    local.set $8
    local.get $4
    i32.load offset=4
    local.set $9
    local.get $5
    local.set $10
    block $~lib/internal/typedarray/TypedArray<f32>#get:length|inlined.21 (result i32)
     local.get $4
     local.set $11
     local.get $11
     i32.load offset=8
     i32.const 2
     i32.shr_u
    end
    local.set $11
    block $break|0
     local.get $11
     i32.const 1
     i32.sub
     local.set $12
     loop $repeat|0
      local.get $12
      i32.const 0
      i32.ge_s
      i32.eqz
      br_if $break|0
      block $~lib/internal/arraybuffer/STORE<u16,u16>|inlined.1
       local.get $6
       local.set $13
       local.get $12
       local.get $10
       i32.add
       local.set $14
       block $~lib/internal/arraybuffer/LOAD<f32,f32>|inlined.14 (result f32)
        local.get $8
        local.set $15
        local.get $12
        local.set $16
        local.get $9
        local.set $17
        local.get $15
        local.get $16
        i32.const 2
        i32.shl
        i32.add
        local.get $17
        i32.add
        f32.load offset=8
       end
       i32.trunc_f32_u
       local.set $17
       local.get $7
       local.set $16
       local.get $13
       local.get $14
       i32.const 1
       i32.shl
       i32.add
       local.get $16
       i32.add
       local.get $17
       i32.store16 offset=8
      end
      local.get $12
      i32.const 1
      i32.sub
      local.set $12
      br $repeat|0
      unreachable
     end
     unreachable
    end
   end
  end
 )
 (func $~lib/typedarray/Uint16Array#set<Int64Array> (; 331 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  block $~lib/internal/typedarray/SET<Uint16Array,u16,Int64Array>|inlined.0
   local.get $0
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $3
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 664
    i32.const 48
    i32.const 242
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $4
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 720
    i32.const 48
    i32.const 243
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   block $~lib/internal/typedarray/TypedArray<i64>#get:length|inlined.20 (result i32)
    local.get $4
    local.set $6
    local.get $6
    i32.load offset=8
    i32.const 3
    i32.shr_u
   end
   i32.const 0
   i32.eq
   if
    br $~lib/internal/typedarray/SET<Uint16Array,u16,Int64Array>|inlined.0
   end
   block $~lib/internal/typedarray/SET_COPY<u16,i64>|inlined.0
    local.get $3
    i32.load
    local.set $6
    local.get $3
    i32.load offset=4
    local.set $7
    local.get $4
    i32.load
    local.set $8
    local.get $4
    i32.load offset=4
    local.set $9
    local.get $5
    local.set $10
    block $~lib/internal/typedarray/TypedArray<i64>#get:length|inlined.21 (result i32)
     local.get $4
     local.set $11
     local.get $11
     i32.load offset=8
     i32.const 3
     i32.shr_u
    end
    local.set $11
    block $break|0
     local.get $11
     i32.const 1
     i32.sub
     local.set $12
     loop $repeat|0
      local.get $12
      i32.const 0
      i32.ge_s
      i32.eqz
      br_if $break|0
      block $~lib/internal/arraybuffer/STORE<u16,u16>|inlined.2
       local.get $6
       local.set $13
       local.get $12
       local.get $10
       i32.add
       local.set $14
       block $~lib/internal/arraybuffer/LOAD<i64,i64>|inlined.14 (result i64)
        local.get $8
        local.set $15
        local.get $12
        local.set $16
        local.get $9
        local.set $17
        local.get $15
        local.get $16
        i32.const 3
        i32.shl
        i32.add
        local.get $17
        i32.add
        i64.load offset=8
       end
       i32.wrap_i64
       local.set $17
       local.get $7
       local.set $16
       local.get $13
       local.get $14
       i32.const 1
       i32.shl
       i32.add
       local.get $16
       i32.add
       local.get $17
       i32.store16 offset=8
      end
      local.get $12
      i32.const 1
      i32.sub
      local.set $12
      br $repeat|0
      unreachable
     end
     unreachable
    end
   end
  end
 )
 (func $~lib/typedarray/Uint16Array#set<ArrayLike> (; 332 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  block $~lib/internal/typedarray/SET<Uint16Array,u16,ArrayLike>|inlined.0
   local.get $0
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $3
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 664
    i32.const 48
    i32.const 242
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $4
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 720
    i32.const 48
    i32.const 243
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $4
   i32.load
   i32.const 0
   i32.eq
   if
    br $~lib/internal/typedarray/SET<Uint16Array,u16,ArrayLike>|inlined.0
   end
   local.get $4
   i32.load
   local.set $6
   block $~lib/internal/typedarray/TypedArray<u16>#get:length|inlined.9 (result i32)
    local.get $3
    local.set $7
    local.get $7
    i32.load offset=8
    i32.const 1
    i32.shr_u
   end
   local.set $7
   local.get $6
   local.get $5
   i32.add
   local.get $7
   i32.le_s
   i32.eqz
   if
    i32.const 936
    i32.const 48
    i32.const 456
    i32.const 8
    call $~lib/env/abort
    unreachable
   end
   local.get $3
   i32.load
   local.set $8
   local.get $3
   i32.load offset=4
   local.set $9
   block $break|0
    local.get $4
    i32.load
    i32.const 1
    i32.sub
    local.set $10
    loop $repeat|0
     local.get $10
     i32.const 0
     i32.ge_s
     i32.eqz
     br_if $break|0
     block $~lib/internal/arraybuffer/STORE<u16,u16>|inlined.3
      local.get $8
      local.set $11
      local.get $10
      local.get $5
      i32.add
      local.set $12
      local.get $4
      local.get $10
      call $std/typedarray/ArrayLike#__get
      local.set $13
      local.get $9
      local.set $14
      local.get $11
      local.get $12
      i32.const 1
      i32.shl
      i32.add
      local.get $14
      i32.add
      local.get $13
      i32.store16 offset=8
     end
     local.get $10
     i32.const 1
     i32.sub
     local.set $10
     br $repeat|0
     unreachable
    end
    unreachable
   end
  end
 )
 (func $std/typedarray/testArraySet<Uint16Array,u16> (; 333 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 10
  call $~lib/typedarray/Uint16Array#constructor
  local.set $0
  local.get $0
  global.get $std/typedarray/setSource
  i32.const 4
  call $~lib/typedarray/Uint16Array#set<Array<i32>>
  local.get $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<u16>#__get
  i32.const 65535
  i32.and
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 431
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u16>#__get
  i32.const 65535
  i32.and
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 432
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u16>#__get
  i32.const 65535
  i32.and
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 433
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u16>#__get
  i32.const 65535
  i32.and
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 434
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<u16>#__get
  i32.const 65535
  i32.and
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 435
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<u16>#__get
  i32.const 65535
  i32.and
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 436
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<u16>#__get
  i32.const 65535
  i32.and
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 437
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 7
  call $~lib/internal/typedarray/TypedArray<u16>#__get
  i32.const 65535
  i32.and
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 438
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 8
  call $~lib/internal/typedarray/TypedArray<u16>#__get
  i32.const 65535
  i32.and
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 439
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/internal/typedarray/TypedArray<u16>#__get
  i32.const 65535
  i32.and
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 440
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint16Array#constructor
  local.set $1
  local.get $1
  i32.const 0
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<u16>#__set
  local.get $1
  i32.const 1
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<u16>#__set
  local.get $1
  i32.const 2
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<u16>#__set
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/typedarray/Uint16Array#set<Uint16Array>
  local.get $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<u16>#__get
  i32.const 65535
  i32.and
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 449
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u16>#__get
  i32.const 65535
  i32.and
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 450
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u16>#__get
  i32.const 65535
  i32.and
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 451
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u16>#__get
  i32.const 65535
  i32.and
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 452
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<u16>#__get
  i32.const 65535
  i32.and
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 453
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<u16>#__get
  i32.const 65535
  i32.and
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 454
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<u16>#__get
  i32.const 65535
  i32.and
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 455
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 7
  call $~lib/internal/typedarray/TypedArray<u16>#__get
  i32.const 65535
  i32.and
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 456
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 8
  call $~lib/internal/typedarray/TypedArray<u16>#__get
  i32.const 65535
  i32.and
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 457
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/internal/typedarray/TypedArray<u16>#__get
  i32.const 65535
  i32.and
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 458
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Float32Array#constructor
  local.set $2
  local.get $2
  i32.const 0
  f32.const 7
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  local.get $2
  i32.const 1
  f32.const 8
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  local.get $2
  i32.const 2
  f32.const 9
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  local.get $0
  local.get $2
  i32.const 7
  call $~lib/typedarray/Uint16Array#set<Float32Array>
  local.get $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<u16>#__get
  i32.const 65535
  i32.and
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 467
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u16>#__get
  i32.const 65535
  i32.and
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 468
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u16>#__get
  i32.const 65535
  i32.and
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 469
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u16>#__get
  i32.const 65535
  i32.and
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 470
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<u16>#__get
  i32.const 65535
  i32.and
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 471
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<u16>#__get
  i32.const 65535
  i32.and
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 472
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<u16>#__get
  i32.const 65535
  i32.and
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 473
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 7
  call $~lib/internal/typedarray/TypedArray<u16>#__get
  i32.const 65535
  i32.and
  i32.const 7
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 474
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 8
  call $~lib/internal/typedarray/TypedArray<u16>#__get
  i32.const 65535
  i32.and
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 475
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/internal/typedarray/TypedArray<u16>#__get
  i32.const 65535
  i32.and
  i32.const 9
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 476
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.set $3
  local.get $3
  i32.const 0
  i64.const 10
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  local.get $3
  i32.const 1
  i64.const 11
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  local.get $3
  i32.const 2
  i64.const 12
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  local.get $0
  local.get $3
  i32.const 3
  call $~lib/typedarray/Uint16Array#set<Int64Array>
  local.get $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<u16>#__get
  i32.const 65535
  i32.and
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 485
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u16>#__get
  i32.const 65535
  i32.and
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 486
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u16>#__get
  i32.const 65535
  i32.and
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 487
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u16>#__get
  i32.const 65535
  i32.and
  i32.const 10
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 488
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<u16>#__get
  i32.const 65535
  i32.and
  i32.const 11
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 489
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<u16>#__get
  i32.const 65535
  i32.and
  i32.const 12
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 490
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<u16>#__get
  i32.const 65535
  i32.and
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 491
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 7
  call $~lib/internal/typedarray/TypedArray<u16>#__get
  i32.const 65535
  i32.and
  i32.const 7
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 492
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 8
  call $~lib/internal/typedarray/TypedArray<u16>#__get
  i32.const 65535
  i32.and
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 493
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/internal/typedarray/TypedArray<u16>#__get
  i32.const 65535
  i32.and
  i32.const 9
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 494
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  global.get $std/typedarray/arrayLikeValue
  i32.const 2
  call $~lib/typedarray/Uint16Array#set<ArrayLike>
  local.get $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<u16>#__get
  i32.const 65535
  i32.and
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 498
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u16>#__get
  i32.const 65535
  i32.and
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 499
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u16>#__get
  i32.const 65535
  i32.and
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 500
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u16>#__get
  i32.const 65535
  i32.and
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 501
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<u16>#__get
  i32.const 65535
  i32.and
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 502
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<u16>#__get
  i32.const 65535
  i32.and
  i32.const 12
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 503
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<u16>#__get
  i32.const 65535
  i32.and
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 504
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 7
  call $~lib/internal/typedarray/TypedArray<u16>#__get
  i32.const 65535
  i32.and
  i32.const 7
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 505
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 8
  call $~lib/internal/typedarray/TypedArray<u16>#__get
  i32.const 65535
  i32.and
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 506
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/internal/typedarray/TypedArray<u16>#__get
  i32.const 65535
  i32.and
  i32.const 9
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 507
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Int32Array#set<Array<i32>> (; 334 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  block $~lib/internal/typedarray/SET<Int32Array,i32,Array<i32>>|inlined.0
   local.get $0
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $3
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 664
    i32.const 48
    i32.const 242
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $4
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 720
    i32.const 48
    i32.const 243
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   block $~lib/array/Array<i32>#get:length|inlined.18 (result i32)
    local.get $4
    local.set $6
    local.get $6
    i32.load offset=4
   end
   i32.const 0
   i32.eq
   if
    br $~lib/internal/typedarray/SET<Int32Array,i32,Array<i32>>|inlined.0
   end
   local.get $3
   i32.load
   local.set $6
   local.get $3
   i32.load offset=4
   local.set $7
   local.get $4
   i32.load
   local.set $8
   block $~lib/array/Array<i32>#get:length|inlined.19 (result i32)
    local.get $4
    local.set $9
    local.get $9
    i32.load offset=4
   end
   local.set $9
   local.get $4
   i32.const 0
   call $~lib/array/Array<i32>#__unchecked_get
   local.set $10
   block $~lib/internal/typedarray/SET_COPY<i32,i32>|inlined.0
    local.get $6
    local.set $11
    local.get $7
    local.set $12
    local.get $8
    local.set $13
    i32.const 0
    local.set $14
    local.get $5
    local.set $15
    local.get $9
    local.set $16
    block $break|0
     local.get $16
     i32.const 1
     i32.sub
     local.set $17
     loop $repeat|0
      local.get $17
      i32.const 0
      i32.ge_s
      i32.eqz
      br_if $break|0
      block $~lib/internal/arraybuffer/STORE<i32,i32>|inlined.3
       local.get $11
       local.set $18
       local.get $17
       local.get $15
       i32.add
       local.set $19
       block $~lib/internal/arraybuffer/LOAD<i32,i32>|inlined.17 (result i32)
        local.get $13
        local.set $20
        local.get $17
        local.set $21
        local.get $14
        local.set $22
        local.get $20
        local.get $21
        i32.const 2
        i32.shl
        i32.add
        local.get $22
        i32.add
        i32.load offset=8
       end
       local.set $22
       local.get $12
       local.set $21
       local.get $18
       local.get $19
       i32.const 2
       i32.shl
       i32.add
       local.get $21
       i32.add
       local.get $22
       i32.store offset=8
      end
      local.get $17
      i32.const 1
      i32.sub
      local.set $17
      br $repeat|0
      unreachable
     end
     unreachable
    end
   end
  end
 )
 (func $~lib/typedarray/Int32Array#set<Int32Array> (; 335 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  block $~lib/internal/typedarray/SET<Int32Array,i32,Int32Array>|inlined.0
   local.get $0
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $3
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 664
    i32.const 48
    i32.const 242
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $4
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 720
    i32.const 48
    i32.const 243
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   block $~lib/internal/typedarray/TypedArray<i32>#get:length|inlined.16 (result i32)
    local.get $4
    local.set $6
    local.get $6
    i32.load offset=8
    i32.const 2
    i32.shr_u
   end
   i32.const 0
   i32.eq
   if
    br $~lib/internal/typedarray/SET<Int32Array,i32,Int32Array>|inlined.0
   end
   block $~lib/internal/typedarray/SET_SAME<Int32Array,i32>|inlined.0
    local.get $3
    local.set $6
    local.get $4
    local.set $7
    local.get $5
    local.set $8
    block $~lib/memory/memory.copy|inlined.5
     block $~lib/arraybuffer/ArrayBuffer#get:data|inlined.10 (result i32)
      local.get $6
      i32.load
      local.set $9
      local.get $9
      i32.const 8
      i32.add
     end
     local.get $6
     i32.load offset=4
     i32.add
     local.get $8
     i32.const 2
     i32.shl
     i32.add
     local.set $9
     block $~lib/arraybuffer/ArrayBuffer#get:data|inlined.11 (result i32)
      local.get $7
      i32.load
      local.set $10
      local.get $10
      i32.const 8
      i32.add
     end
     local.get $7
     i32.load offset=4
     i32.add
     local.set $10
     local.get $7
     i32.load
     i32.load
     local.set $11
     local.get $9
     local.get $10
     local.get $11
     call $~lib/internal/memory/memmove
    end
   end
  end
 )
 (func $~lib/typedarray/Int32Array#set<Float32Array> (; 336 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  block $~lib/internal/typedarray/SET<Int32Array,i32,Float32Array>|inlined.0
   local.get $0
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $3
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 664
    i32.const 48
    i32.const 242
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $4
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 720
    i32.const 48
    i32.const 243
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   block $~lib/internal/typedarray/TypedArray<f32>#get:length|inlined.23 (result i32)
    local.get $4
    local.set $6
    local.get $6
    i32.load offset=8
    i32.const 2
    i32.shr_u
   end
   i32.const 0
   i32.eq
   if
    br $~lib/internal/typedarray/SET<Int32Array,i32,Float32Array>|inlined.0
   end
   block $~lib/internal/typedarray/SET_COPY<i32,f32>|inlined.0
    local.get $3
    i32.load
    local.set $6
    local.get $3
    i32.load offset=4
    local.set $7
    local.get $4
    i32.load
    local.set $8
    local.get $4
    i32.load offset=4
    local.set $9
    local.get $5
    local.set $10
    block $~lib/internal/typedarray/TypedArray<f32>#get:length|inlined.24 (result i32)
     local.get $4
     local.set $11
     local.get $11
     i32.load offset=8
     i32.const 2
     i32.shr_u
    end
    local.set $11
    block $break|0
     local.get $11
     i32.const 1
     i32.sub
     local.set $12
     loop $repeat|0
      local.get $12
      i32.const 0
      i32.ge_s
      i32.eqz
      br_if $break|0
      block $~lib/internal/arraybuffer/STORE<i32,i32>|inlined.4
       local.get $6
       local.set $13
       local.get $12
       local.get $10
       i32.add
       local.set $14
       block $~lib/internal/arraybuffer/LOAD<f32,f32>|inlined.15 (result f32)
        local.get $8
        local.set $15
        local.get $12
        local.set $16
        local.get $9
        local.set $17
        local.get $15
        local.get $16
        i32.const 2
        i32.shl
        i32.add
        local.get $17
        i32.add
        f32.load offset=8
       end
       i32.trunc_f32_s
       local.set $17
       local.get $7
       local.set $16
       local.get $13
       local.get $14
       i32.const 2
       i32.shl
       i32.add
       local.get $16
       i32.add
       local.get $17
       i32.store offset=8
      end
      local.get $12
      i32.const 1
      i32.sub
      local.set $12
      br $repeat|0
      unreachable
     end
     unreachable
    end
   end
  end
 )
 (func $~lib/typedarray/Int32Array#set<Int64Array> (; 337 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  block $~lib/internal/typedarray/SET<Int32Array,i32,Int64Array>|inlined.0
   local.get $0
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $3
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 664
    i32.const 48
    i32.const 242
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $4
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 720
    i32.const 48
    i32.const 243
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   block $~lib/internal/typedarray/TypedArray<i64>#get:length|inlined.23 (result i32)
    local.get $4
    local.set $6
    local.get $6
    i32.load offset=8
    i32.const 3
    i32.shr_u
   end
   i32.const 0
   i32.eq
   if
    br $~lib/internal/typedarray/SET<Int32Array,i32,Int64Array>|inlined.0
   end
   block $~lib/internal/typedarray/SET_COPY<i32,i64>|inlined.0
    local.get $3
    i32.load
    local.set $6
    local.get $3
    i32.load offset=4
    local.set $7
    local.get $4
    i32.load
    local.set $8
    local.get $4
    i32.load offset=4
    local.set $9
    local.get $5
    local.set $10
    block $~lib/internal/typedarray/TypedArray<i64>#get:length|inlined.24 (result i32)
     local.get $4
     local.set $11
     local.get $11
     i32.load offset=8
     i32.const 3
     i32.shr_u
    end
    local.set $11
    block $break|0
     local.get $11
     i32.const 1
     i32.sub
     local.set $12
     loop $repeat|0
      local.get $12
      i32.const 0
      i32.ge_s
      i32.eqz
      br_if $break|0
      block $~lib/internal/arraybuffer/STORE<i32,i32>|inlined.5
       local.get $6
       local.set $13
       local.get $12
       local.get $10
       i32.add
       local.set $14
       block $~lib/internal/arraybuffer/LOAD<i64,i64>|inlined.15 (result i64)
        local.get $8
        local.set $15
        local.get $12
        local.set $16
        local.get $9
        local.set $17
        local.get $15
        local.get $16
        i32.const 3
        i32.shl
        i32.add
        local.get $17
        i32.add
        i64.load offset=8
       end
       i32.wrap_i64
       local.set $17
       local.get $7
       local.set $16
       local.get $13
       local.get $14
       i32.const 2
       i32.shl
       i32.add
       local.get $16
       i32.add
       local.get $17
       i32.store offset=8
      end
      local.get $12
      i32.const 1
      i32.sub
      local.set $12
      br $repeat|0
      unreachable
     end
     unreachable
    end
   end
  end
 )
 (func $~lib/typedarray/Int32Array#set<ArrayLike> (; 338 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  block $~lib/internal/typedarray/SET<Int32Array,i32,ArrayLike>|inlined.0
   local.get $0
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $3
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 664
    i32.const 48
    i32.const 242
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $4
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 720
    i32.const 48
    i32.const 243
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $4
   i32.load
   i32.const 0
   i32.eq
   if
    br $~lib/internal/typedarray/SET<Int32Array,i32,ArrayLike>|inlined.0
   end
   local.get $4
   i32.load
   local.set $6
   block $~lib/internal/typedarray/TypedArray<i32>#get:length|inlined.17 (result i32)
    local.get $3
    local.set $7
    local.get $7
    i32.load offset=8
    i32.const 2
    i32.shr_u
   end
   local.set $7
   local.get $6
   local.get $5
   i32.add
   local.get $7
   i32.le_s
   i32.eqz
   if
    i32.const 936
    i32.const 48
    i32.const 456
    i32.const 8
    call $~lib/env/abort
    unreachable
   end
   local.get $3
   i32.load
   local.set $8
   local.get $3
   i32.load offset=4
   local.set $9
   block $break|0
    local.get $4
    i32.load
    i32.const 1
    i32.sub
    local.set $10
    loop $repeat|0
     local.get $10
     i32.const 0
     i32.ge_s
     i32.eqz
     br_if $break|0
     block $~lib/internal/arraybuffer/STORE<i32,i32>|inlined.6
      local.get $8
      local.set $11
      local.get $10
      local.get $5
      i32.add
      local.set $12
      local.get $4
      local.get $10
      call $std/typedarray/ArrayLike#__get
      local.set $13
      local.get $9
      local.set $14
      local.get $11
      local.get $12
      i32.const 2
      i32.shl
      i32.add
      local.get $14
      i32.add
      local.get $13
      i32.store offset=8
     end
     local.get $10
     i32.const 1
     i32.sub
     local.set $10
     br $repeat|0
     unreachable
    end
    unreachable
   end
  end
 )
 (func $std/typedarray/testArraySet<Int32Array,i32> (; 339 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 10
  call $~lib/typedarray/Int32Array#constructor
  local.set $0
  local.get $0
  global.get $std/typedarray/setSource
  i32.const 4
  call $~lib/typedarray/Int32Array#set<Array<i32>>
  local.get $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 431
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 432
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 433
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 434
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 435
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 436
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 437
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 7
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 438
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 8
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 439
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 440
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.set $1
  local.get $1
  i32.const 0
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  local.get $1
  i32.const 1
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  local.get $1
  i32.const 2
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/typedarray/Int32Array#set<Int32Array>
  local.get $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 449
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 450
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 451
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 452
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 453
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 454
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 455
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 7
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 456
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 8
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 457
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 458
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Float32Array#constructor
  local.set $2
  local.get $2
  i32.const 0
  f32.const 7
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  local.get $2
  i32.const 1
  f32.const 8
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  local.get $2
  i32.const 2
  f32.const 9
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  local.get $0
  local.get $2
  i32.const 7
  call $~lib/typedarray/Int32Array#set<Float32Array>
  local.get $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 467
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 468
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 469
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 470
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 471
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 472
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 473
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 7
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 7
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 474
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 8
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 475
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 9
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 476
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.set $3
  local.get $3
  i32.const 0
  i64.const 10
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  local.get $3
  i32.const 1
  i64.const 11
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  local.get $3
  i32.const 2
  i64.const 12
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  local.get $0
  local.get $3
  i32.const 3
  call $~lib/typedarray/Int32Array#set<Int64Array>
  local.get $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 485
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 486
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 487
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 10
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 488
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 11
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 489
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 12
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 490
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 491
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 7
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 7
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 492
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 8
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 493
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 9
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 494
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  global.get $std/typedarray/arrayLikeValue
  i32.const 2
  call $~lib/typedarray/Int32Array#set<ArrayLike>
  local.get $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 498
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 499
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 500
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 501
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 502
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 12
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 503
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 504
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 7
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 7
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 505
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 8
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 506
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 9
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 507
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Uint32Array#set<Array<i32>> (; 340 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  block $~lib/internal/typedarray/SET<Uint32Array,u32,Array<i32>>|inlined.0
   local.get $0
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $3
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 664
    i32.const 48
    i32.const 242
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $4
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 720
    i32.const 48
    i32.const 243
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   block $~lib/array/Array<i32>#get:length|inlined.21 (result i32)
    local.get $4
    local.set $6
    local.get $6
    i32.load offset=4
   end
   i32.const 0
   i32.eq
   if
    br $~lib/internal/typedarray/SET<Uint32Array,u32,Array<i32>>|inlined.0
   end
   local.get $3
   i32.load
   local.set $6
   local.get $3
   i32.load offset=4
   local.set $7
   local.get $4
   i32.load
   local.set $8
   block $~lib/array/Array<i32>#get:length|inlined.22 (result i32)
    local.get $4
    local.set $9
    local.get $9
    i32.load offset=4
   end
   local.set $9
   local.get $4
   i32.const 0
   call $~lib/array/Array<i32>#__unchecked_get
   local.set $10
   block $~lib/internal/typedarray/SET_COPY<u32,i32>|inlined.0
    local.get $6
    local.set $11
    local.get $7
    local.set $12
    local.get $8
    local.set $13
    i32.const 0
    local.set $14
    local.get $5
    local.set $15
    local.get $9
    local.set $16
    block $break|0
     local.get $16
     i32.const 1
     i32.sub
     local.set $17
     loop $repeat|0
      local.get $17
      i32.const 0
      i32.ge_s
      i32.eqz
      br_if $break|0
      block $~lib/internal/arraybuffer/STORE<u32,u32>|inlined.2
       local.get $11
       local.set $18
       local.get $17
       local.get $15
       i32.add
       local.set $19
       block $~lib/internal/arraybuffer/LOAD<i32,i32>|inlined.18 (result i32)
        local.get $13
        local.set $20
        local.get $17
        local.set $21
        local.get $14
        local.set $22
        local.get $20
        local.get $21
        i32.const 2
        i32.shl
        i32.add
        local.get $22
        i32.add
        i32.load offset=8
       end
       local.set $22
       local.get $12
       local.set $21
       local.get $18
       local.get $19
       i32.const 2
       i32.shl
       i32.add
       local.get $21
       i32.add
       local.get $22
       i32.store offset=8
      end
      local.get $17
      i32.const 1
      i32.sub
      local.set $17
      br $repeat|0
      unreachable
     end
     unreachable
    end
   end
  end
 )
 (func $~lib/typedarray/Uint32Array#set<Uint32Array> (; 341 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  block $~lib/internal/typedarray/SET<Uint32Array,u32,Uint32Array>|inlined.0
   local.get $0
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $3
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 664
    i32.const 48
    i32.const 242
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $4
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 720
    i32.const 48
    i32.const 243
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   block $~lib/internal/typedarray/TypedArray<u32>#get:length|inlined.8 (result i32)
    local.get $4
    local.set $6
    local.get $6
    i32.load offset=8
    i32.const 2
    i32.shr_u
   end
   i32.const 0
   i32.eq
   if
    br $~lib/internal/typedarray/SET<Uint32Array,u32,Uint32Array>|inlined.0
   end
   block $~lib/internal/typedarray/SET_SAME<Uint32Array,u32>|inlined.0
    local.get $3
    local.set $6
    local.get $4
    local.set $7
    local.get $5
    local.set $8
    block $~lib/memory/memory.copy|inlined.6
     block $~lib/arraybuffer/ArrayBuffer#get:data|inlined.12 (result i32)
      local.get $6
      i32.load
      local.set $9
      local.get $9
      i32.const 8
      i32.add
     end
     local.get $6
     i32.load offset=4
     i32.add
     local.get $8
     i32.const 2
     i32.shl
     i32.add
     local.set $9
     block $~lib/arraybuffer/ArrayBuffer#get:data|inlined.13 (result i32)
      local.get $7
      i32.load
      local.set $10
      local.get $10
      i32.const 8
      i32.add
     end
     local.get $7
     i32.load offset=4
     i32.add
     local.set $10
     local.get $7
     i32.load
     i32.load
     local.set $11
     local.get $9
     local.get $10
     local.get $11
     call $~lib/internal/memory/memmove
    end
   end
  end
 )
 (func $~lib/typedarray/Uint32Array#set<Float32Array> (; 342 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  block $~lib/internal/typedarray/SET<Uint32Array,u32,Float32Array>|inlined.0
   local.get $0
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $3
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 664
    i32.const 48
    i32.const 242
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $4
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 720
    i32.const 48
    i32.const 243
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   block $~lib/internal/typedarray/TypedArray<f32>#get:length|inlined.26 (result i32)
    local.get $4
    local.set $6
    local.get $6
    i32.load offset=8
    i32.const 2
    i32.shr_u
   end
   i32.const 0
   i32.eq
   if
    br $~lib/internal/typedarray/SET<Uint32Array,u32,Float32Array>|inlined.0
   end
   block $~lib/internal/typedarray/SET_COPY<u32,f32>|inlined.0
    local.get $3
    i32.load
    local.set $6
    local.get $3
    i32.load offset=4
    local.set $7
    local.get $4
    i32.load
    local.set $8
    local.get $4
    i32.load offset=4
    local.set $9
    local.get $5
    local.set $10
    block $~lib/internal/typedarray/TypedArray<f32>#get:length|inlined.27 (result i32)
     local.get $4
     local.set $11
     local.get $11
     i32.load offset=8
     i32.const 2
     i32.shr_u
    end
    local.set $11
    block $break|0
     local.get $11
     i32.const 1
     i32.sub
     local.set $12
     loop $repeat|0
      local.get $12
      i32.const 0
      i32.ge_s
      i32.eqz
      br_if $break|0
      block $~lib/internal/arraybuffer/STORE<u32,u32>|inlined.3
       local.get $6
       local.set $13
       local.get $12
       local.get $10
       i32.add
       local.set $14
       block $~lib/internal/arraybuffer/LOAD<f32,f32>|inlined.16 (result f32)
        local.get $8
        local.set $15
        local.get $12
        local.set $16
        local.get $9
        local.set $17
        local.get $15
        local.get $16
        i32.const 2
        i32.shl
        i32.add
        local.get $17
        i32.add
        f32.load offset=8
       end
       i32.trunc_f32_u
       local.set $17
       local.get $7
       local.set $16
       local.get $13
       local.get $14
       i32.const 2
       i32.shl
       i32.add
       local.get $16
       i32.add
       local.get $17
       i32.store offset=8
      end
      local.get $12
      i32.const 1
      i32.sub
      local.set $12
      br $repeat|0
      unreachable
     end
     unreachable
    end
   end
  end
 )
 (func $~lib/typedarray/Uint32Array#set<Int64Array> (; 343 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  block $~lib/internal/typedarray/SET<Uint32Array,u32,Int64Array>|inlined.0
   local.get $0
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $3
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 664
    i32.const 48
    i32.const 242
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $4
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 720
    i32.const 48
    i32.const 243
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   block $~lib/internal/typedarray/TypedArray<i64>#get:length|inlined.26 (result i32)
    local.get $4
    local.set $6
    local.get $6
    i32.load offset=8
    i32.const 3
    i32.shr_u
   end
   i32.const 0
   i32.eq
   if
    br $~lib/internal/typedarray/SET<Uint32Array,u32,Int64Array>|inlined.0
   end
   block $~lib/internal/typedarray/SET_COPY<u32,i64>|inlined.0
    local.get $3
    i32.load
    local.set $6
    local.get $3
    i32.load offset=4
    local.set $7
    local.get $4
    i32.load
    local.set $8
    local.get $4
    i32.load offset=4
    local.set $9
    local.get $5
    local.set $10
    block $~lib/internal/typedarray/TypedArray<i64>#get:length|inlined.27 (result i32)
     local.get $4
     local.set $11
     local.get $11
     i32.load offset=8
     i32.const 3
     i32.shr_u
    end
    local.set $11
    block $break|0
     local.get $11
     i32.const 1
     i32.sub
     local.set $12
     loop $repeat|0
      local.get $12
      i32.const 0
      i32.ge_s
      i32.eqz
      br_if $break|0
      block $~lib/internal/arraybuffer/STORE<u32,u32>|inlined.4
       local.get $6
       local.set $13
       local.get $12
       local.get $10
       i32.add
       local.set $14
       block $~lib/internal/arraybuffer/LOAD<i64,i64>|inlined.16 (result i64)
        local.get $8
        local.set $15
        local.get $12
        local.set $16
        local.get $9
        local.set $17
        local.get $15
        local.get $16
        i32.const 3
        i32.shl
        i32.add
        local.get $17
        i32.add
        i64.load offset=8
       end
       i32.wrap_i64
       local.set $17
       local.get $7
       local.set $16
       local.get $13
       local.get $14
       i32.const 2
       i32.shl
       i32.add
       local.get $16
       i32.add
       local.get $17
       i32.store offset=8
      end
      local.get $12
      i32.const 1
      i32.sub
      local.set $12
      br $repeat|0
      unreachable
     end
     unreachable
    end
   end
  end
 )
 (func $~lib/typedarray/Uint32Array#set<ArrayLike> (; 344 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  block $~lib/internal/typedarray/SET<Uint32Array,u32,ArrayLike>|inlined.0
   local.get $0
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $3
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 664
    i32.const 48
    i32.const 242
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $4
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 720
    i32.const 48
    i32.const 243
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $4
   i32.load
   i32.const 0
   i32.eq
   if
    br $~lib/internal/typedarray/SET<Uint32Array,u32,ArrayLike>|inlined.0
   end
   local.get $4
   i32.load
   local.set $6
   block $~lib/internal/typedarray/TypedArray<u32>#get:length|inlined.9 (result i32)
    local.get $3
    local.set $7
    local.get $7
    i32.load offset=8
    i32.const 2
    i32.shr_u
   end
   local.set $7
   local.get $6
   local.get $5
   i32.add
   local.get $7
   i32.le_s
   i32.eqz
   if
    i32.const 936
    i32.const 48
    i32.const 456
    i32.const 8
    call $~lib/env/abort
    unreachable
   end
   local.get $3
   i32.load
   local.set $8
   local.get $3
   i32.load offset=4
   local.set $9
   block $break|0
    local.get $4
    i32.load
    i32.const 1
    i32.sub
    local.set $10
    loop $repeat|0
     local.get $10
     i32.const 0
     i32.ge_s
     i32.eqz
     br_if $break|0
     block $~lib/internal/arraybuffer/STORE<u32,u32>|inlined.5
      local.get $8
      local.set $11
      local.get $10
      local.get $5
      i32.add
      local.set $12
      local.get $4
      local.get $10
      call $std/typedarray/ArrayLike#__get
      local.set $13
      local.get $9
      local.set $14
      local.get $11
      local.get $12
      i32.const 2
      i32.shl
      i32.add
      local.get $14
      i32.add
      local.get $13
      i32.store offset=8
     end
     local.get $10
     i32.const 1
     i32.sub
     local.set $10
     br $repeat|0
     unreachable
    end
    unreachable
   end
  end
 )
 (func $std/typedarray/testArraySet<Uint32Array,u32> (; 345 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 10
  call $~lib/typedarray/Uint32Array#constructor
  local.set $0
  local.get $0
  global.get $std/typedarray/setSource
  i32.const 4
  call $~lib/typedarray/Uint32Array#set<Array<i32>>
  local.get $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<u32>#__get
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 431
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u32>#__get
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 432
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u32>#__get
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 433
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u32>#__get
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 434
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<u32>#__get
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 435
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<u32>#__get
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 436
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<u32>#__get
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 437
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 7
  call $~lib/internal/typedarray/TypedArray<u32>#__get
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 438
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 8
  call $~lib/internal/typedarray/TypedArray<u32>#__get
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 439
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/internal/typedarray/TypedArray<u32>#__get
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 440
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint32Array#constructor
  local.set $1
  local.get $1
  i32.const 0
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<u32>#__set
  local.get $1
  i32.const 1
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<u32>#__set
  local.get $1
  i32.const 2
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<u32>#__set
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/typedarray/Uint32Array#set<Uint32Array>
  local.get $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<u32>#__get
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 449
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u32>#__get
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 450
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u32>#__get
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 451
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u32>#__get
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 452
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<u32>#__get
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 453
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<u32>#__get
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 454
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<u32>#__get
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 455
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 7
  call $~lib/internal/typedarray/TypedArray<u32>#__get
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 456
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 8
  call $~lib/internal/typedarray/TypedArray<u32>#__get
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 457
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/internal/typedarray/TypedArray<u32>#__get
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 458
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Float32Array#constructor
  local.set $2
  local.get $2
  i32.const 0
  f32.const 7
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  local.get $2
  i32.const 1
  f32.const 8
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  local.get $2
  i32.const 2
  f32.const 9
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  local.get $0
  local.get $2
  i32.const 7
  call $~lib/typedarray/Uint32Array#set<Float32Array>
  local.get $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<u32>#__get
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 467
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u32>#__get
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 468
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u32>#__get
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 469
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u32>#__get
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 470
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<u32>#__get
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 471
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<u32>#__get
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 472
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<u32>#__get
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 473
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 7
  call $~lib/internal/typedarray/TypedArray<u32>#__get
  i32.const 7
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 474
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 8
  call $~lib/internal/typedarray/TypedArray<u32>#__get
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 475
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/internal/typedarray/TypedArray<u32>#__get
  i32.const 9
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 476
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.set $3
  local.get $3
  i32.const 0
  i64.const 10
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  local.get $3
  i32.const 1
  i64.const 11
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  local.get $3
  i32.const 2
  i64.const 12
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  local.get $0
  local.get $3
  i32.const 3
  call $~lib/typedarray/Uint32Array#set<Int64Array>
  local.get $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<u32>#__get
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 485
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u32>#__get
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 486
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u32>#__get
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 487
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u32>#__get
  i32.const 10
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 488
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<u32>#__get
  i32.const 11
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 489
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<u32>#__get
  i32.const 12
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 490
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<u32>#__get
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 491
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 7
  call $~lib/internal/typedarray/TypedArray<u32>#__get
  i32.const 7
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 492
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 8
  call $~lib/internal/typedarray/TypedArray<u32>#__get
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 493
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/internal/typedarray/TypedArray<u32>#__get
  i32.const 9
  i32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 494
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  global.get $std/typedarray/arrayLikeValue
  i32.const 2
  call $~lib/typedarray/Uint32Array#set<ArrayLike>
  local.get $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<u32>#__get
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 498
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u32>#__get
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 499
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u32>#__get
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 500
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u32>#__get
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 501
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<u32>#__get
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 502
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<u32>#__get
  i32.const 12
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 503
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<u32>#__get
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 504
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 7
  call $~lib/internal/typedarray/TypedArray<u32>#__get
  i32.const 7
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 505
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 8
  call $~lib/internal/typedarray/TypedArray<u32>#__get
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 506
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/internal/typedarray/TypedArray<u32>#__get
  i32.const 9
  i32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 507
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Int64Array#set<Array<i32>> (; 346 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  (local $23 i64)
  block $~lib/internal/typedarray/SET<Int64Array,i64,Array<i32>>|inlined.0
   local.get $0
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $3
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 664
    i32.const 48
    i32.const 242
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $4
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 720
    i32.const 48
    i32.const 243
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   block $~lib/array/Array<i32>#get:length|inlined.24 (result i32)
    local.get $4
    local.set $6
    local.get $6
    i32.load offset=4
   end
   i32.const 0
   i32.eq
   if
    br $~lib/internal/typedarray/SET<Int64Array,i64,Array<i32>>|inlined.0
   end
   local.get $3
   i32.load
   local.set $6
   local.get $3
   i32.load offset=4
   local.set $7
   local.get $4
   i32.load
   local.set $8
   block $~lib/array/Array<i32>#get:length|inlined.25 (result i32)
    local.get $4
    local.set $9
    local.get $9
    i32.load offset=4
   end
   local.set $9
   local.get $4
   i32.const 0
   call $~lib/array/Array<i32>#__unchecked_get
   local.set $10
   block $~lib/internal/typedarray/SET_COPY<i64,i32>|inlined.0
    local.get $6
    local.set $11
    local.get $7
    local.set $12
    local.get $8
    local.set $13
    i32.const 0
    local.set $14
    local.get $5
    local.set $15
    local.get $9
    local.set $16
    block $break|0
     local.get $16
     i32.const 1
     i32.sub
     local.set $17
     loop $repeat|0
      local.get $17
      i32.const 0
      i32.ge_s
      i32.eqz
      br_if $break|0
      block $~lib/internal/arraybuffer/STORE<i64,i64>|inlined.2
       local.get $11
       local.set $18
       local.get $17
       local.get $15
       i32.add
       local.set $19
       block $~lib/internal/arraybuffer/LOAD<i32,i32>|inlined.19 (result i32)
        local.get $13
        local.set $20
        local.get $17
        local.set $21
        local.get $14
        local.set $22
        local.get $20
        local.get $21
        i32.const 2
        i32.shl
        i32.add
        local.get $22
        i32.add
        i32.load offset=8
       end
       i64.extend_i32_s
       local.set $23
       local.get $12
       local.set $22
       local.get $18
       local.get $19
       i32.const 3
       i32.shl
       i32.add
       local.get $22
       i32.add
       local.get $23
       i64.store offset=8
      end
      local.get $17
      i32.const 1
      i32.sub
      local.set $17
      br $repeat|0
      unreachable
     end
     unreachable
    end
   end
  end
 )
 (func $~lib/typedarray/Int64Array#set<Int64Array> (; 347 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  block $~lib/internal/typedarray/SET<Int64Array,i64,Int64Array>|inlined.0
   local.get $0
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $3
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 664
    i32.const 48
    i32.const 242
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $4
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 720
    i32.const 48
    i32.const 243
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   block $~lib/internal/typedarray/TypedArray<i64>#get:length|inlined.29 (result i32)
    local.get $4
    local.set $6
    local.get $6
    i32.load offset=8
    i32.const 3
    i32.shr_u
   end
   i32.const 0
   i32.eq
   if
    br $~lib/internal/typedarray/SET<Int64Array,i64,Int64Array>|inlined.0
   end
   block $~lib/internal/typedarray/SET_SAME<Int64Array,i64>|inlined.0
    local.get $3
    local.set $6
    local.get $4
    local.set $7
    local.get $5
    local.set $8
    block $~lib/memory/memory.copy|inlined.7
     block $~lib/arraybuffer/ArrayBuffer#get:data|inlined.14 (result i32)
      local.get $6
      i32.load
      local.set $9
      local.get $9
      i32.const 8
      i32.add
     end
     local.get $6
     i32.load offset=4
     i32.add
     local.get $8
     i32.const 3
     i32.shl
     i32.add
     local.set $9
     block $~lib/arraybuffer/ArrayBuffer#get:data|inlined.15 (result i32)
      local.get $7
      i32.load
      local.set $10
      local.get $10
      i32.const 8
      i32.add
     end
     local.get $7
     i32.load offset=4
     i32.add
     local.set $10
     local.get $7
     i32.load
     i32.load
     local.set $11
     local.get $9
     local.get $10
     local.get $11
     call $~lib/internal/memory/memmove
    end
   end
  end
 )
 (func $~lib/typedarray/Int64Array#set<Float32Array> (; 348 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i64)
  block $~lib/internal/typedarray/SET<Int64Array,i64,Float32Array>|inlined.0
   local.get $0
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $3
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 664
    i32.const 48
    i32.const 242
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $4
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 720
    i32.const 48
    i32.const 243
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   block $~lib/internal/typedarray/TypedArray<f32>#get:length|inlined.29 (result i32)
    local.get $4
    local.set $6
    local.get $6
    i32.load offset=8
    i32.const 2
    i32.shr_u
   end
   i32.const 0
   i32.eq
   if
    br $~lib/internal/typedarray/SET<Int64Array,i64,Float32Array>|inlined.0
   end
   block $~lib/internal/typedarray/SET_COPY<i64,f32>|inlined.0
    local.get $3
    i32.load
    local.set $6
    local.get $3
    i32.load offset=4
    local.set $7
    local.get $4
    i32.load
    local.set $8
    local.get $4
    i32.load offset=4
    local.set $9
    local.get $5
    local.set $10
    block $~lib/internal/typedarray/TypedArray<f32>#get:length|inlined.30 (result i32)
     local.get $4
     local.set $11
     local.get $11
     i32.load offset=8
     i32.const 2
     i32.shr_u
    end
    local.set $11
    block $break|0
     local.get $11
     i32.const 1
     i32.sub
     local.set $12
     loop $repeat|0
      local.get $12
      i32.const 0
      i32.ge_s
      i32.eqz
      br_if $break|0
      block $~lib/internal/arraybuffer/STORE<i64,i64>|inlined.3
       local.get $6
       local.set $13
       local.get $12
       local.get $10
       i32.add
       local.set $14
       block $~lib/internal/arraybuffer/LOAD<f32,f32>|inlined.17 (result f32)
        local.get $8
        local.set $15
        local.get $12
        local.set $16
        local.get $9
        local.set $17
        local.get $15
        local.get $16
        i32.const 2
        i32.shl
        i32.add
        local.get $17
        i32.add
        f32.load offset=8
       end
       i64.trunc_f32_s
       local.set $18
       local.get $7
       local.set $17
       local.get $13
       local.get $14
       i32.const 3
       i32.shl
       i32.add
       local.get $17
       i32.add
       local.get $18
       i64.store offset=8
      end
      local.get $12
      i32.const 1
      i32.sub
      local.set $12
      br $repeat|0
      unreachable
     end
     unreachable
    end
   end
  end
 )
 (func $~lib/typedarray/Int64Array#set<ArrayLike> (; 349 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i64)
  (local $14 i32)
  block $~lib/internal/typedarray/SET<Int64Array,i64,ArrayLike>|inlined.0
   local.get $0
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $3
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 664
    i32.const 48
    i32.const 242
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $4
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 720
    i32.const 48
    i32.const 243
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $4
   i32.load
   i32.const 0
   i32.eq
   if
    br $~lib/internal/typedarray/SET<Int64Array,i64,ArrayLike>|inlined.0
   end
   local.get $4
   i32.load
   local.set $6
   block $~lib/internal/typedarray/TypedArray<i64>#get:length|inlined.30 (result i32)
    local.get $3
    local.set $7
    local.get $7
    i32.load offset=8
    i32.const 3
    i32.shr_u
   end
   local.set $7
   local.get $6
   local.get $5
   i32.add
   local.get $7
   i32.le_s
   i32.eqz
   if
    i32.const 936
    i32.const 48
    i32.const 456
    i32.const 8
    call $~lib/env/abort
    unreachable
   end
   local.get $3
   i32.load
   local.set $8
   local.get $3
   i32.load offset=4
   local.set $9
   block $break|0
    local.get $4
    i32.load
    i32.const 1
    i32.sub
    local.set $10
    loop $repeat|0
     local.get $10
     i32.const 0
     i32.ge_s
     i32.eqz
     br_if $break|0
     block $~lib/internal/arraybuffer/STORE<i64,i64>|inlined.4
      local.get $8
      local.set $11
      local.get $10
      local.get $5
      i32.add
      local.set $12
      local.get $4
      local.get $10
      call $std/typedarray/ArrayLike#__get
      i64.extend_i32_s
      local.set $13
      local.get $9
      local.set $14
      local.get $11
      local.get $12
      i32.const 3
      i32.shl
      i32.add
      local.get $14
      i32.add
      local.get $13
      i64.store offset=8
     end
     local.get $10
     i32.const 1
     i32.sub
     local.set $10
     br $repeat|0
     unreachable
    end
    unreachable
   end
  end
 )
 (func $std/typedarray/testArraySet<Int64Array,i64> (; 350 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 10
  call $~lib/typedarray/Int64Array#constructor
  local.set $0
  local.get $0
  global.get $std/typedarray/setSource
  i32.const 4
  call $~lib/typedarray/Int64Array#set<Array<i32>>
  local.get $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<i64>#__get
  i64.const 0
  i64.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 431
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i64>#__get
  i64.const 0
  i64.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 432
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i64>#__get
  i64.const 0
  i64.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 433
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i64>#__get
  i64.const 0
  i64.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 434
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<i64>#__get
  i64.const 1
  i64.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 435
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<i64>#__get
  i64.const 2
  i64.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 436
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<i64>#__get
  i64.const 3
  i64.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 437
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 7
  call $~lib/internal/typedarray/TypedArray<i64>#__get
  i64.const 0
  i64.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 438
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 8
  call $~lib/internal/typedarray/TypedArray<i64>#__get
  i64.const 0
  i64.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 439
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/internal/typedarray/TypedArray<i64>#__get
  i64.const 0
  i64.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 440
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.set $1
  local.get $1
  i32.const 0
  i64.const 4
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  local.get $1
  i32.const 1
  i64.const 5
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  local.get $1
  i32.const 2
  i64.const 6
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/typedarray/Int64Array#set<Int64Array>
  local.get $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<i64>#__get
  i64.const 4
  i64.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 449
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i64>#__get
  i64.const 5
  i64.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 450
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i64>#__get
  i64.const 6
  i64.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 451
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i64>#__get
  i64.const 0
  i64.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 452
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<i64>#__get
  i64.const 1
  i64.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 453
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<i64>#__get
  i64.const 2
  i64.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 454
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<i64>#__get
  i64.const 3
  i64.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 455
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 7
  call $~lib/internal/typedarray/TypedArray<i64>#__get
  i64.const 0
  i64.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 456
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 8
  call $~lib/internal/typedarray/TypedArray<i64>#__get
  i64.const 0
  i64.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 457
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/internal/typedarray/TypedArray<i64>#__get
  i64.const 0
  i64.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 458
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Float32Array#constructor
  local.set $2
  local.get $2
  i32.const 0
  f32.const 7
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  local.get $2
  i32.const 1
  f32.const 8
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  local.get $2
  i32.const 2
  f32.const 9
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  local.get $0
  local.get $2
  i32.const 7
  call $~lib/typedarray/Int64Array#set<Float32Array>
  local.get $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<i64>#__get
  i64.const 4
  i64.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 467
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i64>#__get
  i64.const 5
  i64.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 468
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i64>#__get
  i64.const 6
  i64.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 469
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i64>#__get
  i64.const 0
  i64.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 470
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<i64>#__get
  i64.const 1
  i64.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 471
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<i64>#__get
  i64.const 2
  i64.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 472
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<i64>#__get
  i64.const 3
  i64.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 473
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 7
  call $~lib/internal/typedarray/TypedArray<i64>#__get
  i64.const 7
  i64.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 474
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 8
  call $~lib/internal/typedarray/TypedArray<i64>#__get
  i64.const 8
  i64.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 475
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/internal/typedarray/TypedArray<i64>#__get
  i64.const 9
  i64.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 476
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.set $3
  local.get $3
  i32.const 0
  i64.const 10
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  local.get $3
  i32.const 1
  i64.const 11
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  local.get $3
  i32.const 2
  i64.const 12
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  local.get $0
  local.get $3
  i32.const 3
  call $~lib/typedarray/Int64Array#set<Int64Array>
  local.get $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<i64>#__get
  i64.const 4
  i64.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 485
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i64>#__get
  i64.const 5
  i64.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 486
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i64>#__get
  i64.const 6
  i64.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 487
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i64>#__get
  i64.const 10
  i64.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 488
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<i64>#__get
  i64.const 11
  i64.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 489
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<i64>#__get
  i64.const 12
  i64.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 490
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<i64>#__get
  i64.const 3
  i64.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 491
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 7
  call $~lib/internal/typedarray/TypedArray<i64>#__get
  i64.const 7
  i64.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 492
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 8
  call $~lib/internal/typedarray/TypedArray<i64>#__get
  i64.const 8
  i64.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 493
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/internal/typedarray/TypedArray<i64>#__get
  i64.const 9
  i64.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 494
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  global.get $std/typedarray/arrayLikeValue
  i32.const 2
  call $~lib/typedarray/Int64Array#set<ArrayLike>
  local.get $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<i64>#__get
  i64.const 4
  i64.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 498
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i64>#__get
  i64.const 5
  i64.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 499
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i64>#__get
  i64.const 0
  i64.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 500
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i64>#__get
  i64.const 1
  i64.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 501
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<i64>#__get
  i64.const 2
  i64.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 502
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<i64>#__get
  i64.const 12
  i64.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 503
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<i64>#__get
  i64.const 3
  i64.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 504
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 7
  call $~lib/internal/typedarray/TypedArray<i64>#__get
  i64.const 7
  i64.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 505
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 8
  call $~lib/internal/typedarray/TypedArray<i64>#__get
  i64.const 8
  i64.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 506
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/internal/typedarray/TypedArray<i64>#__get
  i64.const 9
  i64.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 507
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Uint64Array#set<Array<i32>> (; 351 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  (local $23 i64)
  block $~lib/internal/typedarray/SET<Uint64Array,u64,Array<i32>>|inlined.0
   local.get $0
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $3
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 664
    i32.const 48
    i32.const 242
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $4
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 720
    i32.const 48
    i32.const 243
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   block $~lib/array/Array<i32>#get:length|inlined.27 (result i32)
    local.get $4
    local.set $6
    local.get $6
    i32.load offset=4
   end
   i32.const 0
   i32.eq
   if
    br $~lib/internal/typedarray/SET<Uint64Array,u64,Array<i32>>|inlined.0
   end
   local.get $3
   i32.load
   local.set $6
   local.get $3
   i32.load offset=4
   local.set $7
   local.get $4
   i32.load
   local.set $8
   block $~lib/array/Array<i32>#get:length|inlined.28 (result i32)
    local.get $4
    local.set $9
    local.get $9
    i32.load offset=4
   end
   local.set $9
   local.get $4
   i32.const 0
   call $~lib/array/Array<i32>#__unchecked_get
   local.set $10
   block $~lib/internal/typedarray/SET_COPY<u64,i32>|inlined.0
    local.get $6
    local.set $11
    local.get $7
    local.set $12
    local.get $8
    local.set $13
    i32.const 0
    local.set $14
    local.get $5
    local.set $15
    local.get $9
    local.set $16
    block $break|0
     local.get $16
     i32.const 1
     i32.sub
     local.set $17
     loop $repeat|0
      local.get $17
      i32.const 0
      i32.ge_s
      i32.eqz
      br_if $break|0
      block $~lib/internal/arraybuffer/STORE<u64,u64>|inlined.2
       local.get $11
       local.set $18
       local.get $17
       local.get $15
       i32.add
       local.set $19
       block $~lib/internal/arraybuffer/LOAD<i32,i32>|inlined.20 (result i32)
        local.get $13
        local.set $20
        local.get $17
        local.set $21
        local.get $14
        local.set $22
        local.get $20
        local.get $21
        i32.const 2
        i32.shl
        i32.add
        local.get $22
        i32.add
        i32.load offset=8
       end
       i64.extend_i32_s
       local.set $23
       local.get $12
       local.set $22
       local.get $18
       local.get $19
       i32.const 3
       i32.shl
       i32.add
       local.get $22
       i32.add
       local.get $23
       i64.store offset=8
      end
      local.get $17
      i32.const 1
      i32.sub
      local.set $17
      br $repeat|0
      unreachable
     end
     unreachable
    end
   end
  end
 )
 (func $~lib/typedarray/Uint64Array#set<Uint64Array> (; 352 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  block $~lib/internal/typedarray/SET<Uint64Array,u64,Uint64Array>|inlined.0
   local.get $0
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $3
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 664
    i32.const 48
    i32.const 242
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $4
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 720
    i32.const 48
    i32.const 243
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   block $~lib/internal/typedarray/TypedArray<u64>#get:length|inlined.8 (result i32)
    local.get $4
    local.set $6
    local.get $6
    i32.load offset=8
    i32.const 3
    i32.shr_u
   end
   i32.const 0
   i32.eq
   if
    br $~lib/internal/typedarray/SET<Uint64Array,u64,Uint64Array>|inlined.0
   end
   block $~lib/internal/typedarray/SET_SAME<Uint64Array,u64>|inlined.0
    local.get $3
    local.set $6
    local.get $4
    local.set $7
    local.get $5
    local.set $8
    block $~lib/memory/memory.copy|inlined.8
     block $~lib/arraybuffer/ArrayBuffer#get:data|inlined.16 (result i32)
      local.get $6
      i32.load
      local.set $9
      local.get $9
      i32.const 8
      i32.add
     end
     local.get $6
     i32.load offset=4
     i32.add
     local.get $8
     i32.const 3
     i32.shl
     i32.add
     local.set $9
     block $~lib/arraybuffer/ArrayBuffer#get:data|inlined.17 (result i32)
      local.get $7
      i32.load
      local.set $10
      local.get $10
      i32.const 8
      i32.add
     end
     local.get $7
     i32.load offset=4
     i32.add
     local.set $10
     local.get $7
     i32.load
     i32.load
     local.set $11
     local.get $9
     local.get $10
     local.get $11
     call $~lib/internal/memory/memmove
    end
   end
  end
 )
 (func $~lib/typedarray/Uint64Array#set<Float32Array> (; 353 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i64)
  block $~lib/internal/typedarray/SET<Uint64Array,u64,Float32Array>|inlined.0
   local.get $0
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $3
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 664
    i32.const 48
    i32.const 242
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $4
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 720
    i32.const 48
    i32.const 243
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   block $~lib/internal/typedarray/TypedArray<f32>#get:length|inlined.32 (result i32)
    local.get $4
    local.set $6
    local.get $6
    i32.load offset=8
    i32.const 2
    i32.shr_u
   end
   i32.const 0
   i32.eq
   if
    br $~lib/internal/typedarray/SET<Uint64Array,u64,Float32Array>|inlined.0
   end
   block $~lib/internal/typedarray/SET_COPY<u64,f32>|inlined.0
    local.get $3
    i32.load
    local.set $6
    local.get $3
    i32.load offset=4
    local.set $7
    local.get $4
    i32.load
    local.set $8
    local.get $4
    i32.load offset=4
    local.set $9
    local.get $5
    local.set $10
    block $~lib/internal/typedarray/TypedArray<f32>#get:length|inlined.33 (result i32)
     local.get $4
     local.set $11
     local.get $11
     i32.load offset=8
     i32.const 2
     i32.shr_u
    end
    local.set $11
    block $break|0
     local.get $11
     i32.const 1
     i32.sub
     local.set $12
     loop $repeat|0
      local.get $12
      i32.const 0
      i32.ge_s
      i32.eqz
      br_if $break|0
      block $~lib/internal/arraybuffer/STORE<u64,u64>|inlined.3
       local.get $6
       local.set $13
       local.get $12
       local.get $10
       i32.add
       local.set $14
       block $~lib/internal/arraybuffer/LOAD<f32,f32>|inlined.18 (result f32)
        local.get $8
        local.set $15
        local.get $12
        local.set $16
        local.get $9
        local.set $17
        local.get $15
        local.get $16
        i32.const 2
        i32.shl
        i32.add
        local.get $17
        i32.add
        f32.load offset=8
       end
       i64.trunc_f32_u
       local.set $18
       local.get $7
       local.set $17
       local.get $13
       local.get $14
       i32.const 3
       i32.shl
       i32.add
       local.get $17
       i32.add
       local.get $18
       i64.store offset=8
      end
      local.get $12
      i32.const 1
      i32.sub
      local.set $12
      br $repeat|0
      unreachable
     end
     unreachable
    end
   end
  end
 )
 (func $~lib/typedarray/Uint64Array#set<Int64Array> (; 354 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  block $~lib/internal/typedarray/SET<Uint64Array,u64,Int64Array>|inlined.0
   local.get $0
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $3
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 664
    i32.const 48
    i32.const 242
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $4
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 720
    i32.const 48
    i32.const 243
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   block $~lib/internal/typedarray/TypedArray<i64>#get:length|inlined.32 (result i32)
    local.get $4
    local.set $6
    local.get $6
    i32.load offset=8
    i32.const 3
    i32.shr_u
   end
   i32.const 0
   i32.eq
   if
    br $~lib/internal/typedarray/SET<Uint64Array,u64,Int64Array>|inlined.0
   end
   block $~lib/internal/typedarray/SET_SAME<Int64Array,i64>|inlined.1
    local.get $3
    local.set $6
    local.get $4
    local.set $7
    local.get $5
    local.set $8
    block $~lib/memory/memory.copy|inlined.9
     block $~lib/arraybuffer/ArrayBuffer#get:data|inlined.18 (result i32)
      local.get $6
      i32.load
      local.set $9
      local.get $9
      i32.const 8
      i32.add
     end
     local.get $6
     i32.load offset=4
     i32.add
     local.get $8
     i32.const 3
     i32.shl
     i32.add
     local.set $9
     block $~lib/arraybuffer/ArrayBuffer#get:data|inlined.19 (result i32)
      local.get $7
      i32.load
      local.set $10
      local.get $10
      i32.const 8
      i32.add
     end
     local.get $7
     i32.load offset=4
     i32.add
     local.set $10
     local.get $7
     i32.load
     i32.load
     local.set $11
     local.get $9
     local.get $10
     local.get $11
     call $~lib/internal/memory/memmove
    end
   end
  end
 )
 (func $~lib/typedarray/Uint64Array#set<ArrayLike> (; 355 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i64)
  (local $14 i32)
  block $~lib/internal/typedarray/SET<Uint64Array,u64,ArrayLike>|inlined.0
   local.get $0
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $3
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 664
    i32.const 48
    i32.const 242
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $4
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 720
    i32.const 48
    i32.const 243
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $4
   i32.load
   i32.const 0
   i32.eq
   if
    br $~lib/internal/typedarray/SET<Uint64Array,u64,ArrayLike>|inlined.0
   end
   local.get $4
   i32.load
   local.set $6
   block $~lib/internal/typedarray/TypedArray<u64>#get:length|inlined.9 (result i32)
    local.get $3
    local.set $7
    local.get $7
    i32.load offset=8
    i32.const 3
    i32.shr_u
   end
   local.set $7
   local.get $6
   local.get $5
   i32.add
   local.get $7
   i32.le_s
   i32.eqz
   if
    i32.const 936
    i32.const 48
    i32.const 456
    i32.const 8
    call $~lib/env/abort
    unreachable
   end
   local.get $3
   i32.load
   local.set $8
   local.get $3
   i32.load offset=4
   local.set $9
   block $break|0
    local.get $4
    i32.load
    i32.const 1
    i32.sub
    local.set $10
    loop $repeat|0
     local.get $10
     i32.const 0
     i32.ge_s
     i32.eqz
     br_if $break|0
     block $~lib/internal/arraybuffer/STORE<u64,u64>|inlined.4
      local.get $8
      local.set $11
      local.get $10
      local.get $5
      i32.add
      local.set $12
      local.get $4
      local.get $10
      call $std/typedarray/ArrayLike#__get
      i64.extend_i32_s
      local.set $13
      local.get $9
      local.set $14
      local.get $11
      local.get $12
      i32.const 3
      i32.shl
      i32.add
      local.get $14
      i32.add
      local.get $13
      i64.store offset=8
     end
     local.get $10
     i32.const 1
     i32.sub
     local.set $10
     br $repeat|0
     unreachable
    end
    unreachable
   end
  end
 )
 (func $std/typedarray/testArraySet<Uint64Array,u64> (; 356 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 10
  call $~lib/typedarray/Uint64Array#constructor
  local.set $0
  local.get $0
  global.get $std/typedarray/setSource
  i32.const 4
  call $~lib/typedarray/Uint64Array#set<Array<i32>>
  local.get $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<u64>#__get
  i64.const 0
  i64.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 431
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u64>#__get
  i64.const 0
  i64.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 432
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u64>#__get
  i64.const 0
  i64.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 433
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u64>#__get
  i64.const 0
  i64.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 434
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<u64>#__get
  i64.const 1
  i64.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 435
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<u64>#__get
  i64.const 2
  i64.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 436
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<u64>#__get
  i64.const 3
  i64.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 437
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 7
  call $~lib/internal/typedarray/TypedArray<u64>#__get
  i64.const 0
  i64.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 438
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 8
  call $~lib/internal/typedarray/TypedArray<u64>#__get
  i64.const 0
  i64.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 439
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/internal/typedarray/TypedArray<u64>#__get
  i64.const 0
  i64.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 440
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint64Array#constructor
  local.set $1
  local.get $1
  i32.const 0
  i64.const 4
  call $~lib/internal/typedarray/TypedArray<u64>#__set
  local.get $1
  i32.const 1
  i64.const 5
  call $~lib/internal/typedarray/TypedArray<u64>#__set
  local.get $1
  i32.const 2
  i64.const 6
  call $~lib/internal/typedarray/TypedArray<u64>#__set
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/typedarray/Uint64Array#set<Uint64Array>
  local.get $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<u64>#__get
  i64.const 4
  i64.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 449
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u64>#__get
  i64.const 5
  i64.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 450
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u64>#__get
  i64.const 6
  i64.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 451
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u64>#__get
  i64.const 0
  i64.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 452
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<u64>#__get
  i64.const 1
  i64.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 453
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<u64>#__get
  i64.const 2
  i64.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 454
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<u64>#__get
  i64.const 3
  i64.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 455
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 7
  call $~lib/internal/typedarray/TypedArray<u64>#__get
  i64.const 0
  i64.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 456
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 8
  call $~lib/internal/typedarray/TypedArray<u64>#__get
  i64.const 0
  i64.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 457
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/internal/typedarray/TypedArray<u64>#__get
  i64.const 0
  i64.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 458
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Float32Array#constructor
  local.set $2
  local.get $2
  i32.const 0
  f32.const 7
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  local.get $2
  i32.const 1
  f32.const 8
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  local.get $2
  i32.const 2
  f32.const 9
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  local.get $0
  local.get $2
  i32.const 7
  call $~lib/typedarray/Uint64Array#set<Float32Array>
  local.get $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<u64>#__get
  i64.const 4
  i64.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 467
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u64>#__get
  i64.const 5
  i64.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 468
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u64>#__get
  i64.const 6
  i64.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 469
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u64>#__get
  i64.const 0
  i64.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 470
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<u64>#__get
  i64.const 1
  i64.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 471
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<u64>#__get
  i64.const 2
  i64.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 472
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<u64>#__get
  i64.const 3
  i64.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 473
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 7
  call $~lib/internal/typedarray/TypedArray<u64>#__get
  i64.const 7
  i64.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 474
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 8
  call $~lib/internal/typedarray/TypedArray<u64>#__get
  i64.const 8
  i64.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 475
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/internal/typedarray/TypedArray<u64>#__get
  i64.const 9
  i64.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 476
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.set $3
  local.get $3
  i32.const 0
  i64.const 10
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  local.get $3
  i32.const 1
  i64.const 11
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  local.get $3
  i32.const 2
  i64.const 12
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  local.get $0
  local.get $3
  i32.const 3
  call $~lib/typedarray/Uint64Array#set<Int64Array>
  local.get $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<u64>#__get
  i64.const 4
  i64.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 485
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u64>#__get
  i64.const 5
  i64.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 486
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u64>#__get
  i64.const 6
  i64.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 487
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u64>#__get
  i64.const 10
  i64.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 488
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<u64>#__get
  i64.const 11
  i64.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 489
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<u64>#__get
  i64.const 12
  i64.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 490
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<u64>#__get
  i64.const 3
  i64.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 491
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 7
  call $~lib/internal/typedarray/TypedArray<u64>#__get
  i64.const 7
  i64.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 492
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 8
  call $~lib/internal/typedarray/TypedArray<u64>#__get
  i64.const 8
  i64.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 493
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/internal/typedarray/TypedArray<u64>#__get
  i64.const 9
  i64.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 494
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  global.get $std/typedarray/arrayLikeValue
  i32.const 2
  call $~lib/typedarray/Uint64Array#set<ArrayLike>
  local.get $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<u64>#__get
  i64.const 4
  i64.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 498
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u64>#__get
  i64.const 5
  i64.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 499
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u64>#__get
  i64.const 0
  i64.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 500
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u64>#__get
  i64.const 1
  i64.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 501
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<u64>#__get
  i64.const 2
  i64.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 502
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<u64>#__get
  i64.const 12
  i64.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 503
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<u64>#__get
  i64.const 3
  i64.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 504
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 7
  call $~lib/internal/typedarray/TypedArray<u64>#__get
  i64.const 7
  i64.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 505
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 8
  call $~lib/internal/typedarray/TypedArray<u64>#__get
  i64.const 8
  i64.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 506
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/internal/typedarray/TypedArray<u64>#__get
  i64.const 9
  i64.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 507
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Float32Array#set<Array<i32>> (; 357 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  (local $23 f32)
  block $~lib/internal/typedarray/SET<Float32Array,f32,Array<i32>>|inlined.0
   local.get $0
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $3
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 664
    i32.const 48
    i32.const 242
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $4
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 720
    i32.const 48
    i32.const 243
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   block $~lib/array/Array<i32>#get:length|inlined.30 (result i32)
    local.get $4
    local.set $6
    local.get $6
    i32.load offset=4
   end
   i32.const 0
   i32.eq
   if
    br $~lib/internal/typedarray/SET<Float32Array,f32,Array<i32>>|inlined.0
   end
   local.get $3
   i32.load
   local.set $6
   local.get $3
   i32.load offset=4
   local.set $7
   local.get $4
   i32.load
   local.set $8
   block $~lib/array/Array<i32>#get:length|inlined.31 (result i32)
    local.get $4
    local.set $9
    local.get $9
    i32.load offset=4
   end
   local.set $9
   local.get $4
   i32.const 0
   call $~lib/array/Array<i32>#__unchecked_get
   local.set $10
   block $~lib/internal/typedarray/SET_COPY<f32,i32>|inlined.0
    local.get $6
    local.set $11
    local.get $7
    local.set $12
    local.get $8
    local.set $13
    i32.const 0
    local.set $14
    local.get $5
    local.set $15
    local.get $9
    local.set $16
    block $break|0
     local.get $16
     i32.const 1
     i32.sub
     local.set $17
     loop $repeat|0
      local.get $17
      i32.const 0
      i32.ge_s
      i32.eqz
      br_if $break|0
      block $~lib/internal/arraybuffer/STORE<f32,f32>|inlined.2
       local.get $11
       local.set $18
       local.get $17
       local.get $15
       i32.add
       local.set $19
       block $~lib/internal/arraybuffer/LOAD<i32,i32>|inlined.21 (result i32)
        local.get $13
        local.set $20
        local.get $17
        local.set $21
        local.get $14
        local.set $22
        local.get $20
        local.get $21
        i32.const 2
        i32.shl
        i32.add
        local.get $22
        i32.add
        i32.load offset=8
       end
       f32.convert_i32_s
       local.set $23
       local.get $12
       local.set $22
       local.get $18
       local.get $19
       i32.const 2
       i32.shl
       i32.add
       local.get $22
       i32.add
       local.get $23
       f32.store offset=8
      end
      local.get $17
      i32.const 1
      i32.sub
      local.set $17
      br $repeat|0
      unreachable
     end
     unreachable
    end
   end
  end
 )
 (func $~lib/typedarray/Float32Array#set<Float32Array> (; 358 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  block $~lib/internal/typedarray/SET<Float32Array,f32,Float32Array>|inlined.0
   local.get $0
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $3
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 664
    i32.const 48
    i32.const 242
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $4
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 720
    i32.const 48
    i32.const 243
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   block $~lib/internal/typedarray/TypedArray<f32>#get:length|inlined.35 (result i32)
    local.get $4
    local.set $6
    local.get $6
    i32.load offset=8
    i32.const 2
    i32.shr_u
   end
   i32.const 0
   i32.eq
   if
    br $~lib/internal/typedarray/SET<Float32Array,f32,Float32Array>|inlined.0
   end
   block $~lib/internal/typedarray/SET_SAME<Float32Array,f32>|inlined.0
    local.get $3
    local.set $6
    local.get $4
    local.set $7
    local.get $5
    local.set $8
    block $~lib/memory/memory.copy|inlined.10
     block $~lib/arraybuffer/ArrayBuffer#get:data|inlined.20 (result i32)
      local.get $6
      i32.load
      local.set $9
      local.get $9
      i32.const 8
      i32.add
     end
     local.get $6
     i32.load offset=4
     i32.add
     local.get $8
     i32.const 2
     i32.shl
     i32.add
     local.set $9
     block $~lib/arraybuffer/ArrayBuffer#get:data|inlined.21 (result i32)
      local.get $7
      i32.load
      local.set $10
      local.get $10
      i32.const 8
      i32.add
     end
     local.get $7
     i32.load offset=4
     i32.add
     local.set $10
     local.get $7
     i32.load
     i32.load
     local.set $11
     local.get $9
     local.get $10
     local.get $11
     call $~lib/internal/memory/memmove
    end
   end
  end
 )
 (func $~lib/typedarray/Float32Array#set<Int64Array> (; 359 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 f32)
  block $~lib/internal/typedarray/SET<Float32Array,f32,Int64Array>|inlined.0
   local.get $0
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $3
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 664
    i32.const 48
    i32.const 242
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $4
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 720
    i32.const 48
    i32.const 243
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   block $~lib/internal/typedarray/TypedArray<i64>#get:length|inlined.34 (result i32)
    local.get $4
    local.set $6
    local.get $6
    i32.load offset=8
    i32.const 3
    i32.shr_u
   end
   i32.const 0
   i32.eq
   if
    br $~lib/internal/typedarray/SET<Float32Array,f32,Int64Array>|inlined.0
   end
   block $~lib/internal/typedarray/SET_COPY<f32,i64>|inlined.0
    local.get $3
    i32.load
    local.set $6
    local.get $3
    i32.load offset=4
    local.set $7
    local.get $4
    i32.load
    local.set $8
    local.get $4
    i32.load offset=4
    local.set $9
    local.get $5
    local.set $10
    block $~lib/internal/typedarray/TypedArray<i64>#get:length|inlined.35 (result i32)
     local.get $4
     local.set $11
     local.get $11
     i32.load offset=8
     i32.const 3
     i32.shr_u
    end
    local.set $11
    block $break|0
     local.get $11
     i32.const 1
     i32.sub
     local.set $12
     loop $repeat|0
      local.get $12
      i32.const 0
      i32.ge_s
      i32.eqz
      br_if $break|0
      block $~lib/internal/arraybuffer/STORE<f32,f32>|inlined.3
       local.get $6
       local.set $13
       local.get $12
       local.get $10
       i32.add
       local.set $14
       block $~lib/internal/arraybuffer/LOAD<i64,i64>|inlined.17 (result i64)
        local.get $8
        local.set $15
        local.get $12
        local.set $16
        local.get $9
        local.set $17
        local.get $15
        local.get $16
        i32.const 3
        i32.shl
        i32.add
        local.get $17
        i32.add
        i64.load offset=8
       end
       f32.convert_i64_s
       local.set $18
       local.get $7
       local.set $17
       local.get $13
       local.get $14
       i32.const 2
       i32.shl
       i32.add
       local.get $17
       i32.add
       local.get $18
       f32.store offset=8
      end
      local.get $12
      i32.const 1
      i32.sub
      local.set $12
      br $repeat|0
      unreachable
     end
     unreachable
    end
   end
  end
 )
 (func $~lib/typedarray/Float32Array#set<ArrayLike> (; 360 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 f32)
  (local $14 i32)
  block $~lib/internal/typedarray/SET<Float32Array,f32,ArrayLike>|inlined.0
   local.get $0
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $3
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 664
    i32.const 48
    i32.const 242
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $4
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 720
    i32.const 48
    i32.const 243
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $4
   i32.load
   i32.const 0
   i32.eq
   if
    br $~lib/internal/typedarray/SET<Float32Array,f32,ArrayLike>|inlined.0
   end
   local.get $4
   i32.load
   local.set $6
   block $~lib/internal/typedarray/TypedArray<f32>#get:length|inlined.36 (result i32)
    local.get $3
    local.set $7
    local.get $7
    i32.load offset=8
    i32.const 2
    i32.shr_u
   end
   local.set $7
   local.get $6
   local.get $5
   i32.add
   local.get $7
   i32.le_s
   i32.eqz
   if
    i32.const 936
    i32.const 48
    i32.const 456
    i32.const 8
    call $~lib/env/abort
    unreachable
   end
   local.get $3
   i32.load
   local.set $8
   local.get $3
   i32.load offset=4
   local.set $9
   block $break|0
    local.get $4
    i32.load
    i32.const 1
    i32.sub
    local.set $10
    loop $repeat|0
     local.get $10
     i32.const 0
     i32.ge_s
     i32.eqz
     br_if $break|0
     block $~lib/internal/arraybuffer/STORE<f32,f32>|inlined.4
      local.get $8
      local.set $11
      local.get $10
      local.get $5
      i32.add
      local.set $12
      local.get $4
      local.get $10
      call $std/typedarray/ArrayLike#__get
      f32.convert_i32_s
      local.set $13
      local.get $9
      local.set $14
      local.get $11
      local.get $12
      i32.const 2
      i32.shl
      i32.add
      local.get $14
      i32.add
      local.get $13
      f32.store offset=8
     end
     local.get $10
     i32.const 1
     i32.sub
     local.set $10
     br $repeat|0
     unreachable
    end
    unreachable
   end
  end
 )
 (func $std/typedarray/testArraySet<Float32Array,f32> (; 361 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 10
  call $~lib/typedarray/Float32Array#constructor
  local.set $0
  local.get $0
  global.get $std/typedarray/setSource
  i32.const 4
  call $~lib/typedarray/Float32Array#set<Array<i32>>
  local.get $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<f32>#__get
  f32.const 0
  f32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 431
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<f32>#__get
  f32.const 0
  f32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 432
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<f32>#__get
  f32.const 0
  f32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 433
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<f32>#__get
  f32.const 0
  f32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 434
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<f32>#__get
  f32.const 1
  f32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 435
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<f32>#__get
  f32.const 2
  f32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 436
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<f32>#__get
  f32.const 3
  f32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 437
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 7
  call $~lib/internal/typedarray/TypedArray<f32>#__get
  f32.const 0
  f32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 438
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 8
  call $~lib/internal/typedarray/TypedArray<f32>#__get
  f32.const 0
  f32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 439
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/internal/typedarray/TypedArray<f32>#__get
  f32.const 0
  f32.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 440
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Float32Array#constructor
  local.set $1
  local.get $1
  i32.const 0
  f32.const 4
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  local.get $1
  i32.const 1
  f32.const 5
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  local.get $1
  i32.const 2
  f32.const 6
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/typedarray/Float32Array#set<Float32Array>
  local.get $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<f32>#__get
  f32.const 4
  f32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 449
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<f32>#__get
  f32.const 5
  f32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 450
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<f32>#__get
  f32.const 6
  f32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 451
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<f32>#__get
  f32.const 0
  f32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 452
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<f32>#__get
  f32.const 1
  f32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 453
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<f32>#__get
  f32.const 2
  f32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 454
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<f32>#__get
  f32.const 3
  f32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 455
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 7
  call $~lib/internal/typedarray/TypedArray<f32>#__get
  f32.const 0
  f32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 456
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 8
  call $~lib/internal/typedarray/TypedArray<f32>#__get
  f32.const 0
  f32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 457
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/internal/typedarray/TypedArray<f32>#__get
  f32.const 0
  f32.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 458
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Float32Array#constructor
  local.set $2
  local.get $2
  i32.const 0
  f32.const 7
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  local.get $2
  i32.const 1
  f32.const 8
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  local.get $2
  i32.const 2
  f32.const 9
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  local.get $0
  local.get $2
  i32.const 7
  call $~lib/typedarray/Float32Array#set<Float32Array>
  local.get $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<f32>#__get
  f32.const 4
  f32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 467
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<f32>#__get
  f32.const 5
  f32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 468
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<f32>#__get
  f32.const 6
  f32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 469
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<f32>#__get
  f32.const 0
  f32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 470
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<f32>#__get
  f32.const 1
  f32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 471
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<f32>#__get
  f32.const 2
  f32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 472
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<f32>#__get
  f32.const 3
  f32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 473
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 7
  call $~lib/internal/typedarray/TypedArray<f32>#__get
  f32.const 7
  f32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 474
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 8
  call $~lib/internal/typedarray/TypedArray<f32>#__get
  f32.const 8
  f32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 475
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/internal/typedarray/TypedArray<f32>#__get
  f32.const 9
  f32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 476
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.set $3
  local.get $3
  i32.const 0
  i64.const 10
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  local.get $3
  i32.const 1
  i64.const 11
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  local.get $3
  i32.const 2
  i64.const 12
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  local.get $0
  local.get $3
  i32.const 3
  call $~lib/typedarray/Float32Array#set<Int64Array>
  local.get $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<f32>#__get
  f32.const 4
  f32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 485
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<f32>#__get
  f32.const 5
  f32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 486
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<f32>#__get
  f32.const 6
  f32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 487
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<f32>#__get
  f32.const 10
  f32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 488
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<f32>#__get
  f32.const 11
  f32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 489
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<f32>#__get
  f32.const 12
  f32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 490
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<f32>#__get
  f32.const 3
  f32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 491
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 7
  call $~lib/internal/typedarray/TypedArray<f32>#__get
  f32.const 7
  f32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 492
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 8
  call $~lib/internal/typedarray/TypedArray<f32>#__get
  f32.const 8
  f32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 493
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/internal/typedarray/TypedArray<f32>#__get
  f32.const 9
  f32.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 494
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  global.get $std/typedarray/arrayLikeValue
  i32.const 2
  call $~lib/typedarray/Float32Array#set<ArrayLike>
  local.get $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<f32>#__get
  f32.const 4
  f32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 498
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<f32>#__get
  f32.const 5
  f32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 499
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<f32>#__get
  f32.const 0
  f32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 500
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<f32>#__get
  f32.const 1
  f32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 501
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<f32>#__get
  f32.const 2
  f32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 502
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<f32>#__get
  f32.const 12
  f32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 503
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<f32>#__get
  f32.const 3
  f32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 504
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 7
  call $~lib/internal/typedarray/TypedArray<f32>#__get
  f32.const 7
  f32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 505
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 8
  call $~lib/internal/typedarray/TypedArray<f32>#__get
  f32.const 8
  f32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 506
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/internal/typedarray/TypedArray<f32>#__get
  f32.const 9
  f32.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 507
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Float64Array#set<Array<i32>> (; 362 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  (local $23 f64)
  block $~lib/internal/typedarray/SET<Float64Array,f64,Array<i32>>|inlined.0
   local.get $0
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $3
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 664
    i32.const 48
    i32.const 242
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $4
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 720
    i32.const 48
    i32.const 243
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   block $~lib/array/Array<i32>#get:length|inlined.33 (result i32)
    local.get $4
    local.set $6
    local.get $6
    i32.load offset=4
   end
   i32.const 0
   i32.eq
   if
    br $~lib/internal/typedarray/SET<Float64Array,f64,Array<i32>>|inlined.0
   end
   local.get $3
   i32.load
   local.set $6
   local.get $3
   i32.load offset=4
   local.set $7
   local.get $4
   i32.load
   local.set $8
   block $~lib/array/Array<i32>#get:length|inlined.34 (result i32)
    local.get $4
    local.set $9
    local.get $9
    i32.load offset=4
   end
   local.set $9
   local.get $4
   i32.const 0
   call $~lib/array/Array<i32>#__unchecked_get
   local.set $10
   block $~lib/internal/typedarray/SET_COPY<f64,i32>|inlined.0
    local.get $6
    local.set $11
    local.get $7
    local.set $12
    local.get $8
    local.set $13
    i32.const 0
    local.set $14
    local.get $5
    local.set $15
    local.get $9
    local.set $16
    block $break|0
     local.get $16
     i32.const 1
     i32.sub
     local.set $17
     loop $repeat|0
      local.get $17
      i32.const 0
      i32.ge_s
      i32.eqz
      br_if $break|0
      block $~lib/internal/arraybuffer/STORE<f64,f64>|inlined.14
       local.get $11
       local.set $18
       local.get $17
       local.get $15
       i32.add
       local.set $19
       block $~lib/internal/arraybuffer/LOAD<i32,i32>|inlined.22 (result i32)
        local.get $13
        local.set $20
        local.get $17
        local.set $21
        local.get $14
        local.set $22
        local.get $20
        local.get $21
        i32.const 2
        i32.shl
        i32.add
        local.get $22
        i32.add
        i32.load offset=8
       end
       f64.convert_i32_s
       local.set $23
       local.get $12
       local.set $22
       local.get $18
       local.get $19
       i32.const 3
       i32.shl
       i32.add
       local.get $22
       i32.add
       local.get $23
       f64.store offset=8
      end
      local.get $17
      i32.const 1
      i32.sub
      local.set $17
      br $repeat|0
      unreachable
     end
     unreachable
    end
   end
  end
 )
 (func $~lib/typedarray/Float64Array#set<Float64Array> (; 363 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  block $~lib/internal/typedarray/SET<Float64Array,f64,Float64Array>|inlined.0
   local.get $0
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $3
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 664
    i32.const 48
    i32.const 242
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $4
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 720
    i32.const 48
    i32.const 243
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   block $~lib/internal/typedarray/TypedArray<f64>#get:length|inlined.11 (result i32)
    local.get $4
    local.set $6
    local.get $6
    i32.load offset=8
    i32.const 3
    i32.shr_u
   end
   i32.const 0
   i32.eq
   if
    br $~lib/internal/typedarray/SET<Float64Array,f64,Float64Array>|inlined.0
   end
   block $~lib/internal/typedarray/SET_SAME<Float64Array,f64>|inlined.0
    local.get $3
    local.set $6
    local.get $4
    local.set $7
    local.get $5
    local.set $8
    block $~lib/memory/memory.copy|inlined.11
     block $~lib/arraybuffer/ArrayBuffer#get:data|inlined.22 (result i32)
      local.get $6
      i32.load
      local.set $9
      local.get $9
      i32.const 8
      i32.add
     end
     local.get $6
     i32.load offset=4
     i32.add
     local.get $8
     i32.const 3
     i32.shl
     i32.add
     local.set $9
     block $~lib/arraybuffer/ArrayBuffer#get:data|inlined.23 (result i32)
      local.get $7
      i32.load
      local.set $10
      local.get $10
      i32.const 8
      i32.add
     end
     local.get $7
     i32.load offset=4
     i32.add
     local.set $10
     local.get $7
     i32.load
     i32.load
     local.set $11
     local.get $9
     local.get $10
     local.get $11
     call $~lib/internal/memory/memmove
    end
   end
  end
 )
 (func $~lib/typedarray/Float64Array#set<Float32Array> (; 364 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 f64)
  block $~lib/internal/typedarray/SET<Float64Array,f64,Float32Array>|inlined.0
   local.get $0
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $3
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 664
    i32.const 48
    i32.const 242
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $4
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 720
    i32.const 48
    i32.const 243
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   block $~lib/internal/typedarray/TypedArray<f32>#get:length|inlined.38 (result i32)
    local.get $4
    local.set $6
    local.get $6
    i32.load offset=8
    i32.const 2
    i32.shr_u
   end
   i32.const 0
   i32.eq
   if
    br $~lib/internal/typedarray/SET<Float64Array,f64,Float32Array>|inlined.0
   end
   block $~lib/internal/typedarray/SET_COPY<f64,f32>|inlined.0
    local.get $3
    i32.load
    local.set $6
    local.get $3
    i32.load offset=4
    local.set $7
    local.get $4
    i32.load
    local.set $8
    local.get $4
    i32.load offset=4
    local.set $9
    local.get $5
    local.set $10
    block $~lib/internal/typedarray/TypedArray<f32>#get:length|inlined.39 (result i32)
     local.get $4
     local.set $11
     local.get $11
     i32.load offset=8
     i32.const 2
     i32.shr_u
    end
    local.set $11
    block $break|0
     local.get $11
     i32.const 1
     i32.sub
     local.set $12
     loop $repeat|0
      local.get $12
      i32.const 0
      i32.ge_s
      i32.eqz
      br_if $break|0
      block $~lib/internal/arraybuffer/STORE<f64,f64>|inlined.15
       local.get $6
       local.set $13
       local.get $12
       local.get $10
       i32.add
       local.set $14
       block $~lib/internal/arraybuffer/LOAD<f32,f32>|inlined.19 (result f32)
        local.get $8
        local.set $15
        local.get $12
        local.set $16
        local.get $9
        local.set $17
        local.get $15
        local.get $16
        i32.const 2
        i32.shl
        i32.add
        local.get $17
        i32.add
        f32.load offset=8
       end
       f64.promote_f32
       local.set $18
       local.get $7
       local.set $17
       local.get $13
       local.get $14
       i32.const 3
       i32.shl
       i32.add
       local.get $17
       i32.add
       local.get $18
       f64.store offset=8
      end
      local.get $12
      i32.const 1
      i32.sub
      local.set $12
      br $repeat|0
      unreachable
     end
     unreachable
    end
   end
  end
 )
 (func $~lib/typedarray/Float64Array#set<Int64Array> (; 365 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 f64)
  block $~lib/internal/typedarray/SET<Float64Array,f64,Int64Array>|inlined.0
   local.get $0
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $3
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 664
    i32.const 48
    i32.const 242
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $4
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 720
    i32.const 48
    i32.const 243
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   block $~lib/internal/typedarray/TypedArray<i64>#get:length|inlined.37 (result i32)
    local.get $4
    local.set $6
    local.get $6
    i32.load offset=8
    i32.const 3
    i32.shr_u
   end
   i32.const 0
   i32.eq
   if
    br $~lib/internal/typedarray/SET<Float64Array,f64,Int64Array>|inlined.0
   end
   block $~lib/internal/typedarray/SET_COPY<f64,i64>|inlined.0
    local.get $3
    i32.load
    local.set $6
    local.get $3
    i32.load offset=4
    local.set $7
    local.get $4
    i32.load
    local.set $8
    local.get $4
    i32.load offset=4
    local.set $9
    local.get $5
    local.set $10
    block $~lib/internal/typedarray/TypedArray<i64>#get:length|inlined.38 (result i32)
     local.get $4
     local.set $11
     local.get $11
     i32.load offset=8
     i32.const 3
     i32.shr_u
    end
    local.set $11
    block $break|0
     local.get $11
     i32.const 1
     i32.sub
     local.set $12
     loop $repeat|0
      local.get $12
      i32.const 0
      i32.ge_s
      i32.eqz
      br_if $break|0
      block $~lib/internal/arraybuffer/STORE<f64,f64>|inlined.16
       local.get $6
       local.set $13
       local.get $12
       local.get $10
       i32.add
       local.set $14
       block $~lib/internal/arraybuffer/LOAD<i64,i64>|inlined.18 (result i64)
        local.get $8
        local.set $15
        local.get $12
        local.set $16
        local.get $9
        local.set $17
        local.get $15
        local.get $16
        i32.const 3
        i32.shl
        i32.add
        local.get $17
        i32.add
        i64.load offset=8
       end
       f64.convert_i64_s
       local.set $18
       local.get $7
       local.set $17
       local.get $13
       local.get $14
       i32.const 3
       i32.shl
       i32.add
       local.get $17
       i32.add
       local.get $18
       f64.store offset=8
      end
      local.get $12
      i32.const 1
      i32.sub
      local.set $12
      br $repeat|0
      unreachable
     end
     unreachable
    end
   end
  end
 )
 (func $~lib/typedarray/Float64Array#set<ArrayLike> (; 366 ;) (type $iii_) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 f64)
  (local $14 i32)
  block $~lib/internal/typedarray/SET<Float64Array,f64,ArrayLike>|inlined.0
   local.get $0
   local.set $3
   local.get $1
   local.set $4
   local.get $2
   local.set $5
   local.get $3
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 664
    i32.const 48
    i32.const 242
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $4
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 720
    i32.const 48
    i32.const 243
    i32.const 6
    call $~lib/env/abort
    unreachable
   end
   local.get $4
   i32.load
   i32.const 0
   i32.eq
   if
    br $~lib/internal/typedarray/SET<Float64Array,f64,ArrayLike>|inlined.0
   end
   local.get $4
   i32.load
   local.set $6
   block $~lib/internal/typedarray/TypedArray<f64>#get:length|inlined.12 (result i32)
    local.get $3
    local.set $7
    local.get $7
    i32.load offset=8
    i32.const 3
    i32.shr_u
   end
   local.set $7
   local.get $6
   local.get $5
   i32.add
   local.get $7
   i32.le_s
   i32.eqz
   if
    i32.const 936
    i32.const 48
    i32.const 456
    i32.const 8
    call $~lib/env/abort
    unreachable
   end
   local.get $3
   i32.load
   local.set $8
   local.get $3
   i32.load offset=4
   local.set $9
   block $break|0
    local.get $4
    i32.load
    i32.const 1
    i32.sub
    local.set $10
    loop $repeat|0
     local.get $10
     i32.const 0
     i32.ge_s
     i32.eqz
     br_if $break|0
     block $~lib/internal/arraybuffer/STORE<f64,f64>|inlined.17
      local.get $8
      local.set $11
      local.get $10
      local.get $5
      i32.add
      local.set $12
      local.get $4
      local.get $10
      call $std/typedarray/ArrayLike#__get
      f64.convert_i32_s
      local.set $13
      local.get $9
      local.set $14
      local.get $11
      local.get $12
      i32.const 3
      i32.shl
      i32.add
      local.get $14
      i32.add
      local.get $13
      f64.store offset=8
     end
     local.get $10
     i32.const 1
     i32.sub
     local.set $10
     br $repeat|0
     unreachable
    end
    unreachable
   end
  end
 )
 (func $std/typedarray/testArraySet<Float64Array,f64> (; 367 ;) (type $_)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 10
  call $~lib/typedarray/Float64Array#constructor
  local.set $0
  local.get $0
  global.get $std/typedarray/setSource
  i32.const 4
  call $~lib/typedarray/Float64Array#set<Array<i32>>
  local.get $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<f64>#__get
  f64.const 0
  f64.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 431
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<f64>#__get
  f64.const 0
  f64.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 432
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<f64>#__get
  f64.const 0
  f64.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 433
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<f64>#__get
  f64.const 0
  f64.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 434
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<f64>#__get
  f64.const 1
  f64.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 435
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<f64>#__get
  f64.const 2
  f64.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 436
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<f64>#__get
  f64.const 3
  f64.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 437
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 7
  call $~lib/internal/typedarray/TypedArray<f64>#__get
  f64.const 0
  f64.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 438
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 8
  call $~lib/internal/typedarray/TypedArray<f64>#__get
  f64.const 0
  f64.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 439
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/internal/typedarray/TypedArray<f64>#__get
  f64.const 0
  f64.eq
  i32.eqz
  if
   i32.const 776
   i32.const 8
   i32.const 440
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Float64Array#constructor
  local.set $1
  local.get $1
  i32.const 0
  f64.const 4
  call $~lib/internal/typedarray/TypedArray<f64>#__set
  local.get $1
  i32.const 1
  f64.const 5
  call $~lib/internal/typedarray/TypedArray<f64>#__set
  local.get $1
  i32.const 2
  f64.const 6
  call $~lib/internal/typedarray/TypedArray<f64>#__set
  local.get $0
  local.get $1
  i32.const 0
  call $~lib/typedarray/Float64Array#set<Float64Array>
  local.get $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<f64>#__get
  f64.const 4
  f64.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 449
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<f64>#__get
  f64.const 5
  f64.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 450
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<f64>#__get
  f64.const 6
  f64.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 451
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<f64>#__get
  f64.const 0
  f64.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 452
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<f64>#__get
  f64.const 1
  f64.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 453
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<f64>#__get
  f64.const 2
  f64.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 454
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<f64>#__get
  f64.const 3
  f64.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 455
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 7
  call $~lib/internal/typedarray/TypedArray<f64>#__get
  f64.const 0
  f64.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 456
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 8
  call $~lib/internal/typedarray/TypedArray<f64>#__get
  f64.const 0
  f64.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 457
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/internal/typedarray/TypedArray<f64>#__get
  f64.const 0
  f64.eq
  i32.eqz
  if
   i32.const 816
   i32.const 8
   i32.const 458
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Float32Array#constructor
  local.set $2
  local.get $2
  i32.const 0
  f32.const 7
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  local.get $2
  i32.const 1
  f32.const 8
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  local.get $2
  i32.const 2
  f32.const 9
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  local.get $0
  local.get $2
  i32.const 7
  call $~lib/typedarray/Float64Array#set<Float32Array>
  local.get $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<f64>#__get
  f64.const 4
  f64.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 467
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<f64>#__get
  f64.const 5
  f64.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 468
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<f64>#__get
  f64.const 6
  f64.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 469
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<f64>#__get
  f64.const 0
  f64.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 470
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<f64>#__get
  f64.const 1
  f64.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 471
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<f64>#__get
  f64.const 2
  f64.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 472
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<f64>#__get
  f64.const 3
  f64.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 473
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 7
  call $~lib/internal/typedarray/TypedArray<f64>#__get
  f64.const 7
  f64.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 474
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 8
  call $~lib/internal/typedarray/TypedArray<f64>#__get
  f64.const 8
  f64.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 475
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/internal/typedarray/TypedArray<f64>#__get
  f64.const 9
  f64.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 476
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.set $3
  local.get $3
  i32.const 0
  i64.const 10
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  local.get $3
  i32.const 1
  i64.const 11
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  local.get $3
  i32.const 2
  i64.const 12
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  local.get $0
  local.get $3
  i32.const 3
  call $~lib/typedarray/Float64Array#set<Int64Array>
  local.get $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<f64>#__get
  f64.const 4
  f64.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 485
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<f64>#__get
  f64.const 5
  f64.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 486
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<f64>#__get
  f64.const 6
  f64.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 487
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<f64>#__get
  f64.const 10
  f64.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 488
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<f64>#__get
  f64.const 11
  f64.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 489
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<f64>#__get
  f64.const 12
  f64.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 490
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<f64>#__get
  f64.const 3
  f64.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 491
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 7
  call $~lib/internal/typedarray/TypedArray<f64>#__get
  f64.const 7
  f64.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 492
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 8
  call $~lib/internal/typedarray/TypedArray<f64>#__get
  f64.const 8
  f64.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 493
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/internal/typedarray/TypedArray<f64>#__get
  f64.const 9
  f64.eq
  i32.eqz
  if
   i32.const 880
   i32.const 8
   i32.const 494
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  global.get $std/typedarray/arrayLikeValue
  i32.const 2
  call $~lib/typedarray/Float64Array#set<ArrayLike>
  local.get $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<f64>#__get
  f64.const 4
  f64.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 498
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<f64>#__get
  f64.const 5
  f64.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 499
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<f64>#__get
  f64.const 0
  f64.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 500
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<f64>#__get
  f64.const 1
  f64.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 501
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<f64>#__get
  f64.const 2
  f64.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 502
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<f64>#__get
  f64.const 12
  f64.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 503
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<f64>#__get
  f64.const 3
  f64.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 504
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 7
  call $~lib/internal/typedarray/TypedArray<f64>#__get
  f64.const 7
  f64.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 505
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 8
  call $~lib/internal/typedarray/TypedArray<f64>#__get
  f64.const 8
  f64.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 506
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 9
  call $~lib/internal/typedarray/TypedArray<f64>#__get
  f64.const 9
  f64.eq
  i32.eqz
  if
   i32.const 1008
   i32.const 8
   i32.const 507
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $start:std/typedarray (; 368 ;) (type $_)
  (local $0 i32)
  global.get $~lib/typedarray/Int8Array.BYTES_PER_ELEMENT
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
  global.get $~lib/typedarray/Uint8Array.BYTES_PER_ELEMENT
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
  global.get $~lib/typedarray/Uint8ClampedArray.BYTES_PER_ELEMENT
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
  global.get $~lib/typedarray/Int16Array.BYTES_PER_ELEMENT
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
  global.get $~lib/typedarray/Uint16Array.BYTES_PER_ELEMENT
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
  global.get $~lib/typedarray/Int32Array.BYTES_PER_ELEMENT
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
  global.get $~lib/typedarray/Uint32Array.BYTES_PER_ELEMENT
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
  global.get $~lib/typedarray/Int64Array.BYTES_PER_ELEMENT
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
  global.get $~lib/typedarray/Uint64Array.BYTES_PER_ELEMENT
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
  global.get $~lib/typedarray/Float32Array.BYTES_PER_ELEMENT
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
  global.get $~lib/typedarray/Float64Array.BYTES_PER_ELEMENT
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
  call $start:~lib/allocator/arena
  i32.const 0
  call $std/typedarray/testInstantiate
  i32.const 5
  call $std/typedarray/testInstantiate
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  global.set $std/typedarray/arr
  global.get $std/typedarray/arr
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  global.get $std/typedarray/arr
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  global.get $std/typedarray/arr
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  block $~lib/internal/typedarray/TypedArray<i32>#get:length|inlined.1 (result i32)
   global.get $std/typedarray/arr
   local.set $0
   local.get $0
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
  global.get $std/typedarray/arr
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
  global.get $std/typedarray/arr
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
  global.get $std/typedarray/arr
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
  global.get $std/typedarray/arr
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
  global.get $std/typedarray/arr
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
  global.get $std/typedarray/arr
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int32Array#subarray
  global.set $std/typedarray/arr
  block $~lib/internal/typedarray/TypedArray<i32>#get:length|inlined.3 (result i32)
   global.get $std/typedarray/arr
   local.set $0
   local.get $0
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
  global.get $std/typedarray/arr
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
  global.get $std/typedarray/arr
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
  global.get $std/typedarray/arr
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
  call $~lib/typedarray/Float64Array#constructor
  global.set $std/typedarray/af64
  global.get $std/typedarray/af64
  i32.const 0
  f64.const 1
  call $~lib/internal/typedarray/TypedArray<f64>#__set
  global.get $std/typedarray/af64
  i32.const 1
  f64.const 2
  call $~lib/internal/typedarray/TypedArray<f64>#__set
  global.get $std/typedarray/af64
  i32.const 2
  f64.const 7
  call $~lib/internal/typedarray/TypedArray<f64>#__set
  global.get $std/typedarray/af64
  i32.const 3
  f64.const 6
  call $~lib/internal/typedarray/TypedArray<f64>#__set
  global.get $std/typedarray/af64
  i32.const 4
  f64.const 5
  call $~lib/internal/typedarray/TypedArray<f64>#__set
  global.get $std/typedarray/af64
  i32.const 5
  f64.const 4
  call $~lib/internal/typedarray/TypedArray<f64>#__set
  global.get $std/typedarray/af64
  i32.const 6
  f64.const 3
  call $~lib/internal/typedarray/TypedArray<f64>#__set
  global.get $std/typedarray/af64
  i32.const 7
  f64.const 8
  call $~lib/internal/typedarray/TypedArray<f64>#__set
  global.get $std/typedarray/af64
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Float64Array#subarray
  global.set $std/typedarray/af64
  block $~lib/internal/typedarray/TypedArray<f64>#get:length|inlined.2 (result i32)
   global.get $std/typedarray/af64
   local.set $0
   local.get $0
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
  global.get $std/typedarray/af64
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
  global.get $std/typedarray/af64
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
   global.set $~lib/argc
   global.get $std/typedarray/af64
   i32.const 0
   call $~lib/typedarray/Float64Array#sort|trampoline
  end
  drop
  global.get $std/typedarray/af64
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<f64>#__get
  f64.const 4
  f64.eq
  local.tee $0
  if (result i32)
   global.get $std/typedarray/af64
   i32.const 1
   call $~lib/internal/typedarray/TypedArray<f64>#__get
   f64.const 5
   f64.eq
  else   
   local.get $0
  end
  local.tee $0
  if (result i32)
   global.get $std/typedarray/af64
   i32.const 2
   call $~lib/internal/typedarray/TypedArray<f64>#__get
   f64.const 6
   f64.eq
  else   
   local.get $0
  end
  local.tee $0
  if (result i32)
   global.get $std/typedarray/af64
   i32.const 3
   call $~lib/internal/typedarray/TypedArray<f64>#__get
   f64.const 7
   f64.eq
  else   
   local.get $0
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
  call $~lib/typedarray/Uint8ClampedArray#constructor
  global.set $std/typedarray/clampedArr
  global.get $std/typedarray/clampedArr
  i32.const 0
  i32.const -32
  call $~lib/typedarray/Uint8ClampedArray#__set
  global.get $std/typedarray/clampedArr
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint8ClampedArray#__set
  global.get $std/typedarray/clampedArr
  i32.const 2
  i32.const 256
  call $~lib/typedarray/Uint8ClampedArray#__set
  global.get $std/typedarray/clampedArr
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
  global.get $std/typedarray/clampedArr
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
  global.get $std/typedarray/clampedArr
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
  call $~lib/typedarray/Int8Array#constructor
  global.set $std/typedarray/arr8
  global.get $std/typedarray/arr8
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i8>#__set
  global.get $std/typedarray/arr8
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i8>#__set
  global.get $std/typedarray/arr8
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i8>#__set
  global.get $std/typedarray/arr8
  i32.const 3
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<i8>#__set
  global.get $std/typedarray/arr8
  i32.const 4
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<i8>#__set
  global.get $std/typedarray/arr8
  i32.const 1
  i32.const 1
  i32.const 3
  call $~lib/typedarray/Int8Array#fill
  drop
  global.get $std/typedarray/arr8
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
   global.set $~lib/argc
   global.get $std/typedarray/arr8
   i32.const 0
   i32.const 0
   i32.const 0
   call $~lib/typedarray/Int8Array#fill|trampoline
  end
  drop
  global.get $std/typedarray/arr8
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
  global.get $std/typedarray/arr8
  i32.const 1
  i32.const 0
  i32.const -3
  call $~lib/typedarray/Int8Array#fill
  drop
  global.get $std/typedarray/arr8
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
   global.set $~lib/argc
   global.get $std/typedarray/arr8
   i32.const 2
   i32.const -2
   i32.const 0
   call $~lib/typedarray/Int8Array#fill|trampoline
  end
  drop
  global.get $std/typedarray/arr8
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
  global.get $std/typedarray/arr8
  i32.const 0
  i32.const 1
  i32.const 0
  call $~lib/typedarray/Int8Array#fill
  drop
  global.get $std/typedarray/arr8
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
  global.get $std/typedarray/arr8
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Int8Array#subarray
  global.set $std/typedarray/sub8
  block (result i32)
   i32.const 1
   global.set $~lib/argc
   global.get $std/typedarray/sub8
   i32.const 0
   i32.const 0
   i32.const 0
   call $~lib/typedarray/Int8Array#fill|trampoline
  end
  drop
  block $~lib/internal/typedarray/TypedArray<i8>#get:length|inlined.6 (result i32)
   global.get $std/typedarray/sub8
   local.set $0
   local.get $0
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
  global.get $std/typedarray/sub8
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
  global.get $std/typedarray/sub8
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
  global.get $std/typedarray/sub8
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
  global.get $std/typedarray/arr8
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
  call $~lib/typedarray/Int32Array#constructor
  global.set $std/typedarray/arr32
  global.get $std/typedarray/arr32
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  global.get $std/typedarray/arr32
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  global.get $std/typedarray/arr32
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  global.get $std/typedarray/arr32
  i32.const 3
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  global.get $std/typedarray/arr32
  i32.const 4
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  global.get $std/typedarray/arr32
  i32.const 1
  i32.const 1
  i32.const 3
  call $~lib/typedarray/Int32Array#fill
  drop
  global.get $std/typedarray/arr32
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
   global.set $~lib/argc
   global.get $std/typedarray/arr32
   i32.const 0
   i32.const 0
   i32.const 0
   call $~lib/typedarray/Int32Array#fill|trampoline
  end
  drop
  global.get $std/typedarray/arr32
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
  global.get $std/typedarray/arr32
  i32.const 1
  i32.const 0
  i32.const -3
  call $~lib/typedarray/Int32Array#fill
  drop
  global.get $std/typedarray/arr32
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
   global.set $~lib/argc
   global.get $std/typedarray/arr32
   i32.const 2
   i32.const -2
   i32.const 0
   call $~lib/typedarray/Int32Array#fill|trampoline
  end
  drop
  global.get $std/typedarray/arr32
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
  global.get $std/typedarray/arr32
  i32.const 0
  i32.const 1
  i32.const 0
  call $~lib/typedarray/Int32Array#fill
  drop
  global.get $std/typedarray/arr32
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
  global.get $std/typedarray/arr32
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Int32Array#subarray
  global.set $std/typedarray/sub32
  block (result i32)
   i32.const 1
   global.set $~lib/argc
   global.get $std/typedarray/sub32
   i32.const 0
   i32.const 0
   i32.const 0
   call $~lib/typedarray/Int32Array#fill|trampoline
  end
  drop
  block $~lib/internal/typedarray/TypedArray<i32>#get:length|inlined.8 (result i32)
   global.get $std/typedarray/sub32
   local.set $0
   local.get $0
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
  global.get $std/typedarray/sub32
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
  global.get $std/typedarray/sub32
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
  global.get $std/typedarray/sub32
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
  global.get $std/typedarray/arr32
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
  global.get $std/typedarray/MAX_F64LENGTH
  call $~lib/typedarray/Float64Array#constructor
  drop
  i32.const 0
  i32.const 6
  call $~lib/typedarray/Int8Array#constructor
  global.set $std/typedarray/multisubarr
  global.get $std/typedarray/multisubarr
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i8>#__set
  global.get $std/typedarray/multisubarr
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i8>#__set
  global.get $std/typedarray/multisubarr
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i8>#__set
  global.get $std/typedarray/multisubarr
  i32.const 3
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<i8>#__set
  global.get $std/typedarray/multisubarr
  i32.const 4
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<i8>#__set
  global.get $std/typedarray/multisubarr
  i32.const 5
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<i8>#__set
  global.get $std/typedarray/multisubarr
  i32.const 1
  i32.const 6
  call $~lib/typedarray/Int8Array#subarray
  global.set $std/typedarray/multisubarr1
  global.get $std/typedarray/multisubarr1
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
   global.get $std/typedarray/multisubarr1
   local.set $0
   local.get $0
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
  global.get $std/typedarray/multisubarr1
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
  global.get $std/typedarray/multisubarr1
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
  global.get $std/typedarray/multisubarr1
  i32.const 1
  i32.const 5
  call $~lib/typedarray/Int8Array#subarray
  global.set $std/typedarray/multisubarr2
  global.get $std/typedarray/multisubarr2
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
   global.get $std/typedarray/multisubarr2
   local.set $0
   local.get $0
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
  global.get $std/typedarray/multisubarr2
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
  global.get $std/typedarray/multisubarr2
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
  global.get $std/typedarray/multisubarr2
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Int8Array#subarray
  global.set $std/typedarray/multisubarr3
  global.get $std/typedarray/multisubarr3
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
   global.get $std/typedarray/multisubarr3
   local.set $0
   local.get $0
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
  global.get $std/typedarray/multisubarr3
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
  global.get $std/typedarray/multisubarr3
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
  i32.const 0
  call $std/typedarray/ArrayLike#constructor
  global.set $std/typedarray/arrayLikeValue
  call $std/typedarray/testArraySet<Int8Array,i8>
  call $std/typedarray/testArraySet<Uint8Array,u8>
  call $std/typedarray/testArraySet<Uint8ClampedArray,u8>
  call $std/typedarray/testArraySet<Int16Array,i16>
  call $std/typedarray/testArraySet<Uint16Array,u16>
  call $std/typedarray/testArraySet<Int32Array,i32>
  call $std/typedarray/testArraySet<Uint32Array,u32>
  call $std/typedarray/testArraySet<Int64Array,i64>
  call $std/typedarray/testArraySet<Uint64Array,u64>
  call $std/typedarray/testArraySet<Float32Array,f32>
  call $std/typedarray/testArraySet<Float64Array,f64>
 )
 (func $start (; 369 ;) (type $_)
  call $start:std/typedarray
 )
 (func $null (; 370 ;) (type $_)
 )
)
