(module
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$viid (func (param i32 i32 f64)))
 (type $FUNCSIG$idd (func (param f64 f64) (result i32)))
 (type $FUNCSIG$dii (func (param i32 i32) (result f64)))
 (type $FUNCSIG$iiiii (func (param i32 i32 i32 i32) (result i32)))
 (type $FUNCSIG$v (func))
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
 (type $FUNCSIG$vjii (func (param i64 i32 i32)))
 (type $FUNCSIG$vfii (func (param f32 i32 i32)))
 (type $FUNCSIG$vdii (func (param f64 i32 i32)))
 (type $FUNCSIG$fi (func (param i32) (result f32)))
 (type $FUNCSIG$di (func (param i32) (result f64)))
 (type $FUNCSIG$ff (func (param f32) (result f32)))
 (type $FUNCSIG$dd (func (param f64) (result f64)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 8) "\01\00\00\00\"")
 (data (i32.const 24) "s\00t\00d\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 64) "\01\00\00\00\1e")
 (data (i32.const 80) "~\00l\00i\00b\00/\00r\00u\00n\00t\00i\00m\00e\00.\00t\00s")
 (data (i32.const 112) "\01\00\00\00&")
 (data (i32.const 128) "~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 168) "\01\00\00\00$")
 (data (i32.const 184) "~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 224) "\02\00\00\00\05")
 (data (i32.const 240) "\01\01\01\04\05")
 (data (i32.const 248) "\01\00\00\00\1a")
 (data (i32.const 264) "~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 296) "\02\00\00\00\05")
 (data (i32.const 320) "\02\00\00\00\05")
 (data (i32.const 336) "\01\01")
 (data (i32.const 344) "\02\00\00\00\05")
 (data (i32.const 360) "\01\01\00\02\02")
 (data (i32.const 368) "\02\00\00\00\05")
 (data (i32.const 384) "\01\01\00\02\02")
 (data (i32.const 392) "\02\00\00\00\03")
 (data (i32.const 416) "\02\00\00\00\05")
 (data (i32.const 432) "\01\00\00\00\02")
 (data (i32.const 440) "\02\00\00\00\14")
 (data (i32.const 456) "\01\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\05")
 (data (i32.const 480) "\02\00\00\00\14")
 (data (i32.const 520) "\02\00\00\00\14")
 (data (i32.const 536) "\01\00\00\00\01")
 (data (i32.const 560) "\02\00\00\00\14")
 (data (i32.const 576) "\01\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\02")
 (data (i32.const 600) "\02\00\00\00\14")
 (data (i32.const 616) "\01\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\02")
 (data (i32.const 640) "\02\00\00\00\0c")
 (data (i32.const 672) "\02\00\00\00\14")
 (data (i32.const 688) "\01")
 (data (i32.const 704) "\02")
 (data (i32.const 712) "\01\00\00\00\1e")
 (data (i32.const 728) "r\00e\00s\00u\00l\00t\00 \00m\00i\00s\00m\00a\00t\00c\00h")
 (data (i32.const 760) "\01\00\00\00(")
 (data (i32.const 776) "f\00a\00i\00l\00 \00r\00e\00s\00u\00l\00t\00 \00m\00i\00s\00m\00a\00t\00c\00h")
 (data (i32.const 816) "\02\00\00\00\0c")
 (data (i32.const 832) "\n\00\00\00\0c\00\00\00\0e")
 (data (i32.const 848) "\10\00\00\00\10")
 (data (i32.const 864) "@\03\00\00@\03\00\00\0c\00\00\00\03")
 (data (i32.const 880) "\01\00\00\00,")
 (data (i32.const 896) "f\00o\00r\00E\00a\00c\00h\00 \00v\00a\00l\00u\00e\00 \00m\00i\00s\00m\00a\00t\00c\00h")
 (data (i32.const 944) "\01\00\00\00,")
 (data (i32.const 960) "f\00o\00r\00E\00a\00c\00h\00 \00i\00n\00d\00e\00x\00 \00m\00i\00s\00m\00a\00t\00c\00h")
 (data (i32.const 1008) "\01\00\00\00>")
 (data (i32.const 1024) "f\00o\00r\00E\00a\00c\00h\00 \00s\00e\00l\00f\00 \00p\00a\00r\00a\00m\00e\00t\00e\00r\00 \00m\00i\00s\00m\00a\00t\00c\00h")
 (data (i32.const 1088) "\01\00\00\006")
 (data (i32.const 1104) "f\00o\00r\00E\00a\00c\00h\00 \00c\00a\00l\00l\00 \00c\00o\00u\00n\00t\00 \00m\00i\00s\00m\00a\00t\00c\00h")
 (data (i32.const 1160) "\02\00\00\00$")
 (data (i32.const 1176) "\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00\07\00\00\00\08\00\00\00\t")
 (data (i32.const 1216) "\10\00\00\00\10")
 (data (i32.const 1232) "\98\04\00\00\98\04\00\00$\00\00\00\t")
 (data (i32.const 1248) "\01\00\00\00B")
 (data (i32.const 1264) "T\00y\00p\00e\00d\00A\00r\00r\00a\00y\00 \00r\00e\00v\00e\00r\00s\00e\00 \00v\00a\00l\00u\00e\00 \00m\00i\00s\00m\00a\00t\00c\00h")
 (data (i32.const 1336) "\01\00\00\00V")
 (data (i32.const 1352) "T\00y\00p\00e\00d\00A\00r\00r\00a\00y\00 \00r\00e\00v\00e\00r\00s\00e\00 \00w\00i\00t\00h\00 \00b\00y\00t\00e\00O\00f\00f\00s\00e\00t\00 \00m\00i\00s\00m\00a\00t\00c\00h")
 (table $0 112 funcref)
 (elem (i32.const 0) $null $~lib/util/sort/COMPARATOR<f64>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Float32Array,f32>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Float64Array,f64>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Float32Array,f32>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Float64Array,f64>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Float32Array,f32>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Float64Array,f64>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Float32Array,f32>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Float32Array,f32>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Float64Array,f64>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Float64Array,f64>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int8Array,i8>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int8Array,i8>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int8Array,i8>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int16Array,i16>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int16Array,i16>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int32Array,i32>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int32Array,i32>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int64Array,i64>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int64Array,i64>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Float32Array,f32>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Float32Array,f32>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Float64Array,f64>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Float64Array,f64>~anonymous|1 $std/typedarray/testArrayEvery<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Uint8Array,u8>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Uint8Array,u8>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Uint8Array,u8>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Uint8Array,u8>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Uint64Array,u64>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Float32Array,f32>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Float32Array,f32>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Float64Array,f64>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Float64Array,f64>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Float32Array,f32>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Float64Array,f64>~anonymous|0)
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
 (global $std/typedarray/forEachValues (mut i32) (i32.const 864))
 (global $std/typedarray/testArrayReverseValues (mut i32) (i32.const 1232))
 (global $~lib/capabilities i32 (i32.const 2))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (export ".capabilities" (global $~lib/capabilities))
 (start $start)
 (func $~lib/memory/memory.allocate (; 1 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
 (func $~lib/runtime/allocate (; 2 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  i32.const 1
  i32.const 32
  local.get $0
  i32.const 15
  i32.add
  i32.clz
  i32.sub
  i32.shl
  call $~lib/memory/memory.allocate
  local.tee $1
  i32.const -1520547049
  i32.store
  local.get $1
  local.get $0
  i32.store offset=4
  local.get $1
  i32.const 0
  i32.store offset=8
  local.get $1
  i32.const 0
  i32.store offset=12
  local.get $1
  i32.const 16
  i32.add
 )
 (func $~lib/memory/memory.fill (; 3 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i64)
  block $~lib/util/memory/memset|inlined.0
   local.get $2
   i32.eqz
   br_if $~lib/util/memory/memset|inlined.0
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
   br_if $~lib/util/memory/memset|inlined.0
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
   br_if $~lib/util/memory/memset|inlined.0
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
   br_if $~lib/util/memory/memset|inlined.0
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
   br_if $~lib/util/memory/memset|inlined.0
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
   br_if $~lib/util/memory/memset|inlined.0
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
  end
 )
 (func $~lib/runtime/register (; 4 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  i32.const 1440
  i32.le_u
  if
   i32.const 0
   i32.const 80
   i32.const 151
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 16
  i32.sub
  local.tee $2
  i32.load
  i32.const -1520547049
  i32.ne
  if
   i32.const 0
   i32.const 80
   i32.const 153
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  local.get $1
  i32.store
  local.get $0
 )
 (func $~lib/arraybuffer/ArrayBuffer#constructor (; 5 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  local.get $0
  i32.const 1073741808
  i32.gt_u
  if
   i32.const 0
   i32.const 128
   i32.const 25
   i32.const 43
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  call $~lib/runtime/allocate
  local.tee $1
  i32.const 0
  local.get $0
  call $~lib/memory/memory.fill
  local.get $1
  i32.const 2
  call $~lib/runtime/register
 )
 (func $~lib/runtime/ArrayBufferView#constructor (; 6 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $1
  i32.const 1073741808
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   i32.const 0
   i32.const 80
   i32.const 234
   i32.const 57
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  local.get $2
  i32.shl
  local.tee $2
  call $~lib/arraybuffer/ArrayBuffer#constructor
  local.set $1
  local.get $0
  i32.eqz
  if
   i32.const 12
   call $~lib/runtime/allocate
   i32.const 3
   call $~lib/runtime/register
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
  i32.load
  drop
  local.get $0
  local.get $1
  i32.store
  local.get $0
  local.get $1
  i32.store offset=4
  local.get $0
  local.get $2
  i32.store offset=8
  local.get $0
 )
 (func $~lib/typedarray/Int8Array#constructor (; 7 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 12
  call $~lib/runtime/allocate
  i32.const 4
  call $~lib/runtime/register
  local.get $0
  i32.const 0
  call $~lib/runtime/ArrayBufferView#constructor
 )
 (func $~lib/typedarray/Uint8Array#constructor (; 8 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 12
  call $~lib/runtime/allocate
  i32.const 5
  call $~lib/runtime/register
  local.get $0
  i32.const 0
  call $~lib/runtime/ArrayBufferView#constructor
 )
 (func $~lib/typedarray/Uint8ClampedArray#constructor (; 9 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 12
  call $~lib/runtime/allocate
  i32.const 6
  call $~lib/runtime/register
  local.get $0
  i32.const 0
  call $~lib/runtime/ArrayBufferView#constructor
 )
 (func $~lib/typedarray/Int16Array#constructor (; 10 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 12
  call $~lib/runtime/allocate
  i32.const 7
  call $~lib/runtime/register
  local.get $0
  i32.const 1
  call $~lib/runtime/ArrayBufferView#constructor
 )
 (func $~lib/typedarray/Uint16Array#constructor (; 11 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 12
  call $~lib/runtime/allocate
  i32.const 8
  call $~lib/runtime/register
  local.get $0
  i32.const 1
  call $~lib/runtime/ArrayBufferView#constructor
 )
 (func $~lib/typedarray/Int32Array#constructor (; 12 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 12
  call $~lib/runtime/allocate
  i32.const 9
  call $~lib/runtime/register
  local.get $0
  i32.const 2
  call $~lib/runtime/ArrayBufferView#constructor
 )
 (func $~lib/typedarray/Uint32Array#constructor (; 13 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 12
  call $~lib/runtime/allocate
  i32.const 10
  call $~lib/runtime/register
  local.get $0
  i32.const 2
  call $~lib/runtime/ArrayBufferView#constructor
 )
 (func $~lib/typedarray/Int64Array#constructor (; 14 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 12
  call $~lib/runtime/allocate
  i32.const 11
  call $~lib/runtime/register
  local.get $0
  i32.const 3
  call $~lib/runtime/ArrayBufferView#constructor
 )
 (func $~lib/typedarray/Uint64Array#constructor (; 15 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 12
  call $~lib/runtime/allocate
  i32.const 12
  call $~lib/runtime/register
  local.get $0
  i32.const 3
  call $~lib/runtime/ArrayBufferView#constructor
 )
 (func $~lib/typedarray/Float32Array#constructor (; 16 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 12
  call $~lib/runtime/allocate
  i32.const 13
  call $~lib/runtime/register
  local.get $0
  i32.const 2
  call $~lib/runtime/ArrayBufferView#constructor
 )
 (func $~lib/typedarray/Float64Array#constructor (; 17 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 12
  call $~lib/runtime/allocate
  i32.const 14
  call $~lib/runtime/register
  local.get $0
  i32.const 3
  call $~lib/runtime/ArrayBufferView#constructor
 )
 (func $std/typedarray/testInstantiate (; 18 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  call $~lib/typedarray/Int8Array#constructor
  local.tee $1
  i32.load offset=4
  local.get $1
  i32.load
  i32.sub
  if
   i32.const 0
   i32.const 24
   i32.const 35
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
   i32.const 24
   i32.const 36
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
   i32.const 24
   i32.const 37
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $1
  i32.load offset=4
  local.get $1
  i32.load
  i32.sub
  if
   i32.const 0
   i32.const 24
   i32.const 40
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
   i32.const 24
   i32.const 41
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
   i32.const 24
   i32.const 42
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.tee $1
  i32.load offset=4
  local.get $1
  i32.load
  i32.sub
  if
   i32.const 0
   i32.const 24
   i32.const 45
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
   i32.const 24
   i32.const 46
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
   i32.const 24
   i32.const 47
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  call $~lib/typedarray/Int16Array#constructor
  local.tee $1
  i32.load offset=4
  local.get $1
  i32.load
  i32.sub
  if
   i32.const 0
   i32.const 24
   i32.const 50
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
   i32.const 24
   i32.const 51
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  i32.const 1
  i32.shr_u
  local.get $0
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 52
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  call $~lib/typedarray/Uint16Array#constructor
  local.tee $1
  i32.load offset=4
  local.get $1
  i32.load
  i32.sub
  if
   i32.const 0
   i32.const 24
   i32.const 55
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
   i32.const 24
   i32.const 56
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  i32.const 1
  i32.shr_u
  local.get $0
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 57
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  call $~lib/typedarray/Int32Array#constructor
  local.tee $1
  i32.load offset=4
  local.get $1
  i32.load
  i32.sub
  if
   i32.const 0
   i32.const 24
   i32.const 60
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
   i32.const 24
   i32.const 61
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  i32.const 2
  i32.shr_u
  local.get $0
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 62
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  call $~lib/typedarray/Uint32Array#constructor
  local.tee $1
  i32.load offset=4
  local.get $1
  i32.load
  i32.sub
  if
   i32.const 0
   i32.const 24
   i32.const 65
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
   i32.const 24
   i32.const 66
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  i32.const 2
  i32.shr_u
  local.get $0
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 67
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  call $~lib/typedarray/Int64Array#constructor
  local.tee $1
  i32.load offset=4
  local.get $1
  i32.load
  i32.sub
  if
   i32.const 0
   i32.const 24
   i32.const 70
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
   i32.const 24
   i32.const 71
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  i32.const 3
  i32.shr_u
  local.get $0
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 72
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  call $~lib/typedarray/Uint64Array#constructor
  local.tee $1
  i32.load offset=4
  local.get $1
  i32.load
  i32.sub
  if
   i32.const 0
   i32.const 24
   i32.const 75
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
   i32.const 24
   i32.const 76
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  i32.const 3
  i32.shr_u
  local.get $0
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 77
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  call $~lib/typedarray/Float32Array#constructor
  local.tee $1
  i32.load offset=4
  local.get $1
  i32.load
  i32.sub
  if
   i32.const 0
   i32.const 24
   i32.const 80
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
   i32.const 24
   i32.const 81
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  i32.const 2
  i32.shr_u
  local.get $0
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 82
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  call $~lib/typedarray/Float64Array#constructor
  local.tee $1
  i32.load offset=4
  local.get $1
  i32.load
  i32.sub
  if
   i32.const 0
   i32.const 24
   i32.const 85
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
   i32.const 24
   i32.const 86
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  i32.const 3
  i32.shr_u
  local.get $0
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 87
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Int32Array#__set (; 19 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 184
   i32.const 442
   i32.const 63
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
 )
 (func $~lib/typedarray/Int32Array#__get (; 20 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 184
   i32.const 436
   i32.const 63
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $~lib/typedarray/Int32Array#subarray (; 21 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
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
  call $~lib/runtime/allocate
  i32.const 9
  call $~lib/runtime/register
  local.set $2
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load
  local.tee $0
  local.get $2
  i32.load
  i32.ne
  drop
  local.get $2
  local.get $0
  i32.store
  local.get $2
  local.get $1
  i32.const 2
  i32.shl
  local.get $4
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
 (func $~lib/typedarray/Float64Array#__set (; 22 ;) (type $FUNCSIG$viid) (param $0 i32) (param $1 i32) (param $2 f64)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 184
   i32.const 852
   i32.const 63
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  local.get $2
  f64.store
 )
 (func $~lib/typedarray/Float64Array#subarray (; 23 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
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
  call $~lib/runtime/allocate
  i32.const 14
  call $~lib/runtime/register
  local.set $2
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load
  local.tee $0
  local.get $2
  i32.load
  i32.ne
  drop
  local.get $2
  local.get $0
  i32.store
  local.get $2
  local.get $1
  i32.const 3
  i32.shl
  local.get $4
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
 (func $~lib/util/sort/insertionSort<f64> (; 24 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 f64)
  (local $7 i32)
  block $break|0
   loop $repeat|0
    local.get $3
    local.get $1
    i32.ge_s
    br_if $break|0
    local.get $3
    i32.const 3
    i32.shl
    local.get $0
    i32.add
    f64.load
    local.set $5
    local.get $3
    i32.const 1
    i32.sub
    local.set $4
    loop $continue|1
     local.get $4
     i32.const 0
     i32.ge_s
     if
      block $break|1
       local.get $4
       i32.const 3
       i32.shl
       local.get $0
       i32.add
       f64.load
       local.set $6
       i32.const 2
       global.set $~lib/argc
       local.get $5
       local.get $6
       local.get $2
       call_indirect (type $FUNCSIG$idd)
       i32.const 0
       i32.ge_s
       br_if $break|1
       local.get $4
       local.tee $7
       i32.const 1
       i32.sub
       local.set $4
       local.get $7
       i32.const 1
       i32.add
       i32.const 3
       i32.shl
       local.get $0
       i32.add
       local.get $6
       f64.store
       br $continue|1
      end
     end
    end
    local.get $4
    i32.const 1
    i32.add
    i32.const 3
    i32.shl
    local.get $0
    i32.add
    local.get $5
    f64.store
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $repeat|0
    unreachable
   end
   unreachable
  end
 )
 (func $~lib/util/sort/weakHeapSort<f64> (; 25 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 f64)
  (local $7 i32)
  (local $8 i32)
  local.get $1
  i32.const 31
  i32.add
  i32.const 5
  i32.shr_s
  i32.const 2
  i32.shl
  local.tee $3
  call $~lib/memory/memory.allocate
  local.tee $7
  i32.const 0
  local.get $3
  call $~lib/memory/memory.fill
  local.get $1
  i32.const 1
  i32.sub
  local.set $4
  loop $repeat|0
   local.get $4
   i32.const 0
   i32.gt_s
   if
    local.get $4
    local.set $3
    loop $continue|1
     local.get $3
     i32.const 1
     i32.and
     local.get $3
     i32.const 6
     i32.shr_s
     i32.const 2
     i32.shl
     local.get $7
     i32.add
     i32.load
     local.get $3
     i32.const 1
     i32.shr_s
     i32.const 31
     i32.and
     i32.shr_u
     i32.const 1
     i32.and
     i32.eq
     if
      local.get $3
      i32.const 1
      i32.shr_s
      local.set $3
      br $continue|1
     end
    end
    local.get $3
    i32.const 1
    i32.shr_s
    local.tee $3
    i32.const 3
    i32.shl
    local.get $0
    i32.add
    f64.load
    local.set $5
    local.get $4
    i32.const 3
    i32.shl
    local.get $0
    i32.add
    f64.load
    local.set $6
    i32.const 2
    global.set $~lib/argc
    local.get $5
    local.get $6
    local.get $2
    call_indirect (type $FUNCSIG$idd)
    i32.const 0
    i32.lt_s
    if
     local.get $4
     i32.const 5
     i32.shr_s
     i32.const 2
     i32.shl
     local.get $7
     i32.add
     local.tee $8
     local.get $8
     i32.load
     i32.const 1
     local.get $4
     i32.const 31
     i32.and
     i32.shl
     i32.xor
     i32.store
     local.get $4
     i32.const 3
     i32.shl
     local.get $0
     i32.add
     local.get $5
     f64.store
     local.get $3
     i32.const 3
     i32.shl
     local.get $0
     i32.add
     local.get $6
     f64.store
    end
    local.get $4
    i32.const 1
    i32.sub
    local.set $4
    br $repeat|0
   end
  end
  local.get $1
  i32.const 1
  i32.sub
  local.set $4
  loop $repeat|2
   local.get $4
   i32.const 2
   i32.ge_s
   if
    local.get $0
    f64.load
    local.set $5
    local.get $0
    local.get $4
    i32.const 3
    i32.shl
    local.get $0
    i32.add
    local.tee $1
    f64.load
    f64.store
    local.get $1
    local.get $5
    f64.store
    i32.const 1
    local.set $1
    loop $continue|3
     local.get $1
     i32.const 5
     i32.shr_s
     i32.const 2
     i32.shl
     local.get $7
     i32.add
     i32.load
     local.get $1
     i32.const 31
     i32.and
     i32.shr_u
     i32.const 1
     i32.and
     local.get $1
     i32.const 1
     i32.shl
     i32.add
     local.tee $3
     local.get $4
     i32.lt_s
     if
      local.get $3
      local.set $1
      br $continue|3
     end
    end
    loop $continue|4
     local.get $1
     i32.const 0
     i32.gt_s
     if
      local.get $0
      f64.load
      local.set $5
      local.get $1
      i32.const 3
      i32.shl
      local.get $0
      i32.add
      f64.load
      local.set $6
      i32.const 2
      global.set $~lib/argc
      local.get $5
      local.get $6
      local.get $2
      call_indirect (type $FUNCSIG$idd)
      i32.const 0
      i32.lt_s
      if
       local.get $1
       i32.const 5
       i32.shr_s
       i32.const 2
       i32.shl
       local.get $7
       i32.add
       local.tee $3
       local.get $3
       i32.load
       i32.const 1
       local.get $1
       i32.const 31
       i32.and
       i32.shl
       i32.xor
       i32.store
       local.get $1
       i32.const 3
       i32.shl
       local.get $0
       i32.add
       local.get $5
       f64.store
       local.get $0
       local.get $6
       f64.store
      end
      local.get $1
      i32.const 1
      i32.shr_s
      local.set $1
      br $continue|4
     end
    end
    local.get $4
    i32.const 1
    i32.sub
    local.set $4
    br $repeat|2
   end
  end
  local.get $0
  f64.load offset=8
  local.set $5
  local.get $0
  local.get $0
  f64.load
  f64.store offset=8
  local.get $0
  local.get $5
  f64.store
 )
 (func $~lib/typedarray/Float64Array#sort (; 26 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 f64)
  (local $4 f64)
  block $~lib/typedarray/SORT<~lib/typedarray/Float64Array,f64>|inlined.0
   local.get $0
   i32.load offset=8
   i32.const 3
   i32.shr_u
   local.tee $2
   i32.const 1
   i32.le_s
   br_if $~lib/typedarray/SORT<~lib/typedarray/Float64Array,f64>|inlined.0
   local.get $0
   i32.load offset=4
   local.set $0
   local.get $2
   i32.const 2
   i32.eq
   if
    local.get $0
    f64.load offset=8
    local.set $3
    local.get $0
    f64.load
    local.set $4
    i32.const 2
    global.set $~lib/argc
    local.get $3
    local.get $4
    local.get $1
    call_indirect (type $FUNCSIG$idd)
    i32.const 0
    i32.lt_s
    if
     local.get $0
     local.get $4
     f64.store offset=8
     local.get $0
     local.get $3
     f64.store
    end
    br $~lib/typedarray/SORT<~lib/typedarray/Float64Array,f64>|inlined.0
   end
   local.get $2
   i32.const 256
   i32.lt_s
   if
    local.get $0
    local.get $2
    local.get $1
    call $~lib/util/sort/insertionSort<f64>
   else    
    local.get $0
    local.get $2
    local.get $1
    call $~lib/util/sort/weakHeapSort<f64>
   end
  end
 )
 (func $~lib/util/sort/COMPARATOR<f64>~anonymous|0 (; 27 ;) (type $FUNCSIG$idd) (param $0 f64) (param $1 f64) (result i32)
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
 (func $~lib/typedarray/Float64Array#__get (; 28 ;) (type $FUNCSIG$dii) (param $0 i32) (param $1 i32) (result f64)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 184
   i32.const 846
   i32.const 63
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  f64.load
 )
 (func $~lib/typedarray/Uint8ClampedArray#__set (; 29 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 0
   i32.const 184
   i32.const 196
   i32.const 44
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
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
  i32.store8
 )
 (func $~lib/typedarray/Uint8ClampedArray#__get (; 30 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 0
   i32.const 184
   i32.const 190
   i32.const 44
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i32.load8_u
 )
 (func $~lib/typedarray/Int8Array#__set (; 31 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 0
   i32.const 184
   i32.const 32
   i32.const 44
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  local.get $2
  i32.store8
 )
 (func $~lib/typedarray/Int8Array#fill (; 32 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=4
  local.set $5
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
  local.tee $0
  local.get $3
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $3
   local.get $4
   i32.add
   local.tee $2
   i32.const 0
   local.get $2
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
  local.tee $2
  i32.lt_s
  if
   local.get $0
   local.get $5
   i32.add
   local.get $1
   local.get $2
   local.get $0
   i32.sub
   call $~lib/memory/memory.fill
  end
 )
 (func $~lib/util/memory/memcpy (; 33 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  loop $continue|0
   local.get $1
   i32.const 3
   i32.and
   local.get $2
   local.get $2
   select
   if
    local.get $0
    local.tee $3
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    local.tee $4
    i32.const 1
    i32.add
    local.set $1
    local.get $3
    local.get $4
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $continue|0
   end
  end
  local.get $0
  i32.const 3
  i32.and
  i32.eqz
  if
   loop $continue|1
    local.get $2
    i32.const 16
    i32.ge_u
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
     br $continue|1
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
    local.get $1
    i32.const 8
    i32.add
    local.set $1
    local.get $0
    i32.const 8
    i32.add
    local.set $0
   end
   local.get $2
   i32.const 4
   i32.and
   if
    local.get $0
    local.get $1
    i32.load
    i32.store
    local.get $1
    i32.const 4
    i32.add
    local.set $1
    local.get $0
    i32.const 4
    i32.add
    local.set $0
   end
   local.get $2
   i32.const 2
   i32.and
   if
    local.get $0
    local.get $1
    i32.load16_u
    i32.store16
    local.get $1
    i32.const 2
    i32.add
    local.set $1
    local.get $0
    i32.const 2
    i32.add
    local.set $0
   end
   local.get $2
   i32.const 1
   i32.and
   if
    local.get $0
    local.get $1
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
      local.get $0
      i32.const 3
      i32.and
      local.tee $3
      i32.const 1
      i32.ne
      if
       local.get $3
       i32.const 2
       i32.eq
       br_if $case1|2
       local.get $3
       i32.const 3
       i32.eq
       br_if $case2|2
       br $break|2
      end
      local.get $1
      i32.load
      local.set $5
      local.get $0
      local.get $1
      i32.load8_u
      i32.store8
      local.get $0
      i32.const 1
      i32.add
      local.tee $0
      local.get $1
      i32.const 1
      i32.add
      local.tee $1
      i32.load8_u
      i32.store8
      local.get $0
      i32.const 1
      i32.add
      local.tee $3
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      i32.const 1
      i32.add
      local.tee $4
      i32.const 1
      i32.add
      local.set $1
      local.get $3
      local.get $4
      i32.load8_u
      i32.store8
      local.get $2
      i32.const 3
      i32.sub
      local.set $2
      loop $continue|3
       local.get $2
       i32.const 17
       i32.ge_u
       if
        local.get $0
        local.get $1
        i32.const 1
        i32.add
        i32.load
        local.tee $3
        i32.const 8
        i32.shl
        local.get $5
        i32.const 24
        i32.shr_u
        i32.or
        i32.store
        local.get $0
        i32.const 4
        i32.add
        local.get $3
        i32.const 24
        i32.shr_u
        local.get $1
        i32.const 5
        i32.add
        i32.load
        local.tee $3
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $0
        i32.const 8
        i32.add
        local.get $3
        i32.const 24
        i32.shr_u
        local.get $1
        i32.const 9
        i32.add
        i32.load
        local.tee $3
        i32.const 8
        i32.shl
        i32.or
        i32.store
        local.get $0
        i32.const 12
        i32.add
        local.get $1
        i32.const 13
        i32.add
        i32.load
        local.tee $5
        i32.const 8
        i32.shl
        local.get $3
        i32.const 24
        i32.shr_u
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
        br $continue|3
       end
      end
      br $break|2
     end
     local.get $1
     i32.load
     local.set $5
     local.get $0
     local.get $1
     i32.load8_u
     i32.store8
     local.get $0
     i32.const 1
     i32.add
     local.tee $3
     i32.const 1
     i32.add
     local.set $0
     local.get $1
     i32.const 1
     i32.add
     local.tee $4
     i32.const 1
     i32.add
     local.set $1
     local.get $3
     local.get $4
     i32.load8_u
     i32.store8
     local.get $2
     i32.const 2
     i32.sub
     local.set $2
     loop $continue|4
      local.get $2
      i32.const 18
      i32.ge_u
      if
       local.get $0
       local.get $1
       i32.const 2
       i32.add
       i32.load
       local.tee $3
       i32.const 16
       i32.shl
       local.get $5
       i32.const 16
       i32.shr_u
       i32.or
       i32.store
       local.get $0
       i32.const 4
       i32.add
       local.get $3
       i32.const 16
       i32.shr_u
       local.get $1
       i32.const 6
       i32.add
       i32.load
       local.tee $3
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $0
       i32.const 8
       i32.add
       local.get $3
       i32.const 16
       i32.shr_u
       local.get $1
       i32.const 10
       i32.add
       i32.load
       local.tee $3
       i32.const 16
       i32.shl
       i32.or
       i32.store
       local.get $0
       i32.const 12
       i32.add
       local.get $1
       i32.const 14
       i32.add
       i32.load
       local.tee $5
       i32.const 16
       i32.shl
       local.get $3
       i32.const 16
       i32.shr_u
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
       br $continue|4
      end
     end
     br $break|2
    end
    local.get $1
    i32.load
    local.set $5
    local.get $0
    local.tee $3
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    local.tee $4
    i32.const 1
    i32.add
    local.set $1
    local.get $3
    local.get $4
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    loop $continue|5
     local.get $2
     i32.const 19
     i32.ge_u
     if
      local.get $0
      local.get $1
      i32.const 3
      i32.add
      i32.load
      local.tee $3
      i32.const 24
      i32.shl
      local.get $5
      i32.const 8
      i32.shr_u
      i32.or
      i32.store
      local.get $0
      i32.const 4
      i32.add
      local.get $3
      i32.const 8
      i32.shr_u
      local.get $1
      i32.const 7
      i32.add
      i32.load
      local.tee $3
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $0
      i32.const 8
      i32.add
      local.get $3
      i32.const 8
      i32.shr_u
      local.get $1
      i32.const 11
      i32.add
      i32.load
      local.tee $3
      i32.const 24
      i32.shl
      i32.or
      i32.store
      local.get $0
      i32.const 12
      i32.add
      local.get $1
      i32.const 15
      i32.add
      i32.load
      local.tee $5
      i32.const 24
      i32.shl
      local.get $3
      i32.const 8
      i32.shr_u
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
      br $continue|5
     end
    end
   end
  end
  local.get $2
  i32.const 16
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $3
   i32.const 1
   i32.add
   local.set $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $4
   i32.const 1
   i32.add
   local.set $1
   local.get $3
   local.get $4
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 8
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $3
   i32.const 1
   i32.add
   local.set $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $4
   i32.const 1
   i32.add
   local.set $1
   local.get $3
   local.get $4
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 4
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $3
   i32.const 1
   i32.add
   local.set $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $4
   i32.const 1
   i32.add
   local.set $1
   local.get $3
   local.get $4
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 2
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
   local.get $0
   i32.const 1
   i32.add
   local.tee $3
   i32.const 1
   i32.add
   local.set $0
   local.get $1
   i32.const 1
   i32.add
   local.tee $4
   i32.const 1
   i32.add
   local.set $1
   local.get $3
   local.get $4
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.get $1
   i32.load8_u
   i32.store8
  end
 )
 (func $~lib/memory/memory.copy (; 34 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $0
   local.get $1
   i32.eq
   br_if $~lib/util/memory/memmove|inlined.0
   local.get $1
   local.get $2
   i32.add
   local.get $0
   i32.le_u
   local.tee $3
   i32.eqz
   if
    local.get $0
    local.get $2
    i32.add
    local.get $1
    i32.le_u
    local.set $3
   end
   local.get $3
   if
    local.get $0
    local.get $1
    local.get $2
    call $~lib/util/memory/memcpy
    br $~lib/util/memory/memmove|inlined.0
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
     loop $continue|0
      local.get $0
      i32.const 7
      i32.and
      if
       local.get $2
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $2
       i32.const 1
       i32.sub
       local.set $2
       local.get $0
       local.tee $3
       i32.const 1
       i32.add
       local.set $0
       local.get $1
       local.tee $4
       i32.const 1
       i32.add
       local.set $1
       local.get $3
       local.get $4
       i32.load8_u
       i32.store8
       br $continue|0
      end
     end
     loop $continue|1
      local.get $2
      i32.const 8
      i32.ge_u
      if
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
       br $continue|1
      end
     end
    end
    loop $continue|2
     local.get $2
     if
      local.get $0
      local.tee $3
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      local.tee $4
      i32.const 1
      i32.add
      local.set $1
      local.get $3
      local.get $4
      i32.load8_u
      i32.store8
      local.get $2
      i32.const 1
      i32.sub
      local.set $2
      br $continue|2
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
     loop $continue|3
      local.get $0
      local.get $2
      i32.add
      i32.const 7
      i32.and
      if
       local.get $2
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $2
       i32.const 1
       i32.sub
       local.tee $2
       local.get $0
       i32.add
       local.get $1
       local.get $2
       i32.add
       i32.load8_u
       i32.store8
       br $continue|3
      end
     end
     loop $continue|4
      local.get $2
      i32.const 8
      i32.ge_u
      if
       local.get $2
       i32.const 8
       i32.sub
       local.tee $2
       local.get $0
       i32.add
       local.get $1
       local.get $2
       i32.add
       i64.load
       i64.store
       br $continue|4
      end
     end
    end
    loop $continue|5
     local.get $2
     if
      local.get $2
      i32.const 1
      i32.sub
      local.tee $2
      local.get $0
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
 (func $~lib/runtime/makeArray (; 35 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  i32.const 16
  call $~lib/runtime/allocate
  local.get $1
  call $~lib/runtime/register
  local.set $1
  local.get $0
  local.get $2
  i32.shl
  local.tee $4
  call $~lib/runtime/allocate
  i32.const 2
  call $~lib/runtime/register
  local.tee $2
  local.set $5
  local.get $1
  i32.load
  drop
  local.get $1
  local.get $5
  i32.store
  local.get $1
  local.get $2
  i32.store offset=4
  local.get $1
  local.get $4
  i32.store offset=8
  local.get $1
  local.get $0
  i32.store offset=12
  local.get $3
  if
   local.get $2
   local.get $3
   local.get $4
   call $~lib/memory/memory.copy
  end
  local.get $1
 )
 (func $~lib/typedarray/Int8Array#__get (; 36 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 0
   i32.const 184
   i32.const 26
   i32.const 44
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i32.load8_s
 )
 (func $~lib/array/Array<i8>#__get (; 37 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 0
   i32.const 264
   i32.const 98
   i32.const 61
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i32.load8_s
 )
 (func $std/typedarray/isInt8ArrayEqual (; 38 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=8
  local.get $1
  i32.load offset=12
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
    call $~lib/typedarray/Int8Array#__get
    local.get $1
    local.get $2
    call $~lib/array/Array<i8>#__get
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
 (func $~lib/typedarray/Int8Array#subarray (; 39 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
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
  call $~lib/runtime/allocate
  i32.const 4
  call $~lib/runtime/register
  local.set $2
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load
  local.tee $0
  local.get $2
  i32.load
  i32.ne
  drop
  local.get $2
  local.get $0
  i32.store
  local.get $2
  local.get $1
  local.get $4
  i32.add
  i32.store offset=4
  local.get $2
  local.get $3
  local.get $1
  i32.sub
  i32.store offset=8
  local.get $2
 )
 (func $~lib/typedarray/Int32Array#fill (; 40 ;) (type $FUNCSIG$viiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  local.set $4
  local.get $0
  i32.load offset=4
  local.set $5
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
    local.get $4
    i32.store
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $repeat|0
   end
  end
 )
 (func $~lib/array/Array<i32>#__get (; 41 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 264
   i32.const 98
   i32.const 61
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $std/typedarray/isInt32ArrayEqual (; 42 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  i32.load offset=12
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
    call $~lib/typedarray/Int32Array#__get
    local.get $1
    local.get $2
    call $~lib/array/Array<i32>#__get
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
 (func $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 (; 43 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $~lib/typedarray/Int8Array#reduce<i8> (; 44 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $0
  i32.load offset=8
  local.set $4
  loop $repeat|0
   local.get $1
   local.get $4
   i32.lt_s
   if
    i32.const 4
    global.set $~lib/argc
    local.get $2
    local.get $1
    local.get $3
    i32.add
    i32.load8_s
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
 (func $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8> (; 45 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  call $~lib/typedarray/Int8Array#reduce<i8>
  i32.const 255
  i32.and
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 253
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Uint8Array#__set (; 46 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 0
   i32.const 184
   i32.const 114
   i32.const 44
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  local.get $2
  i32.store8
 )
 (func $~lib/typedarray/Uint8Array#reduce<u8> (; 47 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load offset=8
  local.set $5
  loop $repeat|0
   local.get $2
   local.get $5
   i32.lt_s
   if
    i32.const 4
    global.set $~lib/argc
    local.get $3
    local.get $2
    local.get $4
    i32.add
    i32.load8_u
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
 (func $std/typedarray/testReduce<~lib/typedarray/Uint8Array,u8> (; 48 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 3
  call $~lib/typedarray/Uint8Array#reduce<u8>
  i32.const 255
  i32.and
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 253
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Uint8ClampedArray,u8> (; 49 ;) (type $FUNCSIG$v)
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
   i32.const 24
   i32.const 253
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Int16Array#__set (; 50 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 184
   i32.const 278
   i32.const 63
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.get $2
  i32.store16
 )
 (func $~lib/typedarray/Int16Array#reduce<i16> (; 51 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  local.set $4
  loop $repeat|0
   local.get $1
   local.get $4
   i32.lt_s
   if
    i32.const 4
    global.set $~lib/argc
    local.get $2
    local.get $1
    i32.const 1
    i32.shl
    local.get $3
    i32.add
    i32.load16_s
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
 (func $std/typedarray/testReduce<~lib/typedarray/Int16Array,i16> (; 52 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int16Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int16Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int16Array#__set
  local.get $0
  call $~lib/typedarray/Int16Array#reduce<i16>
  i32.const 65535
  i32.and
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 253
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Uint16Array#__set (; 53 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 184
   i32.const 360
   i32.const 63
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  local.get $2
  i32.store16
 )
 (func $~lib/typedarray/Uint16Array#reduce<u16> (; 54 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  local.set $4
  loop $repeat|0
   local.get $1
   local.get $4
   i32.lt_s
   if
    i32.const 4
    global.set $~lib/argc
    local.get $2
    local.get $1
    i32.const 1
    i32.shl
    local.get $3
    i32.add
    i32.load16_u
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
 (func $std/typedarray/testReduce<~lib/typedarray/Uint16Array,u16> (; 55 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Uint16Array#constructor
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint16Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint16Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint16Array#__set
  local.get $0
  call $~lib/typedarray/Uint16Array#reduce<u16>
  i32.const 65535
  i32.and
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 253
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Int32Array#reduce<i32> (; 56 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  local.set $5
  loop $repeat|0
   local.get $2
   local.get $5
   i32.lt_s
   if
    i32.const 4
    global.set $~lib/argc
    local.get $3
    local.get $2
    i32.const 2
    i32.shl
    local.get $4
    i32.add
    i32.load
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
 (func $std/typedarray/testReduce<~lib/typedarray/Int32Array,i32> (; 57 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 7
  call $~lib/typedarray/Int32Array#reduce<i32>
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 253
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Uint32Array#__set (; 58 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 184
   i32.const 524
   i32.const 63
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  i32.store
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Uint32Array,u32> (; 59 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Uint32Array#constructor
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint32Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint32Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint32Array#__set
  local.get $0
  i32.const 8
  call $~lib/typedarray/Int32Array#reduce<i32>
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 253
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Int64Array#__set (; 60 ;) (type $FUNCSIG$viij) (param $0 i32) (param $1 i32) (param $2 i64)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 184
   i32.const 606
   i32.const 63
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  local.get $2
  i64.store
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Int64Array,i64>~anonymous|0 (; 61 ;) (type $FUNCSIG$jjjii) (param $0 i64) (param $1 i64) (param $2 i32) (param $3 i32) (result i64)
  local.get $0
  local.get $1
  i64.add
 )
 (func $~lib/typedarray/Int64Array#reduce<i64> (; 62 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  local.set $5
  loop $repeat|0
   local.get $2
   local.get $5
   i32.lt_s
   if
    i32.const 4
    global.set $~lib/argc
    local.get $3
    local.get $2
    i32.const 3
    i32.shl
    local.get $4
    i32.add
    i64.load
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
 (func $std/typedarray/testReduce<~lib/typedarray/Int64Array,i64> (; 63 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $0
  i32.const 0
  i64.const 1
  call $~lib/typedarray/Int64Array#__set
  local.get $0
  i32.const 1
  i64.const 2
  call $~lib/typedarray/Int64Array#__set
  local.get $0
  i32.const 2
  i64.const 3
  call $~lib/typedarray/Int64Array#__set
  local.get $0
  i32.const 9
  call $~lib/typedarray/Int64Array#reduce<i64>
  i64.const 6
  i64.ne
  if
   i32.const 0
   i32.const 24
   i32.const 253
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Uint64Array#__set (; 64 ;) (type $FUNCSIG$viij) (param $0 i32) (param $1 i32) (param $2 i64)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 184
   i32.const 688
   i32.const 63
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  local.get $2
  i64.store
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Uint64Array,u64> (; 65 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Uint64Array#constructor
  local.tee $0
  i32.const 0
  i64.const 1
  call $~lib/typedarray/Uint64Array#__set
  local.get $0
  i32.const 1
  i64.const 2
  call $~lib/typedarray/Uint64Array#__set
  local.get $0
  i32.const 2
  i64.const 3
  call $~lib/typedarray/Uint64Array#__set
  local.get $0
  i32.const 10
  call $~lib/typedarray/Int64Array#reduce<i64>
  i64.const 6
  i64.ne
  if
   i32.const 0
   i32.const 24
   i32.const 253
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Float32Array#__set (; 66 ;) (type $FUNCSIG$viif) (param $0 i32) (param $1 i32) (param $2 f32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 184
   i32.const 770
   i32.const 63
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  local.get $2
  f32.store
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Float32Array,f32>~anonymous|0 (; 67 ;) (type $FUNCSIG$fffii) (param $0 f32) (param $1 f32) (param $2 i32) (param $3 i32) (result f32)
  local.get $0
  local.get $1
  f32.add
 )
 (func $~lib/typedarray/Float32Array#reduce<f32> (; 68 ;) (type $FUNCSIG$fi) (param $0 i32) (result f32)
  (local $1 i32)
  (local $2 f32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  local.set $4
  loop $repeat|0
   local.get $1
   local.get $4
   i32.lt_s
   if
    i32.const 4
    global.set $~lib/argc
    local.get $2
    local.get $1
    i32.const 2
    i32.shl
    local.get $3
    i32.add
    f32.load
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
 (func $std/typedarray/testReduce<~lib/typedarray/Float32Array,f32> (; 69 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Float32Array#constructor
  local.tee $0
  i32.const 0
  f32.const 1
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  i32.const 1
  f32.const 2
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  i32.const 2
  f32.const 3
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  call $~lib/typedarray/Float32Array#reduce<f32>
  f32.const 6
  f32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 253
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Float64Array,f64>~anonymous|0 (; 70 ;) (type $FUNCSIG$dddii) (param $0 f64) (param $1 f64) (param $2 i32) (param $3 i32) (result f64)
  local.get $0
  local.get $1
  f64.add
 )
 (func $~lib/typedarray/Float64Array#reduce<f64> (; 71 ;) (type $FUNCSIG$di) (param $0 i32) (result f64)
  (local $1 i32)
  (local $2 f64)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  local.set $4
  loop $repeat|0
   local.get $1
   local.get $4
   i32.lt_s
   if
    i32.const 4
    global.set $~lib/argc
    local.get $2
    local.get $1
    i32.const 3
    i32.shl
    local.get $3
    i32.add
    f64.load
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
 (func $std/typedarray/testReduce<~lib/typedarray/Float64Array,f64> (; 72 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Float64Array#constructor
  local.tee $0
  i32.const 0
  f64.const 1
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  i32.const 1
  f64.const 2
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  i32.const 2
  f64.const 3
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  call $~lib/typedarray/Float64Array#reduce<f64>
  f64.const 6
  f64.ne
  if
   i32.const 0
   i32.const 24
   i32.const 253
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Int8Array#reduceRight<i8> (; 73 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=4
  local.set $3
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
    i32.load8_s
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
 (func $std/typedarray/testReduceRight<~lib/typedarray/Int8Array,i8> (; 74 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  call $~lib/typedarray/Int8Array#reduceRight<i8>
  i32.const 255
  i32.and
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 280
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Uint8Array#reduceRight<u8> (; 75 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=4
  local.set $4
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
    i32.load8_u
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
 (func $std/typedarray/testReduceRight<~lib/typedarray/Uint8Array,u8> (; 76 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 14
  call $~lib/typedarray/Uint8Array#reduceRight<u8>
  i32.const 255
  i32.and
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 280
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Uint8ClampedArray,u8> (; 77 ;) (type $FUNCSIG$v)
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
   i32.const 24
   i32.const 280
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Int16Array#reduceRight<i16> (; 78 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=4
  local.set $3
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
    i32.load16_s
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
 (func $std/typedarray/testReduceRight<~lib/typedarray/Int16Array,i16> (; 79 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int16Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int16Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int16Array#__set
  local.get $0
  call $~lib/typedarray/Int16Array#reduceRight<i16>
  i32.const 65535
  i32.and
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 280
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Uint16Array#reduceRight<u16> (; 80 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=4
  local.set $3
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
    i32.load16_u
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
 (func $std/typedarray/testReduceRight<~lib/typedarray/Uint16Array,u16> (; 81 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Uint16Array#constructor
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint16Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint16Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint16Array#__set
  local.get $0
  call $~lib/typedarray/Uint16Array#reduceRight<u16>
  i32.const 65535
  i32.and
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 280
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Int32Array#reduceRight<i32> (; 82 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
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
    i32.load
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
 (func $std/typedarray/testReduceRight<~lib/typedarray/Int32Array,i32> (; 83 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 18
  call $~lib/typedarray/Int32Array#reduceRight<i32>
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 280
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Uint32Array,u32> (; 84 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Uint32Array#constructor
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint32Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint32Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint32Array#__set
  local.get $0
  i32.const 19
  call $~lib/typedarray/Int32Array#reduceRight<i32>
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 280
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Int64Array#reduceRight<i64> (; 85 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i32)
  (local $3 i64)
  (local $4 i32)
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
    i64.load
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
 (func $std/typedarray/testReduceRight<~lib/typedarray/Int64Array,i64> (; 86 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $0
  i32.const 0
  i64.const 1
  call $~lib/typedarray/Int64Array#__set
  local.get $0
  i32.const 1
  i64.const 2
  call $~lib/typedarray/Int64Array#__set
  local.get $0
  i32.const 2
  i64.const 3
  call $~lib/typedarray/Int64Array#__set
  local.get $0
  i32.const 20
  call $~lib/typedarray/Int64Array#reduceRight<i64>
  i64.const 6
  i64.ne
  if
   i32.const 0
   i32.const 24
   i32.const 280
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Uint64Array,u64> (; 87 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Uint64Array#constructor
  local.tee $0
  i32.const 0
  i64.const 1
  call $~lib/typedarray/Uint64Array#__set
  local.get $0
  i32.const 1
  i64.const 2
  call $~lib/typedarray/Uint64Array#__set
  local.get $0
  i32.const 2
  i64.const 3
  call $~lib/typedarray/Uint64Array#__set
  local.get $0
  i32.const 21
  call $~lib/typedarray/Int64Array#reduceRight<i64>
  i64.const 6
  i64.ne
  if
   i32.const 0
   i32.const 24
   i32.const 280
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Float32Array#reduceRight<f32> (; 88 ;) (type $FUNCSIG$fi) (param $0 i32) (result f32)
  (local $1 i32)
  (local $2 f32)
  (local $3 i32)
  local.get $0
  i32.load offset=4
  local.set $3
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
    f32.load
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
 (func $std/typedarray/testReduceRight<~lib/typedarray/Float32Array,f32> (; 89 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Float32Array#constructor
  local.tee $0
  i32.const 0
  f32.const 1
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  i32.const 1
  f32.const 2
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  i32.const 2
  f32.const 3
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  call $~lib/typedarray/Float32Array#reduceRight<f32>
  f32.const 6
  f32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 280
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Float64Array#reduceRight<f64> (; 90 ;) (type $FUNCSIG$di) (param $0 i32) (result f64)
  (local $1 i32)
  (local $2 f64)
  (local $3 i32)
  local.get $0
  i32.load offset=4
  local.set $3
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
    f64.load
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
 (func $std/typedarray/testReduceRight<~lib/typedarray/Float64Array,f64> (; 91 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Float64Array#constructor
  local.tee $0
  i32.const 0
  f64.const 1
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  i32.const 1
  f64.const 2
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  i32.const 2
  f64.const 3
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  call $~lib/typedarray/Float64Array#reduceRight<f64>
  f64.const 6
  f64.ne
  if
   i32.const 0
   i32.const 24
   i32.const 280
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>~anonymous|0 (; 92 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  local.get $0
  i32.mul
 )
 (func $~lib/typedarray/Int8Array#map (; 93 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $0
  i32.load offset=8
  local.tee $2
  local.set $4
  local.get $2
  call $~lib/typedarray/Int8Array#constructor
  local.tee $2
  i32.load offset=4
  local.set $5
  loop $repeat|0
   local.get $1
   local.get $4
   i32.lt_s
   if
    i32.const 3
    global.set $~lib/argc
    local.get $1
    local.get $5
    i32.add
    local.get $1
    local.get $3
    i32.add
    i32.load8_s
    local.get $1
    local.get $0
    i32.const 24
    call_indirect (type $FUNCSIG$iiii)
    i32.store8
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|0
   end
  end
  local.get $2
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8> (; 94 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  call $~lib/typedarray/Int8Array#map
  local.tee $0
  i32.const 0
  call $~lib/typedarray/Int8Array#__get
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 307
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Int8Array#__get
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 308
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Int8Array#__get
  i32.const 9
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 309
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Uint8Array#map (; 95 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $0
  i32.load offset=8
  local.tee $2
  local.set $4
  local.get $2
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $2
  i32.load offset=4
  local.set $5
  loop $repeat|0
   local.get $1
   local.get $4
   i32.lt_s
   if
    i32.const 3
    global.set $~lib/argc
    local.get $1
    local.get $5
    i32.add
    local.get $1
    local.get $3
    i32.add
    i32.load8_u
    local.get $1
    local.get $0
    i32.const 25
    call_indirect (type $FUNCSIG$iiii)
    i32.store8
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|0
   end
  end
  local.get $2
 )
 (func $~lib/typedarray/Uint8Array#__get (; 96 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 0
   i32.const 184
   i32.const 108
   i32.const 44
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i32.load8_u
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Uint8Array,u8> (; 97 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  call $~lib/typedarray/Uint8Array#map
  local.tee $0
  i32.const 0
  call $~lib/typedarray/Uint8Array#__get
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 307
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Uint8Array#__get
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 308
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Uint8Array#__get
  i32.const 9
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 309
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Uint8ClampedArray#map (; 98 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $0
  i32.load offset=8
  local.tee $2
  local.set $4
  local.get $2
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.tee $2
  i32.load offset=4
  local.set $5
  loop $repeat|0
   local.get $1
   local.get $4
   i32.lt_s
   if
    i32.const 3
    global.set $~lib/argc
    local.get $1
    local.get $5
    i32.add
    local.get $1
    local.get $3
    i32.add
    i32.load8_u
    local.get $1
    local.get $0
    i32.const 26
    call_indirect (type $FUNCSIG$iiii)
    i32.store8
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|0
   end
  end
  local.get $2
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Uint8ClampedArray,u8> (; 99 ;) (type $FUNCSIG$v)
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
  call $~lib/typedarray/Uint8ClampedArray#__get
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 307
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Uint8ClampedArray#__get
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 308
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Uint8ClampedArray#__get
  i32.const 9
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 309
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Int16Array#map (; 100 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  local.tee $2
  local.set $4
  local.get $2
  call $~lib/typedarray/Int16Array#constructor
  local.tee $2
  i32.load offset=4
  local.set $5
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
    local.tee $6
    local.get $3
    i32.add
    i32.load16_s
    local.get $1
    local.get $0
    i32.const 27
    call_indirect (type $FUNCSIG$iiii)
    local.set $7
    local.get $5
    local.get $6
    i32.add
    local.get $7
    i32.store16
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|0
   end
  end
  local.get $2
 )
 (func $~lib/typedarray/Int16Array#__get (; 101 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 184
   i32.const 272
   i32.const 63
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_s
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Int16Array,i16> (; 102 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int16Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int16Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int16Array#__set
  local.get $0
  call $~lib/typedarray/Int16Array#map
  local.tee $0
  i32.const 0
  call $~lib/typedarray/Int16Array#__get
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 307
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Int16Array#__get
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 308
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Int16Array#__get
  i32.const 9
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 309
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Uint16Array#map (; 103 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  local.tee $2
  local.set $4
  local.get $2
  call $~lib/typedarray/Uint16Array#constructor
  local.tee $2
  i32.load offset=4
  local.set $5
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
    local.tee $6
    local.get $3
    i32.add
    i32.load16_u
    local.get $1
    local.get $0
    i32.const 28
    call_indirect (type $FUNCSIG$iiii)
    local.set $7
    local.get $5
    local.get $6
    i32.add
    local.get $7
    i32.store16
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|0
   end
  end
  local.get $2
 )
 (func $~lib/typedarray/Uint16Array#__get (; 104 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 184
   i32.const 354
   i32.const 63
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_u
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Uint16Array,u16> (; 105 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Uint16Array#constructor
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint16Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint16Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint16Array#__set
  local.get $0
  call $~lib/typedarray/Uint16Array#map
  local.tee $0
  i32.const 0
  call $~lib/typedarray/Uint16Array#__get
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 307
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Uint16Array#__get
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 308
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Uint16Array#__get
  i32.const 9
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 309
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Int32Array#map (; 106 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  local.tee $2
  local.set $4
  local.get $2
  call $~lib/typedarray/Int32Array#constructor
  local.tee $2
  i32.load offset=4
  local.set $5
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
    local.tee $6
    local.get $3
    i32.add
    i32.load
    local.get $1
    local.get $0
    i32.const 29
    call_indirect (type $FUNCSIG$iiii)
    local.set $7
    local.get $5
    local.get $6
    i32.add
    local.get $7
    i32.store
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|0
   end
  end
  local.get $2
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Int32Array,i32> (; 107 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  call $~lib/typedarray/Int32Array#map
  local.tee $0
  i32.const 0
  call $~lib/typedarray/Int32Array#__get
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 307
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Int32Array#__get
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 308
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Int32Array#__get
  i32.const 9
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 309
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Uint32Array#map (; 108 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  local.tee $2
  local.set $4
  local.get $2
  call $~lib/typedarray/Uint32Array#constructor
  local.tee $2
  i32.load offset=4
  local.set $5
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
    local.tee $6
    local.get $3
    i32.add
    i32.load
    local.get $1
    local.get $0
    i32.const 30
    call_indirect (type $FUNCSIG$iiii)
    local.set $7
    local.get $5
    local.get $6
    i32.add
    local.get $7
    i32.store
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|0
   end
  end
  local.get $2
 )
 (func $~lib/typedarray/Uint32Array#__get (; 109 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 184
   i32.const 518
   i32.const 63
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Uint32Array,u32> (; 110 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Uint32Array#constructor
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint32Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint32Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint32Array#__set
  local.get $0
  call $~lib/typedarray/Uint32Array#map
  local.tee $0
  i32.const 0
  call $~lib/typedarray/Uint32Array#__get
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 307
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Uint32Array#__get
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 308
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Uint32Array#__get
  i32.const 9
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 309
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Int64Array,i64>~anonymous|0 (; 111 ;) (type $FUNCSIG$jjii) (param $0 i64) (param $1 i32) (param $2 i32) (result i64)
  local.get $0
  local.get $0
  i64.mul
 )
 (func $~lib/typedarray/Int64Array#map (; 112 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  local.tee $2
  local.set $4
  local.get $2
  call $~lib/typedarray/Int64Array#constructor
  local.tee $2
  i32.load offset=4
  local.set $5
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
    local.tee $6
    local.get $3
    i32.add
    i64.load
    local.get $1
    local.get $0
    i32.const 31
    call_indirect (type $FUNCSIG$jjii)
    local.set $7
    local.get $5
    local.get $6
    i32.add
    local.get $7
    i64.store
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|0
   end
  end
  local.get $2
 )
 (func $~lib/typedarray/Int64Array#__get (; 113 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 184
   i32.const 600
   i32.const 63
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  i64.load
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Int64Array,i64> (; 114 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $0
  i32.const 0
  i64.const 1
  call $~lib/typedarray/Int64Array#__set
  local.get $0
  i32.const 1
  i64.const 2
  call $~lib/typedarray/Int64Array#__set
  local.get $0
  i32.const 2
  i64.const 3
  call $~lib/typedarray/Int64Array#__set
  local.get $0
  call $~lib/typedarray/Int64Array#map
  local.tee $0
  i32.const 0
  call $~lib/typedarray/Int64Array#__get
  i64.const 1
  i64.ne
  if
   i32.const 0
   i32.const 24
   i32.const 307
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Int64Array#__get
  i64.const 4
  i64.ne
  if
   i32.const 0
   i32.const 24
   i32.const 308
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Int64Array#__get
  i64.const 9
  i64.ne
  if
   i32.const 0
   i32.const 24
   i32.const 309
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Uint64Array#map (; 115 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  local.tee $2
  local.set $4
  local.get $2
  call $~lib/typedarray/Uint64Array#constructor
  local.tee $2
  i32.load offset=4
  local.set $5
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
    local.tee $6
    local.get $3
    i32.add
    i64.load
    local.get $1
    local.get $0
    i32.const 32
    call_indirect (type $FUNCSIG$jjii)
    local.set $7
    local.get $5
    local.get $6
    i32.add
    local.get $7
    i64.store
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|0
   end
  end
  local.get $2
 )
 (func $~lib/typedarray/Uint64Array#__get (; 116 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 184
   i32.const 682
   i32.const 63
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  i64.load
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Uint64Array,u64> (; 117 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Uint64Array#constructor
  local.tee $0
  i32.const 0
  i64.const 1
  call $~lib/typedarray/Uint64Array#__set
  local.get $0
  i32.const 1
  i64.const 2
  call $~lib/typedarray/Uint64Array#__set
  local.get $0
  i32.const 2
  i64.const 3
  call $~lib/typedarray/Uint64Array#__set
  local.get $0
  call $~lib/typedarray/Uint64Array#map
  local.tee $0
  i32.const 0
  call $~lib/typedarray/Uint64Array#__get
  i64.const 1
  i64.ne
  if
   i32.const 0
   i32.const 24
   i32.const 307
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Uint64Array#__get
  i64.const 4
  i64.ne
  if
   i32.const 0
   i32.const 24
   i32.const 308
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Uint64Array#__get
  i64.const 9
  i64.ne
  if
   i32.const 0
   i32.const 24
   i32.const 309
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Float32Array,f32>~anonymous|0 (; 118 ;) (type $FUNCSIG$ffii) (param $0 f32) (param $1 i32) (param $2 i32) (result f32)
  local.get $0
  local.get $0
  f32.mul
 )
 (func $~lib/typedarray/Float32Array#map (; 119 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 f32)
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  local.tee $2
  local.set $4
  local.get $2
  call $~lib/typedarray/Float32Array#constructor
  local.tee $2
  i32.load offset=4
  local.set $5
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
    local.tee $6
    local.get $3
    i32.add
    f32.load
    local.get $1
    local.get $0
    i32.const 33
    call_indirect (type $FUNCSIG$ffii)
    local.set $7
    local.get $5
    local.get $6
    i32.add
    local.get $7
    f32.store
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|0
   end
  end
  local.get $2
 )
 (func $~lib/typedarray/Float32Array#__get (; 120 ;) (type $FUNCSIG$fii) (param $0 i32) (param $1 i32) (result f32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 184
   i32.const 764
   i32.const 63
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  f32.load
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Float32Array,f32> (; 121 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Float32Array#constructor
  local.tee $0
  i32.const 0
  f32.const 1
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  i32.const 1
  f32.const 2
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  i32.const 2
  f32.const 3
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  call $~lib/typedarray/Float32Array#map
  local.tee $0
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  f32.const 1
  f32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 307
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  f32.const 4
  f32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 308
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Float32Array#__get
  f32.const 9
  f32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 309
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Float64Array,f64>~anonymous|0 (; 122 ;) (type $FUNCSIG$ddii) (param $0 f64) (param $1 i32) (param $2 i32) (result f64)
  local.get $0
  local.get $0
  f64.mul
 )
 (func $~lib/typedarray/Float64Array#map (; 123 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 f64)
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  local.tee $2
  local.set $4
  local.get $2
  call $~lib/typedarray/Float64Array#constructor
  local.tee $2
  i32.load offset=4
  local.set $5
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
    local.tee $6
    local.get $3
    i32.add
    f64.load
    local.get $1
    local.get $0
    i32.const 34
    call_indirect (type $FUNCSIG$ddii)
    local.set $7
    local.get $5
    local.get $6
    i32.add
    local.get $7
    f64.store
    local.get $1
    i32.const 1
    i32.add
    local.set $1
    br $repeat|0
   end
  end
  local.get $2
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Float64Array,f64> (; 124 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Float64Array#constructor
  local.tee $0
  i32.const 0
  f64.const 1
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  i32.const 1
  f64.const 2
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  i32.const 2
  f64.const 3
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  call $~lib/typedarray/Float64Array#map
  local.tee $0
  i32.const 0
  call $~lib/typedarray/Float64Array#__get
  f64.const 1
  f64.ne
  if
   i32.const 0
   i32.const 24
   i32.const 307
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Float64Array#__get
  f64.const 4
  f64.ne
  if
   i32.const 0
   i32.const 24
   i32.const 308
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Float64Array#__get
  f64.const 9
  f64.ne
  if
   i32.const 0
   i32.const 24
   i32.const 309
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|0 (; 125 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 255
  i32.and
  i32.const 2
  i32.eq
 )
 (func $~lib/typedarray/Int8Array#some (; 126 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/typedarray/SOME<~lib/typedarray/Int8Array,i8>|inlined.0 (result i32)
   local.get $0
   i32.load offset=4
   local.set $3
   local.get $0
   i32.load offset=8
   local.set $4
   loop $repeat|0
    local.get $2
    local.get $4
    i32.lt_s
    if
     i32.const 3
     global.set $~lib/argc
     i32.const 1
     local.get $2
     local.get $3
     i32.add
     i32.load8_s
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $FUNCSIG$iiii)
     br_if $~lib/typedarray/SOME<~lib/typedarray/Int8Array,i8>|inlined.0
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
 (func $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|1 (; 127 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 255
  i32.and
  i32.eqz
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8> (; 128 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  local.tee $0
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 35
  call $~lib/typedarray/Int8Array#some
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 336
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 36
  call $~lib/typedarray/Int8Array#some
  if
   i32.const 0
   i32.const 24
   i32.const 339
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Uint8Array#some (; 129 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/typedarray/SOME<~lib/typedarray/Uint8Array,u8>|inlined.0 (result i32)
   local.get $0
   i32.load offset=4
   local.set $3
   local.get $0
   i32.load offset=8
   local.set $4
   loop $repeat|0
    local.get $2
    local.get $4
    i32.lt_s
    if
     i32.const 3
     global.set $~lib/argc
     i32.const 1
     local.get $2
     local.get $3
     i32.add
     i32.load8_u
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $FUNCSIG$iiii)
     br_if $~lib/typedarray/SOME<~lib/typedarray/Uint8Array,u8>|inlined.0
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
 (func $std/typedarray/testArraySome<~lib/typedarray/Uint8Array,u8> (; 130 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $0
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 37
  call $~lib/typedarray/Uint8Array#some
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 336
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 38
  call $~lib/typedarray/Uint8Array#some
  if
   i32.const 0
   i32.const 24
   i32.const 339
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Uint8ClampedArray,u8> (; 131 ;) (type $FUNCSIG$v)
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
   i32.const 24
   i32.const 336
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 40
  call $~lib/typedarray/Uint8Array#some
  if
   i32.const 0
   i32.const 24
   i32.const 339
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|0 (; 132 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 65535
  i32.and
  i32.const 2
  i32.eq
 )
 (func $~lib/typedarray/Int16Array#some (; 133 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/typedarray/SOME<~lib/typedarray/Int16Array,i16>|inlined.0 (result i32)
   local.get $0
   i32.load offset=4
   local.set $3
   local.get $0
   i32.load offset=8
   i32.const 1
   i32.shr_u
   local.set $4
   loop $repeat|0
    local.get $2
    local.get $4
    i32.lt_s
    if
     i32.const 3
     global.set $~lib/argc
     i32.const 1
     local.get $2
     i32.const 1
     i32.shl
     local.get $3
     i32.add
     i32.load16_s
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $FUNCSIG$iiii)
     br_if $~lib/typedarray/SOME<~lib/typedarray/Int16Array,i16>|inlined.0
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
 (func $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|1 (; 134 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 65535
  i32.and
  i32.eqz
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16> (; 135 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.tee $0
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Int16Array#__set
  local.get $0
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Int16Array#__set
  local.get $0
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Int16Array#__set
  local.get $0
  i32.const 41
  call $~lib/typedarray/Int16Array#some
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 336
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 42
  call $~lib/typedarray/Int16Array#some
  if
   i32.const 0
   i32.const 24
   i32.const 339
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Uint16Array#some (; 136 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/typedarray/SOME<~lib/typedarray/Uint16Array,u16>|inlined.0 (result i32)
   local.get $0
   i32.load offset=4
   local.set $3
   local.get $0
   i32.load offset=8
   i32.const 1
   i32.shr_u
   local.set $4
   loop $repeat|0
    local.get $2
    local.get $4
    i32.lt_s
    if
     i32.const 3
     global.set $~lib/argc
     i32.const 1
     local.get $2
     i32.const 1
     i32.shl
     local.get $3
     i32.add
     i32.load16_u
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $FUNCSIG$iiii)
     br_if $~lib/typedarray/SOME<~lib/typedarray/Uint16Array,u16>|inlined.0
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
 (func $std/typedarray/testArraySome<~lib/typedarray/Uint16Array,u16> (; 137 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Uint16Array#constructor
  local.tee $0
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Uint16Array#__set
  local.get $0
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Uint16Array#__set
  local.get $0
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Uint16Array#__set
  local.get $0
  i32.const 43
  call $~lib/typedarray/Uint16Array#some
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 336
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 44
  call $~lib/typedarray/Uint16Array#some
  if
   i32.const 0
   i32.const 24
   i32.const 339
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|0 (; 138 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 2
  i32.eq
 )
 (func $~lib/typedarray/Int32Array#some (; 139 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/typedarray/SOME<~lib/typedarray/Int32Array,i32>|inlined.0 (result i32)
   local.get $0
   i32.load offset=4
   local.set $3
   local.get $0
   i32.load offset=8
   i32.const 2
   i32.shr_u
   local.set $4
   loop $repeat|0
    local.get $2
    local.get $4
    i32.lt_s
    if
     i32.const 3
     global.set $~lib/argc
     i32.const 1
     local.get $2
     i32.const 2
     i32.shl
     local.get $3
     i32.add
     i32.load
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $FUNCSIG$iiii)
     br_if $~lib/typedarray/SOME<~lib/typedarray/Int32Array,i32>|inlined.0
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
 (func $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|1 (; 140 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.eqz
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32> (; 141 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.tee $0
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 45
  call $~lib/typedarray/Int32Array#some
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 336
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 46
  call $~lib/typedarray/Int32Array#some
  if
   i32.const 0
   i32.const 24
   i32.const 339
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Uint32Array,u32> (; 142 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Uint32Array#constructor
  local.tee $0
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Uint32Array#__set
  local.get $0
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Uint32Array#__set
  local.get $0
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Uint32Array#__set
  local.get $0
  i32.const 47
  call $~lib/typedarray/Int32Array#some
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 336
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 48
  call $~lib/typedarray/Int32Array#some
  if
   i32.const 0
   i32.const 24
   i32.const 339
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|0 (; 143 ;) (type $FUNCSIG$ijii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i64.const 2
  i64.eq
 )
 (func $~lib/typedarray/Int64Array#some (; 144 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/typedarray/SOME<~lib/typedarray/Int64Array,i64>|inlined.0 (result i32)
   local.get $0
   i32.load offset=4
   local.set $3
   local.get $0
   i32.load offset=8
   i32.const 3
   i32.shr_u
   local.set $4
   loop $repeat|0
    local.get $2
    local.get $4
    i32.lt_s
    if
     i32.const 3
     global.set $~lib/argc
     i32.const 1
     local.get $2
     i32.const 3
     i32.shl
     local.get $3
     i32.add
     i64.load
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $FUNCSIG$ijii)
     br_if $~lib/typedarray/SOME<~lib/typedarray/Int64Array,i64>|inlined.0
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
 (func $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|1 (; 145 ;) (type $FUNCSIG$ijii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i64.const 0
  i64.eq
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64> (; 146 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $0
  i32.const 0
  i64.const 2
  call $~lib/typedarray/Int64Array#__set
  local.get $0
  i32.const 1
  i64.const 4
  call $~lib/typedarray/Int64Array#__set
  local.get $0
  i32.const 2
  i64.const 6
  call $~lib/typedarray/Int64Array#__set
  local.get $0
  i32.const 49
  call $~lib/typedarray/Int64Array#some
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 336
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 50
  call $~lib/typedarray/Int64Array#some
  if
   i32.const 0
   i32.const 24
   i32.const 339
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Uint64Array,u64> (; 147 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Uint64Array#constructor
  local.tee $0
  i32.const 0
  i64.const 2
  call $~lib/typedarray/Uint64Array#__set
  local.get $0
  i32.const 1
  i64.const 4
  call $~lib/typedarray/Uint64Array#__set
  local.get $0
  i32.const 2
  i64.const 6
  call $~lib/typedarray/Uint64Array#__set
  local.get $0
  i32.const 51
  call $~lib/typedarray/Int64Array#some
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 336
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 52
  call $~lib/typedarray/Int64Array#some
  if
   i32.const 0
   i32.const 24
   i32.const 339
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Float32Array,f32>~anonymous|0 (; 148 ;) (type $FUNCSIG$ifii) (param $0 f32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  f32.const 2
  f32.eq
 )
 (func $~lib/typedarray/Float32Array#some (; 149 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/typedarray/SOME<~lib/typedarray/Float32Array,f32>|inlined.0 (result i32)
   local.get $0
   i32.load offset=4
   local.set $3
   local.get $0
   i32.load offset=8
   i32.const 2
   i32.shr_u
   local.set $4
   loop $repeat|0
    local.get $2
    local.get $4
    i32.lt_s
    if
     i32.const 3
     global.set $~lib/argc
     i32.const 1
     local.get $2
     i32.const 2
     i32.shl
     local.get $3
     i32.add
     f32.load
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $FUNCSIG$ifii)
     br_if $~lib/typedarray/SOME<~lib/typedarray/Float32Array,f32>|inlined.0
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
 (func $std/typedarray/testArraySome<~lib/typedarray/Float32Array,f32>~anonymous|1 (; 150 ;) (type $FUNCSIG$ifii) (param $0 f32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  f32.const 0
  f32.eq
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Float32Array,f32> (; 151 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Float32Array#constructor
  local.tee $0
  i32.const 0
  f32.const 2
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  i32.const 1
  f32.const 4
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  i32.const 2
  f32.const 6
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  i32.const 53
  call $~lib/typedarray/Float32Array#some
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 336
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 54
  call $~lib/typedarray/Float32Array#some
  if
   i32.const 0
   i32.const 24
   i32.const 339
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Float64Array,f64>~anonymous|0 (; 152 ;) (type $FUNCSIG$idii) (param $0 f64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  f64.const 2
  f64.eq
 )
 (func $~lib/typedarray/Float64Array#some (; 153 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/typedarray/SOME<~lib/typedarray/Float64Array,f64>|inlined.0 (result i32)
   local.get $0
   i32.load offset=4
   local.set $3
   local.get $0
   i32.load offset=8
   i32.const 3
   i32.shr_u
   local.set $4
   loop $repeat|0
    local.get $2
    local.get $4
    i32.lt_s
    if
     i32.const 3
     global.set $~lib/argc
     i32.const 1
     local.get $2
     i32.const 3
     i32.shl
     local.get $3
     i32.add
     f64.load
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $FUNCSIG$idii)
     br_if $~lib/typedarray/SOME<~lib/typedarray/Float64Array,f64>|inlined.0
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
 (func $std/typedarray/testArraySome<~lib/typedarray/Float64Array,f64>~anonymous|1 (; 154 ;) (type $FUNCSIG$idii) (param $0 f64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  f64.const 0
  f64.eq
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Float64Array,f64> (; 155 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Float64Array#constructor
  local.tee $0
  i32.const 0
  f64.const 2
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  i32.const 1
  f64.const 4
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  i32.const 2
  f64.const 6
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  i32.const 55
  call $~lib/typedarray/Float64Array#some
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 336
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 56
  call $~lib/typedarray/Float64Array#some
  if
   i32.const 0
   i32.const 24
   i32.const 339
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Int8Array#findIndex (; 156 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.tee $2
  i32.load offset=4
  local.set $3
  i32.const 0
  local.set $0
  local.get $2
  i32.load offset=8
  local.set $4
  block $~lib/typedarray/FIND_INDEX<~lib/typedarray/Int8Array,i8>|inlined.0
   loop $repeat|0
    local.get $0
    local.get $4
    i32.lt_s
    if
     i32.const 3
     global.set $~lib/argc
     local.get $0
     local.get $3
     i32.add
     i32.load8_s
     local.get $0
     local.get $2
     local.get $1
     call_indirect (type $FUNCSIG$iiii)
     br_if $~lib/typedarray/FIND_INDEX<~lib/typedarray/Int8Array,i8>|inlined.0
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
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int8Array,i8>~anonymous|1 (; 157 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 255
  i32.and
  i32.const 4
  i32.eq
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int8Array,i8> (; 158 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 57
  call $~lib/typedarray/Int8Array#findIndex
  i32.const 1
  i32.ne
  if
   i32.const 728
   i32.const 24
   i32.const 366
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
   i32.const 776
   i32.const 24
   i32.const 369
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Uint8Array#findIndex (; 159 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.tee $2
  i32.load offset=4
  local.set $3
  i32.const 0
  local.set $0
  local.get $2
  i32.load offset=8
  local.set $4
  block $~lib/typedarray/FIND_INDEX<~lib/typedarray/Uint8Array,u8>|inlined.0
   loop $repeat|0
    local.get $0
    local.get $4
    i32.lt_s
    if
     i32.const 3
     global.set $~lib/argc
     local.get $0
     local.get $3
     i32.add
     i32.load8_u
     local.get $0
     local.get $2
     local.get $1
     call_indirect (type $FUNCSIG$iiii)
     br_if $~lib/typedarray/FIND_INDEX<~lib/typedarray/Uint8Array,u8>|inlined.0
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
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint8Array,u8> (; 160 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 59
  call $~lib/typedarray/Uint8Array#findIndex
  i32.const 1
  i32.ne
  if
   i32.const 728
   i32.const 24
   i32.const 366
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
   i32.const 776
   i32.const 24
   i32.const 369
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint8ClampedArray,u8> (; 161 ;) (type $FUNCSIG$v)
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
   i32.const 728
   i32.const 24
   i32.const 366
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
   i32.const 776
   i32.const 24
   i32.const 369
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Int16Array#findIndex (; 162 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.tee $2
  i32.load offset=4
  local.set $3
  i32.const 0
  local.set $0
  local.get $2
  i32.load offset=8
  i32.const 1
  i32.shr_u
  local.set $4
  block $~lib/typedarray/FIND_INDEX<~lib/typedarray/Int16Array,i16>|inlined.0
   loop $repeat|0
    local.get $0
    local.get $4
    i32.lt_s
    if
     i32.const 3
     global.set $~lib/argc
     local.get $0
     i32.const 1
     i32.shl
     local.get $3
     i32.add
     i32.load16_s
     local.get $0
     local.get $2
     local.get $1
     call_indirect (type $FUNCSIG$iiii)
     br_if $~lib/typedarray/FIND_INDEX<~lib/typedarray/Int16Array,i16>|inlined.0
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
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int16Array,i16>~anonymous|1 (; 163 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 65535
  i32.and
  i32.const 4
  i32.eq
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int16Array,i16> (; 164 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int16Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int16Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int16Array#__set
  local.get $0
  i32.const 63
  call $~lib/typedarray/Int16Array#findIndex
  i32.const 1
  i32.ne
  if
   i32.const 728
   i32.const 24
   i32.const 366
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
   i32.const 776
   i32.const 24
   i32.const 369
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Uint16Array#findIndex (; 165 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.tee $2
  i32.load offset=4
  local.set $3
  i32.const 0
  local.set $0
  local.get $2
  i32.load offset=8
  i32.const 1
  i32.shr_u
  local.set $4
  block $~lib/typedarray/FIND_INDEX<~lib/typedarray/Uint16Array,u16>|inlined.0
   loop $repeat|0
    local.get $0
    local.get $4
    i32.lt_s
    if
     i32.const 3
     global.set $~lib/argc
     local.get $0
     i32.const 1
     i32.shl
     local.get $3
     i32.add
     i32.load16_u
     local.get $0
     local.get $2
     local.get $1
     call_indirect (type $FUNCSIG$iiii)
     br_if $~lib/typedarray/FIND_INDEX<~lib/typedarray/Uint16Array,u16>|inlined.0
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
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint16Array,u16> (; 166 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Uint16Array#constructor
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint16Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint16Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint16Array#__set
  local.get $0
  i32.const 65
  call $~lib/typedarray/Uint16Array#findIndex
  i32.const 1
  i32.ne
  if
   i32.const 728
   i32.const 24
   i32.const 366
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
   i32.const 776
   i32.const 24
   i32.const 369
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Int32Array#findIndex (; 167 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.tee $2
  i32.load offset=4
  local.set $3
  i32.const 0
  local.set $0
  local.get $2
  i32.load offset=8
  i32.const 2
  i32.shr_u
  local.set $4
  block $~lib/typedarray/FIND_INDEX<~lib/typedarray/Int32Array,i32>|inlined.0
   loop $repeat|0
    local.get $0
    local.get $4
    i32.lt_s
    if
     i32.const 3
     global.set $~lib/argc
     local.get $0
     i32.const 2
     i32.shl
     local.get $3
     i32.add
     i32.load
     local.get $0
     local.get $2
     local.get $1
     call_indirect (type $FUNCSIG$iiii)
     br_if $~lib/typedarray/FIND_INDEX<~lib/typedarray/Int32Array,i32>|inlined.0
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
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int32Array,i32>~anonymous|1 (; 168 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 4
  i32.eq
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int32Array,i32> (; 169 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 67
  call $~lib/typedarray/Int32Array#findIndex
  i32.const 1
  i32.ne
  if
   i32.const 728
   i32.const 24
   i32.const 366
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
   i32.const 776
   i32.const 24
   i32.const 369
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint32Array,u32> (; 170 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Uint32Array#constructor
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint32Array#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint32Array#__set
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint32Array#__set
  local.get $0
  i32.const 69
  call $~lib/typedarray/Int32Array#findIndex
  i32.const 1
  i32.ne
  if
   i32.const 728
   i32.const 24
   i32.const 366
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
   i32.const 776
   i32.const 24
   i32.const 369
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Int64Array#findIndex (; 171 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.tee $2
  i32.load offset=4
  local.set $3
  i32.const 0
  local.set $0
  local.get $2
  i32.load offset=8
  i32.const 3
  i32.shr_u
  local.set $4
  block $~lib/typedarray/FIND_INDEX<~lib/typedarray/Int64Array,i64>|inlined.0
   loop $repeat|0
    local.get $0
    local.get $4
    i32.lt_s
    if
     i32.const 3
     global.set $~lib/argc
     local.get $0
     i32.const 3
     i32.shl
     local.get $3
     i32.add
     i64.load
     local.get $0
     local.get $2
     local.get $1
     call_indirect (type $FUNCSIG$ijii)
     br_if $~lib/typedarray/FIND_INDEX<~lib/typedarray/Int64Array,i64>|inlined.0
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
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int64Array,i64>~anonymous|1 (; 172 ;) (type $FUNCSIG$ijii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i64.const 4
  i64.eq
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int64Array,i64> (; 173 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $0
  i32.const 0
  i64.const 1
  call $~lib/typedarray/Int64Array#__set
  local.get $0
  i32.const 1
  i64.const 2
  call $~lib/typedarray/Int64Array#__set
  local.get $0
  i32.const 2
  i64.const 3
  call $~lib/typedarray/Int64Array#__set
  local.get $0
  i32.const 71
  call $~lib/typedarray/Int64Array#findIndex
  i32.const 1
  i32.ne
  if
   i32.const 728
   i32.const 24
   i32.const 366
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
   i32.const 776
   i32.const 24
   i32.const 369
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint64Array,u64> (; 174 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Uint64Array#constructor
  local.tee $0
  i32.const 0
  i64.const 1
  call $~lib/typedarray/Uint64Array#__set
  local.get $0
  i32.const 1
  i64.const 2
  call $~lib/typedarray/Uint64Array#__set
  local.get $0
  i32.const 2
  i64.const 3
  call $~lib/typedarray/Uint64Array#__set
  local.get $0
  i32.const 73
  call $~lib/typedarray/Int64Array#findIndex
  i32.const 1
  i32.ne
  if
   i32.const 728
   i32.const 24
   i32.const 366
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
   i32.const 776
   i32.const 24
   i32.const 369
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Float32Array#findIndex (; 175 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.tee $2
  i32.load offset=4
  local.set $3
  i32.const 0
  local.set $0
  local.get $2
  i32.load offset=8
  i32.const 2
  i32.shr_u
  local.set $4
  block $~lib/typedarray/FIND_INDEX<~lib/typedarray/Float32Array,f32>|inlined.0
   loop $repeat|0
    local.get $0
    local.get $4
    i32.lt_s
    if
     i32.const 3
     global.set $~lib/argc
     local.get $0
     i32.const 2
     i32.shl
     local.get $3
     i32.add
     f32.load
     local.get $0
     local.get $2
     local.get $1
     call_indirect (type $FUNCSIG$ifii)
     br_if $~lib/typedarray/FIND_INDEX<~lib/typedarray/Float32Array,f32>|inlined.0
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
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Float32Array,f32>~anonymous|1 (; 176 ;) (type $FUNCSIG$ifii) (param $0 f32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  f32.const 4
  f32.eq
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Float32Array,f32> (; 177 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Float32Array#constructor
  local.tee $0
  i32.const 0
  f32.const 1
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  i32.const 1
  f32.const 2
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  i32.const 2
  f32.const 3
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  i32.const 75
  call $~lib/typedarray/Float32Array#findIndex
  i32.const 1
  i32.ne
  if
   i32.const 728
   i32.const 24
   i32.const 366
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
   i32.const 776
   i32.const 24
   i32.const 369
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Float64Array#findIndex (; 178 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  local.tee $2
  i32.load offset=4
  local.set $3
  i32.const 0
  local.set $0
  local.get $2
  i32.load offset=8
  i32.const 3
  i32.shr_u
  local.set $4
  block $~lib/typedarray/FIND_INDEX<~lib/typedarray/Float64Array,f64>|inlined.0
   loop $repeat|0
    local.get $0
    local.get $4
    i32.lt_s
    if
     i32.const 3
     global.set $~lib/argc
     local.get $0
     i32.const 3
     i32.shl
     local.get $3
     i32.add
     f64.load
     local.get $0
     local.get $2
     local.get $1
     call_indirect (type $FUNCSIG$idii)
     br_if $~lib/typedarray/FIND_INDEX<~lib/typedarray/Float64Array,f64>|inlined.0
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
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Float64Array,f64>~anonymous|1 (; 179 ;) (type $FUNCSIG$idii) (param $0 f64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  f64.const 4
  f64.eq
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Float64Array,f64> (; 180 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Float64Array#constructor
  local.tee $0
  i32.const 0
  f64.const 1
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  i32.const 1
  f64.const 2
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  i32.const 2
  f64.const 3
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  i32.const 77
  call $~lib/typedarray/Float64Array#findIndex
  i32.const 1
  i32.ne
  if
   i32.const 728
   i32.const 24
   i32.const 366
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
   i32.const 776
   i32.const 24
   i32.const 369
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int8Array,i8>~anonymous|0 (; 181 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 2
  i32.rem_s
  i32.eqz
 )
 (func $~lib/typedarray/Int8Array#every (; 182 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/typedarray/EVERY<~lib/typedarray/Int8Array,i8>|inlined.0 (result i32)
   local.get $0
   i32.load offset=4
   local.set $3
   local.get $0
   i32.load offset=8
   local.set $4
   loop $repeat|0
    local.get $2
    local.get $4
    i32.lt_s
    if
     i32.const 3
     global.set $~lib/argc
     i32.const 0
     local.get $2
     local.get $3
     i32.add
     i32.load8_s
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $FUNCSIG$iiii)
     i32.eqz
     br_if $~lib/typedarray/EVERY<~lib/typedarray/Int8Array,i8>|inlined.0
     drop
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
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int8Array,i8> (; 183 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  local.tee $0
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 79
  call $~lib/typedarray/Int8Array#every
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 396
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 80
  call $~lib/typedarray/Int8Array#every
  if
   i32.const 0
   i32.const 24
   i32.const 399
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint8Array,u8>~anonymous|0 (; 184 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 1
  i32.and
  i32.eqz
 )
 (func $~lib/typedarray/Uint8Array#every (; 185 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/typedarray/EVERY<~lib/typedarray/Uint8Array,u8>|inlined.0 (result i32)
   local.get $0
   i32.load offset=4
   local.set $3
   local.get $0
   i32.load offset=8
   local.set $4
   loop $repeat|0
    local.get $2
    local.get $4
    i32.lt_s
    if
     i32.const 3
     global.set $~lib/argc
     i32.const 0
     local.get $2
     local.get $3
     i32.add
     i32.load8_u
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $FUNCSIG$iiii)
     i32.eqz
     br_if $~lib/typedarray/EVERY<~lib/typedarray/Uint8Array,u8>|inlined.0
     drop
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
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint8Array,u8> (; 186 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $0
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 81
  call $~lib/typedarray/Uint8Array#every
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 396
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 82
  call $~lib/typedarray/Uint8Array#every
  if
   i32.const 0
   i32.const 24
   i32.const 399
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint8ClampedArray,u8> (; 187 ;) (type $FUNCSIG$v)
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
   i32.const 24
   i32.const 396
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 84
  call $~lib/typedarray/Uint8Array#every
  if
   i32.const 0
   i32.const 24
   i32.const 399
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int16Array,i16>~anonymous|0 (; 188 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 2
  i32.rem_s
  i32.eqz
 )
 (func $~lib/typedarray/Int16Array#every (; 189 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/typedarray/EVERY<~lib/typedarray/Int16Array,i16>|inlined.0 (result i32)
   local.get $0
   i32.load offset=4
   local.set $3
   local.get $0
   i32.load offset=8
   i32.const 1
   i32.shr_u
   local.set $4
   loop $repeat|0
    local.get $2
    local.get $4
    i32.lt_s
    if
     i32.const 3
     global.set $~lib/argc
     i32.const 0
     local.get $2
     i32.const 1
     i32.shl
     local.get $3
     i32.add
     i32.load16_s
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $FUNCSIG$iiii)
     i32.eqz
     br_if $~lib/typedarray/EVERY<~lib/typedarray/Int16Array,i16>|inlined.0
     drop
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
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int16Array,i16> (; 190 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.tee $0
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Int16Array#__set
  local.get $0
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Int16Array#__set
  local.get $0
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Int16Array#__set
  local.get $0
  i32.const 85
  call $~lib/typedarray/Int16Array#every
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 396
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 86
  call $~lib/typedarray/Int16Array#every
  if
   i32.const 0
   i32.const 24
   i32.const 399
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Uint16Array#every (; 191 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/typedarray/EVERY<~lib/typedarray/Uint16Array,u16>|inlined.0 (result i32)
   local.get $0
   i32.load offset=4
   local.set $3
   local.get $0
   i32.load offset=8
   i32.const 1
   i32.shr_u
   local.set $4
   loop $repeat|0
    local.get $2
    local.get $4
    i32.lt_s
    if
     i32.const 3
     global.set $~lib/argc
     i32.const 0
     local.get $2
     i32.const 1
     i32.shl
     local.get $3
     i32.add
     i32.load16_u
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $FUNCSIG$iiii)
     i32.eqz
     br_if $~lib/typedarray/EVERY<~lib/typedarray/Uint16Array,u16>|inlined.0
     drop
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
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint16Array,u16> (; 192 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Uint16Array#constructor
  local.tee $0
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Uint16Array#__set
  local.get $0
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Uint16Array#__set
  local.get $0
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Uint16Array#__set
  local.get $0
  i32.const 87
  call $~lib/typedarray/Uint16Array#every
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 396
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 88
  call $~lib/typedarray/Uint16Array#every
  if
   i32.const 0
   i32.const 24
   i32.const 399
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int32Array,i32>~anonymous|0 (; 193 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 2
  i32.rem_s
  i32.eqz
 )
 (func $~lib/typedarray/Int32Array#every (; 194 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/typedarray/EVERY<~lib/typedarray/Int32Array,i32>|inlined.0 (result i32)
   local.get $0
   i32.load offset=4
   local.set $3
   local.get $0
   i32.load offset=8
   i32.const 2
   i32.shr_u
   local.set $4
   loop $repeat|0
    local.get $2
    local.get $4
    i32.lt_s
    if
     i32.const 3
     global.set $~lib/argc
     i32.const 0
     local.get $2
     i32.const 2
     i32.shl
     local.get $3
     i32.add
     i32.load
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $FUNCSIG$iiii)
     i32.eqz
     br_if $~lib/typedarray/EVERY<~lib/typedarray/Int32Array,i32>|inlined.0
     drop
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
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int32Array,i32> (; 195 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.tee $0
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 89
  call $~lib/typedarray/Int32Array#every
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 396
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 90
  call $~lib/typedarray/Int32Array#every
  if
   i32.const 0
   i32.const 24
   i32.const 399
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint32Array,u32> (; 196 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Uint32Array#constructor
  local.tee $0
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Uint32Array#__set
  local.get $0
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Uint32Array#__set
  local.get $0
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Uint32Array#__set
  local.get $0
  i32.const 91
  call $~lib/typedarray/Int32Array#every
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 396
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 92
  call $~lib/typedarray/Int32Array#every
  if
   i32.const 0
   i32.const 24
   i32.const 399
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int64Array,i64>~anonymous|0 (; 197 ;) (type $FUNCSIG$ijii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i64.const 2
  i64.rem_s
  i64.const 0
  i64.eq
 )
 (func $~lib/typedarray/Int64Array#every (; 198 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/typedarray/EVERY<~lib/typedarray/Int64Array,i64>|inlined.0 (result i32)
   local.get $0
   i32.load offset=4
   local.set $3
   local.get $0
   i32.load offset=8
   i32.const 3
   i32.shr_u
   local.set $4
   loop $repeat|0
    local.get $2
    local.get $4
    i32.lt_s
    if
     i32.const 3
     global.set $~lib/argc
     i32.const 0
     local.get $2
     i32.const 3
     i32.shl
     local.get $3
     i32.add
     i64.load
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $FUNCSIG$ijii)
     i32.eqz
     br_if $~lib/typedarray/EVERY<~lib/typedarray/Int64Array,i64>|inlined.0
     drop
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
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int64Array,i64> (; 199 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $0
  i32.const 0
  i64.const 2
  call $~lib/typedarray/Int64Array#__set
  local.get $0
  i32.const 1
  i64.const 4
  call $~lib/typedarray/Int64Array#__set
  local.get $0
  i32.const 2
  i64.const 6
  call $~lib/typedarray/Int64Array#__set
  local.get $0
  i32.const 93
  call $~lib/typedarray/Int64Array#every
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 396
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 94
  call $~lib/typedarray/Int64Array#every
  if
   i32.const 0
   i32.const 24
   i32.const 399
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint64Array,u64>~anonymous|0 (; 200 ;) (type $FUNCSIG$ijii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i64.const 2
  i64.rem_u
  i64.const 0
  i64.eq
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint64Array,u64> (; 201 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Uint64Array#constructor
  local.tee $0
  i32.const 0
  i64.const 2
  call $~lib/typedarray/Uint64Array#__set
  local.get $0
  i32.const 1
  i64.const 4
  call $~lib/typedarray/Uint64Array#__set
  local.get $0
  i32.const 2
  i64.const 6
  call $~lib/typedarray/Uint64Array#__set
  local.get $0
  i32.const 95
  call $~lib/typedarray/Int64Array#every
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 396
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 96
  call $~lib/typedarray/Int64Array#every
  if
   i32.const 0
   i32.const 24
   i32.const 399
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/math/NativeMathf.mod (; 202 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.reinterpret_f32
  local.tee $3
  i32.const -2147483648
  i32.and
  local.set $4
  local.get $3
  i32.const 23
  i32.shr_u
  i32.const 255
  i32.and
  local.tee $2
  i32.const 255
  i32.eq
  local.tee $1
  i32.eqz
  if
   i32.const 0
   local.set $1
  end
  local.get $1
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
     if (result i32)
      local.get $1
      i32.const 8388608
      i32.eq
      br_if $folding-inner0
      local.get $1
      i32.const 8388608
      i32.sub
     else      
      local.get $1
     end
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
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Float32Array,f32>~anonymous|0 (; 203 ;) (type $FUNCSIG$ifii) (param $0 f32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  call $~lib/math/NativeMathf.mod
  f32.const 0
  f32.eq
 )
 (func $~lib/typedarray/Float32Array#every (; 204 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/typedarray/EVERY<~lib/typedarray/Float32Array,f32>|inlined.0 (result i32)
   local.get $0
   i32.load offset=4
   local.set $3
   local.get $0
   i32.load offset=8
   i32.const 2
   i32.shr_u
   local.set $4
   loop $repeat|0
    local.get $2
    local.get $4
    i32.lt_s
    if
     i32.const 3
     global.set $~lib/argc
     i32.const 0
     local.get $2
     i32.const 2
     i32.shl
     local.get $3
     i32.add
     f32.load
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $FUNCSIG$ifii)
     i32.eqz
     br_if $~lib/typedarray/EVERY<~lib/typedarray/Float32Array,f32>|inlined.0
     drop
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
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Float32Array,f32> (; 205 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Float32Array#constructor
  local.tee $0
  i32.const 0
  f32.const 2
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  i32.const 1
  f32.const 4
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  i32.const 2
  f32.const 6
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  i32.const 97
  call $~lib/typedarray/Float32Array#every
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 396
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 98
  call $~lib/typedarray/Float32Array#every
  if
   i32.const 0
   i32.const 24
   i32.const 399
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/math/NativeMath.mod (; 206 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i32)
  (local $5 i64)
  local.get $0
  i64.reinterpret_f64
  local.tee $1
  i64.const 63
  i64.shr_u
  local.set $5
  local.get $1
  i64.const 52
  i64.shr_u
  i64.const 2047
  i64.and
  local.tee $2
  i64.const 2047
  i64.eq
  local.tee $4
  i32.eqz
  if
   i32.const 0
   local.set $4
  end
  local.get $4
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
     if (result i64)
      local.get $1
      i64.const 4503599627370496
      i64.eq
      br_if $folding-inner0
      local.get $1
      i64.const 4503599627370496
      i64.sub
     else      
      local.get $1
     end
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
   local.get $5
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
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Float64Array,f64>~anonymous|0 (; 207 ;) (type $FUNCSIG$idii) (param $0 f64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  call $~lib/math/NativeMath.mod
  f64.const 0
  f64.eq
 )
 (func $~lib/typedarray/Float64Array#every (; 208 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/typedarray/EVERY<~lib/typedarray/Float64Array,f64>|inlined.0 (result i32)
   local.get $0
   i32.load offset=4
   local.set $3
   local.get $0
   i32.load offset=8
   i32.const 3
   i32.shr_u
   local.set $4
   loop $repeat|0
    local.get $2
    local.get $4
    i32.lt_s
    if
     i32.const 3
     global.set $~lib/argc
     i32.const 0
     local.get $2
     i32.const 3
     i32.shl
     local.get $3
     i32.add
     f64.load
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $FUNCSIG$idii)
     i32.eqz
     br_if $~lib/typedarray/EVERY<~lib/typedarray/Float64Array,f64>|inlined.0
     drop
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
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Float64Array,f64> (; 209 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Float64Array#constructor
  local.tee $0
  i32.const 0
  f64.const 2
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  i32.const 1
  f64.const 4
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  i32.const 2
  f64.const 6
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  i32.const 99
  call $~lib/typedarray/Float64Array#every
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 396
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 100
  call $~lib/typedarray/Float64Array#every
  if
   i32.const 0
   i32.const 24
   i32.const 399
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Int8Array,i8>~anonymous|0 (; 210 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.const 255
  i32.and
  global.get $std/typedarray/forEachValues
  local.get $1
  call $~lib/array/Array<i32>#__get
  i32.const 255
  i32.and
  i32.ne
  if
   i32.const 896
   i32.const 24
   i32.const 426
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  global.get $std/typedarray/forEachCallCount
  i32.ne
  if
   i32.const 960
   i32.const 24
   i32.const 427
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  global.get $std/typedarray/forEachSelf
  i32.ne
  if
   i32.const 1024
   i32.const 24
   i32.const 428
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  global.get $std/typedarray/forEachCallCount
  i32.const 1
  i32.add
  global.set $std/typedarray/forEachCallCount
 )
 (func $~lib/typedarray/Int8Array#forEach (; 211 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $0
  i32.load offset=8
  local.set $3
  loop $repeat|0
   local.get $1
   local.get $3
   i32.lt_s
   if
    i32.const 3
    global.set $~lib/argc
    local.get $1
    local.get $2
    i32.add
    i32.load8_s
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
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Int8Array,i8> (; 212 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 0
  global.set $std/typedarray/forEachCallCount
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  local.tee $0
  global.set $std/typedarray/forEachSelf
  local.get $0
  i32.const 0
  global.get $std/typedarray/forEachValues
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 1
  global.get $std/typedarray/forEachValues
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 2
  global.get $std/typedarray/forEachValues
  i32.const 2
  call $~lib/array/Array<i32>#__get
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  call $~lib/typedarray/Int8Array#forEach
  global.get $std/typedarray/forEachCallCount
  i32.const 3
  i32.ne
  if
   i32.const 1104
   i32.const 24
   i32.const 431
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Uint8Array#forEach (; 213 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $0
  i32.load offset=8
  local.set $4
  loop $repeat|0
   local.get $2
   local.get $4
   i32.lt_s
   if
    i32.const 3
    global.set $~lib/argc
    local.get $2
    local.get $3
    i32.add
    i32.load8_u
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
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Uint8Array,u8> (; 214 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 0
  global.set $std/typedarray/forEachCallCount
  i32.const 3
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $0
  global.set $std/typedarray/forEachSelf
  local.get $0
  i32.const 0
  global.get $std/typedarray/forEachValues
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 255
  i32.and
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 1
  global.get $std/typedarray/forEachValues
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i32.const 255
  i32.and
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 2
  global.get $std/typedarray/forEachValues
  i32.const 2
  call $~lib/array/Array<i32>#__get
  i32.const 255
  i32.and
  call $~lib/typedarray/Uint8Array#__set
  local.get $0
  i32.const 102
  call $~lib/typedarray/Uint8Array#forEach
  global.get $std/typedarray/forEachCallCount
  i32.const 3
  i32.ne
  if
   i32.const 1104
   i32.const 24
   i32.const 431
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Uint8ClampedArray,u8> (; 215 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 0
  global.set $std/typedarray/forEachCallCount
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.tee $0
  global.set $std/typedarray/forEachSelf
  local.get $0
  i32.const 0
  global.get $std/typedarray/forEachValues
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 255
  i32.and
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  i32.const 1
  global.get $std/typedarray/forEachValues
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i32.const 255
  i32.and
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  i32.const 2
  global.get $std/typedarray/forEachValues
  i32.const 2
  call $~lib/array/Array<i32>#__get
  i32.const 255
  i32.and
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  i32.const 103
  call $~lib/typedarray/Uint8Array#forEach
  global.get $std/typedarray/forEachCallCount
  i32.const 3
  i32.ne
  if
   i32.const 1104
   i32.const 24
   i32.const 431
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Int16Array,i16>~anonymous|0 (; 216 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $0
  i32.const 65535
  i32.and
  global.get $std/typedarray/forEachValues
  local.get $1
  call $~lib/array/Array<i32>#__get
  i32.const 65535
  i32.and
  i32.ne
  if
   i32.const 896
   i32.const 24
   i32.const 426
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  global.get $std/typedarray/forEachCallCount
  i32.ne
  if
   i32.const 960
   i32.const 24
   i32.const 427
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  global.get $std/typedarray/forEachSelf
  i32.ne
  if
   i32.const 1024
   i32.const 24
   i32.const 428
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  global.get $std/typedarray/forEachCallCount
  i32.const 1
  i32.add
  global.set $std/typedarray/forEachCallCount
 )
 (func $~lib/typedarray/Int16Array#forEach (; 217 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  local.set $3
  loop $repeat|0
   local.get $1
   local.get $3
   i32.lt_s
   if
    i32.const 3
    global.set $~lib/argc
    local.get $1
    i32.const 1
    i32.shl
    local.get $2
    i32.add
    i32.load16_s
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
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Int16Array,i16> (; 218 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 0
  global.set $std/typedarray/forEachCallCount
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.tee $0
  global.set $std/typedarray/forEachSelf
  local.get $0
  i32.const 0
  global.get $std/typedarray/forEachValues
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  call $~lib/typedarray/Int16Array#__set
  local.get $0
  i32.const 1
  global.get $std/typedarray/forEachValues
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  call $~lib/typedarray/Int16Array#__set
  local.get $0
  i32.const 2
  global.get $std/typedarray/forEachValues
  i32.const 2
  call $~lib/array/Array<i32>#__get
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  call $~lib/typedarray/Int16Array#__set
  local.get $0
  call $~lib/typedarray/Int16Array#forEach
  global.get $std/typedarray/forEachCallCount
  i32.const 3
  i32.ne
  if
   i32.const 1104
   i32.const 24
   i32.const 431
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Uint16Array#forEach (; 219 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  local.set $3
  loop $repeat|0
   local.get $1
   local.get $3
   i32.lt_s
   if
    i32.const 3
    global.set $~lib/argc
    local.get $1
    i32.const 1
    i32.shl
    local.get $2
    i32.add
    i32.load16_u
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
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Uint16Array,u16> (; 220 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 0
  global.set $std/typedarray/forEachCallCount
  i32.const 3
  call $~lib/typedarray/Uint16Array#constructor
  local.tee $0
  global.set $std/typedarray/forEachSelf
  local.get $0
  i32.const 0
  global.get $std/typedarray/forEachValues
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 65535
  i32.and
  call $~lib/typedarray/Uint16Array#__set
  local.get $0
  i32.const 1
  global.get $std/typedarray/forEachValues
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i32.const 65535
  i32.and
  call $~lib/typedarray/Uint16Array#__set
  local.get $0
  i32.const 2
  global.get $std/typedarray/forEachValues
  i32.const 2
  call $~lib/array/Array<i32>#__get
  i32.const 65535
  i32.and
  call $~lib/typedarray/Uint16Array#__set
  local.get $0
  call $~lib/typedarray/Uint16Array#forEach
  global.get $std/typedarray/forEachCallCount
  i32.const 3
  i32.ne
  if
   i32.const 1104
   i32.const 24
   i32.const 431
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Int32Array,i32>~anonymous|0 (; 221 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  global.get $std/typedarray/forEachValues
  local.get $1
  call $~lib/array/Array<i32>#__get
  local.get $0
  i32.ne
  if
   i32.const 896
   i32.const 24
   i32.const 426
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  global.get $std/typedarray/forEachCallCount
  i32.ne
  if
   i32.const 960
   i32.const 24
   i32.const 427
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  global.get $std/typedarray/forEachSelf
  i32.ne
  if
   i32.const 1024
   i32.const 24
   i32.const 428
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  global.get $std/typedarray/forEachCallCount
  i32.const 1
  i32.add
  global.set $std/typedarray/forEachCallCount
 )
 (func $~lib/typedarray/Int32Array#forEach (; 222 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  local.set $4
  loop $repeat|0
   local.get $2
   local.get $4
   i32.lt_s
   if
    i32.const 3
    global.set $~lib/argc
    local.get $2
    i32.const 2
    i32.shl
    local.get $3
    i32.add
    i32.load
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
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Int32Array,i32> (; 223 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 0
  global.set $std/typedarray/forEachCallCount
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.tee $0
  global.set $std/typedarray/forEachSelf
  local.get $0
  i32.const 0
  global.get $std/typedarray/forEachValues
  i32.const 0
  call $~lib/array/Array<i32>#__get
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 1
  global.get $std/typedarray/forEachValues
  i32.const 1
  call $~lib/array/Array<i32>#__get
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 2
  global.get $std/typedarray/forEachValues
  i32.const 2
  call $~lib/array/Array<i32>#__get
  call $~lib/typedarray/Int32Array#__set
  local.get $0
  i32.const 106
  call $~lib/typedarray/Int32Array#forEach
  global.get $std/typedarray/forEachCallCount
  i32.const 3
  i32.ne
  if
   i32.const 1104
   i32.const 24
   i32.const 431
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Uint32Array,u32> (; 224 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 0
  global.set $std/typedarray/forEachCallCount
  i32.const 3
  call $~lib/typedarray/Uint32Array#constructor
  local.tee $0
  global.set $std/typedarray/forEachSelf
  local.get $0
  i32.const 0
  global.get $std/typedarray/forEachValues
  i32.const 0
  call $~lib/array/Array<i32>#__get
  call $~lib/typedarray/Uint32Array#__set
  local.get $0
  i32.const 1
  global.get $std/typedarray/forEachValues
  i32.const 1
  call $~lib/array/Array<i32>#__get
  call $~lib/typedarray/Uint32Array#__set
  local.get $0
  i32.const 2
  global.get $std/typedarray/forEachValues
  i32.const 2
  call $~lib/array/Array<i32>#__get
  call $~lib/typedarray/Uint32Array#__set
  local.get $0
  i32.const 107
  call $~lib/typedarray/Int32Array#forEach
  global.get $std/typedarray/forEachCallCount
  i32.const 3
  i32.ne
  if
   i32.const 1104
   i32.const 24
   i32.const 431
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Int64Array,i64>~anonymous|0 (; 225 ;) (type $FUNCSIG$vjii) (param $0 i64) (param $1 i32) (param $2 i32)
  local.get $0
  global.get $std/typedarray/forEachValues
  local.get $1
  call $~lib/array/Array<i32>#__get
  i64.extend_i32_s
  i64.ne
  if
   i32.const 896
   i32.const 24
   i32.const 426
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  global.get $std/typedarray/forEachCallCount
  i32.ne
  if
   i32.const 960
   i32.const 24
   i32.const 427
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  global.get $std/typedarray/forEachSelf
  i32.ne
  if
   i32.const 1024
   i32.const 24
   i32.const 428
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  global.get $std/typedarray/forEachCallCount
  i32.const 1
  i32.add
  global.set $std/typedarray/forEachCallCount
 )
 (func $~lib/typedarray/Int64Array#forEach (; 226 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.load offset=4
  local.set $3
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  local.set $4
  loop $repeat|0
   local.get $2
   local.get $4
   i32.lt_s
   if
    i32.const 3
    global.set $~lib/argc
    local.get $2
    i32.const 3
    i32.shl
    local.get $3
    i32.add
    i64.load
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
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Int64Array,i64> (; 227 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 0
  global.set $std/typedarray/forEachCallCount
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $0
  global.set $std/typedarray/forEachSelf
  local.get $0
  i32.const 0
  global.get $std/typedarray/forEachValues
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i64.extend_i32_s
  call $~lib/typedarray/Int64Array#__set
  local.get $0
  i32.const 1
  global.get $std/typedarray/forEachValues
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i64.extend_i32_s
  call $~lib/typedarray/Int64Array#__set
  local.get $0
  i32.const 2
  global.get $std/typedarray/forEachValues
  i32.const 2
  call $~lib/array/Array<i32>#__get
  i64.extend_i32_s
  call $~lib/typedarray/Int64Array#__set
  local.get $0
  i32.const 108
  call $~lib/typedarray/Int64Array#forEach
  global.get $std/typedarray/forEachCallCount
  i32.const 3
  i32.ne
  if
   i32.const 1104
   i32.const 24
   i32.const 431
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Uint64Array,u64> (; 228 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 0
  global.set $std/typedarray/forEachCallCount
  i32.const 3
  call $~lib/typedarray/Uint64Array#constructor
  local.tee $0
  global.set $std/typedarray/forEachSelf
  local.get $0
  i32.const 0
  global.get $std/typedarray/forEachValues
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i64.extend_i32_s
  call $~lib/typedarray/Uint64Array#__set
  local.get $0
  i32.const 1
  global.get $std/typedarray/forEachValues
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i64.extend_i32_s
  call $~lib/typedarray/Uint64Array#__set
  local.get $0
  i32.const 2
  global.get $std/typedarray/forEachValues
  i32.const 2
  call $~lib/array/Array<i32>#__get
  i64.extend_i32_s
  call $~lib/typedarray/Uint64Array#__set
  local.get $0
  i32.const 109
  call $~lib/typedarray/Int64Array#forEach
  global.get $std/typedarray/forEachCallCount
  i32.const 3
  i32.ne
  if
   i32.const 1104
   i32.const 24
   i32.const 431
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Float32Array,f32>~anonymous|0 (; 229 ;) (type $FUNCSIG$vfii) (param $0 f32) (param $1 i32) (param $2 i32)
  local.get $0
  global.get $std/typedarray/forEachValues
  local.get $1
  call $~lib/array/Array<i32>#__get
  f32.convert_i32_s
  f32.ne
  if
   i32.const 896
   i32.const 24
   i32.const 426
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  global.get $std/typedarray/forEachCallCount
  i32.ne
  if
   i32.const 960
   i32.const 24
   i32.const 427
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  global.get $std/typedarray/forEachSelf
  i32.ne
  if
   i32.const 1024
   i32.const 24
   i32.const 428
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  global.get $std/typedarray/forEachCallCount
  i32.const 1
  i32.add
  global.set $std/typedarray/forEachCallCount
 )
 (func $~lib/typedarray/Float32Array#forEach (; 230 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  local.set $3
  loop $repeat|0
   local.get $1
   local.get $3
   i32.lt_s
   if
    i32.const 3
    global.set $~lib/argc
    local.get $1
    i32.const 2
    i32.shl
    local.get $2
    i32.add
    f32.load
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
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Float32Array,f32> (; 231 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 0
  global.set $std/typedarray/forEachCallCount
  i32.const 3
  call $~lib/typedarray/Float32Array#constructor
  local.tee $0
  global.set $std/typedarray/forEachSelf
  local.get $0
  i32.const 0
  global.get $std/typedarray/forEachValues
  i32.const 0
  call $~lib/array/Array<i32>#__get
  f32.convert_i32_s
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  i32.const 1
  global.get $std/typedarray/forEachValues
  i32.const 1
  call $~lib/array/Array<i32>#__get
  f32.convert_i32_s
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  i32.const 2
  global.get $std/typedarray/forEachValues
  i32.const 2
  call $~lib/array/Array<i32>#__get
  f32.convert_i32_s
  call $~lib/typedarray/Float32Array#__set
  local.get $0
  call $~lib/typedarray/Float32Array#forEach
  global.get $std/typedarray/forEachCallCount
  i32.const 3
  i32.ne
  if
   i32.const 1104
   i32.const 24
   i32.const 431
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Float64Array,f64>~anonymous|0 (; 232 ;) (type $FUNCSIG$vdii) (param $0 f64) (param $1 i32) (param $2 i32)
  local.get $0
  global.get $std/typedarray/forEachValues
  local.get $1
  call $~lib/array/Array<i32>#__get
  f64.convert_i32_s
  f64.ne
  if
   i32.const 896
   i32.const 24
   i32.const 426
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $1
  global.get $std/typedarray/forEachCallCount
  i32.ne
  if
   i32.const 960
   i32.const 24
   i32.const 427
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  local.get $2
  global.get $std/typedarray/forEachSelf
  i32.ne
  if
   i32.const 1024
   i32.const 24
   i32.const 428
   i32.const 4
   call $~lib/env/abort
   unreachable
  end
  global.get $std/typedarray/forEachCallCount
  i32.const 1
  i32.add
  global.set $std/typedarray/forEachCallCount
 )
 (func $~lib/typedarray/Float64Array#forEach (; 233 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=4
  local.set $2
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  local.set $3
  loop $repeat|0
   local.get $1
   local.get $3
   i32.lt_s
   if
    i32.const 3
    global.set $~lib/argc
    local.get $1
    i32.const 3
    i32.shl
    local.get $2
    i32.add
    f64.load
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
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Float64Array,f64> (; 234 ;) (type $FUNCSIG$v)
  (local $0 i32)
  i32.const 0
  global.set $std/typedarray/forEachCallCount
  i32.const 3
  call $~lib/typedarray/Float64Array#constructor
  local.tee $0
  global.set $std/typedarray/forEachSelf
  local.get $0
  i32.const 0
  global.get $std/typedarray/forEachValues
  i32.const 0
  call $~lib/array/Array<i32>#__get
  f64.convert_i32_s
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  i32.const 1
  global.get $std/typedarray/forEachValues
  i32.const 1
  call $~lib/array/Array<i32>#__get
  f64.convert_i32_s
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  i32.const 2
  global.get $std/typedarray/forEachValues
  i32.const 2
  call $~lib/array/Array<i32>#__get
  f64.convert_i32_s
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  call $~lib/typedarray/Float64Array#forEach
  global.get $std/typedarray/forEachCallCount
  i32.const 3
  i32.ne
  if
   i32.const 1104
   i32.const 24
   i32.const 431
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Int8Array#reverse (; 235 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.sub
  local.set $1
  loop $repeat|0
   local.get $2
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $4
    i32.add
    local.tee $3
    i32.load8_s
    local.set $5
    local.get $3
    local.get $1
    local.get $4
    i32.add
    local.tee $3
    i32.load8_s
    i32.store8
    local.get $3
    local.get $5
    i32.store8
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    local.get $1
    i32.const 1
    i32.sub
    local.set $1
    br $repeat|0
   end
  end
  local.get $0
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Int8Array,i8> (; 236 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $std/typedarray/testArrayReverseValues
  local.set $1
  i32.const 9
  call $~lib/typedarray/Int8Array#constructor
  local.set $2
  i32.const 9
  call $~lib/typedarray/Int8Array#constructor
  local.set $3
  loop $repeat|0
   block $break|0
    local.get $0
    i32.const 9
    i32.ge_s
    br_if $break|0
    local.get $2
    local.get $0
    local.get $1
    local.get $0
    call $~lib/array/Array<i32>#__get
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    call $~lib/typedarray/Int8Array#__set
    local.get $3
    local.get $0
    local.get $1
    local.get $0
    call $~lib/array/Array<i32>#__get
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    call $~lib/typedarray/Int8Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $repeat|0
   end
  end
  local.get $2
  call $~lib/typedarray/Int8Array#reverse
  drop
  i32.const 0
  local.set $0
  loop $repeat|1
   block $break|1
    local.get $0
    i32.const 9
    i32.ge_s
    br_if $break|1
    local.get $2
    local.get $0
    call $~lib/typedarray/Int8Array#__get
    local.get $1
    i32.const 8
    local.get $0
    i32.sub
    call $~lib/array/Array<i32>#__get
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    i32.ne
    if
     i32.const 1264
     i32.const 24
     i32.const 462
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
  local.get $3
  i32.const 4
  i32.const 8
  call $~lib/typedarray/Int8Array#subarray
  call $~lib/typedarray/Int8Array#reverse
  local.tee $0
  i32.const 0
  call $~lib/typedarray/Int8Array#__get
  i32.const 8
  i32.ne
  if
   i32.const 1352
   i32.const 24
   i32.const 467
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Int8Array#__get
  i32.const 7
  i32.ne
  if
   i32.const 1352
   i32.const 24
   i32.const 468
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Int8Array#__get
  i32.const 6
  i32.ne
  if
   i32.const 1352
   i32.const 24
   i32.const 469
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/typedarray/Int8Array#__get
  i32.const 5
  i32.ne
  if
   i32.const 1352
   i32.const 24
   i32.const 470
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Uint8Array#reverse (; 237 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.sub
  local.set $1
  loop $repeat|0
   local.get $2
   local.get $1
   i32.lt_s
   if
    local.get $2
    local.get $4
    i32.add
    local.tee $3
    i32.load8_u
    local.set $5
    local.get $3
    local.get $1
    local.get $4
    i32.add
    local.tee $3
    i32.load8_u
    i32.store8
    local.get $3
    local.get $5
    i32.store8
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    local.get $1
    i32.const 1
    i32.sub
    local.set $1
    br $repeat|0
   end
  end
  local.get $0
 )
 (func $~lib/typedarray/Uint8Array#subarray (; 238 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 8
  local.get $0
  i32.load offset=8
  local.tee $2
  i32.const 8
  local.get $2
  i32.lt_s
  select
  local.set $3
  i32.const 12
  call $~lib/runtime/allocate
  i32.const 5
  call $~lib/runtime/register
  local.set $1
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load
  local.tee $0
  local.get $1
  i32.load
  i32.ne
  drop
  local.get $1
  local.get $0
  i32.store
  local.get $1
  local.get $4
  i32.const 4
  local.get $2
  i32.const 4
  local.get $2
  i32.lt_s
  select
  local.tee $0
  i32.add
  i32.store offset=4
  local.get $1
  local.get $3
  local.get $0
  local.get $3
  local.get $0
  i32.gt_s
  select
  local.get $0
  i32.sub
  i32.store offset=8
  local.get $1
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Uint8Array,u8> (; 239 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $std/typedarray/testArrayReverseValues
  local.set $1
  i32.const 9
  call $~lib/typedarray/Uint8Array#constructor
  local.set $2
  i32.const 9
  call $~lib/typedarray/Uint8Array#constructor
  local.set $3
  loop $repeat|0
   block $break|0
    local.get $0
    i32.const 9
    i32.ge_s
    br_if $break|0
    local.get $2
    local.get $0
    local.get $1
    local.get $0
    call $~lib/array/Array<i32>#__get
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__set
    local.get $3
    local.get $0
    local.get $1
    local.get $0
    call $~lib/array/Array<i32>#__get
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $repeat|0
   end
  end
  local.get $2
  call $~lib/typedarray/Uint8Array#reverse
  drop
  i32.const 0
  local.set $0
  loop $repeat|1
   block $break|1
    local.get $0
    i32.const 9
    i32.ge_s
    br_if $break|1
    local.get $2
    local.get $0
    call $~lib/typedarray/Uint8Array#__get
    local.get $1
    i32.const 8
    local.get $0
    i32.sub
    call $~lib/array/Array<i32>#__get
    i32.const 255
    i32.and
    i32.ne
    if
     i32.const 1264
     i32.const 24
     i32.const 462
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
  local.get $3
  call $~lib/typedarray/Uint8Array#subarray
  call $~lib/typedarray/Uint8Array#reverse
  local.tee $0
  i32.const 0
  call $~lib/typedarray/Uint8Array#__get
  i32.const 8
  i32.ne
  if
   i32.const 1352
   i32.const 24
   i32.const 467
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Uint8Array#__get
  i32.const 7
  i32.ne
  if
   i32.const 1352
   i32.const 24
   i32.const 468
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Uint8Array#__get
  i32.const 6
  i32.ne
  if
   i32.const 1352
   i32.const 24
   i32.const 469
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/typedarray/Uint8Array#__get
  i32.const 5
  i32.ne
  if
   i32.const 1352
   i32.const 24
   i32.const 470
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Uint8ClampedArray#subarray (; 240 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 8
  local.get $0
  i32.load offset=8
  local.tee $2
  i32.const 8
  local.get $2
  i32.lt_s
  select
  local.set $3
  i32.const 12
  call $~lib/runtime/allocate
  i32.const 6
  call $~lib/runtime/register
  local.set $1
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load
  local.tee $0
  local.get $1
  i32.load
  i32.ne
  drop
  local.get $1
  local.get $0
  i32.store
  local.get $1
  local.get $4
  i32.const 4
  local.get $2
  i32.const 4
  local.get $2
  i32.lt_s
  select
  local.tee $0
  i32.add
  i32.store offset=4
  local.get $1
  local.get $3
  local.get $0
  local.get $3
  local.get $0
  i32.gt_s
  select
  local.get $0
  i32.sub
  i32.store offset=8
  local.get $1
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Uint8ClampedArray,u8> (; 241 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $std/typedarray/testArrayReverseValues
  local.set $1
  i32.const 9
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.set $2
  i32.const 9
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.set $3
  loop $repeat|0
   block $break|0
    local.get $0
    i32.const 9
    i32.ge_s
    br_if $break|0
    local.get $2
    local.get $0
    local.get $1
    local.get $0
    call $~lib/array/Array<i32>#__get
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8ClampedArray#__set
    local.get $3
    local.get $0
    local.get $1
    local.get $0
    call $~lib/array/Array<i32>#__get
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
  local.get $2
  call $~lib/typedarray/Uint8Array#reverse
  drop
  i32.const 0
  local.set $0
  loop $repeat|1
   block $break|1
    local.get $0
    i32.const 9
    i32.ge_s
    br_if $break|1
    local.get $2
    local.get $0
    call $~lib/typedarray/Uint8ClampedArray#__get
    local.get $1
    i32.const 8
    local.get $0
    i32.sub
    call $~lib/array/Array<i32>#__get
    i32.const 255
    i32.and
    i32.ne
    if
     i32.const 1264
     i32.const 24
     i32.const 462
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
  local.get $3
  call $~lib/typedarray/Uint8ClampedArray#subarray
  call $~lib/typedarray/Uint8Array#reverse
  local.tee $0
  i32.const 0
  call $~lib/typedarray/Uint8ClampedArray#__get
  i32.const 8
  i32.ne
  if
   i32.const 1352
   i32.const 24
   i32.const 467
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Uint8ClampedArray#__get
  i32.const 7
  i32.ne
  if
   i32.const 1352
   i32.const 24
   i32.const 468
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Uint8ClampedArray#__get
  i32.const 6
  i32.ne
  if
   i32.const 1352
   i32.const 24
   i32.const 469
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#__get
  i32.const 5
  i32.ne
  if
   i32.const 1352
   i32.const 24
   i32.const 470
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Int16Array#reverse (; 242 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
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
   local.get $2
   local.get $1
   i32.lt_s
   if
    local.get $2
    i32.const 1
    i32.shl
    local.get $4
    i32.add
    local.tee $3
    i32.load16_s
    local.set $5
    local.get $3
    local.get $1
    i32.const 1
    i32.shl
    local.get $4
    i32.add
    local.tee $3
    i32.load16_s
    i32.store16
    local.get $3
    local.get $5
    i32.store16
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    local.get $1
    i32.const 1
    i32.sub
    local.set $1
    br $repeat|0
   end
  end
  local.get $0
 )
 (func $~lib/typedarray/Int16Array#subarray (; 243 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 8
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  local.tee $2
  i32.const 8
  local.get $2
  i32.lt_s
  select
  local.set $3
  i32.const 12
  call $~lib/runtime/allocate
  i32.const 7
  call $~lib/runtime/register
  local.set $1
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load
  local.tee $0
  local.get $1
  i32.load
  i32.ne
  drop
  local.get $1
  local.get $0
  i32.store
  local.get $1
  i32.const 4
  local.get $2
  i32.const 4
  local.get $2
  i32.lt_s
  select
  local.tee $0
  i32.const 1
  i32.shl
  local.get $4
  i32.add
  i32.store offset=4
  local.get $1
  local.get $3
  local.get $0
  local.get $3
  local.get $0
  i32.gt_s
  select
  local.get $0
  i32.sub
  i32.const 1
  i32.shl
  i32.store offset=8
  local.get $1
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Int16Array,i16> (; 244 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $std/typedarray/testArrayReverseValues
  local.set $1
  i32.const 9
  call $~lib/typedarray/Int16Array#constructor
  local.set $2
  i32.const 9
  call $~lib/typedarray/Int16Array#constructor
  local.set $3
  loop $repeat|0
   block $break|0
    local.get $0
    i32.const 9
    i32.ge_s
    br_if $break|0
    local.get $2
    local.get $0
    local.get $1
    local.get $0
    call $~lib/array/Array<i32>#__get
    i32.const 16
    i32.shl
    i32.const 16
    i32.shr_s
    call $~lib/typedarray/Int16Array#__set
    local.get $3
    local.get $0
    local.get $1
    local.get $0
    call $~lib/array/Array<i32>#__get
    i32.const 16
    i32.shl
    i32.const 16
    i32.shr_s
    call $~lib/typedarray/Int16Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $repeat|0
   end
  end
  local.get $2
  call $~lib/typedarray/Int16Array#reverse
  drop
  i32.const 0
  local.set $0
  loop $repeat|1
   block $break|1
    local.get $0
    i32.const 9
    i32.ge_s
    br_if $break|1
    local.get $2
    local.get $0
    call $~lib/typedarray/Int16Array#__get
    local.get $1
    i32.const 8
    local.get $0
    i32.sub
    call $~lib/array/Array<i32>#__get
    i32.const 16
    i32.shl
    i32.const 16
    i32.shr_s
    i32.ne
    if
     i32.const 1264
     i32.const 24
     i32.const 462
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
  local.get $3
  call $~lib/typedarray/Int16Array#subarray
  call $~lib/typedarray/Int16Array#reverse
  local.tee $0
  i32.const 0
  call $~lib/typedarray/Int16Array#__get
  i32.const 8
  i32.ne
  if
   i32.const 1352
   i32.const 24
   i32.const 467
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Int16Array#__get
  i32.const 7
  i32.ne
  if
   i32.const 1352
   i32.const 24
   i32.const 468
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Int16Array#__get
  i32.const 6
  i32.ne
  if
   i32.const 1352
   i32.const 24
   i32.const 469
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/typedarray/Int16Array#__get
  i32.const 5
  i32.ne
  if
   i32.const 1352
   i32.const 24
   i32.const 470
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Uint16Array#reverse (; 245 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
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
   local.get $2
   local.get $1
   i32.lt_s
   if
    local.get $2
    i32.const 1
    i32.shl
    local.get $4
    i32.add
    local.tee $3
    i32.load16_u
    local.set $5
    local.get $3
    local.get $1
    i32.const 1
    i32.shl
    local.get $4
    i32.add
    local.tee $3
    i32.load16_u
    i32.store16
    local.get $3
    local.get $5
    i32.store16
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    local.get $1
    i32.const 1
    i32.sub
    local.set $1
    br $repeat|0
   end
  end
  local.get $0
 )
 (func $~lib/typedarray/Uint16Array#subarray (; 246 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 8
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  local.tee $2
  i32.const 8
  local.get $2
  i32.lt_s
  select
  local.set $3
  i32.const 12
  call $~lib/runtime/allocate
  i32.const 8
  call $~lib/runtime/register
  local.set $1
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load
  local.tee $0
  local.get $1
  i32.load
  i32.ne
  drop
  local.get $1
  local.get $0
  i32.store
  local.get $1
  i32.const 4
  local.get $2
  i32.const 4
  local.get $2
  i32.lt_s
  select
  local.tee $0
  i32.const 1
  i32.shl
  local.get $4
  i32.add
  i32.store offset=4
  local.get $1
  local.get $3
  local.get $0
  local.get $3
  local.get $0
  i32.gt_s
  select
  local.get $0
  i32.sub
  i32.const 1
  i32.shl
  i32.store offset=8
  local.get $1
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Uint16Array,u16> (; 247 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $std/typedarray/testArrayReverseValues
  local.set $1
  i32.const 9
  call $~lib/typedarray/Uint16Array#constructor
  local.set $2
  i32.const 9
  call $~lib/typedarray/Uint16Array#constructor
  local.set $3
  loop $repeat|0
   block $break|0
    local.get $0
    i32.const 9
    i32.ge_s
    br_if $break|0
    local.get $2
    local.get $0
    local.get $1
    local.get $0
    call $~lib/array/Array<i32>#__get
    i32.const 65535
    i32.and
    call $~lib/typedarray/Uint16Array#__set
    local.get $3
    local.get $0
    local.get $1
    local.get $0
    call $~lib/array/Array<i32>#__get
    i32.const 65535
    i32.and
    call $~lib/typedarray/Uint16Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $repeat|0
   end
  end
  local.get $2
  call $~lib/typedarray/Uint16Array#reverse
  drop
  i32.const 0
  local.set $0
  loop $repeat|1
   block $break|1
    local.get $0
    i32.const 9
    i32.ge_s
    br_if $break|1
    local.get $2
    local.get $0
    call $~lib/typedarray/Uint16Array#__get
    local.get $1
    i32.const 8
    local.get $0
    i32.sub
    call $~lib/array/Array<i32>#__get
    i32.const 65535
    i32.and
    i32.ne
    if
     i32.const 1264
     i32.const 24
     i32.const 462
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
  local.get $3
  call $~lib/typedarray/Uint16Array#subarray
  call $~lib/typedarray/Uint16Array#reverse
  local.tee $0
  i32.const 0
  call $~lib/typedarray/Uint16Array#__get
  i32.const 8
  i32.ne
  if
   i32.const 1352
   i32.const 24
   i32.const 467
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Uint16Array#__get
  i32.const 7
  i32.ne
  if
   i32.const 1352
   i32.const 24
   i32.const 468
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Uint16Array#__get
  i32.const 6
  i32.ne
  if
   i32.const 1352
   i32.const 24
   i32.const 469
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/typedarray/Uint16Array#__get
  i32.const 5
  i32.ne
  if
   i32.const 1352
   i32.const 24
   i32.const 470
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Int32Array#reverse (; 248 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
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
   local.get $2
   local.get $1
   i32.lt_s
   if
    local.get $2
    i32.const 2
    i32.shl
    local.get $4
    i32.add
    local.tee $3
    i32.load
    local.set $5
    local.get $3
    local.get $1
    i32.const 2
    i32.shl
    local.get $4
    i32.add
    local.tee $3
    i32.load
    i32.store
    local.get $3
    local.get $5
    i32.store
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    local.get $1
    i32.const 1
    i32.sub
    local.set $1
    br $repeat|0
   end
  end
  local.get $0
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Int32Array,i32> (; 249 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $std/typedarray/testArrayReverseValues
  local.set $1
  i32.const 9
  call $~lib/typedarray/Int32Array#constructor
  local.set $2
  i32.const 9
  call $~lib/typedarray/Int32Array#constructor
  local.set $3
  loop $repeat|0
   block $break|0
    local.get $0
    i32.const 9
    i32.ge_s
    br_if $break|0
    local.get $2
    local.get $0
    local.get $1
    local.get $0
    call $~lib/array/Array<i32>#__get
    call $~lib/typedarray/Int32Array#__set
    local.get $3
    local.get $0
    local.get $1
    local.get $0
    call $~lib/array/Array<i32>#__get
    call $~lib/typedarray/Int32Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $repeat|0
   end
  end
  local.get $2
  call $~lib/typedarray/Int32Array#reverse
  drop
  i32.const 0
  local.set $0
  loop $repeat|1
   block $break|1
    local.get $0
    i32.const 9
    i32.ge_s
    br_if $break|1
    local.get $2
    local.get $0
    call $~lib/typedarray/Int32Array#__get
    local.get $1
    i32.const 8
    local.get $0
    i32.sub
    call $~lib/array/Array<i32>#__get
    i32.ne
    if
     i32.const 1264
     i32.const 24
     i32.const 462
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
  local.get $3
  i32.const 4
  i32.const 8
  call $~lib/typedarray/Int32Array#subarray
  call $~lib/typedarray/Int32Array#reverse
  local.tee $0
  i32.const 0
  call $~lib/typedarray/Int32Array#__get
  i32.const 8
  i32.ne
  if
   i32.const 1352
   i32.const 24
   i32.const 467
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Int32Array#__get
  i32.const 7
  i32.ne
  if
   i32.const 1352
   i32.const 24
   i32.const 468
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Int32Array#__get
  i32.const 6
  i32.ne
  if
   i32.const 1352
   i32.const 24
   i32.const 469
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/typedarray/Int32Array#__get
  i32.const 5
  i32.ne
  if
   i32.const 1352
   i32.const 24
   i32.const 470
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Uint32Array#subarray (; 250 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 8
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  local.tee $2
  i32.const 8
  local.get $2
  i32.lt_s
  select
  local.set $3
  i32.const 12
  call $~lib/runtime/allocate
  i32.const 10
  call $~lib/runtime/register
  local.set $1
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load
  local.tee $0
  local.get $1
  i32.load
  i32.ne
  drop
  local.get $1
  local.get $0
  i32.store
  local.get $1
  i32.const 4
  local.get $2
  i32.const 4
  local.get $2
  i32.lt_s
  select
  local.tee $0
  i32.const 2
  i32.shl
  local.get $4
  i32.add
  i32.store offset=4
  local.get $1
  local.get $3
  local.get $0
  local.get $3
  local.get $0
  i32.gt_s
  select
  local.get $0
  i32.sub
  i32.const 2
  i32.shl
  i32.store offset=8
  local.get $1
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Uint32Array,u32> (; 251 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $std/typedarray/testArrayReverseValues
  local.set $1
  i32.const 9
  call $~lib/typedarray/Uint32Array#constructor
  local.set $2
  i32.const 9
  call $~lib/typedarray/Uint32Array#constructor
  local.set $3
  loop $repeat|0
   block $break|0
    local.get $0
    i32.const 9
    i32.ge_s
    br_if $break|0
    local.get $2
    local.get $0
    local.get $1
    local.get $0
    call $~lib/array/Array<i32>#__get
    call $~lib/typedarray/Uint32Array#__set
    local.get $3
    local.get $0
    local.get $1
    local.get $0
    call $~lib/array/Array<i32>#__get
    call $~lib/typedarray/Uint32Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $repeat|0
   end
  end
  local.get $2
  call $~lib/typedarray/Int32Array#reverse
  drop
  i32.const 0
  local.set $0
  loop $repeat|1
   block $break|1
    local.get $0
    i32.const 9
    i32.ge_s
    br_if $break|1
    local.get $2
    local.get $0
    call $~lib/typedarray/Uint32Array#__get
    local.get $1
    i32.const 8
    local.get $0
    i32.sub
    call $~lib/array/Array<i32>#__get
    i32.ne
    if
     i32.const 1264
     i32.const 24
     i32.const 462
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
  local.get $3
  call $~lib/typedarray/Uint32Array#subarray
  call $~lib/typedarray/Int32Array#reverse
  local.tee $0
  i32.const 0
  call $~lib/typedarray/Uint32Array#__get
  i32.const 8
  i32.ne
  if
   i32.const 1352
   i32.const 24
   i32.const 467
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Uint32Array#__get
  i32.const 7
  i32.ne
  if
   i32.const 1352
   i32.const 24
   i32.const 468
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Uint32Array#__get
  i32.const 6
  i32.ne
  if
   i32.const 1352
   i32.const 24
   i32.const 469
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/typedarray/Uint32Array#__get
  i32.const 5
  i32.ne
  if
   i32.const 1352
   i32.const 24
   i32.const 470
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Int64Array#reverse (; 252 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
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
   local.get $2
   local.get $1
   i32.lt_s
   if
    local.get $2
    i32.const 3
    i32.shl
    local.get $4
    i32.add
    local.tee $3
    i64.load
    local.set $5
    local.get $3
    local.get $1
    i32.const 3
    i32.shl
    local.get $4
    i32.add
    local.tee $3
    i64.load
    i64.store
    local.get $3
    local.get $5
    i64.store
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    local.get $1
    i32.const 1
    i32.sub
    local.set $1
    br $repeat|0
   end
  end
  local.get $0
 )
 (func $~lib/typedarray/Int64Array#subarray (; 253 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 8
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  local.tee $2
  i32.const 8
  local.get $2
  i32.lt_s
  select
  local.set $3
  i32.const 12
  call $~lib/runtime/allocate
  i32.const 11
  call $~lib/runtime/register
  local.set $1
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load
  local.tee $0
  local.get $1
  i32.load
  i32.ne
  drop
  local.get $1
  local.get $0
  i32.store
  local.get $1
  i32.const 4
  local.get $2
  i32.const 4
  local.get $2
  i32.lt_s
  select
  local.tee $0
  i32.const 3
  i32.shl
  local.get $4
  i32.add
  i32.store offset=4
  local.get $1
  local.get $3
  local.get $0
  local.get $3
  local.get $0
  i32.gt_s
  select
  local.get $0
  i32.sub
  i32.const 3
  i32.shl
  i32.store offset=8
  local.get $1
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Int64Array,i64> (; 254 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $std/typedarray/testArrayReverseValues
  local.set $1
  i32.const 9
  call $~lib/typedarray/Int64Array#constructor
  local.set $2
  i32.const 9
  call $~lib/typedarray/Int64Array#constructor
  local.set $3
  loop $repeat|0
   block $break|0
    local.get $0
    i32.const 9
    i32.ge_s
    br_if $break|0
    local.get $2
    local.get $0
    local.get $1
    local.get $0
    call $~lib/array/Array<i32>#__get
    i64.extend_i32_s
    call $~lib/typedarray/Int64Array#__set
    local.get $3
    local.get $0
    local.get $1
    local.get $0
    call $~lib/array/Array<i32>#__get
    i64.extend_i32_s
    call $~lib/typedarray/Int64Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $repeat|0
   end
  end
  local.get $2
  call $~lib/typedarray/Int64Array#reverse
  drop
  i32.const 0
  local.set $0
  loop $repeat|1
   block $break|1
    local.get $0
    i32.const 9
    i32.ge_s
    br_if $break|1
    local.get $2
    local.get $0
    call $~lib/typedarray/Int64Array#__get
    local.get $1
    i32.const 8
    local.get $0
    i32.sub
    call $~lib/array/Array<i32>#__get
    i64.extend_i32_s
    i64.ne
    if
     i32.const 1264
     i32.const 24
     i32.const 462
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
  local.get $3
  call $~lib/typedarray/Int64Array#subarray
  call $~lib/typedarray/Int64Array#reverse
  local.tee $0
  i32.const 0
  call $~lib/typedarray/Int64Array#__get
  i64.const 8
  i64.ne
  if
   i32.const 1352
   i32.const 24
   i32.const 467
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Int64Array#__get
  i64.const 7
  i64.ne
  if
   i32.const 1352
   i32.const 24
   i32.const 468
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Int64Array#__get
  i64.const 6
  i64.ne
  if
   i32.const 1352
   i32.const 24
   i32.const 469
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/typedarray/Int64Array#__get
  i64.const 5
  i64.ne
  if
   i32.const 1352
   i32.const 24
   i32.const 470
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Uint64Array#subarray (; 255 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 8
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  local.tee $2
  i32.const 8
  local.get $2
  i32.lt_s
  select
  local.set $3
  i32.const 12
  call $~lib/runtime/allocate
  i32.const 12
  call $~lib/runtime/register
  local.set $1
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load
  local.tee $0
  local.get $1
  i32.load
  i32.ne
  drop
  local.get $1
  local.get $0
  i32.store
  local.get $1
  i32.const 4
  local.get $2
  i32.const 4
  local.get $2
  i32.lt_s
  select
  local.tee $0
  i32.const 3
  i32.shl
  local.get $4
  i32.add
  i32.store offset=4
  local.get $1
  local.get $3
  local.get $0
  local.get $3
  local.get $0
  i32.gt_s
  select
  local.get $0
  i32.sub
  i32.const 3
  i32.shl
  i32.store offset=8
  local.get $1
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Uint64Array,u64> (; 256 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $std/typedarray/testArrayReverseValues
  local.set $1
  i32.const 9
  call $~lib/typedarray/Uint64Array#constructor
  local.set $2
  i32.const 9
  call $~lib/typedarray/Uint64Array#constructor
  local.set $3
  loop $repeat|0
   block $break|0
    local.get $0
    i32.const 9
    i32.ge_s
    br_if $break|0
    local.get $2
    local.get $0
    local.get $1
    local.get $0
    call $~lib/array/Array<i32>#__get
    i64.extend_i32_s
    call $~lib/typedarray/Uint64Array#__set
    local.get $3
    local.get $0
    local.get $1
    local.get $0
    call $~lib/array/Array<i32>#__get
    i64.extend_i32_s
    call $~lib/typedarray/Uint64Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $repeat|0
   end
  end
  local.get $2
  call $~lib/typedarray/Int64Array#reverse
  drop
  i32.const 0
  local.set $0
  loop $repeat|1
   block $break|1
    local.get $0
    i32.const 9
    i32.ge_s
    br_if $break|1
    local.get $2
    local.get $0
    call $~lib/typedarray/Uint64Array#__get
    local.get $1
    i32.const 8
    local.get $0
    i32.sub
    call $~lib/array/Array<i32>#__get
    i64.extend_i32_s
    i64.ne
    if
     i32.const 1264
     i32.const 24
     i32.const 462
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
  local.get $3
  call $~lib/typedarray/Uint64Array#subarray
  call $~lib/typedarray/Int64Array#reverse
  local.tee $0
  i32.const 0
  call $~lib/typedarray/Uint64Array#__get
  i64.const 8
  i64.ne
  if
   i32.const 1352
   i32.const 24
   i32.const 467
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Uint64Array#__get
  i64.const 7
  i64.ne
  if
   i32.const 1352
   i32.const 24
   i32.const 468
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Uint64Array#__get
  i64.const 6
  i64.ne
  if
   i32.const 1352
   i32.const 24
   i32.const 469
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/typedarray/Uint64Array#__get
  i64.const 5
  i64.ne
  if
   i32.const 1352
   i32.const 24
   i32.const 470
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Float32Array#reverse (; 257 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f32)
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
   local.get $2
   local.get $1
   i32.lt_s
   if
    local.get $2
    i32.const 2
    i32.shl
    local.get $4
    i32.add
    local.tee $3
    f32.load
    local.set $5
    local.get $3
    local.get $1
    i32.const 2
    i32.shl
    local.get $4
    i32.add
    local.tee $3
    f32.load
    f32.store
    local.get $3
    local.get $5
    f32.store
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    local.get $1
    i32.const 1
    i32.sub
    local.set $1
    br $repeat|0
   end
  end
  local.get $0
 )
 (func $~lib/typedarray/Float32Array#subarray (; 258 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  i32.const 8
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  local.tee $2
  i32.const 8
  local.get $2
  i32.lt_s
  select
  local.set $3
  i32.const 12
  call $~lib/runtime/allocate
  i32.const 13
  call $~lib/runtime/register
  local.set $1
  local.get $0
  i32.load offset=4
  local.set $4
  local.get $0
  i32.load
  local.tee $0
  local.get $1
  i32.load
  i32.ne
  drop
  local.get $1
  local.get $0
  i32.store
  local.get $1
  i32.const 4
  local.get $2
  i32.const 4
  local.get $2
  i32.lt_s
  select
  local.tee $0
  i32.const 2
  i32.shl
  local.get $4
  i32.add
  i32.store offset=4
  local.get $1
  local.get $3
  local.get $0
  local.get $3
  local.get $0
  i32.gt_s
  select
  local.get $0
  i32.sub
  i32.const 2
  i32.shl
  i32.store offset=8
  local.get $1
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Float32Array,f32> (; 259 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $std/typedarray/testArrayReverseValues
  local.set $1
  i32.const 9
  call $~lib/typedarray/Float32Array#constructor
  local.set $2
  i32.const 9
  call $~lib/typedarray/Float32Array#constructor
  local.set $3
  loop $repeat|0
   block $break|0
    local.get $0
    i32.const 9
    i32.ge_s
    br_if $break|0
    local.get $2
    local.get $0
    local.get $1
    local.get $0
    call $~lib/array/Array<i32>#__get
    f32.convert_i32_s
    call $~lib/typedarray/Float32Array#__set
    local.get $3
    local.get $0
    local.get $1
    local.get $0
    call $~lib/array/Array<i32>#__get
    f32.convert_i32_s
    call $~lib/typedarray/Float32Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $repeat|0
   end
  end
  local.get $2
  call $~lib/typedarray/Float32Array#reverse
  drop
  i32.const 0
  local.set $0
  loop $repeat|1
   block $break|1
    local.get $0
    i32.const 9
    i32.ge_s
    br_if $break|1
    local.get $2
    local.get $0
    call $~lib/typedarray/Float32Array#__get
    local.get $1
    i32.const 8
    local.get $0
    i32.sub
    call $~lib/array/Array<i32>#__get
    f32.convert_i32_s
    f32.ne
    if
     i32.const 1264
     i32.const 24
     i32.const 462
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
  local.get $3
  call $~lib/typedarray/Float32Array#subarray
  call $~lib/typedarray/Float32Array#reverse
  local.tee $0
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  f32.const 8
  f32.ne
  if
   i32.const 1352
   i32.const 24
   i32.const 467
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  f32.const 7
  f32.ne
  if
   i32.const 1352
   i32.const 24
   i32.const 468
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Float32Array#__get
  f32.const 6
  f32.ne
  if
   i32.const 1352
   i32.const 24
   i32.const 469
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/typedarray/Float32Array#__get
  f32.const 5
  f32.ne
  if
   i32.const 1352
   i32.const 24
   i32.const 470
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Float64Array#reverse (; 260 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
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
   local.get $2
   local.get $1
   i32.lt_s
   if
    local.get $2
    i32.const 3
    i32.shl
    local.get $4
    i32.add
    local.tee $3
    f64.load
    local.set $5
    local.get $3
    local.get $1
    i32.const 3
    i32.shl
    local.get $4
    i32.add
    local.tee $3
    f64.load
    f64.store
    local.get $3
    local.get $5
    f64.store
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    local.get $1
    i32.const 1
    i32.sub
    local.set $1
    br $repeat|0
   end
  end
  local.get $0
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Float64Array,f64> (; 261 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $std/typedarray/testArrayReverseValues
  local.set $1
  i32.const 9
  call $~lib/typedarray/Float64Array#constructor
  local.set $2
  i32.const 9
  call $~lib/typedarray/Float64Array#constructor
  local.set $3
  loop $repeat|0
   block $break|0
    local.get $0
    i32.const 9
    i32.ge_s
    br_if $break|0
    local.get $2
    local.get $0
    local.get $1
    local.get $0
    call $~lib/array/Array<i32>#__get
    f64.convert_i32_s
    call $~lib/typedarray/Float64Array#__set
    local.get $3
    local.get $0
    local.get $1
    local.get $0
    call $~lib/array/Array<i32>#__get
    f64.convert_i32_s
    call $~lib/typedarray/Float64Array#__set
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $repeat|0
   end
  end
  local.get $2
  call $~lib/typedarray/Float64Array#reverse
  drop
  i32.const 0
  local.set $0
  loop $repeat|1
   block $break|1
    local.get $0
    i32.const 9
    i32.ge_s
    br_if $break|1
    local.get $2
    local.get $0
    call $~lib/typedarray/Float64Array#__get
    local.get $1
    i32.const 8
    local.get $0
    i32.sub
    call $~lib/array/Array<i32>#__get
    f64.convert_i32_s
    f64.ne
    if
     i32.const 1264
     i32.const 24
     i32.const 462
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
  local.get $3
  i32.const 4
  i32.const 8
  call $~lib/typedarray/Float64Array#subarray
  call $~lib/typedarray/Float64Array#reverse
  local.tee $0
  i32.const 0
  call $~lib/typedarray/Float64Array#__get
  f64.const 8
  f64.ne
  if
   i32.const 1352
   i32.const 24
   i32.const 467
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Float64Array#__get
  f64.const 7
  f64.ne
  if
   i32.const 1352
   i32.const 24
   i32.const 468
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Float64Array#__get
  f64.const 6
  f64.ne
  if
   i32.const 1352
   i32.const 24
   i32.const 469
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/typedarray/Float64Array#__get
  f64.const 5
  f64.ne
  if
   i32.const 1352
   i32.const 24
   i32.const 470
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $start:std/typedarray (; 262 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 1440
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
  call $~lib/typedarray/Int32Array#__set
  global.get $std/typedarray/arr
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int32Array#__set
  global.get $std/typedarray/arr
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int32Array#__set
  global.get $std/typedarray/arr
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 97
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/typedarray/arr
  local.tee $0
  i32.load offset=4
  local.get $0
  i32.load
  i32.sub
  if
   i32.const 0
   i32.const 24
   i32.const 98
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
   i32.const 24
   i32.const 99
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/typedarray/arr
  i32.const 0
  call $~lib/typedarray/Int32Array#__get
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 100
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/typedarray/arr
  i32.const 1
  call $~lib/typedarray/Int32Array#__get
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 101
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/typedarray/arr
  i32.const 2
  call $~lib/typedarray/Int32Array#__get
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 102
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
   i32.const 24
   i32.const 105
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/typedarray/arr
  local.tee $0
  i32.load offset=4
  local.get $0
  i32.load
  i32.sub
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 106
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
   i32.const 24
   i32.const 107
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/typedarray/arr
  i32.const 0
  call $~lib/typedarray/Int32Array#__get
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 108
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 8
  call $~lib/typedarray/Float64Array#constructor
  global.set $std/typedarray/af64
  global.get $std/typedarray/af64
  i32.const 0
  f64.const 1
  call $~lib/typedarray/Float64Array#__set
  global.get $std/typedarray/af64
  i32.const 1
  f64.const 2
  call $~lib/typedarray/Float64Array#__set
  global.get $std/typedarray/af64
  i32.const 2
  f64.const 7
  call $~lib/typedarray/Float64Array#__set
  global.get $std/typedarray/af64
  i32.const 3
  f64.const 6
  call $~lib/typedarray/Float64Array#__set
  global.get $std/typedarray/af64
  i32.const 4
  f64.const 5
  call $~lib/typedarray/Float64Array#__set
  global.get $std/typedarray/af64
  i32.const 5
  f64.const 4
  call $~lib/typedarray/Float64Array#__set
  global.get $std/typedarray/af64
  i32.const 6
  f64.const 3
  call $~lib/typedarray/Float64Array#__set
  global.get $std/typedarray/af64
  i32.const 7
  f64.const 8
  call $~lib/typedarray/Float64Array#__set
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
   i32.const 24
   i32.const 122
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/typedarray/af64
  local.tee $0
  i32.load offset=4
  local.get $0
  i32.load
  i32.sub
  i32.const 16
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 123
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
   i32.const 24
   i32.const 124
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 0
  global.set $~lib/argc
  global.get $std/typedarray/af64
  local.set $1
  i32.const 0
  local.set $0
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
    call $~lib/typedarray/Float64Array#__get
    f64.const 4
    f64.eq
    local.tee $0
    if
     global.get $std/typedarray/af64
     i32.const 1
     call $~lib/typedarray/Float64Array#__get
     f64.const 5
     f64.eq
     local.set $0
    end
    local.get $0
   end
   if
    global.get $std/typedarray/af64
    i32.const 2
    call $~lib/typedarray/Float64Array#__get
    f64.const 6
    f64.eq
    local.set $0
   end
   local.get $0
  end
  if
   global.get $std/typedarray/af64
   i32.const 3
   call $~lib/typedarray/Float64Array#__get
   f64.const 7
   f64.eq
   local.set $0
  end
  local.get $0
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 126
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
  call $~lib/typedarray/Uint8ClampedArray#__get
  if
   i32.const 0
   i32.const 24
   i32.const 133
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/typedarray/clampedArr
  i32.const 1
  call $~lib/typedarray/Uint8ClampedArray#__get
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 134
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/typedarray/clampedArr
  i32.const 2
  call $~lib/typedarray/Uint8ClampedArray#__get
  i32.const 255
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 135
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 5
  call $~lib/typedarray/Int8Array#constructor
  global.set $std/typedarray/arr8
  global.get $std/typedarray/arr8
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int8Array#__set
  global.get $std/typedarray/arr8
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int8Array#__set
  global.get $std/typedarray/arr8
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int8Array#__set
  global.get $std/typedarray/arr8
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int8Array#__set
  global.get $std/typedarray/arr8
  i32.const 4
  i32.const 5
  call $~lib/typedarray/Int8Array#__set
  global.get $std/typedarray/arr8
  i32.const 1
  i32.const 1
  i32.const 3
  call $~lib/typedarray/Int8Array#fill
  global.get $std/typedarray/arr8
  i32.const 5
  i32.const 15
  i32.const 0
  i32.const 240
  call $~lib/runtime/makeArray
  call $std/typedarray/isInt8ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 145
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/typedarray/arr8
  i32.const 0
  i32.const 0
  i32.const 2147483647
  call $~lib/typedarray/Int8Array#fill
  global.get $std/typedarray/arr8
  i32.const 5
  i32.const 15
  i32.const 0
  i32.const 312
  call $~lib/runtime/makeArray
  call $std/typedarray/isInt8ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 148
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
  i32.const 5
  i32.const 15
  i32.const 0
  i32.const 336
  call $~lib/runtime/makeArray
  call $std/typedarray/isInt8ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 151
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/typedarray/arr8
  i32.const 2
  i32.const -2
  i32.const 2147483647
  call $~lib/typedarray/Int8Array#fill
  global.get $std/typedarray/arr8
  i32.const 5
  i32.const 15
  i32.const 0
  i32.const 360
  call $~lib/runtime/makeArray
  call $std/typedarray/isInt8ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 154
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
  i32.const 5
  i32.const 15
  i32.const 0
  i32.const 384
  call $~lib/runtime/makeArray
  call $std/typedarray/isInt8ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 157
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/typedarray/arr8
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Int8Array#subarray
  global.set $std/typedarray/sub8
  global.get $std/typedarray/sub8
  i32.const 0
  i32.const 0
  i32.const 2147483647
  call $~lib/typedarray/Int8Array#fill
  global.get $std/typedarray/sub8
  i32.load offset=8
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 161
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/typedarray/sub8
  local.tee $0
  i32.load offset=4
  local.get $0
  i32.load
  i32.sub
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 162
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
   i32.const 24
   i32.const 163
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/typedarray/sub8
  i32.const 3
  i32.const 15
  i32.const 0
  i32.const 408
  call $~lib/runtime/makeArray
  call $std/typedarray/isInt8ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 164
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/typedarray/arr8
  i32.const 5
  i32.const 15
  i32.const 0
  i32.const 432
  call $~lib/runtime/makeArray
  call $std/typedarray/isInt8ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 165
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
  call $~lib/typedarray/Int32Array#__set
  global.get $std/typedarray/arr32
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int32Array#__set
  global.get $std/typedarray/arr32
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int32Array#__set
  global.get $std/typedarray/arr32
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int32Array#__set
  global.get $std/typedarray/arr32
  i32.const 4
  i32.const 5
  call $~lib/typedarray/Int32Array#__set
  global.get $std/typedarray/arr32
  i32.const 1
  i32.const 1
  i32.const 3
  call $~lib/typedarray/Int32Array#fill
  global.get $std/typedarray/arr32
  i32.const 5
  i32.const 16
  i32.const 2
  i32.const 456
  call $~lib/runtime/makeArray
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 175
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/typedarray/arr32
  i32.const 0
  i32.const 0
  i32.const 2147483647
  call $~lib/typedarray/Int32Array#fill
  global.get $std/typedarray/arr32
  i32.const 5
  i32.const 16
  i32.const 2
  i32.const 496
  call $~lib/runtime/makeArray
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 178
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
  i32.const 5
  i32.const 16
  i32.const 2
  i32.const 536
  call $~lib/runtime/makeArray
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 181
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/typedarray/arr32
  i32.const 2
  i32.const -2
  i32.const 2147483647
  call $~lib/typedarray/Int32Array#fill
  global.get $std/typedarray/arr32
  i32.const 5
  i32.const 16
  i32.const 2
  i32.const 576
  call $~lib/runtime/makeArray
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 184
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
  i32.const 5
  i32.const 16
  i32.const 2
  i32.const 616
  call $~lib/runtime/makeArray
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 187
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/typedarray/arr32
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Int32Array#subarray
  global.set $std/typedarray/sub32
  global.get $std/typedarray/sub32
  i32.const 0
  i32.const 0
  i32.const 2147483647
  call $~lib/typedarray/Int32Array#fill
  global.get $std/typedarray/sub32
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 191
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/typedarray/sub32
  local.tee $0
  i32.load offset=4
  local.get $0
  i32.load
  i32.sub
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 192
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
   i32.const 24
   i32.const 193
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/typedarray/sub32
  i32.const 3
  i32.const 16
  i32.const 2
  i32.const 656
  call $~lib/runtime/makeArray
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 194
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/typedarray/arr32
  i32.const 5
  i32.const 16
  i32.const 2
  i32.const 688
  call $~lib/runtime/makeArray
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 195
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  i32.const 134217726
  call $~lib/typedarray/Float64Array#constructor
  drop
  i32.const 6
  call $~lib/typedarray/Int8Array#constructor
  global.set $std/typedarray/multisubarr
  global.get $std/typedarray/multisubarr
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int8Array#__set
  global.get $std/typedarray/multisubarr
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int8Array#__set
  global.get $std/typedarray/multisubarr
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int8Array#__set
  global.get $std/typedarray/multisubarr
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int8Array#__set
  global.get $std/typedarray/multisubarr
  i32.const 4
  i32.const 5
  call $~lib/typedarray/Int8Array#__set
  global.get $std/typedarray/multisubarr
  i32.const 5
  i32.const 6
  call $~lib/typedarray/Int8Array#__set
  global.get $std/typedarray/multisubarr
  i32.const 1
  i32.const 6
  call $~lib/typedarray/Int8Array#subarray
  global.set $std/typedarray/multisubarr1
  global.get $std/typedarray/multisubarr1
  i32.const 0
  call $~lib/typedarray/Int8Array#__get
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 212
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
   i32.const 24
   i32.const 213
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/typedarray/multisubarr1
  local.tee $0
  i32.load offset=4
  local.get $0
  i32.load
  i32.sub
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 214
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
   i32.const 24
   i32.const 215
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
  call $~lib/typedarray/Int8Array#__get
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 218
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
   i32.const 24
   i32.const 219
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/typedarray/multisubarr2
  local.tee $0
  i32.load offset=4
  local.get $0
  i32.load
  i32.sub
  i32.const 2
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 220
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
   i32.const 24
   i32.const 221
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
  call $~lib/typedarray/Int8Array#__get
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 224
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
   i32.const 24
   i32.const 225
   i32.const 0
   call $~lib/env/abort
   unreachable
  end
  global.get $std/typedarray/multisubarr3
  local.tee $0
  i32.load offset=4
  local.get $0
  i32.load
  i32.sub
  i32.const 3
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 226
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
   i32.const 24
   i32.const 227
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
  call $std/typedarray/testArrayReverse<~lib/typedarray/Uint32Array,u32>
  call $std/typedarray/testArrayReverse<~lib/typedarray/Int64Array,i64>
  call $std/typedarray/testArrayReverse<~lib/typedarray/Uint64Array,u64>
  call $std/typedarray/testArrayReverse<~lib/typedarray/Float32Array,f32>
  call $std/typedarray/testArrayReverse<~lib/typedarray/Float64Array,f64>
 )
 (func $start (; 263 ;) (type $FUNCSIG$v)
  call $start:std/typedarray
 )
 (func $null (; 264 ;) (type $FUNCSIG$v)
  nop
 )
)
