(module
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$viid (func (param i32 i32 f64)))
 (type $FUNCSIG$idd (func (param f64 f64) (result i32)))
 (type $FUNCSIG$dii (func (param i32 i32) (result f64)))
 (type $FUNCSIG$iiiii (func (param i32 i32 i32 i32) (result i32)))
 (type $FUNCSIG$viij (func (param i32 i32 i64)))
 (type $FUNCSIG$jjjii (func (param i64 i64 i32 i32) (result i64)))
 (type $FUNCSIG$viif (func (param i32 i32 f32)))
 (type $FUNCSIG$fffii (func (param f32 f32 i32 i32) (result f32)))
 (type $FUNCSIG$dddii (func (param f64 f64 i32 i32) (result f64)))
 (type $FUNCSIG$jjii (func (param i64 i32 i32) (result i64)))
 (type $FUNCSIG$jii (func (param i32 i32) (result i64)))
 (type $FUNCSIG$ffii (func (param f32 i32 i32) (result f32)))
 (type $FUNCSIG$fii (func (param i32 i32) (result f32)))
 (type $FUNCSIG$ddii (func (param f64 i32 i32) (result f64)))
 (type $FUNCSIG$ijii (func (param i64 i32 i32) (result i32)))
 (type $FUNCSIG$ifii (func (param f32 i32 i32) (result i32)))
 (type $FUNCSIG$idii (func (param f64 i32 i32) (result i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$vjii (func (param i64 i32 i32)))
 (type $FUNCSIG$vfii (func (param f32 i32 i32)))
 (type $FUNCSIG$vdii (func (param f64 i32 i32)))
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
 (data (i32.const 624) "\0f\00\00\00r\00e\00s\00u\00l\00t\00 \00m\00i\00s\00m\00a\00t\00c\00h")
 (data (i32.const 664) "\14\00\00\00f\00a\00i\00l\00 \00r\00e\00s\00u\00l\00t\00 \00m\00i\00s\00m\00a\00t\00c\00h")
 (data (i32.const 712) "\0c\00\00\00\00\00\00\00\n\00\00\00\0c\00\00\00\0e")
 (data (i32.const 744) "\c8\02\00\00\03")
 (data (i32.const 752) "\16\00\00\00f\00o\00r\00E\00a\00c\00h\00 \00v\00a\00l\00u\00e\00 \00m\00i\00s\00m\00a\00t\00c\00h")
 (data (i32.const 800) "\16\00\00\00f\00o\00r\00E\00a\00c\00h\00 \00i\00n\00d\00e\00x\00 \00m\00i\00s\00m\00a\00t\00c\00h")
 (data (i32.const 848) "\1f\00\00\00f\00o\00r\00E\00a\00c\00h\00 \00s\00e\00l\00f\00 \00p\00a\00r\00a\00m\00e\00t\00e\00r\00 \00m\00i\00s\00m\00a\00t\00c\00h")
 (data (i32.const 920) "\1b\00\00\00f\00o\00r\00E\00a\00c\00h\00 \00c\00a\00l\00l\00 \00c\00o\00u\00n\00t\00 \00m\00i\00s\00m\00a\00t\00c\00h")
 (data (i32.const 984) "$\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00\07\00\00\00\08\00\00\00\t")
 (data (i32.const 1048) "\d8\03\00\00\t")
 (data (i32.const 1056) "!\00\00\00T\00y\00p\00e\00d\00A\00r\00r\00a\00y\00 \00r\00e\00v\00e\00r\00s\00e\00 \00v\00a\00l\00u\00e\00 \00m\00i\00s\00m\00a\00t\00c\00h")
 (data (i32.const 1128) "+\00\00\00T\00y\00p\00e\00d\00A\00r\00r\00a\00y\00 \00r\00e\00v\00e\00r\00s\00e\00 \00w\00i\00t\00h\00 \00b\00y\00t\00e\00O\00f\00f\00s\00e\00t\00 \00m\00i\00s\00m\00a\00t\00c\00h")
 (table $0 112 funcref)
 (elem (i32.const 0) $null $~lib/internal/sort/COMPARATOR<f64>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Float32Array,f32>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Float64Array,f64>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Float32Array,f32>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Float64Array,f64>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Float32Array,f32>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Float64Array,f64>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Float32Array,f32>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Float32Array,f32>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Float64Array,f64>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Float64Array,f64>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int8Array,i8>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int8Array,i8>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int8Array,i8>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int16Array,i16>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int16Array,i16>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int32Array,i32>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int32Array,i32>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int64Array,i64>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int64Array,i64>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Float32Array,f32>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Float32Array,f32>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Float64Array,f64>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Float64Array,f64>~anonymous|1 $std/typedarray/testArrayEvery<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Uint8Array,u8>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Uint8Array,u8>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Uint8Array,u8>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Uint8Array,u8>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Uint64Array,u64>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Float32Array,f32>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Float32Array,f32>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Float64Array,f64>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Float64Array,f64>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Float32Array,f32>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Float64Array,f64>~anonymous|0)
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $std/typedarray/arr (mut i32) (i32.const 0))
 (global $std/typedarray/af64 (mut i32) (i32.const 0))
 (global $~lib/argc (mut i32) (i32.const 0))
 (global $std/typedarray/clampedArr (mut i32) (i32.const 0))
 (global $std/typedarray/arr8 (mut i32) (i32.const 0))
 (global $std/typedarray/sub8 (mut i32) (i32.const 0))
 (global $std/typedarray/arr32 (mut i32) (i32.const 0))
 (global $std/typedarray/sub32 (mut i32) (i32.const 0))
 (global $std/typedarray/multisubarr (mut i32) (i32.const 0))
 (global $std/typedarray/multisubarr1 (mut i32) (i32.const 0))
 (global $std/typedarray/multisubarr2 (mut i32) (i32.const 0))
 (global $std/typedarray/multisubarr3 (mut i32) (i32.const 0))
 (global $std/typedarray/forEachCallCount (mut i32) (i32.const 0))
 (global $std/typedarray/forEachSelf (mut i32) (i32.const 0))
 (global $std/typedarray/forEachValues (mut i32) (i32.const 744))
 (global $std/typedarray/testArrayReverseValues (mut i32) (i32.const 1048))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $~lib/allocator/arena/__memory_allocate (; 1 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.const 1073741824
  i32.gt_u
  if
   unreachable
  end
  global.get $~lib/allocator/arena/offset
  local.tee $1
  local.get $0
  i32.const 1
  local.get $0
  i32.const 1
  i32.gt_u
  select
  i32.add
  i32.const 7
  i32.add
  i32.const -8
  i32.and
  local.tee $0
  current_memory
  local.tee $2
  i32.const 16
  i32.shl
  i32.gt_u
  if
   local.get $2
   local.get $0
   local.get $1
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $3
   local.get $2
   local.get $3
   i32.gt_s
   select
   grow_memory
   i32.const 0
   i32.lt_s
   if
    local.get $3
    grow_memory
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $0
  global.set $~lib/allocator/arena/offset
  local.get $1
 )
 (func $~lib/internal/arraybuffer/allocateUnsafe (; 2 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
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
  local.get $0
  i32.const 7
  i32.add
  i32.clz
  i32.sub
  i32.shl
  call $~lib/allocator/arena/__memory_allocate
  local.tee $1
  local.get $0
  i32.store
  local.get $1
 )
 (func $~lib/internal/memory/memset (; 3 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i64)
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
  local.tee $3
  i32.const 2
  i32.sub
  local.get $1
  i32.store8
  local.get $3
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
  local.get $2
  i32.const 0
  local.get $0
  i32.sub
  i32.const 3
  i32.and
  local.tee $2
  i32.sub
  local.set $3
  local.get $0
  local.get $2
  i32.add
  local.tee $0
  local.get $1
  i32.const 255
  i32.and
  i32.const 16843009
  i32.mul
  local.tee $1
  i32.store
  local.get $3
  i32.const -4
  i32.and
  local.tee $2
  local.get $0
  i32.add
  i32.const 4
  i32.sub
  local.get $1
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
  local.get $1
  i32.store
  local.get $0
  i32.const 8
  i32.add
  local.get $1
  i32.store
  local.get $0
  local.get $2
  i32.add
  local.tee $3
  i32.const 12
  i32.sub
  local.get $1
  i32.store
  local.get $3
  i32.const 8
  i32.sub
  local.get $1
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
  local.get $1
  i32.store
  local.get $0
  i32.const 16
  i32.add
  local.get $1
  i32.store
  local.get $0
  i32.const 20
  i32.add
  local.get $1
  i32.store
  local.get $0
  i32.const 24
  i32.add
  local.get $1
  i32.store
  local.get $0
  local.get $2
  i32.add
  local.tee $3
  i32.const 28
  i32.sub
  local.get $1
  i32.store
  local.get $3
  i32.const 24
  i32.sub
  local.get $1
  i32.store
  local.get $3
  i32.const 20
  i32.sub
  local.get $1
  i32.store
  local.get $3
  i32.const 16
  i32.sub
  local.get $1
  i32.store
  local.get $0
  i32.const 4
  i32.and
  i32.const 24
  i32.add
  local.tee $3
  local.get $0
  i32.add
  local.set $0
  local.get $2
  local.get $3
  i32.sub
  local.set $2
  local.get $1
  i64.extend_i32_u
  local.tee $4
  local.get $4
  i64.const 32
  i64.shl
  i64.or
  local.set $4
  loop $continue|0
   local.get $2
   i32.const 32
   i32.ge_u
   if
    local.get $0
    local.get $4
    i64.store
    local.get $0
    i32.const 8
    i32.add
    local.get $4
    i64.store
    local.get $0
    i32.const 16
    i32.add
    local.get $4
    i64.store
    local.get $0
    i32.const 24
    i32.add
    local.get $4
    i64.store
    local.get $2
    i32.const 32
    i32.sub
    local.set $2
    local.get $0
    i32.const 32
    i32.add
    local.set $0
    br $continue|0
   end
  end
 )
 (func $~lib/internal/typedarray/TypedArray<i8>#constructor (; 4 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
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
  call $~lib/internal/arraybuffer/allocateUnsafe
  local.tee $2
  i32.const 8
  i32.add
  i32.const 0
  local.get $1
  call $~lib/internal/memory/memset
  local.get $0
  i32.eqz
  if
   i32.const 12
   call $~lib/allocator/arena/__memory_allocate
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
  local.get $2
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
 )
 (func $~lib/typedarray/Int8Array#constructor (; 5 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.eqz
  if
   i32.const 12
   call $~lib/allocator/arena/__memory_allocate
   local.set $0
  end
  local.get $0
  local.get $1
  call $~lib/internal/typedarray/TypedArray<i8>#constructor
 )
 (func $~lib/typedarray/Uint8ClampedArray#constructor (; 6 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 12
  call $~lib/allocator/arena/__memory_allocate
  local.get $0
  call $~lib/typedarray/Int8Array#constructor
 )
 (func $~lib/internal/typedarray/TypedArray<i16>#constructor (; 7 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
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
  local.tee $1
  call $~lib/internal/arraybuffer/allocateUnsafe
  local.tee $2
  i32.const 8
  i32.add
  i32.const 0
  local.get $1
  call $~lib/internal/memory/memset
  local.get $0
  i32.eqz
  if
   i32.const 12
   call $~lib/allocator/arena/__memory_allocate
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
  local.get $2
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
 )
 (func $~lib/typedarray/Int16Array#constructor (; 8 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 12
  call $~lib/allocator/arena/__memory_allocate
  local.get $0
  call $~lib/internal/typedarray/TypedArray<i16>#constructor
 )
 (func $~lib/internal/typedarray/TypedArray<i32>#constructor (; 9 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
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
  local.tee $1
  call $~lib/internal/arraybuffer/allocateUnsafe
  local.tee $2
  i32.const 8
  i32.add
  i32.const 0
  local.get $1
  call $~lib/internal/memory/memset
  local.get $0
  i32.eqz
  if
   i32.const 12
   call $~lib/allocator/arena/__memory_allocate
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
  local.get $2
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
 )
 (func $~lib/typedarray/Int32Array#constructor (; 10 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 12
  call $~lib/allocator/arena/__memory_allocate
  local.get $0
  call $~lib/internal/typedarray/TypedArray<i32>#constructor
 )
 (func $~lib/internal/typedarray/TypedArray<i64>#constructor (; 11 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
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
  local.tee $1
  call $~lib/internal/arraybuffer/allocateUnsafe
  local.tee $2
  i32.const 8
  i32.add
  i32.const 0
  local.get $1
  call $~lib/internal/memory/memset
  local.get $0
  i32.eqz
  if
   i32.const 12
   call $~lib/allocator/arena/__memory_allocate
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
  local.get $2
  i32.store
  local.get $0
  i32.const 0
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
 )
 (func $~lib/typedarray/Int64Array#constructor (; 12 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 12
  call $~lib/allocator/arena/__memory_allocate
  local.get $0
  call $~lib/internal/typedarray/TypedArray<i64>#constructor
 )
 (func $std/typedarray/testInstantiate (; 13 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  i32.const 0
  local.get $0
  call $~lib/typedarray/Int8Array#constructor
  local.tee $1
  i32.load offset=4
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
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 35
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  local.get $1
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
  local.get $0
  call $~lib/typedarray/Int8Array#constructor
  local.tee $1
  i32.load offset=4
  if
   i32.const 0
   i32.const 8
   i32.const 39
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  local.get $0
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 40
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  local.get $1
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
  local.get $0
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.tee $1
  i32.load offset=4
  if
   i32.const 0
   i32.const 8
   i32.const 44
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  local.get $0
  i32.ne
  if
   i32.const 0
   i32.const 8
   i32.const 45
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  local.get $1
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
  local.get $0
  call $~lib/typedarray/Int16Array#constructor
  local.tee $1
  i32.load offset=4
  if
   i32.const 0
   i32.const 8
   i32.const 49
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  local.get $0
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
  local.get $0
  local.get $1
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
  local.get $0
  call $~lib/typedarray/Int16Array#constructor
  local.tee $1
  i32.load offset=4
  if
   i32.const 0
   i32.const 8
   i32.const 54
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  local.get $0
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
  local.get $0
  local.get $1
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
  local.get $0
  call $~lib/typedarray/Int32Array#constructor
  local.tee $1
  i32.load offset=4
  if
   i32.const 0
   i32.const 8
   i32.const 59
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  local.get $0
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
  local.get $0
  local.get $1
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
  local.get $0
  call $~lib/typedarray/Int32Array#constructor
  local.tee $1
  i32.load offset=4
  if
   i32.const 0
   i32.const 8
   i32.const 64
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  local.get $0
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
  local.get $0
  local.get $1
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
  local.get $0
  call $~lib/typedarray/Int64Array#constructor
  local.tee $1
  i32.load offset=4
  if
   i32.const 0
   i32.const 8
   i32.const 69
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  local.get $0
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
  local.get $0
  local.get $1
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
  local.get $0
  call $~lib/typedarray/Int64Array#constructor
  local.tee $1
  i32.load offset=4
  if
   i32.const 0
   i32.const 8
   i32.const 74
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  local.get $0
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
  local.get $0
  local.get $1
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
  local.get $0
  call $~lib/typedarray/Int32Array#constructor
  local.tee $1
  i32.load offset=4
  if
   i32.const 0
   i32.const 8
   i32.const 79
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  local.get $0
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
  local.get $0
  local.get $1
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
  local.get $0
  call $~lib/typedarray/Int64Array#constructor
  local.tee $1
  i32.load offset=4
  if
   i32.const 0
   i32.const 8
   i32.const 84
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  local.get $0
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
  local.get $0
  local.get $1
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
 (func $~lib/internal/typedarray/TypedArray<i32>#__set (; 14 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.add
  local.get $2
  i32.store offset=8
 )
 (func $~lib/internal/typedarray/TypedArray<i32>#__get (; 15 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.add
  i32.load offset=8
 )
 (func $~lib/typedarray/Int32Array#subarray (; 16 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  local.set $3
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
   local.get $3
   i32.add
   local.tee $1
   i32.const 0
   local.get $1
   i32.const 0
   i32.gt_s
   select
  else   
   local.get $1
   local.get $3
   local.get $1
   local.get $3
   i32.lt_s
   select
  end
  local.set $1
  local.get $2
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $2
   local.get $3
   i32.add
   local.tee $2
   local.get $1
   local.get $2
   local.get $1
   i32.gt_s
   select
  else   
   local.get $2
   local.get $3
   local.get $2
   local.get $3
   i32.lt_s
   select
   local.tee $2
   local.get $1
   local.get $2
   local.get $1
   i32.gt_s
   select
  end
  local.set $3
  i32.const 12
  call $~lib/allocator/arena/__memory_allocate
  local.tee $2
  local.get $0
  i32.load
  i32.store
  local.get $2
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.store offset=4
  local.get $2
  local.get $3
  local.get $1
  i32.sub
  i32.const 2
  i32.shl
  i32.store offset=8
  local.get $2
 )
 (func $~lib/internal/typedarray/TypedArray<f64>#__set (; 17 ;) (type $FUNCSIG$viid) (param $0 i32) (param $1 i32) (param $2 f64)
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
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  i32.add
  local.get $2
  f64.store offset=8
 )
 (func $~lib/typedarray/Float64Array#subarray (; 18 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  local.set $3
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
   local.get $3
   i32.add
   local.tee $1
   i32.const 0
   local.get $1
   i32.const 0
   i32.gt_s
   select
  else   
   local.get $1
   local.get $3
   local.get $1
   local.get $3
   i32.lt_s
   select
  end
  local.set $1
  local.get $2
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $2
   local.get $3
   i32.add
   local.tee $2
   local.get $1
   local.get $2
   local.get $1
   i32.gt_s
   select
  else   
   local.get $2
   local.get $3
   local.get $2
   local.get $3
   i32.lt_s
   select
   local.tee $2
   local.get $1
   local.get $2
   local.get $1
   i32.gt_s
   select
  end
  local.set $3
  i32.const 12
  call $~lib/allocator/arena/__memory_allocate
  local.tee $2
  local.get $0
  i32.load
  i32.store
  local.get $2
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  i32.store offset=4
  local.get $2
  local.get $3
  local.get $1
  i32.sub
  i32.const 3
  i32.shl
  i32.store offset=8
  local.get $2
 )
 (func $~lib/internal/sort/insertionSort<f64> (; 19 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 f64)
  (local $7 f64)
  (local $8 i32)
  block $break|0
   loop $repeat|0
    local.get $4
    local.get $2
    i32.ge_s
    br_if $break|0
    local.get $4
    i32.const 3
    i32.shl
    local.get $0
    i32.add
    local.get $1
    i32.add
    f64.load offset=8
    local.set $6
    local.get $4
    i32.const 1
    i32.sub
    local.set $5
    loop $continue|1
     local.get $5
     i32.const 0
     i32.ge_s
     if
      block $break|1
       local.get $5
       i32.const 3
       i32.shl
       local.get $0
       i32.add
       local.get $1
       i32.add
       f64.load offset=8
       local.set $7
       i32.const 2
       global.set $~lib/argc
       local.get $6
       local.get $7
       local.get $3
       call_indirect (type $FUNCSIG$idd)
       i32.const 0
       i32.ge_s
       br_if $break|1
       local.get $5
       local.tee $8
       i32.const 1
       i32.sub
       local.set $5
       local.get $8
       i32.const 1
       i32.add
       i32.const 3
       i32.shl
       local.get $0
       i32.add
       local.get $1
       i32.add
       local.get $7
       f64.store offset=8
       br $continue|1
      end
     end
    end
    local.get $5
    i32.const 1
    i32.add
    i32.const 3
    i32.shl
    local.get $0
    i32.add
    local.get $1
    i32.add
    local.get $6
    f64.store offset=8
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
 (func $~lib/internal/sort/weakHeapSort<f64> (; 20 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 f64)
  (local $7 f64)
  (local $8 i32)
  (local $9 i32)
  local.get $2
  i32.const 31
  i32.add
  i32.const 5
  i32.shr_s
  i32.const 2
  i32.shl
  local.tee $4
  call $~lib/allocator/arena/__memory_allocate
  local.tee $8
  i32.const 0
  local.get $4
  call $~lib/internal/memory/memset
  local.get $2
  i32.const 1
  i32.sub
  local.set $5
  loop $repeat|0
   local.get $5
   i32.const 0
   i32.gt_s
   if
    local.get $5
    local.set $4
    loop $continue|1
     local.get $4
     i32.const 1
     i32.and
     local.get $4
     i32.const 6
     i32.shr_s
     i32.const 2
     i32.shl
     local.get $8
     i32.add
     i32.load
     local.get $4
     i32.const 1
     i32.shr_s
     i32.const 31
     i32.and
     i32.shr_u
     i32.const 1
     i32.and
     i32.eq
     if
      local.get $4
      i32.const 1
      i32.shr_s
      local.set $4
      br $continue|1
     end
    end
    local.get $4
    i32.const 1
    i32.shr_s
    local.tee $4
    i32.const 3
    i32.shl
    local.get $0
    i32.add
    local.get $1
    i32.add
    f64.load offset=8
    local.set $6
    local.get $5
    i32.const 3
    i32.shl
    local.get $0
    i32.add
    local.get $1
    i32.add
    f64.load offset=8
    local.set $7
    i32.const 2
    global.set $~lib/argc
    local.get $6
    local.get $7
    local.get $3
    call_indirect (type $FUNCSIG$idd)
    i32.const 0
    i32.lt_s
    if
     local.get $5
     i32.const 5
     i32.shr_s
     i32.const 2
     i32.shl
     local.get $8
     i32.add
     local.tee $9
     local.get $9
     i32.load
     i32.const 1
     local.get $5
     i32.const 31
     i32.and
     i32.shl
     i32.xor
     i32.store
     local.get $5
     i32.const 3
     i32.shl
     local.get $0
     i32.add
     local.get $1
     i32.add
     local.get $6
     f64.store offset=8
     local.get $4
     i32.const 3
     i32.shl
     local.get $0
     i32.add
     local.get $1
     i32.add
     local.get $7
     f64.store offset=8
    end
    local.get $5
    i32.const 1
    i32.sub
    local.set $5
    br $repeat|0
   end
  end
  local.get $2
  i32.const 1
  i32.sub
  local.set $5
  loop $repeat|2
   local.get $5
   i32.const 2
   i32.ge_s
   if
    local.get $0
    local.get $1
    i32.add
    local.tee $2
    f64.load offset=8
    local.set $6
    local.get $2
    local.get $5
    i32.const 3
    i32.shl
    local.get $0
    i32.add
    local.get $1
    i32.add
    local.tee $2
    f64.load offset=8
    f64.store offset=8
    local.get $2
    local.get $6
    f64.store offset=8
    i32.const 1
    local.set $2
    loop $continue|3
     local.get $2
     i32.const 5
     i32.shr_s
     i32.const 2
     i32.shl
     local.get $8
     i32.add
     i32.load
     local.get $2
     i32.const 31
     i32.and
     i32.shr_u
     i32.const 1
     i32.and
     local.get $2
     i32.const 1
     i32.shl
     i32.add
     local.tee $4
     local.get $5
     i32.lt_s
     if
      local.get $4
      local.set $2
      br $continue|3
     end
    end
    loop $continue|4
     local.get $2
     i32.const 0
     i32.gt_s
     if
      local.get $0
      local.get $1
      i32.add
      f64.load offset=8
      local.set $6
      local.get $2
      i32.const 3
      i32.shl
      local.get $0
      i32.add
      local.get $1
      i32.add
      f64.load offset=8
      local.set $7
      i32.const 2
      global.set $~lib/argc
      local.get $6
      local.get $7
      local.get $3
      call_indirect (type $FUNCSIG$idd)
      i32.const 0
      i32.lt_s
      if
       local.get $2
       i32.const 5
       i32.shr_s
       i32.const 2
       i32.shl
       local.get $8
       i32.add
       local.tee $4
       local.get $4
       i32.load
       i32.const 1
       local.get $2
       i32.const 31
       i32.and
       i32.shl
       i32.xor
       i32.store
       local.get $2
       i32.const 3
       i32.shl
       local.get $0
       i32.add
       local.get $1
       i32.add
       local.get $6
       f64.store offset=8
       local.get $0
       local.get $1
       i32.add
       local.get $7
       f64.store offset=8
      end
      local.get $2
      i32.const 1
      i32.shr_s
      local.set $2
      br $continue|4
     end
    end
    local.get $5
    i32.const 1
    i32.sub
    local.set $5
    br $repeat|2
   end
  end
  local.get $0
  i32.const 8
  i32.add
  local.get $1
  i32.add
  local.tee $2
  f64.load offset=8
  local.set $6
  local.get $2
  local.get $0
  local.get $1
  i32.add
  local.tee $0
  f64.load offset=8
  f64.store offset=8
  local.get $0
  local.get $6
  f64.store offset=8
 )
 (func $~lib/typedarray/Float64Array#sort (; 21 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 f64)
  local.get $0
  i32.load offset=4
  local.set $2
  block $~lib/internal/typedarray/SORT<~lib/typedarray/Float64Array,f64>|inlined.0
   local.get $0
   i32.load offset=8
   i32.const 3
   i32.shr_u
   local.tee $3
   i32.const 1
   i32.le_s
   br_if $~lib/internal/typedarray/SORT<~lib/typedarray/Float64Array,f64>|inlined.0
   local.get $0
   i32.load
   local.set $0
   local.get $3
   i32.const 2
   i32.eq
   if
    local.get $0
    i32.const 8
    i32.add
    local.get $2
    i32.add
    f64.load offset=8
    local.set $4
    local.get $0
    local.get $2
    i32.add
    f64.load offset=8
    local.set $5
    i32.const 2
    global.set $~lib/argc
    local.get $4
    local.get $5
    local.get $1
    call_indirect (type $FUNCSIG$idd)
    i32.const 0
    i32.lt_s
    if
     local.get $0
     i32.const 8
     i32.add
     local.get $2
     i32.add
     local.get $5
     f64.store offset=8
     local.get $0
     local.get $2
     i32.add
     local.get $4
     f64.store offset=8
    end
    br $~lib/internal/typedarray/SORT<~lib/typedarray/Float64Array,f64>|inlined.0
   end
   local.get $3
   i32.const 256
   i32.lt_s
   if
    local.get $0
    local.get $2
    local.get $3
    local.get $1
    call $~lib/internal/sort/insertionSort<f64>
   else    
    local.get $0
    local.get $2
    local.get $3
    local.get $1
    call $~lib/internal/sort/weakHeapSort<f64>
   end
  end
 )
 (func $~lib/internal/sort/COMPARATOR<f64>~anonymous|0 (; 22 ;) (type $FUNCSIG$idd) (param $0 f64) (param $1 f64) (result i32)
  (local $2 i64)
  (local $3 i64)
  local.get $0
  i64.reinterpret_f64
  local.tee $2
  local.get $2
  i64.const 63
  i64.shr_s
  i64.const 1
  i64.shr_u
  i64.xor
  local.tee $2
  local.get $1
  i64.reinterpret_f64
  local.tee $3
  local.get $3
  i64.const 63
  i64.shr_s
  i64.const 1
  i64.shr_u
  i64.xor
  local.tee $3
  i64.gt_s
  local.get $2
  local.get $3
  i64.lt_s
  i32.sub
 )
 (func $~lib/internal/typedarray/TypedArray<f64>#__get (; 23 ;) (type $FUNCSIG$dii) (param $0 i32) (param $1 i32) (result f64)
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
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  i32.add
  f64.load offset=8
 )
 (func $~lib/internal/typedarray/TypedArray<u8>#__set (; 24 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
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
  local.get $0
  i32.load offset=4
  local.get $1
  local.get $0
  i32.load
  i32.add
  i32.add
  local.get $2
  i32.store8 offset=8
 )
 (func $~lib/typedarray/Uint8ClampedArray#__set (; 25 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  local.get $1
  i32.const 255
  local.get $2
  i32.sub
  i32.const 31
  i32.shr_s
  local.get $2
  i32.or
  local.get $2
  i32.const 31
  i32.shr_s
  i32.const -1
  i32.xor
  i32.and
  call $~lib/internal/typedarray/TypedArray<u8>#__set
 )
 (func $~lib/internal/typedarray/TypedArray<u8>#__get (; 26 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
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
  local.get $0
  i32.load offset=4
  local.get $1
  local.get $0
  i32.load
  i32.add
  i32.add
  i32.load8_u offset=8
 )
 (func $~lib/typedarray/Int8Array#fill (; 27 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load
  local.set $5
  local.get $0
  i32.load offset=4
  local.set $6
  local.get $0
  i32.load offset=8
  local.set $4
  local.get $2
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $2
   local.get $4
   i32.add
   local.tee $0
   i32.const 0
   local.get $0
   i32.const 0
   i32.gt_s
   select
  else   
   local.get $2
   local.get $4
   local.get $2
   local.get $4
   i32.lt_s
   select
  end
  local.tee $2
  local.get $3
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $3
   local.get $4
   i32.add
   local.tee $0
   i32.const 0
   local.get $0
   i32.const 0
   i32.gt_s
   select
  else   
   local.get $3
   local.get $4
   local.get $3
   local.get $4
   i32.lt_s
   select
  end
  local.tee $0
  i32.lt_s
  if
   local.get $2
   local.get $5
   i32.add
   local.get $6
   i32.add
   i32.const 8
   i32.add
   local.get $1
   local.get $0
   local.get $2
   i32.sub
   call $~lib/internal/memory/memset
  end
 )
 (func $~lib/internal/typedarray/TypedArray<i8>#__get (; 28 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
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
  local.get $0
  i32.load offset=4
  local.get $1
  local.get $0
  i32.load
  i32.add
  i32.add
  i32.load8_s offset=8
 )
 (func $std/typedarray/isInt8ArrayEqual (; 29 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=8
  local.get $1
  i32.load offset=4
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load offset=8
  local.set $3
  loop $repeat|0
   local.get $2
   local.get $3
   i32.lt_s
   if
    local.get $0
    local.get $2
    call $~lib/internal/typedarray/TypedArray<i8>#__get
    i32.const 255
    i32.and
    local.get $2
    local.get $1
    i32.load
    local.tee $4
    i32.load
    i32.lt_u
    if (result i32)
     local.get $2
     local.get $4
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
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $repeat|0
    end
    unreachable
   end
  end
  i32.const 1
 )
 (func $~lib/typedarray/Int8Array#fill|trampoline (; 30 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
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
   i32.const 2147483647
   local.set $3
  end
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  call $~lib/typedarray/Int8Array#fill
 )
 (func $~lib/typedarray/Int8Array#subarray (; 31 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $0
  i32.load offset=8
  local.set $3
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
   local.get $3
   i32.add
   local.tee $1
   i32.const 0
   local.get $1
   i32.const 0
   i32.gt_s
   select
  else   
   local.get $1
   local.get $3
   local.get $1
   local.get $3
   i32.lt_s
   select
  end
  local.set $1
  local.get $2
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $2
   local.get $3
   i32.add
   local.tee $2
   local.get $1
   local.get $2
   local.get $1
   i32.gt_s
   select
  else   
   local.get $2
   local.get $3
   local.get $2
   local.get $3
   i32.lt_s
   select
   local.tee $2
   local.get $1
   local.get $2
   local.get $1
   i32.gt_s
   select
  end
  local.set $3
  i32.const 12
  call $~lib/allocator/arena/__memory_allocate
  local.tee $2
  local.get $0
  i32.load
  i32.store
  local.get $2
  local.get $1
  local.get $0
  i32.load offset=4
  i32.add
  i32.store offset=4
  local.get $2
  local.get $3
  local.get $1
  i32.sub
  i32.store offset=8
  local.get $2
 )
 (func $~lib/typedarray/Int32Array#fill (; 32 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  local.set $4
  local.get $0
  i32.load
  local.set $5
  local.get $0
  i32.load offset=4
  local.set $6
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  local.set $1
  local.get $2
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
   local.get $2
   i32.add
   local.tee $0
   i32.const 0
   local.get $0
   i32.const 0
   i32.gt_s
   select
  else   
   local.get $2
   local.get $1
   local.get $2
   local.get $1
   i32.lt_s
   select
  end
  local.set $0
  local.get $3
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
   local.get $3
   i32.add
   local.tee $1
   i32.const 0
   local.get $1
   i32.const 0
   i32.gt_s
   select
  else   
   local.get $3
   local.get $1
   local.get $3
   local.get $1
   i32.lt_s
   select
  end
  local.set $1
  loop $repeat|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $0
    i32.const 2
    i32.shl
    local.get $5
    i32.add
    local.get $6
    i32.add
    local.get $4
    i32.store offset=8
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $repeat|0
   end
  end
 )
 (func $std/typedarray/isInt32ArrayEqual (; 33 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.load offset=4
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ne
  if
   i32.const 0
   return
  end
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  local.set $3
  loop $repeat|0
   local.get $2
   local.get $3
   i32.lt_s
   if
    local.get $0
    local.get $2
    call $~lib/internal/typedarray/TypedArray<i32>#__get
    local.get $2
    local.get $1
    i32.load
    local.tee $4
    i32.load
    i32.const 2
    i32.shr_u
    i32.lt_u
    if (result i32)
     local.get $2
     i32.const 2
     i32.shl
     local.get $4
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
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $repeat|0
    end
    unreachable
   end
  end
  i32.const 1
 )
 (func $~lib/typedarray/Int32Array#fill|trampoline (; 34 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
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
   i32.const 2147483647
   local.set $3
  end
  local.get $0
  local.get $1
  local.get $2
  local.get $3
  call $~lib/typedarray/Int32Array#fill
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 (; 35 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $~lib/typedarray/Int8Array#reduce<i8> (; 36 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=8
  local.set $3
  local.get $0
  i32.load
  local.set $4
  local.get $0
  i32.load offset=4
  local.set $5
  loop $repeat|0
   local.get $1
   local.get $3
   i32.lt_s
   if
    i32.const 4
    global.set $~lib/argc
    local.get $2
    local.get $1
    local.get $4
    i32.add
    local.get $5
    i32.add
    i32.load8_s offset=8
    local.get $1
    local.get $0
    i32.const 2
    call_indirect (type $FUNCSIG$iiiii)
    local.set $2
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|0
   end
  end
  local.get $2
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8> (; 37 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  local.tee $0
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
  local.get $0
  i32.load offset=8
  local.set $4
  local.get $0
  i32.load
  local.set $5
  local.get $0
  i32.load offset=4
  local.set $6
  loop $repeat|0
   local.get $2
   local.get $4
   i32.lt_s
   if
    i32.const 4
    global.set $~lib/argc
    local.get $3
    local.get $2
    local.get $5
    i32.add
    local.get $6
    i32.add
    i32.load8_u offset=8
    local.get $2
    local.get $0
    local.get $1
    call_indirect (type $FUNCSIG$iiiii)
    local.set $3
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $repeat|0
   end
  end
  local.get $3
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Uint8Array,u8> (; 39 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  local.tee $0
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
 (func $std/typedarray/testReduce<~lib/typedarray/Uint8ClampedArray,u8> (; 40 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.tee $0
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
 (func $~lib/internal/typedarray/TypedArray<i16>#__set (; 41 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.add
  local.get $2
  i32.store16 offset=8
 )
 (func $~lib/typedarray/Int16Array#reduce<i16> (; 42 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  local.set $3
  local.get $0
  i32.load
  local.set $4
  local.get $0
  i32.load offset=4
  local.set $5
  loop $repeat|0
   local.get $1
   local.get $3
   i32.lt_s
   if
    i32.const 4
    global.set $~lib/argc
    local.get $2
    local.get $1
    i32.const 1
    i32.shl
    local.get $4
    i32.add
    local.get $5
    i32.add
    i32.load16_s offset=8
    local.get $1
    local.get $0
    i32.const 5
    call_indirect (type $FUNCSIG$iiiii)
    local.set $2
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|0
   end
  end
  local.get $2
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Int16Array,i16> (; 43 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.tee $0
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
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  local.set $3
  local.get $0
  i32.load
  local.set $4
  local.get $0
  i32.load offset=4
  local.set $5
  loop $repeat|0
   local.get $1
   local.get $3
   i32.lt_s
   if
    i32.const 4
    global.set $~lib/argc
    local.get $2
    local.get $1
    i32.const 1
    i32.shl
    local.get $4
    i32.add
    local.get $5
    i32.add
    i32.load16_u offset=8
    local.get $1
    local.get $0
    i32.const 6
    call_indirect (type $FUNCSIG$iiiii)
    local.set $2
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|0
   end
  end
  local.get $2
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Uint16Array,u16> (; 45 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.tee $0
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
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  local.set $4
  local.get $0
  i32.load
  local.set $5
  local.get $0
  i32.load offset=4
  local.set $6
  loop $repeat|0
   local.get $2
   local.get $4
   i32.lt_s
   if
    i32.const 4
    global.set $~lib/argc
    local.get $3
    local.get $2
    i32.const 2
    i32.shl
    local.get $5
    i32.add
    local.get $6
    i32.add
    i32.load offset=8
    local.get $2
    local.get $0
    local.get $1
    call_indirect (type $FUNCSIG$iiiii)
    local.set $3
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $repeat|0
   end
  end
  local.get $3
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Int32Array,i32> (; 47 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.tee $0
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
 (func $std/typedarray/testReduce<~lib/typedarray/Uint32Array,u32> (; 48 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.tee $0
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
 (func $~lib/internal/typedarray/TypedArray<i64>#__set (; 49 ;) (type $FUNCSIG$viij) (param $0 i32) (param $1 i32) (param $2 i64)
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
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  i32.add
  local.get $2
  i64.store offset=8
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Int64Array,i64>~anonymous|0 (; 50 ;) (type $FUNCSIG$jjjii) (param $0 i64) (param $1 i64) (param $2 i32) (param $3 i32) (result i64)
  local.get $0
  local.get $1
  i64.add
 )
 (func $~lib/typedarray/Int64Array#reduce<i64> (; 51 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  local.set $4
  local.get $0
  i32.load
  local.set $5
  local.get $0
  i32.load offset=4
  local.set $6
  loop $repeat|0
   local.get $2
   local.get $4
   i32.lt_s
   if
    i32.const 4
    global.set $~lib/argc
    local.get $3
    local.get $2
    i32.const 3
    i32.shl
    local.get $5
    i32.add
    local.get $6
    i32.add
    i64.load offset=8
    local.get $2
    local.get $0
    local.get $1
    call_indirect (type $FUNCSIG$jjjii)
    local.set $3
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $repeat|0
   end
  end
  local.get $3
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Int64Array,i64> (; 52 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $0
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
 (func $std/typedarray/testReduce<~lib/typedarray/Uint64Array,u64> (; 53 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $0
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
 (func $~lib/internal/typedarray/TypedArray<f32>#__set (; 54 ;) (type $FUNCSIG$viif) (param $0 i32) (param $1 i32) (param $2 f32)
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
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.add
  local.get $2
  f32.store offset=8
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Float32Array,f32>~anonymous|0 (; 55 ;) (type $FUNCSIG$fffii) (param $0 f32) (param $1 f32) (param $2 i32) (param $3 i32) (result f32)
  local.get $0
  local.get $1
  f32.add
 )
 (func $~lib/typedarray/Float32Array#reduce<f32> (; 56 ;) (type $FUNCSIG$fi) (param $0 i32) (result f32)
  (local $1 i32)
  (local $2 f32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  local.set $3
  local.get $0
  i32.load
  local.set $4
  local.get $0
  i32.load offset=4
  local.set $5
  loop $repeat|0
   local.get $1
   local.get $3
   i32.lt_s
   if
    i32.const 4
    global.set $~lib/argc
    local.get $2
    local.get $1
    i32.const 2
    i32.shl
    local.get $4
    i32.add
    local.get $5
    i32.add
    f32.load offset=8
    local.get $1
    local.get $0
    i32.const 11
    call_indirect (type $FUNCSIG$fffii)
    local.set $2
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|0
   end
  end
  local.get $2
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Float32Array,f32> (; 57 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.tee $0
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
 (func $std/typedarray/testReduce<~lib/typedarray/Float64Array,f64>~anonymous|0 (; 58 ;) (type $FUNCSIG$dddii) (param $0 f64) (param $1 f64) (param $2 i32) (param $3 i32) (result f64)
  local.get $0
  local.get $1
  f64.add
 )
 (func $~lib/typedarray/Float64Array#reduce<f64> (; 59 ;) (type $FUNCSIG$di) (param $0 i32) (result f64)
  (local $1 i32)
  (local $2 f64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  local.set $3
  local.get $0
  i32.load
  local.set $4
  local.get $0
  i32.load offset=4
  local.set $5
  loop $repeat|0
   local.get $1
   local.get $3
   i32.lt_s
   if
    i32.const 4
    global.set $~lib/argc
    local.get $2
    local.get $1
    i32.const 3
    i32.shl
    local.get $4
    i32.add
    local.get $5
    i32.add
    f64.load offset=8
    local.get $1
    local.get $0
    i32.const 12
    call_indirect (type $FUNCSIG$dddii)
    local.set $2
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|0
   end
  end
  local.get $2
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Float64Array,f64> (; 60 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $0
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
  local.get $0
  i32.load
  local.set $3
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.sub
  local.set $1
  loop $repeat|0
   local.get $1
   i32.const 0
   i32.ge_s
   if
    i32.const 4
    global.set $~lib/argc
    local.get $2
    local.get $1
    local.get $3
    i32.add
    local.get $4
    i32.add
    i32.load8_s offset=8
    local.get $1
    local.get $0
    i32.const 13
    call_indirect (type $FUNCSIG$iiiii)
    local.set $2
    local.get $1
    i32.const 1
    i32.sub
    local.set $1
    br $repeat|0
   end
  end
  local.get $2
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Int8Array,i8> (; 62 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  local.tee $0
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
  local.get $0
  i32.load
  local.set $4
  local.get $0
  i32.load offset=4
  local.set $5
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.sub
  local.set $2
  loop $repeat|0
   local.get $2
   i32.const 0
   i32.ge_s
   if
    i32.const 4
    global.set $~lib/argc
    local.get $3
    local.get $2
    local.get $4
    i32.add
    local.get $5
    i32.add
    i32.load8_u offset=8
    local.get $2
    local.get $0
    local.get $1
    call_indirect (type $FUNCSIG$iiiii)
    local.set $3
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $repeat|0
   end
  end
  local.get $3
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Uint8Array,u8> (; 64 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  local.tee $0
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
 (func $std/typedarray/testReduceRight<~lib/typedarray/Uint8ClampedArray,u8> (; 65 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.tee $0
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
  local.get $0
  i32.load
  local.set $3
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  i32.const 1
  i32.sub
  local.set $1
  loop $repeat|0
   local.get $1
   i32.const 0
   i32.ge_s
   if
    i32.const 4
    global.set $~lib/argc
    local.get $2
    local.get $1
    i32.const 1
    i32.shl
    local.get $3
    i32.add
    local.get $4
    i32.add
    i32.load16_s offset=8
    local.get $1
    local.get $0
    i32.const 16
    call_indirect (type $FUNCSIG$iiiii)
    local.set $2
    local.get $1
    i32.const 1
    i32.sub
    local.set $1
    br $repeat|0
   end
  end
  local.get $2
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Int16Array,i16> (; 67 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.tee $0
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
  local.get $0
  i32.load
  local.set $3
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  i32.const 1
  i32.sub
  local.set $1
  loop $repeat|0
   local.get $1
   i32.const 0
   i32.ge_s
   if
    i32.const 4
    global.set $~lib/argc
    local.get $2
    local.get $1
    i32.const 1
    i32.shl
    local.get $3
    i32.add
    local.get $4
    i32.add
    i32.load16_u offset=8
    local.get $1
    local.get $0
    i32.const 17
    call_indirect (type $FUNCSIG$iiiii)
    local.set $2
    local.get $1
    i32.const 1
    i32.sub
    local.set $1
    br $repeat|0
   end
  end
  local.get $2
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Uint16Array,u16> (; 69 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.tee $0
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
  local.get $0
  i32.load
  local.set $4
  local.get $0
  i32.load offset=4
  local.set $5
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.const 1
  i32.sub
  local.set $2
  loop $repeat|0
   local.get $2
   i32.const 0
   i32.ge_s
   if
    i32.const 4
    global.set $~lib/argc
    local.get $3
    local.get $2
    i32.const 2
    i32.shl
    local.get $4
    i32.add
    local.get $5
    i32.add
    i32.load offset=8
    local.get $2
    local.get $0
    local.get $1
    call_indirect (type $FUNCSIG$iiiii)
    local.set $3
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $repeat|0
   end
  end
  local.get $3
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Int32Array,i32> (; 71 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.tee $0
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
 (func $std/typedarray/testReduceRight<~lib/typedarray/Uint32Array,u32> (; 72 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.tee $0
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
  local.get $0
  i32.load
  local.set $4
  local.get $0
  i32.load offset=4
  local.set $5
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.const 1
  i32.sub
  local.set $2
  loop $repeat|0
   local.get $2
   i32.const 0
   i32.ge_s
   if
    i32.const 4
    global.set $~lib/argc
    local.get $3
    local.get $2
    i32.const 3
    i32.shl
    local.get $4
    i32.add
    local.get $5
    i32.add
    i64.load offset=8
    local.get $2
    local.get $0
    local.get $1
    call_indirect (type $FUNCSIG$jjjii)
    local.set $3
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $repeat|0
   end
  end
  local.get $3
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Int64Array,i64> (; 74 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $0
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
 (func $std/typedarray/testReduceRight<~lib/typedarray/Uint64Array,u64> (; 75 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $0
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
  local.get $0
  i32.load
  local.set $3
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.const 1
  i32.sub
  local.set $1
  loop $repeat|0
   local.get $1
   i32.const 0
   i32.ge_s
   if
    i32.const 4
    global.set $~lib/argc
    local.get $2
    local.get $1
    i32.const 2
    i32.shl
    local.get $3
    i32.add
    local.get $4
    i32.add
    f32.load offset=8
    local.get $1
    local.get $0
    i32.const 22
    call_indirect (type $FUNCSIG$fffii)
    local.set $2
    local.get $1
    i32.const 1
    i32.sub
    local.set $1
    br $repeat|0
   end
  end
  local.get $2
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Float32Array,f32> (; 77 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.tee $0
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
  local.get $0
  i32.load
  local.set $3
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.const 1
  i32.sub
  local.set $1
  loop $repeat|0
   local.get $1
   i32.const 0
   i32.ge_s
   if
    i32.const 4
    global.set $~lib/argc
    local.get $2
    local.get $1
    i32.const 3
    i32.shl
    local.get $3
    i32.add
    local.get $4
    i32.add
    f64.load offset=8
    local.get $1
    local.get $0
    i32.const 23
    call_indirect (type $FUNCSIG$dddii)
    local.set $2
    local.get $1
    i32.const 1
    i32.sub
    local.set $1
    br $repeat|0
   end
  end
  local.get $2
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Float64Array,f64> (; 79 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $0
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
 (func $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>~anonymous|0 (; 80 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  local.get $0
  i32.mul
 )
 (func $~lib/typedarray/Int8Array#map (; 81 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  i32.load
  local.set $2
  local.get $0
  i32.load offset=4
  local.set $3
  i32.const 0
  local.get $0
  i32.load offset=8
  local.tee $4
  call $~lib/typedarray/Int8Array#constructor
  local.tee $5
  i32.load
  local.set $6
  loop $repeat|0
   local.get $1
   local.get $4
   i32.lt_s
   if
    i32.const 3
    global.set $~lib/argc
    local.get $1
    local.get $6
    i32.add
    local.get $1
    local.get $2
    i32.add
    local.get $3
    i32.add
    i32.load8_s offset=8
    local.get $1
    local.get $0
    i32.const 24
    call_indirect (type $FUNCSIG$iiii)
    i32.store8 offset=8
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|0
   end
  end
  local.get $5
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8> (; 82 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  local.tee $0
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
  call $~lib/typedarray/Int8Array#map
  local.tee $0
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
  local.get $0
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
  local.get $0
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
  local.get $0
  i32.load
  local.set $2
  local.get $0
  i32.load offset=4
  local.set $3
  i32.const 0
  local.get $0
  i32.load offset=8
  local.tee $4
  call $~lib/typedarray/Int8Array#constructor
  local.tee $5
  i32.load
  local.set $6
  loop $repeat|0
   local.get $1
   local.get $4
   i32.lt_s
   if
    i32.const 3
    global.set $~lib/argc
    local.get $1
    local.get $6
    i32.add
    local.get $1
    local.get $2
    i32.add
    local.get $3
    i32.add
    i32.load8_u offset=8
    local.get $1
    local.get $0
    i32.const 25
    call_indirect (type $FUNCSIG$iiii)
    i32.store8 offset=8
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|0
   end
  end
  local.get $5
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Uint8Array,u8> (; 84 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  local.tee $0
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
  call $~lib/typedarray/Uint8Array#map
  local.tee $0
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
  local.get $0
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
  local.get $0
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
  local.get $0
  i32.load
  local.set $2
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $0
  i32.load offset=8
  local.tee $4
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.tee $5
  i32.load
  local.set $6
  loop $repeat|0
   local.get $1
   local.get $4
   i32.lt_s
   if
    i32.const 3
    global.set $~lib/argc
    local.get $1
    local.get $6
    i32.add
    local.get $1
    local.get $2
    i32.add
    local.get $3
    i32.add
    i32.load8_u offset=8
    local.get $1
    local.get $0
    i32.const 26
    call_indirect (type $FUNCSIG$iiii)
    i32.store8 offset=8
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|0
   end
  end
  local.get $5
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Uint8ClampedArray,u8> (; 86 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.tee $0
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
  call $~lib/typedarray/Uint8ClampedArray#map
  local.tee $0
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
  local.get $0
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
  local.get $0
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
  local.get $0
  i32.load
  local.set $2
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  local.tee $4
  call $~lib/typedarray/Int16Array#constructor
  local.tee $5
  i32.load
  local.set $6
  loop $repeat|0
   local.get $1
   local.get $4
   i32.lt_s
   if
    i32.const 3
    global.set $~lib/argc
    local.get $1
    i32.const 1
    i32.shl
    local.tee $7
    local.get $6
    i32.add
    local.get $2
    local.get $7
    i32.add
    local.get $3
    i32.add
    i32.load16_s offset=8
    local.get $1
    local.get $0
    i32.const 27
    call_indirect (type $FUNCSIG$iiii)
    i32.store16 offset=8
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|0
   end
  end
  local.get $5
 )
 (func $~lib/internal/typedarray/TypedArray<i16>#__get (; 88 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.add
  i32.load16_s offset=8
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Int16Array,i16> (; 89 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.tee $0
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
  call $~lib/typedarray/Int16Array#map
  local.tee $0
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
  local.get $0
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
  local.get $0
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
  local.get $0
  i32.load
  local.set $2
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  local.tee $4
  call $~lib/typedarray/Int16Array#constructor
  local.tee $5
  i32.load
  local.set $6
  loop $repeat|0
   local.get $1
   local.get $4
   i32.lt_s
   if
    i32.const 3
    global.set $~lib/argc
    local.get $1
    i32.const 1
    i32.shl
    local.tee $7
    local.get $6
    i32.add
    local.get $2
    local.get $7
    i32.add
    local.get $3
    i32.add
    i32.load16_u offset=8
    local.get $1
    local.get $0
    i32.const 28
    call_indirect (type $FUNCSIG$iiii)
    i32.store16 offset=8
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|0
   end
  end
  local.get $5
 )
 (func $~lib/internal/typedarray/TypedArray<u16>#__get (; 91 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.add
  i32.load16_u offset=8
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Uint16Array,u16> (; 92 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.tee $0
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
  call $~lib/typedarray/Uint16Array#map
  local.tee $0
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
  local.get $0
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
  local.get $0
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
 (func $~lib/typedarray/Int32Array#map (; 93 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.load
  local.set $3
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  local.tee $5
  call $~lib/typedarray/Int32Array#constructor
  local.tee $6
  i32.load
  local.set $7
  loop $repeat|0
   block $break|0
    local.get $2
    local.get $5
    i32.ge_s
    br_if $break|0
    i32.const 3
    global.set $~lib/argc
    local.get $7
    local.get $2
    i32.const 2
    i32.shl
    i32.add
    local.get $2
    i32.const 2
    i32.shl
    local.get $3
    i32.add
    local.get $4
    i32.add
    i32.load offset=8
    local.get $2
    local.get $0
    local.get $1
    call_indirect (type $FUNCSIG$iiii)
    i32.store offset=8
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $repeat|0
   end
  end
  local.get $6
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Int32Array,i32> (; 94 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.tee $0
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
  local.tee $0
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
  local.get $0
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
  local.get $0
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
 (func $std/typedarray/testArrayMap<~lib/typedarray/Uint32Array,u32> (; 95 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.tee $0
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
  i32.const 30
  call $~lib/typedarray/Int32Array#map
  local.tee $0
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
  local.get $0
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
  local.get $0
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
 (func $std/typedarray/testArrayMap<~lib/typedarray/Int64Array,i64>~anonymous|0 (; 96 ;) (type $FUNCSIG$jjii) (param $0 i64) (param $1 i32) (param $2 i32) (result i64)
  local.get $0
  local.get $0
  i64.mul
 )
 (func $~lib/typedarray/Int64Array#map (; 97 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.load
  local.set $3
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  local.tee $5
  call $~lib/typedarray/Int64Array#constructor
  local.tee $6
  i32.load
  local.set $7
  loop $repeat|0
   block $break|0
    local.get $2
    local.get $5
    i32.ge_s
    br_if $break|0
    i32.const 3
    global.set $~lib/argc
    local.get $7
    local.get $2
    i32.const 3
    i32.shl
    i32.add
    local.get $2
    i32.const 3
    i32.shl
    local.get $3
    i32.add
    local.get $4
    i32.add
    i64.load offset=8
    local.get $2
    local.get $0
    local.get $1
    call_indirect (type $FUNCSIG$jjii)
    i64.store offset=8
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $repeat|0
   end
  end
  local.get $6
 )
 (func $~lib/internal/typedarray/TypedArray<i64>#__get (; 98 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
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
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  i32.add
  i64.load offset=8
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Int64Array,i64> (; 99 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $0
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
  local.tee $0
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
  local.get $0
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
  local.get $0
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
 (func $std/typedarray/testArrayMap<~lib/typedarray/Uint64Array,u64> (; 100 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $0
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
  i32.const 32
  call $~lib/typedarray/Int64Array#map
  local.tee $0
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
  local.get $0
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
  local.get $0
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
 (func $std/typedarray/testArrayMap<~lib/typedarray/Float32Array,f32>~anonymous|0 (; 101 ;) (type $FUNCSIG$ffii) (param $0 f32) (param $1 i32) (param $2 i32) (result f32)
  local.get $0
  local.get $0
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
  local.get $0
  i32.load
  local.set $2
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  local.tee $4
  call $~lib/typedarray/Int32Array#constructor
  local.tee $5
  i32.load
  local.set $6
  loop $repeat|0
   local.get $1
   local.get $4
   i32.lt_s
   if
    i32.const 3
    global.set $~lib/argc
    local.get $1
    i32.const 2
    i32.shl
    local.tee $7
    local.get $6
    i32.add
    local.get $2
    local.get $7
    i32.add
    local.get $3
    i32.add
    f32.load offset=8
    local.get $1
    local.get $0
    i32.const 33
    call_indirect (type $FUNCSIG$ffii)
    f32.store offset=8
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|0
   end
  end
  local.get $5
 )
 (func $~lib/internal/typedarray/TypedArray<f32>#__get (; 103 ;) (type $FUNCSIG$fii) (param $0 i32) (param $1 i32) (result f32)
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
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.add
  f32.load offset=8
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Float32Array,f32> (; 104 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.tee $0
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
  call $~lib/typedarray/Float32Array#map
  local.tee $0
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
  local.get $0
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
  local.get $0
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
 (func $std/typedarray/testArrayMap<~lib/typedarray/Float64Array,f64>~anonymous|0 (; 105 ;) (type $FUNCSIG$ddii) (param $0 f64) (param $1 i32) (param $2 i32) (result f64)
  local.get $0
  local.get $0
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
  local.get $0
  i32.load
  local.set $2
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  local.tee $4
  call $~lib/typedarray/Int64Array#constructor
  local.tee $5
  i32.load
  local.set $6
  loop $repeat|0
   local.get $1
   local.get $4
   i32.lt_s
   if
    i32.const 3
    global.set $~lib/argc
    local.get $1
    i32.const 3
    i32.shl
    local.tee $7
    local.get $6
    i32.add
    local.get $2
    local.get $7
    i32.add
    local.get $3
    i32.add
    f64.load offset=8
    local.get $1
    local.get $0
    i32.const 34
    call_indirect (type $FUNCSIG$ddii)
    f64.store offset=8
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|0
   end
  end
  local.get $5
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Float64Array,f64> (; 107 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $0
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
  call $~lib/typedarray/Float64Array#map
  local.tee $0
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
  local.get $0
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
  local.get $0
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
 (func $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|0 (; 108 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 255
  i32.and
  i32.const 2
  i32.eq
 )
 (func $~lib/typedarray/Int8Array#some (; 109 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/SOME<~lib/typedarray/Int8Array,i8>|inlined.0 (result i32)
   local.get $0
   i32.load offset=8
   local.set $3
   local.get $0
   i32.load
   local.set $4
   local.get $0
   i32.load offset=4
   local.set $5
   loop $repeat|0
    block $break|0
     local.get $2
     local.get $3
     i32.ge_s
     br_if $break|0
     i32.const 3
     global.set $~lib/argc
     i32.const 1
     local.get $2
     local.get $4
     i32.add
     local.get $5
     i32.add
     i32.load8_s offset=8
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $FUNCSIG$iiii)
     br_if $~lib/internal/typedarray/SOME<~lib/typedarray/Int8Array,i8>|inlined.0
     drop
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $repeat|0
    end
   end
   i32.const 0
  end
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|1 (; 110 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 255
  i32.and
  i32.eqz
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8> (; 111 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  local.tee $0
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
  local.get $0
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
 (func $~lib/typedarray/Uint8Array#some (; 112 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/SOME<~lib/typedarray/Uint8Array,u8>|inlined.0 (result i32)
   local.get $0
   i32.load offset=8
   local.set $3
   local.get $0
   i32.load
   local.set $4
   local.get $0
   i32.load offset=4
   local.set $5
   loop $repeat|0
    block $break|0
     local.get $2
     local.get $3
     i32.ge_s
     br_if $break|0
     i32.const 3
     global.set $~lib/argc
     i32.const 1
     local.get $2
     local.get $4
     i32.add
     local.get $5
     i32.add
     i32.load8_u offset=8
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $FUNCSIG$iiii)
     br_if $~lib/internal/typedarray/SOME<~lib/typedarray/Uint8Array,u8>|inlined.0
     drop
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $repeat|0
    end
   end
   i32.const 0
  end
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Uint8Array,u8> (; 113 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  local.tee $0
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
  if
   i32.const 0
   i32.const 8
   i32.const 338
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Uint8ClampedArray,u8> (; 114 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.tee $0
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
  local.get $0
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
 (func $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|0 (; 115 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 65535
  i32.and
  i32.const 2
  i32.eq
 )
 (func $~lib/typedarray/Int16Array#some (; 116 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/SOME<~lib/typedarray/Int16Array,i16>|inlined.0 (result i32)
   local.get $0
   i32.load offset=8
   i32.const 1
   i32.shr_u
   local.set $3
   local.get $0
   i32.load
   local.set $4
   local.get $0
   i32.load offset=4
   local.set $5
   loop $repeat|0
    block $break|0
     local.get $2
     local.get $3
     i32.ge_s
     br_if $break|0
     i32.const 3
     global.set $~lib/argc
     i32.const 1
     local.get $2
     i32.const 1
     i32.shl
     local.get $4
     i32.add
     local.get $5
     i32.add
     i32.load16_s offset=8
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $FUNCSIG$iiii)
     br_if $~lib/internal/typedarray/SOME<~lib/typedarray/Int16Array,i16>|inlined.0
     drop
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $repeat|0
    end
   end
   i32.const 0
  end
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|1 (; 117 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 65535
  i32.and
  i32.eqz
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16> (; 118 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.tee $0
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
  if
   i32.const 0
   i32.const 8
   i32.const 338
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Uint16Array#some (; 119 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/SOME<~lib/typedarray/Uint16Array,u16>|inlined.0 (result i32)
   local.get $0
   i32.load offset=8
   i32.const 1
   i32.shr_u
   local.set $3
   local.get $0
   i32.load
   local.set $4
   local.get $0
   i32.load offset=4
   local.set $5
   loop $repeat|0
    block $break|0
     local.get $2
     local.get $3
     i32.ge_s
     br_if $break|0
     i32.const 3
     global.set $~lib/argc
     i32.const 1
     local.get $2
     i32.const 1
     i32.shl
     local.get $4
     i32.add
     local.get $5
     i32.add
     i32.load16_u offset=8
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $FUNCSIG$iiii)
     br_if $~lib/internal/typedarray/SOME<~lib/typedarray/Uint16Array,u16>|inlined.0
     drop
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $repeat|0
    end
   end
   i32.const 0
  end
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Uint16Array,u16> (; 120 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.tee $0
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
  local.get $0
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
 (func $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|0 (; 121 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 2
  i32.eq
 )
 (func $~lib/typedarray/Int32Array#some (; 122 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/SOME<~lib/typedarray/Int32Array,i32>|inlined.0 (result i32)
   local.get $0
   i32.load offset=8
   i32.const 2
   i32.shr_u
   local.set $3
   local.get $0
   i32.load
   local.set $4
   local.get $0
   i32.load offset=4
   local.set $5
   loop $repeat|0
    block $break|0
     local.get $2
     local.get $3
     i32.ge_s
     br_if $break|0
     i32.const 3
     global.set $~lib/argc
     i32.const 1
     local.get $2
     i32.const 2
     i32.shl
     local.get $4
     i32.add
     local.get $5
     i32.add
     i32.load offset=8
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $FUNCSIG$iiii)
     br_if $~lib/internal/typedarray/SOME<~lib/typedarray/Int32Array,i32>|inlined.0
     drop
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $repeat|0
    end
   end
   i32.const 0
  end
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|1 (; 123 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.eqz
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32> (; 124 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.tee $0
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
  if
   i32.const 0
   i32.const 8
   i32.const 338
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Uint32Array,u32> (; 125 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.tee $0
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
  local.get $0
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
 (func $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|0 (; 126 ;) (type $FUNCSIG$ijii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i64.const 2
  i64.eq
 )
 (func $~lib/typedarray/Int64Array#some (; 127 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/SOME<~lib/typedarray/Int64Array,i64>|inlined.0 (result i32)
   local.get $0
   i32.load offset=8
   i32.const 3
   i32.shr_u
   local.set $3
   local.get $0
   i32.load
   local.set $4
   local.get $0
   i32.load offset=4
   local.set $5
   loop $repeat|0
    block $break|0
     local.get $2
     local.get $3
     i32.ge_s
     br_if $break|0
     i32.const 3
     global.set $~lib/argc
     i32.const 1
     local.get $2
     i32.const 3
     i32.shl
     local.get $4
     i32.add
     local.get $5
     i32.add
     i64.load offset=8
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $FUNCSIG$ijii)
     br_if $~lib/internal/typedarray/SOME<~lib/typedarray/Int64Array,i64>|inlined.0
     drop
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $repeat|0
    end
   end
   i32.const 0
  end
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|1 (; 128 ;) (type $FUNCSIG$ijii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i64.const 0
  i64.eq
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64> (; 129 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $0
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
  if
   i32.const 0
   i32.const 8
   i32.const 338
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Uint64Array,u64> (; 130 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $0
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
  local.get $0
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
 (func $std/typedarray/testArraySome<~lib/typedarray/Float32Array,f32>~anonymous|0 (; 131 ;) (type $FUNCSIG$ifii) (param $0 f32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  f32.const 2
  f32.eq
 )
 (func $~lib/typedarray/Float32Array#some (; 132 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/SOME<~lib/typedarray/Float32Array,f32>|inlined.0 (result i32)
   local.get $0
   i32.load offset=8
   i32.const 2
   i32.shr_u
   local.set $3
   local.get $0
   i32.load
   local.set $4
   local.get $0
   i32.load offset=4
   local.set $5
   loop $repeat|0
    block $break|0
     local.get $2
     local.get $3
     i32.ge_s
     br_if $break|0
     i32.const 3
     global.set $~lib/argc
     i32.const 1
     local.get $2
     i32.const 2
     i32.shl
     local.get $4
     i32.add
     local.get $5
     i32.add
     f32.load offset=8
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $FUNCSIG$ifii)
     br_if $~lib/internal/typedarray/SOME<~lib/typedarray/Float32Array,f32>|inlined.0
     drop
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $repeat|0
    end
   end
   i32.const 0
  end
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Float32Array,f32>~anonymous|1 (; 133 ;) (type $FUNCSIG$ifii) (param $0 f32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  f32.const 0
  f32.eq
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Float32Array,f32> (; 134 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.tee $0
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
  if
   i32.const 0
   i32.const 8
   i32.const 338
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Float64Array,f64>~anonymous|0 (; 135 ;) (type $FUNCSIG$idii) (param $0 f64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  f64.const 2
  f64.eq
 )
 (func $~lib/typedarray/Float64Array#some (; 136 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/SOME<~lib/typedarray/Float64Array,f64>|inlined.0 (result i32)
   local.get $0
   i32.load offset=8
   i32.const 3
   i32.shr_u
   local.set $3
   local.get $0
   i32.load
   local.set $4
   local.get $0
   i32.load offset=4
   local.set $5
   loop $repeat|0
    block $break|0
     local.get $2
     local.get $3
     i32.ge_s
     br_if $break|0
     i32.const 3
     global.set $~lib/argc
     i32.const 1
     local.get $2
     i32.const 3
     i32.shl
     local.get $4
     i32.add
     local.get $5
     i32.add
     f64.load offset=8
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $FUNCSIG$idii)
     br_if $~lib/internal/typedarray/SOME<~lib/typedarray/Float64Array,f64>|inlined.0
     drop
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $repeat|0
    end
   end
   i32.const 0
  end
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Float64Array,f64>~anonymous|1 (; 137 ;) (type $FUNCSIG$idii) (param $0 f64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  f64.const 0
  f64.eq
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Float64Array,f64> (; 138 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $0
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
  if
   i32.const 0
   i32.const 8
   i32.const 338
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Int8Array#findIndex (; 139 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=8
  local.set $2
  local.get $0
  local.tee $3
  i32.load
  local.set $4
  local.get $0
  i32.load offset=4
  local.set $5
  i32.const 0
  local.set $0
  block $~lib/internal/typedarray/FIND_INDEX<~lib/typedarray/Int8Array,i8>|inlined.0
   loop $repeat|0
    block $break|0
     local.get $0
     local.get $2
     i32.ge_s
     br_if $break|0
     i32.const 3
     global.set $~lib/argc
     local.get $0
     local.get $4
     i32.add
     local.get $5
     i32.add
     i32.load8_s offset=8
     local.get $0
     local.get $3
     local.get $1
     call_indirect (type $FUNCSIG$iiii)
     br_if $~lib/internal/typedarray/FIND_INDEX<~lib/typedarray/Int8Array,i8>|inlined.0
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $repeat|0
    end
   end
   i32.const -1
   local.set $0
  end
  local.get $0
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int8Array,i8>~anonymous|1 (; 140 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 255
  i32.and
  i32.const 4
  i32.eq
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int8Array,i8> (; 141 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  local.tee $0
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
  i32.const 57
  call $~lib/typedarray/Int8Array#findIndex
  i32.const 1
  i32.ne
  if
   i32.const 624
   i32.const 8
   i32.const 365
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 58
  call $~lib/typedarray/Int8Array#findIndex
  i32.const -1
  i32.ne
  if
   i32.const 664
   i32.const 8
   i32.const 368
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Uint8Array#findIndex (; 142 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=8
  local.set $2
  local.get $0
  local.tee $3
  i32.load
  local.set $4
  local.get $0
  i32.load offset=4
  local.set $5
  i32.const 0
  local.set $0
  block $~lib/internal/typedarray/FIND_INDEX<~lib/typedarray/Uint8Array,u8>|inlined.0
   loop $repeat|0
    block $break|0
     local.get $0
     local.get $2
     i32.ge_s
     br_if $break|0
     i32.const 3
     global.set $~lib/argc
     local.get $0
     local.get $4
     i32.add
     local.get $5
     i32.add
     i32.load8_u offset=8
     local.get $0
     local.get $3
     local.get $1
     call_indirect (type $FUNCSIG$iiii)
     br_if $~lib/internal/typedarray/FIND_INDEX<~lib/typedarray/Uint8Array,u8>|inlined.0
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $repeat|0
    end
   end
   i32.const -1
   local.set $0
  end
  local.get $0
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint8Array,u8> (; 143 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  local.tee $0
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
  i32.const 1
  i32.ne
  if
   i32.const 624
   i32.const 8
   i32.const 365
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 60
  call $~lib/typedarray/Uint8Array#findIndex
  i32.const -1
  i32.ne
  if
   i32.const 664
   i32.const 8
   i32.const 368
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint8ClampedArray,u8> (; 144 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.tee $0
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
  call $~lib/typedarray/Uint8Array#findIndex
  i32.const 1
  i32.ne
  if
   i32.const 624
   i32.const 8
   i32.const 365
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 62
  call $~lib/typedarray/Uint8Array#findIndex
  i32.const -1
  i32.ne
  if
   i32.const 664
   i32.const 8
   i32.const 368
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Int16Array#findIndex (; 145 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  local.set $2
  local.get $0
  local.tee $3
  i32.load
  local.set $4
  local.get $0
  i32.load offset=4
  local.set $5
  i32.const 0
  local.set $0
  block $~lib/internal/typedarray/FIND_INDEX<~lib/typedarray/Int16Array,i16>|inlined.0
   loop $repeat|0
    block $break|0
     local.get $0
     local.get $2
     i32.ge_s
     br_if $break|0
     i32.const 3
     global.set $~lib/argc
     local.get $0
     i32.const 1
     i32.shl
     local.get $4
     i32.add
     local.get $5
     i32.add
     i32.load16_s offset=8
     local.get $0
     local.get $3
     local.get $1
     call_indirect (type $FUNCSIG$iiii)
     br_if $~lib/internal/typedarray/FIND_INDEX<~lib/typedarray/Int16Array,i16>|inlined.0
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $repeat|0
    end
   end
   i32.const -1
   local.set $0
  end
  local.get $0
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int16Array,i16>~anonymous|1 (; 146 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 65535
  i32.and
  i32.const 4
  i32.eq
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int16Array,i16> (; 147 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.tee $0
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
  i32.const 1
  i32.ne
  if
   i32.const 624
   i32.const 8
   i32.const 365
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 64
  call $~lib/typedarray/Int16Array#findIndex
  i32.const -1
  i32.ne
  if
   i32.const 664
   i32.const 8
   i32.const 368
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Uint16Array#findIndex (; 148 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  local.set $2
  local.get $0
  local.tee $3
  i32.load
  local.set $4
  local.get $0
  i32.load offset=4
  local.set $5
  i32.const 0
  local.set $0
  block $~lib/internal/typedarray/FIND_INDEX<~lib/typedarray/Uint16Array,u16>|inlined.0
   loop $repeat|0
    block $break|0
     local.get $0
     local.get $2
     i32.ge_s
     br_if $break|0
     i32.const 3
     global.set $~lib/argc
     local.get $0
     i32.const 1
     i32.shl
     local.get $4
     i32.add
     local.get $5
     i32.add
     i32.load16_u offset=8
     local.get $0
     local.get $3
     local.get $1
     call_indirect (type $FUNCSIG$iiii)
     br_if $~lib/internal/typedarray/FIND_INDEX<~lib/typedarray/Uint16Array,u16>|inlined.0
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $repeat|0
    end
   end
   i32.const -1
   local.set $0
  end
  local.get $0
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint16Array,u16> (; 149 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.tee $0
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
  i32.const 65
  call $~lib/typedarray/Uint16Array#findIndex
  i32.const 1
  i32.ne
  if
   i32.const 624
   i32.const 8
   i32.const 365
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 66
  call $~lib/typedarray/Uint16Array#findIndex
  i32.const -1
  i32.ne
  if
   i32.const 664
   i32.const 8
   i32.const 368
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Int32Array#findIndex (; 150 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  local.set $2
  local.get $0
  local.tee $3
  i32.load
  local.set $4
  local.get $0
  i32.load offset=4
  local.set $5
  i32.const 0
  local.set $0
  block $~lib/internal/typedarray/FIND_INDEX<~lib/typedarray/Int32Array,i32>|inlined.0
   loop $repeat|0
    block $break|0
     local.get $0
     local.get $2
     i32.ge_s
     br_if $break|0
     i32.const 3
     global.set $~lib/argc
     local.get $0
     i32.const 2
     i32.shl
     local.get $4
     i32.add
     local.get $5
     i32.add
     i32.load offset=8
     local.get $0
     local.get $3
     local.get $1
     call_indirect (type $FUNCSIG$iiii)
     br_if $~lib/internal/typedarray/FIND_INDEX<~lib/typedarray/Int32Array,i32>|inlined.0
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $repeat|0
    end
   end
   i32.const -1
   local.set $0
  end
  local.get $0
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int32Array,i32>~anonymous|1 (; 151 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 4
  i32.eq
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int32Array,i32> (; 152 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.tee $0
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
  i32.const 1
  i32.ne
  if
   i32.const 624
   i32.const 8
   i32.const 365
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 68
  call $~lib/typedarray/Int32Array#findIndex
  i32.const -1
  i32.ne
  if
   i32.const 664
   i32.const 8
   i32.const 368
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint32Array,u32> (; 153 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.tee $0
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
  i32.const 69
  call $~lib/typedarray/Int32Array#findIndex
  i32.const 1
  i32.ne
  if
   i32.const 624
   i32.const 8
   i32.const 365
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 70
  call $~lib/typedarray/Int32Array#findIndex
  i32.const -1
  i32.ne
  if
   i32.const 664
   i32.const 8
   i32.const 368
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Int64Array#findIndex (; 154 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  local.set $2
  local.get $0
  local.tee $3
  i32.load
  local.set $4
  local.get $0
  i32.load offset=4
  local.set $5
  i32.const 0
  local.set $0
  block $~lib/internal/typedarray/FIND_INDEX<~lib/typedarray/Int64Array,i64>|inlined.0
   loop $repeat|0
    block $break|0
     local.get $0
     local.get $2
     i32.ge_s
     br_if $break|0
     i32.const 3
     global.set $~lib/argc
     local.get $0
     i32.const 3
     i32.shl
     local.get $4
     i32.add
     local.get $5
     i32.add
     i64.load offset=8
     local.get $0
     local.get $3
     local.get $1
     call_indirect (type $FUNCSIG$ijii)
     br_if $~lib/internal/typedarray/FIND_INDEX<~lib/typedarray/Int64Array,i64>|inlined.0
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $repeat|0
    end
   end
   i32.const -1
   local.set $0
  end
  local.get $0
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int64Array,i64>~anonymous|1 (; 155 ;) (type $FUNCSIG$ijii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i64.const 4
  i64.eq
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int64Array,i64> (; 156 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $0
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
  i32.const 1
  i32.ne
  if
   i32.const 624
   i32.const 8
   i32.const 365
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 72
  call $~lib/typedarray/Int64Array#findIndex
  i32.const -1
  i32.ne
  if
   i32.const 664
   i32.const 8
   i32.const 368
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint64Array,u64> (; 157 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $0
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
  i32.const 73
  call $~lib/typedarray/Int64Array#findIndex
  i32.const 1
  i32.ne
  if
   i32.const 624
   i32.const 8
   i32.const 365
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 74
  call $~lib/typedarray/Int64Array#findIndex
  i32.const -1
  i32.ne
  if
   i32.const 664
   i32.const 8
   i32.const 368
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Float32Array#findIndex (; 158 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  local.set $2
  local.get $0
  local.tee $3
  i32.load
  local.set $4
  local.get $0
  i32.load offset=4
  local.set $5
  i32.const 0
  local.set $0
  block $~lib/internal/typedarray/FIND_INDEX<~lib/typedarray/Float32Array,f32>|inlined.0
   loop $repeat|0
    block $break|0
     local.get $0
     local.get $2
     i32.ge_s
     br_if $break|0
     i32.const 3
     global.set $~lib/argc
     local.get $0
     i32.const 2
     i32.shl
     local.get $4
     i32.add
     local.get $5
     i32.add
     f32.load offset=8
     local.get $0
     local.get $3
     local.get $1
     call_indirect (type $FUNCSIG$ifii)
     br_if $~lib/internal/typedarray/FIND_INDEX<~lib/typedarray/Float32Array,f32>|inlined.0
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $repeat|0
    end
   end
   i32.const -1
   local.set $0
  end
  local.get $0
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Float32Array,f32>~anonymous|1 (; 159 ;) (type $FUNCSIG$ifii) (param $0 f32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  f32.const 4
  f32.eq
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Float32Array,f32> (; 160 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.tee $0
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
  i32.const 1
  i32.ne
  if
   i32.const 624
   i32.const 8
   i32.const 365
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 76
  call $~lib/typedarray/Float32Array#findIndex
  i32.const -1
  i32.ne
  if
   i32.const 664
   i32.const 8
   i32.const 368
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Float64Array#findIndex (; 161 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  local.set $2
  local.get $0
  local.tee $3
  i32.load
  local.set $4
  local.get $0
  i32.load offset=4
  local.set $5
  i32.const 0
  local.set $0
  block $~lib/internal/typedarray/FIND_INDEX<~lib/typedarray/Float64Array,f64>|inlined.0
   loop $repeat|0
    block $break|0
     local.get $0
     local.get $2
     i32.ge_s
     br_if $break|0
     i32.const 3
     global.set $~lib/argc
     local.get $0
     i32.const 3
     i32.shl
     local.get $4
     i32.add
     local.get $5
     i32.add
     f64.load offset=8
     local.get $0
     local.get $3
     local.get $1
     call_indirect (type $FUNCSIG$idii)
     br_if $~lib/internal/typedarray/FIND_INDEX<~lib/typedarray/Float64Array,f64>|inlined.0
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $repeat|0
    end
   end
   i32.const -1
   local.set $0
  end
  local.get $0
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Float64Array,f64>~anonymous|1 (; 162 ;) (type $FUNCSIG$idii) (param $0 f64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  f64.const 4
  f64.eq
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Float64Array,f64> (; 163 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $0
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
  i32.const 1
  i32.ne
  if
   i32.const 624
   i32.const 8
   i32.const 365
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 78
  call $~lib/typedarray/Float64Array#findIndex
  i32.const -1
  i32.ne
  if
   i32.const 664
   i32.const 8
   i32.const 368
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int8Array,i8>~anonymous|0 (; 164 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 2
  i32.rem_s
  i32.eqz
 )
 (func $~lib/typedarray/Int8Array#every (; 165 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/EVERY<~lib/typedarray/Int8Array,i8>|inlined.0 (result i32)
   local.get $0
   i32.load offset=8
   local.set $3
   local.get $0
   i32.load
   local.set $4
   local.get $0
   i32.load offset=4
   local.set $5
   loop $repeat|0
    block $break|0
     local.get $2
     local.get $3
     i32.ge_s
     br_if $break|0
     i32.const 3
     global.set $~lib/argc
     local.get $2
     local.get $4
     i32.add
     local.get $5
     i32.add
     i32.load8_s offset=8
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $FUNCSIG$iiii)
     i32.eqz
     if
      i32.const 0
      br $~lib/internal/typedarray/EVERY<~lib/typedarray/Int8Array,i8>|inlined.0
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $repeat|0
    end
   end
   i32.const 1
  end
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int8Array,i8> (; 166 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  local.tee $0
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
  local.get $0
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
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint8Array,u8>~anonymous|0 (; 167 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 1
  i32.and
  i32.eqz
 )
 (func $~lib/typedarray/Uint8Array#every (; 168 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/EVERY<~lib/typedarray/Uint8Array,u8>|inlined.0 (result i32)
   local.get $0
   i32.load offset=8
   local.set $3
   local.get $0
   i32.load
   local.set $4
   local.get $0
   i32.load offset=4
   local.set $5
   loop $repeat|0
    block $break|0
     local.get $2
     local.get $3
     i32.ge_s
     br_if $break|0
     i32.const 3
     global.set $~lib/argc
     local.get $2
     local.get $4
     i32.add
     local.get $5
     i32.add
     i32.load8_u offset=8
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $FUNCSIG$iiii)
     i32.eqz
     if
      i32.const 0
      br $~lib/internal/typedarray/EVERY<~lib/typedarray/Uint8Array,u8>|inlined.0
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $repeat|0
    end
   end
   i32.const 1
  end
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint8Array,u8> (; 169 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  local.tee $0
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
  if
   i32.const 0
   i32.const 8
   i32.const 398
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint8ClampedArray,u8> (; 170 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.tee $0
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
  local.get $0
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
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int16Array,i16>~anonymous|0 (; 171 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 2
  i32.rem_s
  i32.eqz
 )
 (func $~lib/typedarray/Int16Array#every (; 172 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/EVERY<~lib/typedarray/Int16Array,i16>|inlined.0 (result i32)
   local.get $0
   i32.load offset=8
   i32.const 1
   i32.shr_u
   local.set $3
   local.get $0
   i32.load
   local.set $4
   local.get $0
   i32.load offset=4
   local.set $5
   loop $repeat|0
    block $break|0
     local.get $2
     local.get $3
     i32.ge_s
     br_if $break|0
     i32.const 3
     global.set $~lib/argc
     local.get $2
     i32.const 1
     i32.shl
     local.get $4
     i32.add
     local.get $5
     i32.add
     i32.load16_s offset=8
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $FUNCSIG$iiii)
     i32.eqz
     if
      i32.const 0
      br $~lib/internal/typedarray/EVERY<~lib/typedarray/Int16Array,i16>|inlined.0
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $repeat|0
    end
   end
   i32.const 1
  end
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int16Array,i16> (; 173 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.tee $0
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
  if
   i32.const 0
   i32.const 8
   i32.const 398
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Uint16Array#every (; 174 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/EVERY<~lib/typedarray/Uint16Array,u16>|inlined.0 (result i32)
   local.get $0
   i32.load offset=8
   i32.const 1
   i32.shr_u
   local.set $3
   local.get $0
   i32.load
   local.set $4
   local.get $0
   i32.load offset=4
   local.set $5
   loop $repeat|0
    block $break|0
     local.get $2
     local.get $3
     i32.ge_s
     br_if $break|0
     i32.const 3
     global.set $~lib/argc
     local.get $2
     i32.const 1
     i32.shl
     local.get $4
     i32.add
     local.get $5
     i32.add
     i32.load16_u offset=8
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $FUNCSIG$iiii)
     i32.eqz
     if
      i32.const 0
      br $~lib/internal/typedarray/EVERY<~lib/typedarray/Uint16Array,u16>|inlined.0
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $repeat|0
    end
   end
   i32.const 1
  end
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint16Array,u16> (; 175 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.tee $0
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
  local.get $0
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
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int32Array,i32>~anonymous|0 (; 176 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 2
  i32.rem_s
  i32.eqz
 )
 (func $~lib/typedarray/Int32Array#every (; 177 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/EVERY<~lib/typedarray/Int32Array,i32>|inlined.0 (result i32)
   local.get $0
   i32.load offset=8
   i32.const 2
   i32.shr_u
   local.set $3
   local.get $0
   i32.load
   local.set $4
   local.get $0
   i32.load offset=4
   local.set $5
   loop $repeat|0
    block $break|0
     local.get $2
     local.get $3
     i32.ge_s
     br_if $break|0
     i32.const 3
     global.set $~lib/argc
     local.get $2
     i32.const 2
     i32.shl
     local.get $4
     i32.add
     local.get $5
     i32.add
     i32.load offset=8
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $FUNCSIG$iiii)
     i32.eqz
     if
      i32.const 0
      br $~lib/internal/typedarray/EVERY<~lib/typedarray/Int32Array,i32>|inlined.0
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $repeat|0
    end
   end
   i32.const 1
  end
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int32Array,i32> (; 178 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.tee $0
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
  if
   i32.const 0
   i32.const 8
   i32.const 398
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint32Array,u32> (; 179 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.tee $0
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
  local.get $0
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
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int64Array,i64>~anonymous|0 (; 180 ;) (type $FUNCSIG$ijii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i64.const 2
  i64.rem_s
  i64.const 0
  i64.eq
 )
 (func $~lib/typedarray/Int64Array#every (; 181 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/EVERY<~lib/typedarray/Int64Array,i64>|inlined.0 (result i32)
   local.get $0
   i32.load offset=8
   i32.const 3
   i32.shr_u
   local.set $3
   local.get $0
   i32.load
   local.set $4
   local.get $0
   i32.load offset=4
   local.set $5
   loop $repeat|0
    block $break|0
     local.get $2
     local.get $3
     i32.ge_s
     br_if $break|0
     i32.const 3
     global.set $~lib/argc
     local.get $2
     i32.const 3
     i32.shl
     local.get $4
     i32.add
     local.get $5
     i32.add
     i64.load offset=8
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $FUNCSIG$ijii)
     i32.eqz
     if
      i32.const 0
      br $~lib/internal/typedarray/EVERY<~lib/typedarray/Int64Array,i64>|inlined.0
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $repeat|0
    end
   end
   i32.const 1
  end
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int64Array,i64> (; 182 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $0
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
  if
   i32.const 0
   i32.const 8
   i32.const 398
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint64Array,u64>~anonymous|0 (; 183 ;) (type $FUNCSIG$ijii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i64.const 2
  i64.rem_u
  i64.const 0
  i64.eq
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint64Array,u64> (; 184 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $0
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
  local.get $0
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
  local.get $0
  i32.reinterpret_f32
  local.tee $3
  i32.const 23
  i32.shr_u
  i32.const 255
  i32.and
  local.set $2
  local.get $3
  i32.const -2147483648
  i32.and
  local.set $4
  local.get $2
  i32.const 255
  i32.eq
  local.tee $1
  if (result i32)
   local.get $1
  else   
   i32.const 0
  end
  if
   local.get $0
   f32.const 2
   f32.mul
   local.tee $0
   local.get $0
   f32.div
   return
  end
  block $folding-inner0
   local.get $3
   i32.const 1
   i32.shl
   local.tee $1
   i32.const -2147483648
   i32.le_u
   if
    local.get $1
    i32.const -2147483648
    i32.eq
    br_if $folding-inner0
    local.get $0
    return
   end
   local.get $2
   if (result i32)
    local.get $3
    i32.const 8388607
    i32.and
    i32.const 8388608
    i32.or
   else    
    local.get $3
    i32.const 1
    local.get $2
    local.get $3
    i32.const 9
    i32.shl
    i32.clz
    i32.sub
    local.tee $2
    i32.sub
    i32.shl
   end
   local.set $1
   loop $continue|0
    local.get $2
    i32.const 128
    i32.gt_s
    if
     local.get $1
     i32.const 8388608
     i32.ge_u
     if
      local.get $1
      i32.const 8388608
      i32.eq
      br_if $folding-inner0
      local.get $1
      i32.const 8388608
      i32.sub
      local.set $1
     end
     local.get $1
     i32.const 1
     i32.shl
     local.set $1
     local.get $2
     i32.const 1
     i32.sub
     local.set $2
     br $continue|0
    end
   end
   local.get $1
   i32.const 8388608
   i32.ge_u
   if
    local.get $1
    i32.const 8388608
    i32.eq
    br_if $folding-inner0
    local.get $1
    i32.const 8388608
    i32.sub
    local.set $1
   end
   local.get $1
   local.get $1
   i32.const 8
   i32.shl
   i32.clz
   local.tee $3
   i32.shl
   local.set $1
   local.get $2
   local.get $3
   i32.sub
   local.tee $2
   i32.const 0
   i32.gt_s
   if (result i32)
    local.get $1
    i32.const 8388608
    i32.sub
    local.get $2
    i32.const 23
    i32.shl
    i32.or
   else    
    local.get $1
    i32.const 1
    local.get $2
    i32.sub
    i32.shr_u
   end
   local.get $4
   i32.or
   f32.reinterpret_i32
   return
  end
  f32.const 0
  local.get $0
  f32.mul
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Float32Array,f32>~anonymous|0 (; 186 ;) (type $FUNCSIG$ifii) (param $0 f32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  call $~lib/math/NativeMathf.mod
  f32.const 0
  f32.eq
 )
 (func $~lib/typedarray/Float32Array#every (; 187 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/EVERY<~lib/typedarray/Float32Array,f32>|inlined.0 (result i32)
   local.get $0
   i32.load offset=8
   i32.const 2
   i32.shr_u
   local.set $3
   local.get $0
   i32.load
   local.set $4
   local.get $0
   i32.load offset=4
   local.set $5
   loop $repeat|0
    block $break|0
     local.get $2
     local.get $3
     i32.ge_s
     br_if $break|0
     i32.const 3
     global.set $~lib/argc
     local.get $2
     i32.const 2
     i32.shl
     local.get $4
     i32.add
     local.get $5
     i32.add
     f32.load offset=8
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $FUNCSIG$ifii)
     i32.eqz
     if
      i32.const 0
      br $~lib/internal/typedarray/EVERY<~lib/typedarray/Float32Array,f32>|inlined.0
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $repeat|0
    end
   end
   i32.const 1
  end
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Float32Array,f32> (; 188 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.tee $0
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
  local.get $0
  i64.reinterpret_f64
  local.tee $1
  i64.const 52
  i64.shr_u
  i64.const 2047
  i64.and
  local.set $2
  local.get $1
  i64.const 63
  i64.shr_u
  local.set $4
  local.get $2
  i64.const 2047
  i64.eq
  local.tee $5
  if (result i32)
   local.get $5
  else   
   i32.const 0
  end
  if
   local.get $0
   f64.const 2
   f64.mul
   local.tee $0
   local.get $0
   f64.div
   return
  end
  block $folding-inner0
   local.get $1
   i64.const 1
   i64.shl
   local.tee $3
   i64.const -9223372036854775808
   i64.le_u
   if
    local.get $3
    i64.const -9223372036854775808
    i64.eq
    br_if $folding-inner0
    local.get $0
    return
   end
   local.get $2
   i64.eqz
   if (result i64)
    local.get $1
    i64.const 0
    local.get $2
    local.get $1
    i64.const 12
    i64.shl
    i64.clz
    i64.sub
    local.tee $2
    i64.sub
    i64.const 1
    i64.add
    i64.shl
   else    
    local.get $1
    i64.const 4503599627370495
    i64.and
    i64.const 4503599627370496
    i64.or
   end
   local.set $1
   loop $continue|0
    local.get $2
    i64.const 1024
    i64.gt_s
    if
     local.get $1
     i64.const 4503599627370496
     i64.ge_u
     if
      local.get $1
      i64.const 4503599627370496
      i64.eq
      br_if $folding-inner0
      local.get $1
      i64.const 4503599627370496
      i64.sub
      local.set $1
     end
     local.get $1
     i64.const 1
     i64.shl
     local.set $1
     local.get $2
     i64.const 1
     i64.sub
     local.set $2
     br $continue|0
    end
   end
   local.get $1
   i64.const 4503599627370496
   i64.ge_u
   if
    local.get $1
    i64.const 4503599627370496
    i64.eq
    br_if $folding-inner0
    local.get $1
    i64.const 4503599627370496
    i64.sub
    local.set $1
   end
   local.get $1
   local.get $1
   i64.const 11
   i64.shl
   i64.clz
   local.tee $3
   i64.shl
   local.set $1
   local.get $2
   local.get $3
   i64.sub
   local.tee $2
   i64.const 0
   i64.gt_s
   if (result i64)
    local.get $1
    i64.const 4503599627370496
    i64.sub
    local.get $2
    i64.const 52
    i64.shl
    i64.or
   else    
    local.get $1
    i64.const 0
    local.get $2
    i64.sub
    i64.const 1
    i64.add
    i64.shr_u
   end
   local.get $4
   i64.const 63
   i64.shl
   i64.or
   f64.reinterpret_i64
   return
  end
  f64.const 0
  local.get $0
  f64.mul
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Float64Array,f64>~anonymous|0 (; 190 ;) (type $FUNCSIG$idii) (param $0 f64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  call $~lib/math/NativeMath.mod
  f64.const 0
  f64.eq
 )
 (func $~lib/typedarray/Float64Array#every (; 191 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/internal/typedarray/EVERY<~lib/typedarray/Float64Array,f64>|inlined.0 (result i32)
   local.get $0
   i32.load offset=8
   i32.const 3
   i32.shr_u
   local.set $3
   local.get $0
   i32.load
   local.set $4
   local.get $0
   i32.load offset=4
   local.set $5
   loop $repeat|0
    block $break|0
     local.get $2
     local.get $3
     i32.ge_s
     br_if $break|0
     i32.const 3
     global.set $~lib/argc
     local.get $2
     i32.const 3
     i32.shl
     local.get $4
     i32.add
     local.get $5
     i32.add
     f64.load offset=8
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $FUNCSIG$idii)
     i32.eqz
     if
      i32.const 0
      br $~lib/internal/typedarray/EVERY<~lib/typedarray/Float64Array,f64>|inlined.0
     end
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $repeat|0
    end
   end
   i32.const 1
  end
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Float64Array,f64> (; 192 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $0
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
  if
   i32.const 0
   i32.const 8
   i32.const 398
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Int8Array,i8>~anonymous|0 (; 193 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.const 255
  i32.and
  local.get $1
  global.get $std/typedarray/forEachValues
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $1
   i32.const 2
   i32.shl
   local.get $0
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
  i32.const 255
  i32.and
  i32.ne
  if
   i32.const 752
   i32.const 8
   i32.const 425
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  global.get $std/typedarray/forEachCallCount
  local.get $1
  i32.ne
  if
   i32.const 800
   i32.const 8
   i32.const 426
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  global.get $std/typedarray/forEachSelf
  local.get $2
  i32.ne
  if
   i32.const 848
   i32.const 8
   i32.const 427
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  global.get $std/typedarray/forEachCallCount
  i32.const 1
  i32.add
  global.set $std/typedarray/forEachCallCount
 )
 (func $~lib/typedarray/Int8Array#forEach (; 194 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=8
  local.set $2
  local.get $0
  i32.load
  local.set $3
  local.get $0
  i32.load offset=4
  local.set $4
  loop $repeat|0
   local.get $1
   local.get $2
   i32.lt_s
   if
    i32.const 3
    global.set $~lib/argc
    local.get $1
    local.get $3
    i32.add
    local.get $4
    i32.add
    i32.load8_s offset=8
    local.get $1
    local.get $0
    i32.const 101
    call_indirect (type $FUNCSIG$viii)
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|0
   end
  end
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Int8Array,i8> (; 195 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  global.set $std/typedarray/forEachCallCount
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  local.tee $1
  global.set $std/typedarray/forEachSelf
  local.get $1
  i32.const 0
  i32.const 0
  global.get $std/typedarray/forEachValues
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.load offset=8
  else   
   unreachable
  end
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  local.get $1
  i32.const 1
  i32.const 1
  global.get $std/typedarray/forEachValues
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.const 4
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  local.get $1
  i32.const 2
  i32.const 2
  global.get $std/typedarray/forEachValues
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.const 8
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  local.get $1
  call $~lib/typedarray/Int8Array#forEach
  global.get $std/typedarray/forEachCallCount
  i32.const 3
  i32.ne
  if
   i32.const 920
   i32.const 8
   i32.const 430
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Uint8Array#forEach (; 196 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=8
  local.set $3
  local.get $0
  i32.load
  local.set $4
  local.get $0
  i32.load offset=4
  local.set $5
  loop $repeat|0
   block $break|0
    local.get $2
    local.get $3
    i32.ge_s
    br_if $break|0
    i32.const 3
    global.set $~lib/argc
    local.get $2
    local.get $4
    i32.add
    local.get $5
    i32.add
    i32.load8_u offset=8
    local.get $2
    local.get $0
    local.get $1
    call_indirect (type $FUNCSIG$viii)
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $repeat|0
   end
  end
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Uint8Array,u8> (; 197 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  global.set $std/typedarray/forEachCallCount
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  local.tee $1
  global.set $std/typedarray/forEachSelf
  local.get $1
  i32.const 0
  i32.const 0
  global.get $std/typedarray/forEachValues
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.load offset=8
  else   
   unreachable
  end
  i32.const 255
  i32.and
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  local.get $1
  i32.const 1
  i32.const 1
  global.get $std/typedarray/forEachValues
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.const 4
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
  i32.const 255
  i32.and
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  local.get $1
  i32.const 2
  i32.const 2
  global.get $std/typedarray/forEachValues
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.const 8
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
  i32.const 255
  i32.and
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  local.get $1
  i32.const 102
  call $~lib/typedarray/Uint8Array#forEach
  global.get $std/typedarray/forEachCallCount
  i32.const 3
  i32.ne
  if
   i32.const 920
   i32.const 8
   i32.const 430
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Uint8ClampedArray,u8> (; 198 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  global.set $std/typedarray/forEachCallCount
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.tee $1
  global.set $std/typedarray/forEachSelf
  local.get $1
  i32.const 0
  i32.const 0
  global.get $std/typedarray/forEachValues
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.load offset=8
  else   
   unreachable
  end
  i32.const 255
  i32.and
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $1
  i32.const 1
  i32.const 1
  global.get $std/typedarray/forEachValues
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.const 4
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
  i32.const 255
  i32.and
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $1
  i32.const 2
  i32.const 2
  global.get $std/typedarray/forEachValues
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.const 8
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
  i32.const 255
  i32.and
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $1
  i32.const 103
  call $~lib/typedarray/Uint8Array#forEach
  global.get $std/typedarray/forEachCallCount
  i32.const 3
  i32.ne
  if
   i32.const 920
   i32.const 8
   i32.const 430
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Int16Array,i16>~anonymous|0 (; 199 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.const 65535
  i32.and
  local.get $1
  global.get $std/typedarray/forEachValues
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $1
   i32.const 2
   i32.shl
   local.get $0
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
  i32.const 65535
  i32.and
  i32.ne
  if
   i32.const 752
   i32.const 8
   i32.const 425
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  global.get $std/typedarray/forEachCallCount
  local.get $1
  i32.ne
  if
   i32.const 800
   i32.const 8
   i32.const 426
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  global.get $std/typedarray/forEachSelf
  local.get $2
  i32.ne
  if
   i32.const 848
   i32.const 8
   i32.const 427
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  global.get $std/typedarray/forEachCallCount
  i32.const 1
  i32.add
  global.set $std/typedarray/forEachCallCount
 )
 (func $~lib/typedarray/Int16Array#forEach (; 200 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  local.set $2
  local.get $0
  i32.load
  local.set $3
  local.get $0
  i32.load offset=4
  local.set $4
  loop $repeat|0
   local.get $1
   local.get $2
   i32.lt_s
   if
    i32.const 3
    global.set $~lib/argc
    local.get $1
    i32.const 1
    i32.shl
    local.get $3
    i32.add
    local.get $4
    i32.add
    i32.load16_s offset=8
    local.get $1
    local.get $0
    i32.const 104
    call_indirect (type $FUNCSIG$viii)
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|0
   end
  end
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Int16Array,i16> (; 201 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  global.set $std/typedarray/forEachCallCount
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.tee $1
  global.set $std/typedarray/forEachSelf
  local.get $1
  i32.const 0
  i32.const 0
  global.get $std/typedarray/forEachValues
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.load offset=8
  else   
   unreachable
  end
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  call $~lib/internal/typedarray/TypedArray<i16>#__set
  local.get $1
  i32.const 1
  i32.const 1
  global.get $std/typedarray/forEachValues
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.const 4
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  call $~lib/internal/typedarray/TypedArray<i16>#__set
  local.get $1
  i32.const 2
  i32.const 2
  global.get $std/typedarray/forEachValues
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.const 8
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  call $~lib/internal/typedarray/TypedArray<i16>#__set
  local.get $1
  call $~lib/typedarray/Int16Array#forEach
  global.get $std/typedarray/forEachCallCount
  i32.const 3
  i32.ne
  if
   i32.const 920
   i32.const 8
   i32.const 430
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Uint16Array#forEach (; 202 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  local.set $2
  local.get $0
  i32.load
  local.set $3
  local.get $0
  i32.load offset=4
  local.set $4
  loop $repeat|0
   local.get $1
   local.get $2
   i32.lt_s
   if
    i32.const 3
    global.set $~lib/argc
    local.get $1
    i32.const 1
    i32.shl
    local.get $3
    i32.add
    local.get $4
    i32.add
    i32.load16_u offset=8
    local.get $1
    local.get $0
    i32.const 105
    call_indirect (type $FUNCSIG$viii)
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|0
   end
  end
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Uint16Array,u16> (; 203 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  global.set $std/typedarray/forEachCallCount
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.tee $1
  global.set $std/typedarray/forEachSelf
  local.get $1
  i32.const 0
  i32.const 0
  global.get $std/typedarray/forEachValues
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.load offset=8
  else   
   unreachable
  end
  i32.const 65535
  i32.and
  call $~lib/internal/typedarray/TypedArray<i16>#__set
  local.get $1
  i32.const 1
  i32.const 1
  global.get $std/typedarray/forEachValues
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.const 4
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
  i32.const 65535
  i32.and
  call $~lib/internal/typedarray/TypedArray<i16>#__set
  local.get $1
  i32.const 2
  i32.const 2
  global.get $std/typedarray/forEachValues
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.const 8
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
  i32.const 65535
  i32.and
  call $~lib/internal/typedarray/TypedArray<i16>#__set
  local.get $1
  call $~lib/typedarray/Uint16Array#forEach
  global.get $std/typedarray/forEachCallCount
  i32.const 3
  i32.ne
  if
   i32.const 920
   i32.const 8
   i32.const 430
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Int32Array,i32>~anonymous|0 (; 204 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  local.get $1
  global.get $std/typedarray/forEachValues
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $1
   i32.const 2
   i32.shl
   local.get $0
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
  i32.ne
  if
   i32.const 752
   i32.const 8
   i32.const 425
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  global.get $std/typedarray/forEachCallCount
  local.get $1
  i32.ne
  if
   i32.const 800
   i32.const 8
   i32.const 426
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  global.get $std/typedarray/forEachSelf
  local.get $2
  i32.ne
  if
   i32.const 848
   i32.const 8
   i32.const 427
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  global.get $std/typedarray/forEachCallCount
  i32.const 1
  i32.add
  global.set $std/typedarray/forEachCallCount
 )
 (func $~lib/typedarray/Int32Array#forEach (; 205 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  local.set $3
  local.get $0
  i32.load
  local.set $4
  local.get $0
  i32.load offset=4
  local.set $5
  loop $repeat|0
   block $break|0
    local.get $2
    local.get $3
    i32.ge_s
    br_if $break|0
    i32.const 3
    global.set $~lib/argc
    local.get $2
    i32.const 2
    i32.shl
    local.get $4
    i32.add
    local.get $5
    i32.add
    i32.load offset=8
    local.get $2
    local.get $0
    local.get $1
    call_indirect (type $FUNCSIG$viii)
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $repeat|0
   end
  end
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Int32Array,i32> (; 206 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  global.set $std/typedarray/forEachCallCount
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.tee $1
  global.set $std/typedarray/forEachSelf
  local.get $1
  i32.const 0
  i32.const 0
  global.get $std/typedarray/forEachValues
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.load offset=8
  else   
   unreachable
  end
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  local.get $1
  i32.const 1
  i32.const 1
  global.get $std/typedarray/forEachValues
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.const 4
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  local.get $1
  i32.const 2
  i32.const 2
  global.get $std/typedarray/forEachValues
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.const 8
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  local.get $1
  i32.const 106
  call $~lib/typedarray/Int32Array#forEach
  global.get $std/typedarray/forEachCallCount
  i32.const 3
  i32.ne
  if
   i32.const 920
   i32.const 8
   i32.const 430
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Uint32Array,u32> (; 207 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  global.set $std/typedarray/forEachCallCount
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.tee $1
  global.set $std/typedarray/forEachSelf
  local.get $1
  i32.const 0
  i32.const 0
  global.get $std/typedarray/forEachValues
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.load offset=8
  else   
   unreachable
  end
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  local.get $1
  i32.const 1
  i32.const 1
  global.get $std/typedarray/forEachValues
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.const 4
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  local.get $1
  i32.const 2
  i32.const 2
  global.get $std/typedarray/forEachValues
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.const 8
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
  call $~lib/internal/typedarray/TypedArray<i32>#__set
  local.get $1
  i32.const 107
  call $~lib/typedarray/Int32Array#forEach
  global.get $std/typedarray/forEachCallCount
  i32.const 3
  i32.ne
  if
   i32.const 920
   i32.const 8
   i32.const 430
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Int64Array,i64>~anonymous|0 (; 208 ;) (type $FUNCSIG$vjii) (param $0 i64) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $1
  global.get $std/typedarray/forEachValues
  i32.load
  local.tee $3
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $1
   i32.const 2
   i32.shl
   local.get $3
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
  i64.extend_i32_s
  local.get $0
  i64.ne
  if
   i32.const 752
   i32.const 8
   i32.const 425
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  global.get $std/typedarray/forEachCallCount
  local.get $1
  i32.ne
  if
   i32.const 800
   i32.const 8
   i32.const 426
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  global.get $std/typedarray/forEachSelf
  local.get $2
  i32.ne
  if
   i32.const 848
   i32.const 8
   i32.const 427
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  global.get $std/typedarray/forEachCallCount
  i32.const 1
  i32.add
  global.set $std/typedarray/forEachCallCount
 )
 (func $~lib/typedarray/Int64Array#forEach (; 209 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  local.set $3
  local.get $0
  i32.load
  local.set $4
  local.get $0
  i32.load offset=4
  local.set $5
  loop $repeat|0
   block $break|0
    local.get $2
    local.get $3
    i32.ge_s
    br_if $break|0
    i32.const 3
    global.set $~lib/argc
    local.get $2
    i32.const 3
    i32.shl
    local.get $4
    i32.add
    local.get $5
    i32.add
    i64.load offset=8
    local.get $2
    local.get $0
    local.get $1
    call_indirect (type $FUNCSIG$vjii)
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $repeat|0
   end
  end
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Int64Array,i64> (; 210 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  global.set $std/typedarray/forEachCallCount
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $1
  global.set $std/typedarray/forEachSelf
  local.get $1
  i32.const 0
  i32.const 0
  global.get $std/typedarray/forEachValues
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.load offset=8
  else   
   unreachable
  end
  i64.extend_i32_s
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  local.get $1
  i32.const 1
  i32.const 1
  global.get $std/typedarray/forEachValues
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.const 4
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
  i64.extend_i32_s
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  local.get $1
  i32.const 2
  i32.const 2
  global.get $std/typedarray/forEachValues
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.const 8
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
  i64.extend_i32_s
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  local.get $1
  i32.const 108
  call $~lib/typedarray/Int64Array#forEach
  global.get $std/typedarray/forEachCallCount
  i32.const 3
  i32.ne
  if
   i32.const 920
   i32.const 8
   i32.const 430
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Uint64Array,u64> (; 211 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  global.set $std/typedarray/forEachCallCount
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $1
  global.set $std/typedarray/forEachSelf
  local.get $1
  i32.const 0
  i32.const 0
  global.get $std/typedarray/forEachValues
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.load offset=8
  else   
   unreachable
  end
  i64.extend_i32_s
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  local.get $1
  i32.const 1
  i32.const 1
  global.get $std/typedarray/forEachValues
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.const 4
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
  i64.extend_i32_s
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  local.get $1
  i32.const 2
  i32.const 2
  global.get $std/typedarray/forEachValues
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.const 8
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
  i64.extend_i32_s
  call $~lib/internal/typedarray/TypedArray<i64>#__set
  local.get $1
  i32.const 109
  call $~lib/typedarray/Int64Array#forEach
  global.get $std/typedarray/forEachCallCount
  i32.const 3
  i32.ne
  if
   i32.const 920
   i32.const 8
   i32.const 430
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Float32Array,f32>~anonymous|0 (; 212 ;) (type $FUNCSIG$vfii) (param $0 f32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $0
  local.get $1
  global.get $std/typedarray/forEachValues
  i32.load
  local.tee $3
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $1
   i32.const 2
   i32.shl
   local.get $3
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
  f32.convert_i32_s
  f32.ne
  if
   i32.const 752
   i32.const 8
   i32.const 425
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  global.get $std/typedarray/forEachCallCount
  local.get $1
  i32.ne
  if
   i32.const 800
   i32.const 8
   i32.const 426
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  global.get $std/typedarray/forEachSelf
  local.get $2
  i32.ne
  if
   i32.const 848
   i32.const 8
   i32.const 427
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  global.get $std/typedarray/forEachCallCount
  i32.const 1
  i32.add
  global.set $std/typedarray/forEachCallCount
 )
 (func $~lib/typedarray/Float32Array#forEach (; 213 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  local.set $2
  local.get $0
  i32.load
  local.set $3
  local.get $0
  i32.load offset=4
  local.set $4
  loop $repeat|0
   local.get $1
   local.get $2
   i32.lt_s
   if
    i32.const 3
    global.set $~lib/argc
    local.get $1
    i32.const 2
    i32.shl
    local.get $3
    i32.add
    local.get $4
    i32.add
    f32.load offset=8
    local.get $1
    local.get $0
    i32.const 110
    call_indirect (type $FUNCSIG$vfii)
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|0
   end
  end
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Float32Array,f32> (; 214 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  global.set $std/typedarray/forEachCallCount
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.tee $1
  global.set $std/typedarray/forEachSelf
  local.get $1
  i32.const 0
  i32.const 0
  global.get $std/typedarray/forEachValues
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.load offset=8
  else   
   unreachable
  end
  f32.convert_i32_s
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  local.get $1
  i32.const 1
  i32.const 1
  global.get $std/typedarray/forEachValues
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.const 4
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
  f32.convert_i32_s
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  local.get $1
  i32.const 2
  i32.const 2
  global.get $std/typedarray/forEachValues
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.const 8
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
  f32.convert_i32_s
  call $~lib/internal/typedarray/TypedArray<f32>#__set
  local.get $1
  call $~lib/typedarray/Float32Array#forEach
  global.get $std/typedarray/forEachCallCount
  i32.const 3
  i32.ne
  if
   i32.const 920
   i32.const 8
   i32.const 430
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Float64Array,f64>~anonymous|0 (; 215 ;) (type $FUNCSIG$vdii) (param $0 f64) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $0
  local.get $1
  global.get $std/typedarray/forEachValues
  i32.load
  local.tee $3
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $1
   i32.const 2
   i32.shl
   local.get $3
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
  f64.convert_i32_s
  f64.ne
  if
   i32.const 752
   i32.const 8
   i32.const 425
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  global.get $std/typedarray/forEachCallCount
  local.get $1
  i32.ne
  if
   i32.const 800
   i32.const 8
   i32.const 426
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  global.get $std/typedarray/forEachSelf
  local.get $2
  i32.ne
  if
   i32.const 848
   i32.const 8
   i32.const 427
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  global.get $std/typedarray/forEachCallCount
  i32.const 1
  i32.add
  global.set $std/typedarray/forEachCallCount
 )
 (func $~lib/typedarray/Float64Array#forEach (; 216 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  local.set $2
  local.get $0
  i32.load
  local.set $3
  local.get $0
  i32.load offset=4
  local.set $4
  loop $repeat|0
   local.get $1
   local.get $2
   i32.lt_s
   if
    i32.const 3
    global.set $~lib/argc
    local.get $1
    i32.const 3
    i32.shl
    local.get $3
    i32.add
    local.get $4
    i32.add
    f64.load offset=8
    local.get $1
    local.get $0
    i32.const 111
    call_indirect (type $FUNCSIG$vdii)
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|0
   end
  end
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Float64Array,f64> (; 217 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  global.set $std/typedarray/forEachCallCount
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $1
  global.set $std/typedarray/forEachSelf
  local.get $1
  i32.const 0
  i32.const 0
  global.get $std/typedarray/forEachValues
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.load offset=8
  else   
   unreachable
  end
  f64.convert_i32_s
  call $~lib/internal/typedarray/TypedArray<f64>#__set
  local.get $1
  i32.const 1
  i32.const 1
  global.get $std/typedarray/forEachValues
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.const 4
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
  f64.convert_i32_s
  call $~lib/internal/typedarray/TypedArray<f64>#__set
  local.get $1
  i32.const 2
  i32.const 2
  global.get $std/typedarray/forEachValues
  i32.load
  local.tee $0
  i32.load
  i32.const 2
  i32.shr_u
  i32.lt_u
  if (result i32)
   local.get $0
   i32.const 8
   i32.add
   i32.load offset=8
  else   
   unreachable
  end
  f64.convert_i32_s
  call $~lib/internal/typedarray/TypedArray<f64>#__set
  local.get $1
  call $~lib/typedarray/Float64Array#forEach
  global.get $std/typedarray/forEachCallCount
  i32.const 3
  i32.ne
  if
   i32.const 920
   i32.const 8
   i32.const 430
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Int8Array#reverse (; 218 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load
  local.set $3
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.sub
  local.set $2
  loop $repeat|0
   block $break|0
    local.get $1
    local.get $2
    i32.ge_s
    br_if $break|0
    local.get $1
    local.get $3
    i32.add
    local.get $4
    i32.add
    i32.load8_s offset=8
    local.set $5
    local.get $1
    local.get $3
    i32.add
    local.get $4
    i32.add
    local.get $2
    local.get $3
    i32.add
    local.get $4
    i32.add
    i32.load8_s offset=8
    i32.store8 offset=8
    local.get $2
    local.get $3
    i32.add
    local.get $4
    i32.add
    local.get $5
    i32.store8 offset=8
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $repeat|0
   end
  end
  local.get $0
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Int8Array,i8> (; 219 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $std/typedarray/testArrayReverseValues
  local.set $2
  i32.const 0
  i32.const 9
  call $~lib/typedarray/Int8Array#constructor
  local.set $3
  i32.const 0
  i32.const 9
  call $~lib/typedarray/Int8Array#constructor
  local.set $4
  loop $repeat|0
   local.get $0
   i32.const 9
   i32.lt_s
   if
    local.get $3
    local.get $0
    local.get $0
    local.get $2
    i32.load
    local.tee $1
    i32.load
    i32.const 2
    i32.shr_u
    i32.lt_u
    if (result i32)
     local.get $0
     i32.const 2
     i32.shl
     local.get $1
     i32.add
     i32.load offset=8
    else     
     unreachable
    end
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    call $~lib/internal/typedarray/TypedArray<u8>#__set
    local.get $4
    local.get $0
    local.get $0
    local.get $2
    i32.load
    local.tee $1
    i32.load
    i32.const 2
    i32.shr_u
    i32.lt_u
    if (result i32)
     local.get $0
     i32.const 2
     i32.shl
     local.get $1
     i32.add
     i32.load offset=8
    else     
     unreachable
    end
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    call $~lib/internal/typedarray/TypedArray<u8>#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $repeat|0
   end
  end
  local.get $3
  call $~lib/typedarray/Int8Array#reverse
  drop
  i32.const 0
  local.set $0
  loop $repeat|1
   local.get $0
   i32.const 9
   i32.lt_s
   if
    local.get $3
    local.get $0
    call $~lib/internal/typedarray/TypedArray<i8>#__get
    i32.const 255
    i32.and
    i32.const 8
    local.get $0
    i32.sub
    local.tee $1
    local.get $2
    i32.load
    local.tee $5
    i32.load
    i32.const 2
    i32.shr_u
    i32.lt_u
    if (result i32)
     local.get $1
     i32.const 2
     i32.shl
     local.get $5
     i32.add
     i32.load offset=8
    else     
     unreachable
    end
    i32.const 255
    i32.and
    i32.ne
    if
     i32.const 1056
     i32.const 8
     i32.const 461
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $repeat|1
    end
    unreachable
   end
  end
  local.get $4
  i32.const 4
  i32.const 8
  call $~lib/typedarray/Int8Array#subarray
  call $~lib/typedarray/Int8Array#reverse
  local.tee $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<i8>#__get
  i32.const 255
  i32.and
  i32.const 8
  i32.ne
  if
   i32.const 1128
   i32.const 8
   i32.const 466
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i8>#__get
  i32.const 255
  i32.and
  i32.const 7
  i32.ne
  if
   i32.const 1128
   i32.const 8
   i32.const 467
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i8>#__get
  i32.const 255
  i32.and
  i32.const 6
  i32.ne
  if
   i32.const 1128
   i32.const 8
   i32.const 468
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i8>#__get
  i32.const 255
  i32.and
  i32.const 5
  i32.ne
  if
   i32.const 1128
   i32.const 8
   i32.const 469
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Uint8Array#reverse (; 220 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load
  local.set $3
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.sub
  local.set $2
  loop $repeat|0
   block $break|0
    local.get $1
    local.get $2
    i32.ge_s
    br_if $break|0
    local.get $1
    local.get $3
    i32.add
    local.get $4
    i32.add
    i32.load8_u offset=8
    local.set $5
    local.get $1
    local.get $3
    i32.add
    local.get $4
    i32.add
    local.get $2
    local.get $3
    i32.add
    local.get $4
    i32.add
    i32.load8_u offset=8
    i32.store8 offset=8
    local.get $2
    local.get $3
    i32.add
    local.get $4
    i32.add
    local.get $5
    i32.store8 offset=8
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $repeat|0
   end
  end
  local.get $0
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Uint8Array,u8> (; 221 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $std/typedarray/testArrayReverseValues
  local.set $2
  i32.const 0
  i32.const 9
  call $~lib/typedarray/Int8Array#constructor
  local.set $3
  i32.const 0
  i32.const 9
  call $~lib/typedarray/Int8Array#constructor
  local.set $4
  loop $repeat|0
   local.get $0
   i32.const 9
   i32.lt_s
   if
    local.get $3
    local.get $0
    local.get $0
    local.get $2
    i32.load
    local.tee $1
    i32.load
    i32.const 2
    i32.shr_u
    i32.lt_u
    if (result i32)
     local.get $0
     i32.const 2
     i32.shl
     local.get $1
     i32.add
     i32.load offset=8
    else     
     unreachable
    end
    i32.const 255
    i32.and
    call $~lib/internal/typedarray/TypedArray<u8>#__set
    local.get $4
    local.get $0
    local.get $0
    local.get $2
    i32.load
    local.tee $1
    i32.load
    i32.const 2
    i32.shr_u
    i32.lt_u
    if (result i32)
     local.get $0
     i32.const 2
     i32.shl
     local.get $1
     i32.add
     i32.load offset=8
    else     
     unreachable
    end
    i32.const 255
    i32.and
    call $~lib/internal/typedarray/TypedArray<u8>#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $repeat|0
   end
  end
  local.get $3
  call $~lib/typedarray/Uint8Array#reverse
  drop
  i32.const 0
  local.set $0
  loop $repeat|1
   local.get $0
   i32.const 9
   i32.lt_s
   if
    local.get $3
    local.get $0
    call $~lib/internal/typedarray/TypedArray<u8>#__get
    i32.const 255
    i32.and
    i32.const 8
    local.get $0
    i32.sub
    local.tee $1
    local.get $2
    i32.load
    local.tee $5
    i32.load
    i32.const 2
    i32.shr_u
    i32.lt_u
    if (result i32)
     local.get $1
     i32.const 2
     i32.shl
     local.get $5
     i32.add
     i32.load offset=8
    else     
     unreachable
    end
    i32.const 255
    i32.and
    i32.ne
    if
     i32.const 1056
     i32.const 8
     i32.const 461
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $repeat|1
    end
    unreachable
   end
  end
  local.get $4
  i32.const 4
  i32.const 8
  call $~lib/typedarray/Int8Array#subarray
  call $~lib/typedarray/Uint8Array#reverse
  local.tee $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 8
  i32.ne
  if
   i32.const 1128
   i32.const 8
   i32.const 466
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 7
  i32.ne
  if
   i32.const 1128
   i32.const 8
   i32.const 467
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
  i32.ne
  if
   i32.const 1128
   i32.const 8
   i32.const 468
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 5
  i32.ne
  if
   i32.const 1128
   i32.const 8
   i32.const 469
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Uint8ClampedArray,u8> (; 222 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $std/typedarray/testArrayReverseValues
  local.set $2
  i32.const 9
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.set $3
  i32.const 9
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.set $4
  loop $repeat|0
   local.get $0
   i32.const 9
   i32.lt_s
   if
    local.get $3
    local.get $0
    local.get $0
    local.get $2
    i32.load
    local.tee $1
    i32.load
    i32.const 2
    i32.shr_u
    i32.lt_u
    if (result i32)
     local.get $0
     i32.const 2
     i32.shl
     local.get $1
     i32.add
     i32.load offset=8
    else     
     unreachable
    end
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8ClampedArray#__set
    local.get $4
    local.get $0
    local.get $0
    local.get $2
    i32.load
    local.tee $1
    i32.load
    i32.const 2
    i32.shr_u
    i32.lt_u
    if (result i32)
     local.get $0
     i32.const 2
     i32.shl
     local.get $1
     i32.add
     i32.load offset=8
    else     
     unreachable
    end
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8ClampedArray#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $repeat|0
   end
  end
  local.get $3
  call $~lib/typedarray/Uint8Array#reverse
  drop
  i32.const 0
  local.set $0
  loop $repeat|1
   local.get $0
   i32.const 9
   i32.lt_s
   if
    local.get $3
    local.get $0
    call $~lib/internal/typedarray/TypedArray<u8>#__get
    i32.const 255
    i32.and
    i32.const 8
    local.get $0
    i32.sub
    local.tee $1
    local.get $2
    i32.load
    local.tee $5
    i32.load
    i32.const 2
    i32.shr_u
    i32.lt_u
    if (result i32)
     local.get $1
     i32.const 2
     i32.shl
     local.get $5
     i32.add
     i32.load offset=8
    else     
     unreachable
    end
    i32.const 255
    i32.and
    i32.ne
    if
     i32.const 1056
     i32.const 8
     i32.const 461
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $repeat|1
    end
    unreachable
   end
  end
  local.get $4
  i32.const 4
  i32.const 8
  call $~lib/typedarray/Int8Array#subarray
  call $~lib/typedarray/Uint8Array#reverse
  local.tee $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 8
  i32.ne
  if
   i32.const 1128
   i32.const 8
   i32.const 466
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 7
  i32.ne
  if
   i32.const 1128
   i32.const 8
   i32.const 467
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
  i32.ne
  if
   i32.const 1128
   i32.const 8
   i32.const 468
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u8>#__get
  i32.const 255
  i32.and
  i32.const 5
  i32.ne
  if
   i32.const 1128
   i32.const 8
   i32.const 469
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Int16Array#reverse (; 223 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load
  local.set $3
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  i32.const 1
  i32.sub
  local.set $2
  loop $repeat|0
   block $break|0
    local.get $1
    local.get $2
    i32.ge_s
    br_if $break|0
    local.get $1
    i32.const 1
    i32.shl
    local.get $3
    i32.add
    local.get $4
    i32.add
    i32.load16_s offset=8
    local.set $5
    local.get $1
    i32.const 1
    i32.shl
    local.get $3
    i32.add
    local.get $4
    i32.add
    local.get $2
    i32.const 1
    i32.shl
    local.get $3
    i32.add
    local.get $4
    i32.add
    i32.load16_s offset=8
    i32.store16 offset=8
    local.get $2
    i32.const 1
    i32.shl
    local.get $3
    i32.add
    local.get $4
    i32.add
    local.get $5
    i32.store16 offset=8
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $repeat|0
   end
  end
  local.get $0
 )
 (func $~lib/typedarray/Int16Array#subarray (; 224 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 4
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  local.tee $1
  i32.const 4
  local.get $1
  i32.lt_s
  select
  local.set $2
  i32.const 8
  local.get $1
  i32.const 8
  local.get $1
  i32.lt_s
  select
  local.tee $1
  local.get $2
  local.get $1
  local.get $2
  i32.gt_s
  select
  local.set $3
  i32.const 12
  call $~lib/allocator/arena/__memory_allocate
  local.tee $1
  local.get $0
  i32.load
  i32.store
  local.get $1
  local.get $0
  i32.load offset=4
  local.get $2
  i32.const 1
  i32.shl
  i32.add
  i32.store offset=4
  local.get $1
  local.get $3
  local.get $2
  i32.sub
  i32.const 1
  i32.shl
  i32.store offset=8
  local.get $1
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Int16Array,i16> (; 225 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $std/typedarray/testArrayReverseValues
  local.set $2
  i32.const 9
  call $~lib/typedarray/Int16Array#constructor
  local.set $3
  i32.const 9
  call $~lib/typedarray/Int16Array#constructor
  local.set $4
  loop $repeat|0
   local.get $0
   i32.const 9
   i32.lt_s
   if
    local.get $3
    local.get $0
    local.get $0
    local.get $2
    i32.load
    local.tee $1
    i32.load
    i32.const 2
    i32.shr_u
    i32.lt_u
    if (result i32)
     local.get $0
     i32.const 2
     i32.shl
     local.get $1
     i32.add
     i32.load offset=8
    else     
     unreachable
    end
    i32.const 16
    i32.shl
    i32.const 16
    i32.shr_s
    call $~lib/internal/typedarray/TypedArray<i16>#__set
    local.get $4
    local.get $0
    local.get $0
    local.get $2
    i32.load
    local.tee $1
    i32.load
    i32.const 2
    i32.shr_u
    i32.lt_u
    if (result i32)
     local.get $0
     i32.const 2
     i32.shl
     local.get $1
     i32.add
     i32.load offset=8
    else     
     unreachable
    end
    i32.const 16
    i32.shl
    i32.const 16
    i32.shr_s
    call $~lib/internal/typedarray/TypedArray<i16>#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $repeat|0
   end
  end
  local.get $3
  call $~lib/typedarray/Int16Array#reverse
  drop
  i32.const 0
  local.set $0
  loop $repeat|1
   local.get $0
   i32.const 9
   i32.lt_s
   if
    local.get $3
    local.get $0
    call $~lib/internal/typedarray/TypedArray<i16>#__get
    i32.const 65535
    i32.and
    i32.const 8
    local.get $0
    i32.sub
    local.tee $1
    local.get $2
    i32.load
    local.tee $5
    i32.load
    i32.const 2
    i32.shr_u
    i32.lt_u
    if (result i32)
     local.get $1
     i32.const 2
     i32.shl
     local.get $5
     i32.add
     i32.load offset=8
    else     
     unreachable
    end
    i32.const 65535
    i32.and
    i32.ne
    if
     i32.const 1056
     i32.const 8
     i32.const 461
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $repeat|1
    end
    unreachable
   end
  end
  local.get $4
  call $~lib/typedarray/Int16Array#subarray
  call $~lib/typedarray/Int16Array#reverse
  local.tee $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<i16>#__get
  i32.const 65535
  i32.and
  i32.const 8
  i32.ne
  if
   i32.const 1128
   i32.const 8
   i32.const 466
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i16>#__get
  i32.const 65535
  i32.and
  i32.const 7
  i32.ne
  if
   i32.const 1128
   i32.const 8
   i32.const 467
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i16>#__get
  i32.const 65535
  i32.and
  i32.const 6
  i32.ne
  if
   i32.const 1128
   i32.const 8
   i32.const 468
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i16>#__get
  i32.const 65535
  i32.and
  i32.const 5
  i32.ne
  if
   i32.const 1128
   i32.const 8
   i32.const 469
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Uint16Array#reverse (; 226 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load
  local.set $3
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  i32.const 1
  i32.sub
  local.set $2
  loop $repeat|0
   block $break|0
    local.get $1
    local.get $2
    i32.ge_s
    br_if $break|0
    local.get $1
    i32.const 1
    i32.shl
    local.get $3
    i32.add
    local.get $4
    i32.add
    i32.load16_u offset=8
    local.set $5
    local.get $1
    i32.const 1
    i32.shl
    local.get $3
    i32.add
    local.get $4
    i32.add
    local.get $2
    i32.const 1
    i32.shl
    local.get $3
    i32.add
    local.get $4
    i32.add
    i32.load16_u offset=8
    i32.store16 offset=8
    local.get $2
    i32.const 1
    i32.shl
    local.get $3
    i32.add
    local.get $4
    i32.add
    local.get $5
    i32.store16 offset=8
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $repeat|0
   end
  end
  local.get $0
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Uint16Array,u16> (; 227 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $std/typedarray/testArrayReverseValues
  local.set $2
  i32.const 9
  call $~lib/typedarray/Int16Array#constructor
  local.set $3
  i32.const 9
  call $~lib/typedarray/Int16Array#constructor
  local.set $4
  loop $repeat|0
   local.get $0
   i32.const 9
   i32.lt_s
   if
    local.get $3
    local.get $0
    local.get $0
    local.get $2
    i32.load
    local.tee $1
    i32.load
    i32.const 2
    i32.shr_u
    i32.lt_u
    if (result i32)
     local.get $0
     i32.const 2
     i32.shl
     local.get $1
     i32.add
     i32.load offset=8
    else     
     unreachable
    end
    i32.const 65535
    i32.and
    call $~lib/internal/typedarray/TypedArray<i16>#__set
    local.get $4
    local.get $0
    local.get $0
    local.get $2
    i32.load
    local.tee $1
    i32.load
    i32.const 2
    i32.shr_u
    i32.lt_u
    if (result i32)
     local.get $0
     i32.const 2
     i32.shl
     local.get $1
     i32.add
     i32.load offset=8
    else     
     unreachable
    end
    i32.const 65535
    i32.and
    call $~lib/internal/typedarray/TypedArray<i16>#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $repeat|0
   end
  end
  local.get $3
  call $~lib/typedarray/Uint16Array#reverse
  drop
  i32.const 0
  local.set $0
  loop $repeat|1
   local.get $0
   i32.const 9
   i32.lt_s
   if
    local.get $3
    local.get $0
    call $~lib/internal/typedarray/TypedArray<u16>#__get
    i32.const 65535
    i32.and
    i32.const 8
    local.get $0
    i32.sub
    local.tee $1
    local.get $2
    i32.load
    local.tee $5
    i32.load
    i32.const 2
    i32.shr_u
    i32.lt_u
    if (result i32)
     local.get $1
     i32.const 2
     i32.shl
     local.get $5
     i32.add
     i32.load offset=8
    else     
     unreachable
    end
    i32.const 65535
    i32.and
    i32.ne
    if
     i32.const 1056
     i32.const 8
     i32.const 461
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $repeat|1
    end
    unreachable
   end
  end
  local.get $4
  call $~lib/typedarray/Int16Array#subarray
  call $~lib/typedarray/Uint16Array#reverse
  local.tee $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<u16>#__get
  i32.const 65535
  i32.and
  i32.const 8
  i32.ne
  if
   i32.const 1128
   i32.const 8
   i32.const 466
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u16>#__get
  i32.const 65535
  i32.and
  i32.const 7
  i32.ne
  if
   i32.const 1128
   i32.const 8
   i32.const 467
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
  i32.ne
  if
   i32.const 1128
   i32.const 8
   i32.const 468
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u16>#__get
  i32.const 65535
  i32.and
  i32.const 5
  i32.ne
  if
   i32.const 1128
   i32.const 8
   i32.const 469
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Int32Array#reverse (; 228 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load
  local.set $3
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.const 1
  i32.sub
  local.set $2
  loop $repeat|0
   block $break|0
    local.get $1
    local.get $2
    i32.ge_s
    br_if $break|0
    local.get $1
    i32.const 2
    i32.shl
    local.get $3
    i32.add
    local.get $4
    i32.add
    i32.load offset=8
    local.set $5
    local.get $1
    i32.const 2
    i32.shl
    local.get $3
    i32.add
    local.get $4
    i32.add
    local.get $2
    i32.const 2
    i32.shl
    local.get $3
    i32.add
    local.get $4
    i32.add
    i32.load offset=8
    i32.store offset=8
    local.get $2
    i32.const 2
    i32.shl
    local.get $3
    i32.add
    local.get $4
    i32.add
    local.get $5
    i32.store offset=8
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $repeat|0
   end
  end
  local.get $0
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Int32Array,i32> (; 229 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $std/typedarray/testArrayReverseValues
  local.set $2
  i32.const 9
  call $~lib/typedarray/Int32Array#constructor
  local.set $3
  i32.const 9
  call $~lib/typedarray/Int32Array#constructor
  local.set $4
  loop $repeat|0
   local.get $0
   i32.const 9
   i32.lt_s
   if
    local.get $3
    local.get $0
    local.get $0
    local.get $2
    i32.load
    local.tee $1
    i32.load
    i32.const 2
    i32.shr_u
    i32.lt_u
    if (result i32)
     local.get $0
     i32.const 2
     i32.shl
     local.get $1
     i32.add
     i32.load offset=8
    else     
     unreachable
    end
    call $~lib/internal/typedarray/TypedArray<i32>#__set
    local.get $4
    local.get $0
    local.get $0
    local.get $2
    i32.load
    local.tee $1
    i32.load
    i32.const 2
    i32.shr_u
    i32.lt_u
    if (result i32)
     local.get $0
     i32.const 2
     i32.shl
     local.get $1
     i32.add
     i32.load offset=8
    else     
     unreachable
    end
    call $~lib/internal/typedarray/TypedArray<i32>#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $repeat|0
   end
  end
  local.get $3
  call $~lib/typedarray/Int32Array#reverse
  drop
  i32.const 0
  local.set $0
  loop $repeat|1
   local.get $0
   i32.const 9
   i32.lt_s
   if
    local.get $3
    local.get $0
    call $~lib/internal/typedarray/TypedArray<i32>#__get
    i32.const 8
    local.get $0
    i32.sub
    local.tee $1
    local.get $2
    i32.load
    local.tee $5
    i32.load
    i32.const 2
    i32.shr_u
    i32.lt_u
    if (result i32)
     local.get $1
     i32.const 2
     i32.shl
     local.get $5
     i32.add
     i32.load offset=8
    else     
     unreachable
    end
    i32.ne
    if
     i32.const 1056
     i32.const 8
     i32.const 461
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $repeat|1
    end
    unreachable
   end
  end
  local.get $4
  i32.const 4
  i32.const 8
  call $~lib/typedarray/Int32Array#subarray
  call $~lib/typedarray/Int32Array#reverse
  local.tee $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 8
  i32.ne
  if
   i32.const 1128
   i32.const 8
   i32.const 466
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 7
  i32.ne
  if
   i32.const 1128
   i32.const 8
   i32.const 467
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 6
  i32.ne
  if
   i32.const 1128
   i32.const 8
   i32.const 468
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i32>#__get
  i32.const 5
  i32.ne
  if
   i32.const 1128
   i32.const 8
   i32.const 469
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Int64Array#reverse (; 230 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  local.get $0
  i32.load
  local.set $3
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.const 1
  i32.sub
  local.set $2
  loop $repeat|0
   block $break|0
    local.get $1
    local.get $2
    i32.ge_s
    br_if $break|0
    local.get $1
    i32.const 3
    i32.shl
    local.get $3
    i32.add
    local.get $4
    i32.add
    i64.load offset=8
    local.set $5
    local.get $1
    i32.const 3
    i32.shl
    local.get $3
    i32.add
    local.get $4
    i32.add
    local.get $2
    i32.const 3
    i32.shl
    local.get $3
    i32.add
    local.get $4
    i32.add
    i64.load offset=8
    i64.store offset=8
    local.get $2
    i32.const 3
    i32.shl
    local.get $3
    i32.add
    local.get $4
    i32.add
    local.get $5
    i64.store offset=8
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $repeat|0
   end
  end
  local.get $0
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Int64Array,i64> (; 231 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $std/typedarray/testArrayReverseValues
  local.set $3
  i32.const 9
  call $~lib/typedarray/Int64Array#constructor
  local.set $4
  i32.const 9
  call $~lib/typedarray/Int64Array#constructor
  local.set $5
  loop $repeat|0
   local.get $0
   i32.const 9
   i32.lt_s
   if
    local.get $4
    local.get $0
    local.get $0
    local.tee $1
    local.get $3
    i32.load
    local.tee $2
    i32.load
    i32.const 2
    i32.shr_u
    i32.lt_u
    if (result i32)
     local.get $1
     i32.const 2
     i32.shl
     local.get $2
     i32.add
     i32.load offset=8
    else     
     unreachable
    end
    i64.extend_i32_s
    call $~lib/internal/typedarray/TypedArray<i64>#__set
    local.get $5
    local.get $1
    local.get $1
    local.get $3
    i32.load
    local.tee $2
    i32.load
    i32.const 2
    i32.shr_u
    i32.lt_u
    if (result i32)
     local.get $0
     i32.const 2
     i32.shl
     local.get $2
     i32.add
     i32.load offset=8
    else     
     unreachable
    end
    i64.extend_i32_s
    call $~lib/internal/typedarray/TypedArray<i64>#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $repeat|0
   end
  end
  local.get $4
  call $~lib/typedarray/Int64Array#reverse
  drop
  i32.const 0
  local.set $0
  loop $repeat|1
   local.get $0
   i32.const 9
   i32.lt_s
   if
    local.get $4
    local.get $0
    call $~lib/internal/typedarray/TypedArray<i64>#__get
    i32.const 8
    local.get $0
    i32.sub
    local.tee $1
    local.get $3
    i32.load
    local.tee $2
    i32.load
    i32.const 2
    i32.shr_u
    i32.lt_u
    if (result i32)
     local.get $1
     i32.const 2
     i32.shl
     local.get $2
     i32.add
     i32.load offset=8
    else     
     unreachable
    end
    i64.extend_i32_s
    i64.ne
    if
     i32.const 1056
     i32.const 8
     i32.const 461
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $repeat|1
    end
    unreachable
   end
  end
  local.get $5
  i32.const 4
  i32.const 8
  call $~lib/typedarray/Float64Array#subarray
  call $~lib/typedarray/Int64Array#reverse
  local.tee $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<i64>#__get
  i64.const 8
  i64.ne
  if
   i32.const 1128
   i32.const 8
   i32.const 466
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<i64>#__get
  i64.const 7
  i64.ne
  if
   i32.const 1128
   i32.const 8
   i32.const 467
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<i64>#__get
  i64.const 6
  i64.ne
  if
   i32.const 1128
   i32.const 8
   i32.const 468
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<i64>#__get
  i64.const 5
  i64.ne
  if
   i32.const 1128
   i32.const 8
   i32.const 469
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Float32Array#reverse (; 232 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f32)
  local.get $0
  i32.load
  local.set $3
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.const 1
  i32.sub
  local.set $2
  loop $repeat|0
   block $break|0
    local.get $1
    local.get $2
    i32.ge_s
    br_if $break|0
    local.get $1
    i32.const 2
    i32.shl
    local.get $3
    i32.add
    local.get $4
    i32.add
    f32.load offset=8
    local.set $5
    local.get $1
    i32.const 2
    i32.shl
    local.get $3
    i32.add
    local.get $4
    i32.add
    local.get $2
    i32.const 2
    i32.shl
    local.get $3
    i32.add
    local.get $4
    i32.add
    f32.load offset=8
    f32.store offset=8
    local.get $2
    i32.const 2
    i32.shl
    local.get $3
    i32.add
    local.get $4
    i32.add
    local.get $5
    f32.store offset=8
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $repeat|0
   end
  end
  local.get $0
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Float32Array,f32> (; 233 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $std/typedarray/testArrayReverseValues
  local.set $3
  i32.const 9
  call $~lib/typedarray/Int32Array#constructor
  local.set $4
  i32.const 9
  call $~lib/typedarray/Int32Array#constructor
  local.set $5
  loop $repeat|0
   local.get $0
   i32.const 9
   i32.lt_s
   if
    local.get $4
    local.get $0
    local.get $0
    local.tee $1
    local.get $3
    i32.load
    local.tee $2
    i32.load
    i32.const 2
    i32.shr_u
    i32.lt_u
    if (result i32)
     local.get $1
     i32.const 2
     i32.shl
     local.get $2
     i32.add
     i32.load offset=8
    else     
     unreachable
    end
    f32.convert_i32_s
    call $~lib/internal/typedarray/TypedArray<f32>#__set
    local.get $5
    local.get $1
    local.get $1
    local.get $3
    i32.load
    local.tee $2
    i32.load
    i32.const 2
    i32.shr_u
    i32.lt_u
    if (result i32)
     local.get $0
     i32.const 2
     i32.shl
     local.get $2
     i32.add
     i32.load offset=8
    else     
     unreachable
    end
    f32.convert_i32_s
    call $~lib/internal/typedarray/TypedArray<f32>#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $repeat|0
   end
  end
  local.get $4
  call $~lib/typedarray/Float32Array#reverse
  drop
  i32.const 0
  local.set $0
  loop $repeat|1
   local.get $0
   i32.const 9
   i32.lt_s
   if
    local.get $4
    local.get $0
    call $~lib/internal/typedarray/TypedArray<f32>#__get
    i32.const 8
    local.get $0
    i32.sub
    local.tee $1
    local.get $3
    i32.load
    local.tee $2
    i32.load
    i32.const 2
    i32.shr_u
    i32.lt_u
    if (result i32)
     local.get $1
     i32.const 2
     i32.shl
     local.get $2
     i32.add
     i32.load offset=8
    else     
     unreachable
    end
    f32.convert_i32_s
    f32.ne
    if
     i32.const 1056
     i32.const 8
     i32.const 461
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $repeat|1
    end
    unreachable
   end
  end
  local.get $5
  i32.const 4
  i32.const 8
  call $~lib/typedarray/Int32Array#subarray
  call $~lib/typedarray/Float32Array#reverse
  local.tee $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<f32>#__get
  f32.const 8
  f32.ne
  if
   i32.const 1128
   i32.const 8
   i32.const 466
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<f32>#__get
  f32.const 7
  f32.ne
  if
   i32.const 1128
   i32.const 8
   i32.const 467
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<f32>#__get
  f32.const 6
  f32.ne
  if
   i32.const 1128
   i32.const 8
   i32.const 468
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<f32>#__get
  f32.const 5
  f32.ne
  if
   i32.const 1128
   i32.const 8
   i32.const 469
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Float64Array#reverse (; 234 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  local.get $0
  i32.load
  local.set $3
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.const 1
  i32.sub
  local.set $2
  loop $repeat|0
   block $break|0
    local.get $1
    local.get $2
    i32.ge_s
    br_if $break|0
    local.get $1
    i32.const 3
    i32.shl
    local.get $3
    i32.add
    local.get $4
    i32.add
    f64.load offset=8
    local.set $5
    local.get $1
    i32.const 3
    i32.shl
    local.get $3
    i32.add
    local.get $4
    i32.add
    local.get $2
    i32.const 3
    i32.shl
    local.get $3
    i32.add
    local.get $4
    i32.add
    f64.load offset=8
    f64.store offset=8
    local.get $2
    i32.const 3
    i32.shl
    local.get $3
    i32.add
    local.get $4
    i32.add
    local.get $5
    f64.store offset=8
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $repeat|0
   end
  end
  local.get $0
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Float64Array,f64> (; 235 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $std/typedarray/testArrayReverseValues
  local.set $3
  i32.const 9
  call $~lib/typedarray/Int64Array#constructor
  local.set $4
  i32.const 9
  call $~lib/typedarray/Int64Array#constructor
  local.set $5
  loop $repeat|0
   local.get $0
   i32.const 9
   i32.lt_s
   if
    local.get $4
    local.get $0
    local.get $0
    local.tee $1
    local.get $3
    i32.load
    local.tee $2
    i32.load
    i32.const 2
    i32.shr_u
    i32.lt_u
    if (result i32)
     local.get $1
     i32.const 2
     i32.shl
     local.get $2
     i32.add
     i32.load offset=8
    else     
     unreachable
    end
    f64.convert_i32_s
    call $~lib/internal/typedarray/TypedArray<f64>#__set
    local.get $5
    local.get $1
    local.get $1
    local.get $3
    i32.load
    local.tee $2
    i32.load
    i32.const 2
    i32.shr_u
    i32.lt_u
    if (result i32)
     local.get $0
     i32.const 2
     i32.shl
     local.get $2
     i32.add
     i32.load offset=8
    else     
     unreachable
    end
    f64.convert_i32_s
    call $~lib/internal/typedarray/TypedArray<f64>#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $repeat|0
   end
  end
  local.get $4
  call $~lib/typedarray/Float64Array#reverse
  drop
  i32.const 0
  local.set $0
  loop $repeat|1
   local.get $0
   i32.const 9
   i32.lt_s
   if
    local.get $4
    local.get $0
    call $~lib/internal/typedarray/TypedArray<f64>#__get
    i32.const 8
    local.get $0
    i32.sub
    local.tee $1
    local.get $3
    i32.load
    local.tee $2
    i32.load
    i32.const 2
    i32.shr_u
    i32.lt_u
    if (result i32)
     local.get $1
     i32.const 2
     i32.shl
     local.get $2
     i32.add
     i32.load offset=8
    else     
     unreachable
    end
    f64.convert_i32_s
    f64.ne
    if
     i32.const 1056
     i32.const 8
     i32.const 461
     i32.const 4
     call $~lib/env/abort
     unreachable
    else     
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $repeat|1
    end
    unreachable
   end
  end
  local.get $5
  i32.const 4
  i32.const 8
  call $~lib/typedarray/Float64Array#subarray
  call $~lib/typedarray/Float64Array#reverse
  local.tee $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<f64>#__get
  f64.const 8
  f64.ne
  if
   i32.const 1128
   i32.const 8
   i32.const 466
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<f64>#__get
  f64.const 7
  f64.ne
  if
   i32.const 1128
   i32.const 8
   i32.const 467
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<f64>#__get
  f64.const 6
  f64.ne
  if
   i32.const 1128
   i32.const 8
   i32.const 468
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<f64>#__get
  f64.const 5
  f64.ne
  if
   i32.const 1128
   i32.const 8
   i32.const 469
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $start:std/typedarray (; 236 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 1224
  global.set $~lib/allocator/arena/startOffset
  global.get $~lib/allocator/arena/startOffset
  global.set $~lib/allocator/arena/offset
  i32.const 0
  call $std/typedarray/testInstantiate
  i32.const 5
  call $std/typedarray/testInstantiate
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
  global.get $std/typedarray/arr
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
  global.get $std/typedarray/arr
  i32.load offset=4
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
  global.get $std/typedarray/arr
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
  global.get $std/typedarray/arr
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
  global.get $std/typedarray/arr
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
  global.get $std/typedarray/arr
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int32Array#subarray
  global.set $std/typedarray/arr
  global.get $std/typedarray/arr
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
  global.get $std/typedarray/arr
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
  global.get $std/typedarray/arr
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
  global.get $std/typedarray/arr
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
  global.get $std/typedarray/af64
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
  global.get $std/typedarray/af64
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
  global.get $std/typedarray/af64
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
  global.set $~lib/argc
  global.get $std/typedarray/af64
  local.set $1
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~lib/argc
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   i32.const 1
   local.set $0
  end
  local.get $1
  local.get $0
  call $~lib/typedarray/Float64Array#sort
  block (result i32)
   block (result i32)
    global.get $std/typedarray/af64
    i32.const 0
    call $~lib/internal/typedarray/TypedArray<f64>#__get
    f64.const 4
    f64.eq
    local.tee $0
    if
     global.get $std/typedarray/af64
     i32.const 1
     call $~lib/internal/typedarray/TypedArray<f64>#__get
     f64.const 5
     f64.eq
     local.set $0
    end
    local.get $0
   end
   if
    global.get $std/typedarray/af64
    i32.const 2
    call $~lib/internal/typedarray/TypedArray<f64>#__get
    f64.const 6
    f64.eq
    local.set $0
   end
   local.get $0
  end
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
  i32.ne
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
  global.set $std/typedarray/arr8
  global.get $std/typedarray/arr8
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  global.get $std/typedarray/arr8
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  global.get $std/typedarray/arr8
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  global.get $std/typedarray/arr8
  i32.const 3
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  global.get $std/typedarray/arr8
  i32.const 4
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  global.get $std/typedarray/arr8
  i32.const 1
  i32.const 1
  i32.const 3
  call $~lib/typedarray/Int8Array#fill
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
  i32.const 1
  global.set $~lib/argc
  global.get $std/typedarray/arr8
  i32.const 0
  i32.const 0
  call $~lib/typedarray/Int8Array#fill|trampoline
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
  i32.const 2
  global.set $~lib/argc
  global.get $std/typedarray/arr8
  i32.const 2
  i32.const -2
  call $~lib/typedarray/Int8Array#fill|trampoline
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
  i32.const 1
  global.set $~lib/argc
  global.get $std/typedarray/sub8
  i32.const 0
  i32.const 0
  call $~lib/typedarray/Int8Array#fill|trampoline
  global.get $std/typedarray/sub8
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
  global.get $std/typedarray/sub8
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
  global.get $std/typedarray/sub8
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
  i32.const 1
  global.set $~lib/argc
  global.get $std/typedarray/arr32
  i32.const 0
  i32.const 0
  call $~lib/typedarray/Int32Array#fill|trampoline
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
  i32.const 2
  global.set $~lib/argc
  global.get $std/typedarray/arr32
  i32.const 2
  i32.const -2
  call $~lib/typedarray/Int32Array#fill|trampoline
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
  i32.const 1
  global.set $~lib/argc
  global.get $std/typedarray/sub32
  i32.const 0
  i32.const 0
  call $~lib/typedarray/Int32Array#fill|trampoline
  global.get $std/typedarray/sub32
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
  global.get $std/typedarray/sub32
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
  global.get $std/typedarray/sub32
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
  i32.const 134217727
  call $~lib/typedarray/Int64Array#constructor
  drop
  i32.const 0
  i32.const 6
  call $~lib/typedarray/Int8Array#constructor
  global.set $std/typedarray/multisubarr
  global.get $std/typedarray/multisubarr
  i32.const 0
  i32.const 1
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  global.get $std/typedarray/multisubarr
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  global.get $std/typedarray/multisubarr
  i32.const 2
  i32.const 3
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  global.get $std/typedarray/multisubarr
  i32.const 3
  i32.const 4
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  global.get $std/typedarray/multisubarr
  i32.const 4
  i32.const 5
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  global.get $std/typedarray/multisubarr
  i32.const 5
  i32.const 6
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  global.get $std/typedarray/multisubarr
  i32.const 1
  i32.const 6
  call $~lib/typedarray/Int8Array#subarray
  global.set $std/typedarray/multisubarr1
  global.get $std/typedarray/multisubarr1
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
  global.get $std/typedarray/multisubarr1
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
  global.get $std/typedarray/multisubarr1
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
  global.get $std/typedarray/multisubarr1
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
  global.get $std/typedarray/multisubarr1
  i32.const 1
  i32.const 5
  call $~lib/typedarray/Int8Array#subarray
  global.set $std/typedarray/multisubarr2
  global.get $std/typedarray/multisubarr2
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
  global.get $std/typedarray/multisubarr2
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
  global.get $std/typedarray/multisubarr2
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
  global.get $std/typedarray/multisubarr2
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
  global.get $std/typedarray/multisubarr2
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Int8Array#subarray
  global.set $std/typedarray/multisubarr3
  global.get $std/typedarray/multisubarr3
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
  global.get $std/typedarray/multisubarr3
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
  global.get $std/typedarray/multisubarr3
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
  global.get $std/typedarray/multisubarr3
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
  call $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>
  call $std/typedarray/testReduce<~lib/typedarray/Uint8Array,u8>
  call $std/typedarray/testReduce<~lib/typedarray/Uint8ClampedArray,u8>
  call $std/typedarray/testReduce<~lib/typedarray/Int16Array,i16>
  call $std/typedarray/testReduce<~lib/typedarray/Uint16Array,u16>
  call $std/typedarray/testReduce<~lib/typedarray/Int32Array,i32>
  call $std/typedarray/testReduce<~lib/typedarray/Uint32Array,u32>
  call $std/typedarray/testReduce<~lib/typedarray/Int64Array,i64>
  call $std/typedarray/testReduce<~lib/typedarray/Uint64Array,u64>
  call $std/typedarray/testReduce<~lib/typedarray/Float32Array,f32>
  call $std/typedarray/testReduce<~lib/typedarray/Float64Array,f64>
  call $std/typedarray/testReduceRight<~lib/typedarray/Int8Array,i8>
  call $std/typedarray/testReduceRight<~lib/typedarray/Uint8Array,u8>
  call $std/typedarray/testReduceRight<~lib/typedarray/Uint8ClampedArray,u8>
  call $std/typedarray/testReduceRight<~lib/typedarray/Int16Array,i16>
  call $std/typedarray/testReduceRight<~lib/typedarray/Uint16Array,u16>
  call $std/typedarray/testReduceRight<~lib/typedarray/Int32Array,i32>
  call $std/typedarray/testReduceRight<~lib/typedarray/Uint32Array,u32>
  call $std/typedarray/testReduceRight<~lib/typedarray/Int64Array,i64>
  call $std/typedarray/testReduceRight<~lib/typedarray/Uint64Array,u64>
  call $std/typedarray/testReduceRight<~lib/typedarray/Float32Array,f32>
  call $std/typedarray/testReduceRight<~lib/typedarray/Float64Array,f64>
  call $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>
  call $std/typedarray/testArrayMap<~lib/typedarray/Uint8Array,u8>
  call $std/typedarray/testArrayMap<~lib/typedarray/Uint8ClampedArray,u8>
  call $std/typedarray/testArrayMap<~lib/typedarray/Int16Array,i16>
  call $std/typedarray/testArrayMap<~lib/typedarray/Uint16Array,u16>
  call $std/typedarray/testArrayMap<~lib/typedarray/Int32Array,i32>
  call $std/typedarray/testArrayMap<~lib/typedarray/Uint32Array,u32>
  call $std/typedarray/testArrayMap<~lib/typedarray/Int64Array,i64>
  call $std/typedarray/testArrayMap<~lib/typedarray/Uint64Array,u64>
  call $std/typedarray/testArrayMap<~lib/typedarray/Float32Array,f32>
  call $std/typedarray/testArrayMap<~lib/typedarray/Float64Array,f64>
  call $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>
  call $std/typedarray/testArraySome<~lib/typedarray/Uint8Array,u8>
  call $std/typedarray/testArraySome<~lib/typedarray/Uint8ClampedArray,u8>
  call $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>
  call $std/typedarray/testArraySome<~lib/typedarray/Uint16Array,u16>
  call $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>
  call $std/typedarray/testArraySome<~lib/typedarray/Uint32Array,u32>
  call $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>
  call $std/typedarray/testArraySome<~lib/typedarray/Uint64Array,u64>
  call $std/typedarray/testArraySome<~lib/typedarray/Float32Array,f32>
  call $std/typedarray/testArraySome<~lib/typedarray/Float64Array,f64>
  call $std/typedarray/testArrayFindIndex<~lib/typedarray/Int8Array,i8>
  call $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint8Array,u8>
  call $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint8ClampedArray,u8>
  call $std/typedarray/testArrayFindIndex<~lib/typedarray/Int16Array,i16>
  call $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint16Array,u16>
  call $std/typedarray/testArrayFindIndex<~lib/typedarray/Int32Array,i32>
  call $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint32Array,u32>
  call $std/typedarray/testArrayFindIndex<~lib/typedarray/Int64Array,i64>
  call $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint64Array,u64>
  call $std/typedarray/testArrayFindIndex<~lib/typedarray/Float32Array,f32>
  call $std/typedarray/testArrayFindIndex<~lib/typedarray/Float64Array,f64>
  call $std/typedarray/testArrayEvery<~lib/typedarray/Int8Array,i8>
  call $std/typedarray/testArrayEvery<~lib/typedarray/Uint8Array,u8>
  call $std/typedarray/testArrayEvery<~lib/typedarray/Uint8ClampedArray,u8>
  call $std/typedarray/testArrayEvery<~lib/typedarray/Int16Array,i16>
  call $std/typedarray/testArrayEvery<~lib/typedarray/Uint16Array,u16>
  call $std/typedarray/testArrayEvery<~lib/typedarray/Int32Array,i32>
  call $std/typedarray/testArrayEvery<~lib/typedarray/Uint32Array,u32>
  call $std/typedarray/testArrayEvery<~lib/typedarray/Int64Array,i64>
  call $std/typedarray/testArrayEvery<~lib/typedarray/Uint64Array,u64>
  call $std/typedarray/testArrayEvery<~lib/typedarray/Float32Array,f32>
  call $std/typedarray/testArrayEvery<~lib/typedarray/Float64Array,f64>
  call $std/typedarray/testArrayForEach<~lib/typedarray/Int8Array,i8>
  call $std/typedarray/testArrayForEach<~lib/typedarray/Uint8Array,u8>
  call $std/typedarray/testArrayForEach<~lib/typedarray/Uint8ClampedArray,u8>
  call $std/typedarray/testArrayForEach<~lib/typedarray/Int16Array,i16>
  call $std/typedarray/testArrayForEach<~lib/typedarray/Uint16Array,u16>
  call $std/typedarray/testArrayForEach<~lib/typedarray/Int32Array,i32>
  call $std/typedarray/testArrayForEach<~lib/typedarray/Uint32Array,u32>
  call $std/typedarray/testArrayForEach<~lib/typedarray/Int64Array,i64>
  call $std/typedarray/testArrayForEach<~lib/typedarray/Uint64Array,u64>
  call $std/typedarray/testArrayForEach<~lib/typedarray/Float32Array,f32>
  call $std/typedarray/testArrayForEach<~lib/typedarray/Float64Array,f64>
  call $std/typedarray/testArrayReverse<~lib/typedarray/Int8Array,i8>
  call $std/typedarray/testArrayReverse<~lib/typedarray/Uint8Array,u8>
  call $std/typedarray/testArrayReverse<~lib/typedarray/Uint8ClampedArray,u8>
  call $std/typedarray/testArrayReverse<~lib/typedarray/Int16Array,i16>
  call $std/typedarray/testArrayReverse<~lib/typedarray/Uint16Array,u16>
  call $std/typedarray/testArrayReverse<~lib/typedarray/Int32Array,i32>
  call $std/typedarray/testArrayReverse<~lib/typedarray/Int32Array,i32>
  call $std/typedarray/testArrayReverse<~lib/typedarray/Int64Array,i64>
  call $std/typedarray/testArrayReverse<~lib/typedarray/Int64Array,i64>
  call $std/typedarray/testArrayReverse<~lib/typedarray/Float32Array,f32>
  call $std/typedarray/testArrayReverse<~lib/typedarray/Float64Array,f64>
 )
 (func $start (; 237 ;) (type $FUNCSIG$v)
  call $start:std/typedarray
 )
 (func $null (; 238 ;) (type $FUNCSIG$v)
  nop
 )
)
