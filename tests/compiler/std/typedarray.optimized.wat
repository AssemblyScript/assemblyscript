(module
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
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
 (type $FUNCSIG$vjii (func (param i64 i32 i32)))
 (type $FUNCSIG$vfii (func (param f32 i32 i32)))
 (type $FUNCSIG$vdii (func (param f64 i32 i32)))
 (type $FUNCSIG$fi (func (param i32) (result f32)))
 (type $FUNCSIG$di (func (param i32) (result f64)))
 (type $FUNCSIG$ff (func (param f32) (result f32)))
 (type $FUNCSIG$dd (func (param f64) (result f64)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "rtrace" "onincrement" (func $~lib/rt/rtrace/onincrement (param i32)))
 (import "rtrace" "onalloc" (func $~lib/rt/rtrace/onalloc (param i32)))
 (import "rtrace" "ondecrement" (func $~lib/rt/rtrace/ondecrement (param i32)))
 (import "rtrace" "onfree" (func $~lib/rt/rtrace/onfree (param i32)))
 (memory $0 1)
 (data (i32.const 8) "\"\00\00\00\01\00\00\00\01\00\00\00\"\00\00\00s\00t\00d\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 64) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00p\00u\00r\00e\00.\00t\00s")
 (data (i32.const 112) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s")
 (data (i32.const 160) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00a\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e")
 (data (i32.const 216) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00E\00r\00r\00o\00r")
 (data (i32.const 252) "\01\00\00\00\01")
 (data (i32.const 264) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e")
 (data (i32.const 320) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00R\00a\00n\00g\00e\00E\00r\00r\00o\00r")
 (data (i32.const 360) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h")
 (data (i32.const 408) "\05\00\00\00\01\00\00\00\00\00\00\00\05\00\00\00\01\01\01\04\05")
 (data (i32.const 432) "\05\00\00\00\01\00\00\00\00\00\00\00\05")
 (data (i32.const 456) "\05\00\00\00\01\00\00\00\00\00\00\00\05\00\00\00\01\01")
 (data (i32.const 480) "\05\00\00\00\01\00\00\00\00\00\00\00\05\00\00\00\01\01\00\02\02")
 (data (i32.const 504) "\05\00\00\00\01\00\00\00\00\00\00\00\05\00\00\00\01\01\00\02\02")
 (data (i32.const 528) "\03\00\00\00\01\00\00\00\00\00\00\00\03")
 (data (i32.const 552) "\05\00\00\00\01\00\00\00\00\00\00\00\05\00\00\00\01\00\00\00\02")
 (data (i32.const 576) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\05")
 (data (i32.const 616) "\14\00\00\00\01\00\00\00\00\00\00\00\14")
 (data (i32.const 656) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\01")
 (data (i32.const 696) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\02")
 (data (i32.const 736) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\02")
 (data (i32.const 776) "\0c\00\00\00\01\00\00\00\00\00\00\00\0c")
 (data (i32.const 808) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01")
 (data (i32.const 840) "\02")
 (data (i32.const 848) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00r\00e\00s\00u\00l\00t\00 \00m\00i\00s\00m\00a\00t\00c\00h")
 (data (i32.const 896) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00f\00a\00i\00l\00 \00r\00e\00s\00u\00l\00t\00 \00m\00i\00s\00m\00a\00t\00c\00h")
 (data (i32.const 952) "\0c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\n\00\00\00\0c\00\00\00\0e")
 (data (i32.const 984) "\10\00\00\00\01\00\00\00\11\00\00\00\10\00\00\00\c8\03\00\00\c8\03\00\00\0c\00\00\00\03")
 (data (i32.const 1016) ",\00\00\00\01\00\00\00\01\00\00\00,\00\00\00f\00o\00r\00E\00a\00c\00h\00 \00v\00a\00l\00u\00e\00 \00m\00i\00s\00m\00a\00t\00c\00h")
 (data (i32.const 1080) ",\00\00\00\01\00\00\00\01\00\00\00,\00\00\00f\00o\00r\00E\00a\00c\00h\00 \00i\00n\00d\00e\00x\00 \00m\00i\00s\00m\00a\00t\00c\00h")
 (data (i32.const 1144) ">\00\00\00\01\00\00\00\01\00\00\00>\00\00\00f\00o\00r\00E\00a\00c\00h\00 \00s\00e\00l\00f\00 \00p\00a\00r\00a\00m\00e\00t\00e\00r\00 \00m\00i\00s\00m\00a\00t\00c\00h")
 (data (i32.const 1224) "6\00\00\00\01\00\00\00\01\00\00\006\00\00\00f\00o\00r\00E\00a\00c\00h\00 \00c\00a\00l\00l\00 \00c\00o\00u\00n\00t\00 \00m\00i\00s\00m\00a\00t\00c\00h")
 (data (i32.const 1296) "$\00\00\00\01\00\00\00\00\00\00\00$\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00\07\00\00\00\08\00\00\00\t")
 (data (i32.const 1352) "\10\00\00\00\01\00\00\00\11\00\00\00\10\00\00\00 \05\00\00 \05\00\00$\00\00\00\t")
 (data (i32.const 1384) "B\00\00\00\01\00\00\00\01\00\00\00B\00\00\00T\00y\00p\00e\00d\00A\00r\00r\00a\00y\00 \00r\00e\00v\00e\00r\00s\00e\00 \00v\00a\00l\00u\00e\00 \00m\00i\00s\00m\00a\00t\00c\00h")
 (data (i32.const 1472) "V\00\00\00\01\00\00\00\01\00\00\00V\00\00\00T\00y\00p\00e\00d\00A\00r\00r\00a\00y\00 \00r\00e\00v\00e\00r\00s\00e\00 \00w\00i\00t\00h\00 \00b\00y\00t\00e\00O\00f\00f\00s\00e\00t\00 \00m\00i\00s\00m\00a\00t\00c\00h")
 (data (i32.const 1576) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00u\00n\00c\00a\00u\00g\00h\00t\00 \00e\00r\00r\00o\00r")
 (data (i32.const 1624) "\12\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\001\04\00\00\02\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\04\00\00\001\00\00\00\02\00\00\001\00\00\00\02\00\00\00Q\04\00\00\02\00\00\00Q\00\00\00\02\00\00\00\91\04\00\00\02\00\00\00\91\00\00\00\02\00\00\00\11\05\00\00\02\00\00\00\11\01\00\00\02\00\00\00\91\0c\00\00\02\00\00\00\11\0d\00\00\02\00\00\003\04\00\00\02\00\00\00\93\04\00\00\02")
 (table $0 112 funcref)
 (elem (i32.const 0) $null $~lib/util/sort/COMPARATOR<f64>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Float32Array,f32>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Float64Array,f64>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Float32Array,f32>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Float64Array,f64>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Float32Array,f32>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Float64Array,f64>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Float32Array,f32>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Float32Array,f32>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Float64Array,f64>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Float64Array,f64>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int8Array,i8>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int8Array,i8>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int8Array,i8>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int16Array,i16>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int16Array,i16>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int32Array,i32>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int32Array,i32>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int64Array,i64>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int64Array,i64>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Float32Array,f32>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Float32Array,f32>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Float64Array,f64>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Float64Array,f64>~anonymous|1 $std/typedarray/testArrayEvery<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Uint8Array,u8>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Uint8Array,u8>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Uint8Array,u8>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Uint8Array,u8>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Uint64Array,u64>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Float32Array,f32>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Float32Array,f32>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Float64Array,f64>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Float64Array,f64>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Float32Array,f32>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Float64Array,f64>~anonymous|0)
 (global $~lib/error (mut i32) (i32.const 0))
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/rt/pure/CUR (mut i32) (i32.const 0))
 (global $~lib/rt/pure/END (mut i32) (i32.const 0))
 (global $~lib/rt/pure/ROOTS (mut i32) (i32.const 0))
 (global $~lib/argc (mut i32) (i32.const 0))
 (global $std/typedarray/forEachCallCount (mut i32) (i32.const 0))
 (global $std/typedarray/forEachSelf (mut i32) (i32.const 0))
 (global $std/typedarray/forEachValues i32 (i32.const 1000))
 (global $std/typedarray/testArrayReverseValues i32 (i32.const 1368))
 (global $~lib/started (mut i32) (i32.const 0))
 (export "__start" (func $start))
 (export "memory" (memory $0))
 (func $~lib/rt/pure/increment (; 5 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.tee $1
  i32.const -268435456
  i32.and
  local.get $1
  i32.const 1
  i32.add
  i32.const -268435456
  i32.and
  i32.ne
  if
   i32.const 0
   i32.const 80
   i32.const 104
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  i32.const 1
  i32.add
  i32.store offset=4
  local.get $0
  call $~lib/rt/rtrace/onincrement
  local.get $0
  i32.load
  i32.const 1
  i32.and
  if
   i32.const 0
   i32.const 80
   i32.const 107
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/rt/pure/__retain (; 6 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 1772
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/increment
  end
  local.get $0
 )
 (func $~lib/rt/tlsf/removeBlock (; 7 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  local.tee $3
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 276
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const -4
  i32.and
  local.tee $2
  i32.const 16
  i32.ge_u
  if (result i32)
   local.get $2
   i32.const 1073741808
   i32.lt_u
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 278
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 4
   i32.shr_u
   local.set $2
   i32.const 0
  else   
   local.get $2
   i32.const 31
   local.get $2
   i32.clz
   i32.sub
   local.tee $3
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $2
   local.get $3
   i32.const 7
   i32.sub
  end
  local.tee $3
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 16
   i32.lt_u
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 291
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=20
  local.set $4
  local.get $1
  i32.load offset=16
  local.tee $5
  if
   local.get $5
   local.get $4
   i32.store offset=20
  end
  local.get $4
  if
   local.get $4
   local.get $5
   i32.store offset=16
  end
  local.get $3
  i32.const 4
  i32.shl
  local.get $2
  i32.add
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  i32.load offset=96
  local.get $1
  i32.eq
  if
   local.get $3
   i32.const 4
   i32.shl
   local.get $2
   i32.add
   i32.const 2
   i32.shl
   local.get $0
   i32.add
   local.get $4
   i32.store offset=96
   local.get $4
   i32.eqz
   if
    local.get $3
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    local.get $3
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    i32.load offset=4
    i32.const 1
    local.get $2
    i32.shl
    i32.const -1
    i32.xor
    i32.and
    local.tee $1
    i32.store offset=4
    local.get $1
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const 1
     local.get $3
     i32.shl
     i32.const -1
     i32.xor
     i32.and
     i32.store
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (; 8 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 204
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  local.tee $3
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 206
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 16
  i32.add
  local.get $1
  i32.load
  i32.const -4
  i32.and
  i32.add
  local.tee $4
  i32.load
  local.tee $5
  i32.const 1
  i32.and
  if
   local.get $3
   i32.const -4
   i32.and
   i32.const 16
   i32.add
   local.get $5
   i32.const -4
   i32.and
   i32.add
   local.tee $2
   i32.const 1073741808
   i32.lt_u
   if
    local.get $0
    local.get $4
    call $~lib/rt/tlsf/removeBlock
    local.get $1
    local.get $3
    i32.const 3
    i32.and
    local.get $2
    i32.or
    local.tee $3
    i32.store
    local.get $1
    i32.const 16
    i32.add
    local.get $1
    i32.load
    i32.const -4
    i32.and
    i32.add
    local.tee $4
    i32.load
    local.set $5
   end
  end
  local.get $3
  i32.const 2
  i32.and
  if
   local.get $1
   i32.const 4
   i32.sub
   i32.load
   local.tee $2
   i32.load
   local.tee $6
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 128
    i32.const 227
    i32.const 15
    call $~lib/builtins/abort
    unreachable
   end
   local.get $6
   i32.const -4
   i32.and
   i32.const 16
   i32.add
   local.get $3
   i32.const -4
   i32.and
   i32.add
   local.tee $7
   i32.const 1073741808
   i32.lt_u
   if (result i32)
    local.get $0
    local.get $2
    call $~lib/rt/tlsf/removeBlock
    local.get $2
    local.get $6
    i32.const 3
    i32.and
    local.get $7
    i32.or
    local.tee $3
    i32.store
    local.get $2
   else    
    local.get $1
   end
   local.set $1
  end
  local.get $4
  local.get $5
  i32.const 2
  i32.or
  i32.store
  local.get $3
  i32.const -4
  i32.and
  local.tee $2
  i32.const 16
  i32.ge_u
  if (result i32)
   local.get $2
   i32.const 1073741808
   i32.lt_u
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 242
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  local.get $1
  i32.const 16
  i32.add
  local.get $2
  i32.add
  i32.ne
  if
   i32.const 0
   i32.const 128
   i32.const 243
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 4
  i32.sub
  local.get $1
  i32.store
  local.get $2
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $2
   i32.const 4
   i32.shr_u
   local.set $4
   i32.const 0
  else   
   local.get $2
   i32.const 31
   local.get $2
   i32.clz
   i32.sub
   local.tee $2
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $4
   local.get $2
   i32.const 7
   i32.sub
  end
  local.tee $3
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $4
   i32.const 16
   i32.lt_u
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 259
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 4
  i32.shl
  local.get $4
  i32.add
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  i32.load offset=96
  local.set $2
  local.get $1
  i32.const 0
  i32.store offset=16
  local.get $1
  local.get $2
  i32.store offset=20
  local.get $2
  if
   local.get $2
   local.get $1
   i32.store offset=16
  end
  local.get $3
  i32.const 4
  i32.shl
  local.get $4
  i32.add
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  local.get $1
  i32.store offset=96
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $3
  i32.shl
  i32.or
  i32.store
  local.get $3
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  local.get $3
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  i32.load offset=4
  i32.const 1
  local.get $4
  i32.shl
  i32.or
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (; 9 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $2
  i32.const 15
  i32.and
  i32.eqz
  i32.const 0
  local.get $1
  i32.const 15
  i32.and
  i32.eqz
  i32.const 0
  local.get $1
  local.get $2
  i32.le_u
  select
  select
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 385
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=1568
  local.tee $3
  if
   local.get $1
   local.get $3
   i32.const 16
   i32.add
   i32.lt_u
   if
    i32.const 0
    i32.const 128
    i32.const 395
    i32.const 15
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 16
   i32.sub
   local.get $3
   i32.eq
   if
    local.get $3
    i32.load
    local.set $4
    local.get $1
    i32.const 16
    i32.sub
    local.set $1
   end
  else   
   local.get $1
   local.get $0
   i32.const 1572
   i32.add
   i32.lt_u
   if
    i32.const 0
    i32.const 128
    i32.const 407
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  local.get $1
  i32.sub
  local.tee $2
  i32.const 48
  i32.lt_u
  if
   return
  end
  local.get $1
  local.get $4
  i32.const 2
  i32.and
  local.get $2
  i32.const 32
  i32.sub
  i32.const 1
  i32.or
  i32.or
  i32.store
  local.get $1
  i32.const 0
  i32.store offset=16
  local.get $1
  i32.const 0
  i32.store offset=20
  local.get $1
  local.get $2
  i32.add
  i32.const 16
  i32.sub
  local.tee $2
  i32.const 2
  i32.store
  local.get $0
  local.get $2
  i32.store offset=1568
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
 )
 (func $~lib/rt/tlsf/initializeRoot (; 10 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 1
  memory.size
  local.tee $0
  i32.gt_s
  if (result i32)
   i32.const 1
   local.get $0
   i32.sub
   memory.grow
   i32.const 0
   i32.lt_s
  else   
   i32.const 0
  end
  if
   unreachable
  end
  i32.const 1776
  i32.const 0
  i32.store
  i32.const 3344
  i32.const 0
  i32.store
  i32.const 0
  local.set $0
  loop $loop|0
   block $break|0
    local.get $0
    i32.const 23
    i32.ge_u
    br_if $break|0
    local.get $0
    i32.const 2
    i32.shl
    i32.const 1776
    i32.add
    i32.const 0
    i32.store offset=4
    i32.const 0
    local.set $1
    loop $loop|1
     block $break|1
      local.get $1
      i32.const 16
      i32.ge_u
      br_if $break|1
      local.get $0
      i32.const 4
      i32.shl
      local.get $1
      i32.add
      i32.const 2
      i32.shl
      i32.const 1776
      i32.add
      i32.const 0
      i32.store offset=96
      local.get $1
      i32.const 1
      i32.add
      local.set $1
      br $loop|1
     end
    end
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
  i32.const 1776
  i32.const 3360
  memory.size
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  i32.const 1776
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/tlsf/prepareSize (; 11 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 1073741808
  i32.ge_u
  if
   i32.const 0
   i32.const 176
   call $~lib/error/Error#constructor
   global.set $~lib/error
   i32.const 0
   return
  end
  local.get $0
  i32.const 15
  i32.add
  i32.const -16
  i32.and
  local.tee $0
  i32.const 16
  local.get $0
  i32.const 16
  i32.gt_u
  select
 )
 (func $~lib/rt/tlsf/searchBlock (; 12 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if (result i32)
   local.get $1
   i32.const 4
   i32.shr_u
   local.set $1
   i32.const 0
  else   
   local.get $1
   i32.const 536870904
   i32.lt_u
   if
    i32.const 1
    i32.const 27
    local.get $1
    i32.clz
    i32.sub
    i32.shl
    local.get $1
    i32.add
    i32.const 1
    i32.sub
    local.set $1
   end
   local.get $1
   i32.const 31
   local.get $1
   i32.clz
   i32.sub
   local.tee $2
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 16
   i32.xor
   local.set $1
   local.get $2
   i32.const 7
   i32.sub
  end
  local.tee $2
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $1
   i32.const 16
   i32.lt_u
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 337
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 2
  i32.shl
  local.get $0
  i32.add
  i32.load offset=4
  i32.const -1
  local.get $1
  i32.shl
  i32.and
  local.tee $1
  if (result i32)
   local.get $1
   i32.ctz
   local.get $2
   i32.const 4
   i32.shl
   i32.add
   i32.const 2
   i32.shl
   local.get $0
   i32.add
   i32.load offset=96
  else   
   local.get $0
   i32.load
   i32.const -1
   local.get $2
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.tee $1
   if (result i32)
    local.get $1
    i32.ctz
    local.tee $1
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    i32.load offset=4
    local.tee $2
    i32.eqz
    if
     i32.const 0
     i32.const 128
     i32.const 350
     i32.const 17
     call $~lib/builtins/abort
     unreachable
    end
    local.get $2
    i32.ctz
    local.get $1
    i32.const 4
    i32.shl
    i32.add
    i32.const 2
    i32.shl
    local.get $0
    i32.add
    i32.load offset=96
   else    
    i32.const 0
   end
  end
 )
 (func $~lib/rt/tlsf/growMemory (; 13 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  memory.size
  local.tee $2
  local.get $1
  i32.const 65535
  i32.add
  i32.const -65536
  i32.and
  i32.const 16
  i32.shr_u
  local.tee $1
  local.get $2
  local.get $1
  i32.gt_s
  select
  memory.grow
  i32.const 0
  i32.lt_s
  if
   local.get $1
   memory.grow
   i32.const 0
   i32.lt_s
   if
    unreachable
   end
  end
  local.get $0
  local.get $2
  i32.const 16
  i32.shl
  memory.size
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
 )
 (func $~lib/rt/tlsf/prepareBlock (; 14 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  i32.load
  local.set $3
  local.get $2
  i32.const 15
  i32.and
  if
   i32.const 0
   i32.const 128
   i32.const 364
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const -4
  i32.and
  local.get $2
  i32.sub
  local.tee $4
  i32.const 32
  i32.ge_u
  if
   local.get $1
   local.get $3
   i32.const 2
   i32.and
   local.get $2
   i32.or
   i32.store
   local.get $1
   i32.const 16
   i32.add
   local.get $2
   i32.add
   local.tee $1
   local.get $4
   i32.const 16
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $0
   local.get $1
   call $~lib/rt/tlsf/insertBlock
  else   
   local.get $1
   local.get $3
   i32.const -2
   i32.and
   i32.store
   local.get $1
   i32.const 16
   i32.add
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   local.get $1
   i32.const 16
   i32.add
   local.get $1
   i32.load
   i32.const -4
   i32.and
   i32.add
   i32.load
   i32.const -3
   i32.and
   i32.store
  end
 )
 (func $~lib/rt/tlsf/allocateBlock (; 15 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/tlsf/prepareSize
  local.set $3
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $0
  local.get $3
  call $~lib/rt/tlsf/searchBlock
  local.tee $2
  i32.eqz
  if
   local.get $0
   local.get $3
   call $~lib/rt/tlsf/growMemory
   local.get $0
   local.get $3
   call $~lib/rt/tlsf/searchBlock
   local.tee $2
   i32.eqz
   if
    i32.const 0
    i32.const 128
    i32.const 477
    i32.const 15
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  i32.load
  i32.const -4
  i32.and
  local.get $3
  i32.lt_u
  if
   i32.const 0
   i32.const 128
   i32.const 479
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 0
  i32.store offset=4
  local.get $2
  local.get $1
  i32.store offset=12
  local.get $0
  local.get $2
  call $~lib/rt/tlsf/removeBlock
  local.get $0
  local.get $2
  local.get $3
  call $~lib/rt/tlsf/prepareBlock
  local.get $2
  call $~lib/rt/rtrace/onalloc
  local.get $2
 )
 (func $~lib/rt/tlsf/__alloc (; 16 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  global.get $~lib/rt/tlsf/ROOT
  local.tee $2
  if (result i32)
   local.get $2
  else   
   call $~lib/rt/tlsf/initializeRoot
   global.get $~lib/rt/tlsf/ROOT
  end
  local.get $0
  call $~lib/rt/tlsf/allocateBlock
  local.set $0
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
  i32.const 16
  i32.add
 )
 (func $~lib/rt/tlsf/freeBlock (; 17 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $1
  i32.load
  local.tee $2
  i32.const 1
  i32.and
  if
   i32.const 0
   i32.const 128
   i32.const 531
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $2
  i32.const 1
  i32.or
  i32.store
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
  local.get $1
  call $~lib/rt/rtrace/onfree
 )
 (func $~lib/rt/__typeinfo (; 18 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 1624
  i32.load
  i32.gt_u
  if
   i32.const 0
   i32.const 280
   call $~lib/error/Error#constructor
   global.set $~lib/error
   i32.const 0
   return
  end
  local.get $0
  i32.const 3
  i32.shl
  i32.const 1628
  i32.add
  i32.load
 )
 (func $~lib/memory/memory.copy (; 19 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $2
   local.set $3
   local.get $0
   local.get $1
   i32.eq
   br_if $~lib/util/memory/memmove|inlined.0
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
       local.get $3
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $3
       i32.const 1
       i32.sub
       local.set $3
       local.get $0
       local.tee $2
       i32.const 1
       i32.add
       local.set $0
       local.get $1
       local.tee $4
       i32.const 1
       i32.add
       local.set $1
       local.get $2
       local.get $4
       i32.load8_u
       i32.store8
       br $continue|0
      end
     end
     loop $continue|1
      local.get $3
      i32.const 8
      i32.lt_u
      i32.eqz
      if
       local.get $0
       local.get $1
       i64.load
       i64.store
       local.get $3
       i32.const 8
       i32.sub
       local.set $3
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
     local.get $3
     if
      local.get $0
      local.tee $2
      i32.const 1
      i32.add
      local.set $0
      local.get $1
      local.tee $4
      i32.const 1
      i32.add
      local.set $1
      local.get $2
      local.get $4
      i32.load8_u
      i32.store8
      local.get $3
      i32.const 1
      i32.sub
      local.set $3
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
      local.get $3
      i32.add
      i32.const 7
      i32.and
      if
       local.get $3
       i32.eqz
       br_if $~lib/util/memory/memmove|inlined.0
       local.get $0
       local.get $3
       i32.const 1
       i32.sub
       local.tee $3
       i32.add
       local.get $1
       local.get $3
       i32.add
       i32.load8_u
       i32.store8
       br $continue|3
      end
     end
     loop $continue|4
      local.get $3
      i32.const 8
      i32.lt_u
      i32.eqz
      if
       local.get $0
       local.get $3
       i32.const 8
       i32.sub
       local.tee $3
       i32.add
       local.get $1
       local.get $3
       i32.add
       i64.load
       i64.store
       br $continue|4
      end
     end
    end
    loop $continue|5
     local.get $3
     if
      local.get $0
      local.get $3
      i32.const 1
      i32.sub
      local.tee $3
      i32.add
      local.get $1
      local.get $3
      i32.add
      i32.load8_u
      i32.store8
      br $continue|5
     end
    end
   end
  end
 )
 (func $~lib/rt/tlsf/__free (; 20 ;) (type $FUNCSIG$vi) (param $0 i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 561
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 15
  i32.and
  i32.eqz
  i32.const 0
  local.get $0
  select
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 562
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $0
  i32.const 16
  i32.sub
  call $~lib/rt/tlsf/freeBlock
 )
 (func $~lib/rt/pure/growRoots (; 21 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/rt/pure/CUR
  global.get $~lib/rt/pure/ROOTS
  local.tee $1
  i32.sub
  local.tee $2
  i32.const 1
  i32.shl
  local.tee $0
  i32.const 256
  local.get $0
  i32.const 256
  i32.gt_u
  select
  local.tee $3
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 16
  i32.sub
  call $~lib/rt/rtrace/onfree
  local.get $0
  local.get $1
  local.get $2
  call $~lib/memory/memory.copy
  local.get $1
  if
   local.get $1
   i32.const 16
   i32.sub
   call $~lib/rt/rtrace/onalloc
   local.get $1
   call $~lib/rt/tlsf/__free
  end
  local.get $0
  global.set $~lib/rt/pure/ROOTS
  local.get $0
  local.get $2
  i32.add
  global.set $~lib/rt/pure/CUR
  local.get $0
  local.get $3
  i32.add
  global.set $~lib/rt/pure/END
 )
 (func $~lib/rt/pure/appendRoot (; 22 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  global.get $~lib/rt/pure/CUR
  local.tee $1
  global.get $~lib/rt/pure/END
  i32.ge_u
  if
   call $~lib/rt/pure/growRoots
   global.get $~lib/error
   if
    return
   end
   global.get $~lib/rt/pure/CUR
   local.set $1
  end
  local.get $1
  local.get $0
  i32.store
  local.get $1
  i32.const 4
  i32.add
  global.set $~lib/rt/pure/CUR
 )
 (func $~lib/rt/pure/decrement (; 23 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  i32.load offset=4
  local.tee $2
  i32.const 268435455
  i32.and
  local.set $1
  local.get $0
  call $~lib/rt/rtrace/ondecrement
  local.get $0
  i32.load
  i32.const 1
  i32.and
  if
   i32.const 0
   i32.const 80
   i32.const 115
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 1
  i32.eq
  if
   local.get $0
   i32.const 16
   i32.add
   i32.const 1
   call $~lib/rt/__visit_members
   local.get $2
   i32.const -2147483648
   i32.and
   if
    local.get $0
    i32.const -2147483648
    i32.store offset=4
   else    
    global.get $~lib/rt/tlsf/ROOT
    local.get $0
    call $~lib/rt/tlsf/freeBlock
   end
  else   
   local.get $1
   i32.const 0
   i32.le_u
   if
    i32.const 0
    i32.const 80
    i32.const 124
    i32.const 15
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load offset=8
   call $~lib/rt/__typeinfo
   global.get $~lib/error
   if
    return
   end
   i32.const 16
   i32.and
   if
    local.get $0
    local.get $1
    i32.const 1
    i32.sub
    local.get $2
    i32.const -268435456
    i32.and
    i32.or
    i32.store offset=4
   else    
    local.get $0
    local.get $1
    i32.const 1
    i32.sub
    i32.const -1342177280
    i32.or
    i32.store offset=4
    local.get $2
    i32.const -2147483648
    i32.and
    i32.eqz
    if
     local.get $0
     call $~lib/rt/pure/appendRoot
    end
   end
  end
 )
 (func $~lib/rt/pure/__release (; 24 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  i32.const 1772
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
 )
 (func $~lib/error/Error#constructor (; 25 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 4
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
   local.set $0
  end
  local.get $0
  i32.const 232
  call $~lib/rt/pure/__retain
  i32.store
  local.get $0
  i32.const 264
  call $~lib/rt/pure/__retain
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $~lib/error/RangeError#constructor (; 26 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  i32.const 12
  i32.const 5
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.get $0
  call $~lib/error/Error#constructor
  local.tee $1
  local.get $1
  i32.load
  local.tee $3
  i32.const 336
  i32.ne
  if
   i32.const 336
   call $~lib/rt/pure/__retain
   drop
   local.get $3
   call $~lib/rt/pure/__release
  end
  i32.const 336
  i32.store
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
 )
 (func $~lib/arraybuffer/ArrayBufferView#constructor (; 27 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $1
  i32.const 1073741808
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   i32.const 376
   call $~lib/error/RangeError#constructor
   global.set $~lib/error
   i32.const 0
   return
  end
  local.get $1
  local.get $2
  i32.shl
  local.tee $2
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $1
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $0
  i32.eqz
  if
   i32.const 12
   i32.const 2
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
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
  local.tee $3
  local.get $1
  i32.ne
  if
   local.get $1
   call $~lib/rt/pure/__retain
   drop
   local.get $3
   call $~lib/rt/pure/__release
  end
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
 (func $~lib/typedarray/Int8Array#constructor (; 28 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 12
  i32.const 3
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.get $0
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#constructor
  global.get $~lib/error
  if
   i32.const 0
   return
  end
 )
 (func $~lib/arraybuffer/ArrayBufferView#get:byteOffset (; 29 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load
  i32.sub
 )
 (func $~lib/typedarray/Uint8Array#constructor (; 30 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 12
  i32.const 6
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.get $0
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#constructor
  global.get $~lib/error
  if
   i32.const 0
   return
  end
 )
 (func $~lib/typedarray/Uint8ClampedArray#constructor (; 31 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 12
  i32.const 7
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.get $0
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#constructor
  global.get $~lib/error
  if
   i32.const 0
   return
  end
 )
 (func $~lib/typedarray/Int16Array#constructor (; 32 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 12
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.get $0
  i32.const 1
  call $~lib/arraybuffer/ArrayBufferView#constructor
  global.get $~lib/error
  if
   i32.const 0
   return
  end
 )
 (func $~lib/typedarray/Int16Array#get:length (; 33 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
 )
 (func $~lib/typedarray/Uint16Array#constructor (; 34 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 12
  i32.const 9
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.get $0
  i32.const 1
  call $~lib/arraybuffer/ArrayBufferView#constructor
  global.get $~lib/error
  if
   i32.const 0
   return
  end
 )
 (func $~lib/typedarray/Int32Array#constructor (; 35 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 12
  i32.const 10
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.get $0
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  global.get $~lib/error
  if
   i32.const 0
   return
  end
 )
 (func $~lib/typedarray/Int32Array#get:length (; 36 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
 )
 (func $~lib/typedarray/Uint32Array#constructor (; 37 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 12
  i32.const 11
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.get $0
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  global.get $~lib/error
  if
   i32.const 0
   return
  end
 )
 (func $~lib/typedarray/Int64Array#constructor (; 38 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 12
  i32.const 12
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.get $0
  i32.const 3
  call $~lib/arraybuffer/ArrayBufferView#constructor
  global.get $~lib/error
  if
   i32.const 0
   return
  end
 )
 (func $~lib/typedarray/Int64Array#get:length (; 39 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
 )
 (func $~lib/typedarray/Uint64Array#constructor (; 40 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 12
  i32.const 13
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.get $0
  i32.const 3
  call $~lib/arraybuffer/ArrayBufferView#constructor
  global.get $~lib/error
  if
   i32.const 0
   return
  end
 )
 (func $~lib/typedarray/Float32Array#constructor (; 41 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 12
  i32.const 14
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.get $0
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  global.get $~lib/error
  if
   i32.const 0
   return
  end
 )
 (func $~lib/typedarray/Float64Array#constructor (; 42 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 12
  i32.const 15
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.get $0
  i32.const 3
  call $~lib/arraybuffer/ArrayBufferView#constructor
  global.get $~lib/error
  if
   i32.const 0
   return
  end
 )
 (func $std/typedarray/testInstantiate (; 43 ;) (type $FUNCSIG$vi) (param $0 i32)
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
  local.get $0
  call $~lib/typedarray/Int8Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  if
   i32.const 0
   i32.const 24
   i32.const 32
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  local.get $0
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 33
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=8
  local.get $0
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 34
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/typedarray/Uint8Array#constructor
  local.set $2
  global.get $~lib/error
  if
   return
  end
  local.get $2
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  if
   i32.const 0
   i32.const 24
   i32.const 37
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.load offset=8
  local.get $0
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 38
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.load offset=8
  local.get $0
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 39
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  if
   i32.const 0
   i32.const 24
   i32.const 42
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.load offset=8
  local.get $0
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 43
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.load offset=8
  local.get $0
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 44
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/typedarray/Int16Array#constructor
  local.set $4
  global.get $~lib/error
  if
   return
  end
  local.get $4
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  if
   i32.const 0
   i32.const 24
   i32.const 47
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.load offset=8
  local.get $0
  i32.const 1
  i32.shl
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 48
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  call $~lib/typedarray/Int16Array#get:length
  local.get $0
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 49
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/typedarray/Uint16Array#constructor
  local.set $5
  global.get $~lib/error
  if
   return
  end
  local.get $5
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  if
   i32.const 0
   i32.const 24
   i32.const 52
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.load offset=8
  local.get $0
  i32.const 1
  i32.shl
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 53
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  call $~lib/typedarray/Int16Array#get:length
  local.get $0
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 54
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/typedarray/Int32Array#constructor
  local.set $6
  global.get $~lib/error
  if
   return
  end
  local.get $6
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  if
   i32.const 0
   i32.const 24
   i32.const 57
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  i32.load offset=8
  local.get $0
  i32.const 2
  i32.shl
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 58
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  call $~lib/typedarray/Int32Array#get:length
  local.get $0
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 59
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/typedarray/Uint32Array#constructor
  local.set $7
  global.get $~lib/error
  if
   return
  end
  local.get $7
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  if
   i32.const 0
   i32.const 24
   i32.const 62
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.load offset=8
  local.get $0
  i32.const 2
  i32.shl
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 63
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  call $~lib/typedarray/Int32Array#get:length
  local.get $0
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 64
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/typedarray/Int64Array#constructor
  local.set $8
  global.get $~lib/error
  if
   return
  end
  local.get $8
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  if
   i32.const 0
   i32.const 24
   i32.const 67
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $8
  i32.load offset=8
  local.get $0
  i32.const 3
  i32.shl
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 68
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $8
  call $~lib/typedarray/Int64Array#get:length
  local.get $0
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 69
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/typedarray/Uint64Array#constructor
  local.set $9
  global.get $~lib/error
  if
   return
  end
  local.get $9
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  if
   i32.const 0
   i32.const 24
   i32.const 72
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $9
  i32.load offset=8
  local.get $0
  i32.const 3
  i32.shl
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 73
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $9
  call $~lib/typedarray/Int64Array#get:length
  local.get $0
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 74
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/typedarray/Float32Array#constructor
  local.set $10
  global.get $~lib/error
  if
   return
  end
  local.get $10
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  if
   i32.const 0
   i32.const 24
   i32.const 77
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $10
  i32.load offset=8
  local.get $0
  i32.const 2
  i32.shl
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 78
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $10
  call $~lib/typedarray/Int32Array#get:length
  local.get $0
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 79
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/typedarray/Float64Array#constructor
  local.set $11
  global.get $~lib/error
  if
   return
  end
  local.get $11
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  if
   i32.const 0
   i32.const 24
   i32.const 82
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $11
  i32.load offset=8
  local.get $0
  i32.const 3
  i32.shl
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 83
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $11
  call $~lib/typedarray/Int64Array#get:length
  local.get $0
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 84
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $9
  call $~lib/rt/pure/__release
  local.get $10
  call $~lib/rt/pure/__release
  local.get $11
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int32Array#__set (; 44 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 280
   call $~lib/error/RangeError#constructor
   global.set $~lib/error
   return
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
 (func $~lib/typedarray/Int32Array#__get (; 45 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 280
   call $~lib/error/RangeError#constructor
   global.set $~lib/error
   i32.const 0
   return
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $~lib/typedarray/Int32Array#subarray (; 46 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $4
  call $~lib/typedarray/Int32Array#get:length
  local.set $3
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
   local.get $3
   i32.add
   local.tee $0
   i32.const 0
   local.get $0
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
  local.set $0
  local.get $2
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $2
   local.get $3
   i32.add
   local.tee $1
   i32.const 0
   local.get $1
   i32.const 0
   i32.gt_s
   select
  else   
   local.get $2
   local.get $3
   local.get $2
   local.get $3
   i32.lt_s
   select
  end
  local.tee $1
  local.get $0
  local.get $1
  local.get $0
  i32.gt_s
  select
  local.set $3
  i32.const 12
  i32.const 10
  call $~lib/rt/tlsf/__alloc
  local.set $1
  block $~lib/typedarray/SUBARRAY<~lib/typedarray/Int32Array,i32>|inlined.0
   global.get $~lib/error
   if
    i32.const 0
    local.set $1
    br $~lib/typedarray/SUBARRAY<~lib/typedarray/Int32Array,i32>|inlined.0
   end
   local.get $1
   call $~lib/rt/pure/__retain
   local.tee $1
   local.get $4
   i32.load
   local.tee $2
   local.get $1
   i32.load
   local.tee $6
   i32.ne
   if
    local.get $2
    call $~lib/rt/pure/__retain
    drop
    local.get $6
    call $~lib/rt/pure/__release
   end
   local.get $2
   i32.store
   local.get $1
   local.get $4
   i32.load offset=4
   local.get $0
   i32.const 2
   i32.shl
   i32.add
   i32.store offset=4
   local.get $1
   local.get $3
   local.get $0
   i32.sub
   i32.const 2
   i32.shl
   i32.store offset=8
   local.get $4
   call $~lib/rt/pure/__release
  end
  local.get $1
 )
 (func $~lib/typedarray/Float64Array#__set (; 47 ;) (type $FUNCSIG$viid) (param $0 i32) (param $1 i32) (param $2 f64)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 280
   call $~lib/error/RangeError#constructor
   global.set $~lib/error
   return
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
 (func $~lib/typedarray/Float64Array#subarray (; 48 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $4
  call $~lib/typedarray/Int64Array#get:length
  local.set $3
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
   local.get $3
   i32.add
   local.tee $0
   i32.const 0
   local.get $0
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
  local.set $0
  local.get $2
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $2
   local.get $3
   i32.add
   local.tee $1
   i32.const 0
   local.get $1
   i32.const 0
   i32.gt_s
   select
  else   
   local.get $2
   local.get $3
   local.get $2
   local.get $3
   i32.lt_s
   select
  end
  local.tee $1
  local.get $0
  local.get $1
  local.get $0
  i32.gt_s
  select
  local.set $3
  i32.const 12
  i32.const 15
  call $~lib/rt/tlsf/__alloc
  local.set $1
  block $~lib/typedarray/SUBARRAY<~lib/typedarray/Float64Array,f64>|inlined.0
   global.get $~lib/error
   if
    i32.const 0
    local.set $1
    br $~lib/typedarray/SUBARRAY<~lib/typedarray/Float64Array,f64>|inlined.0
   end
   local.get $1
   call $~lib/rt/pure/__retain
   local.tee $1
   local.get $4
   i32.load
   local.tee $2
   local.get $1
   i32.load
   local.tee $6
   i32.ne
   if
    local.get $2
    call $~lib/rt/pure/__retain
    drop
    local.get $6
    call $~lib/rt/pure/__release
   end
   local.get $2
   i32.store
   local.get $1
   local.get $4
   i32.load offset=4
   local.get $0
   i32.const 3
   i32.shl
   i32.add
   i32.store offset=4
   local.get $1
   local.get $3
   local.get $0
   i32.sub
   i32.const 3
   i32.shl
   i32.store offset=8
   local.get $4
   call $~lib/rt/pure/__release
  end
  local.get $1
 )
 (func $~lib/util/sort/insertionSort<f64> (; 49 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 f64)
  (local $7 f64)
  block $break|0
   loop $loop|0
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
    local.set $6
    local.get $3
    i32.const 1
    i32.sub
    local.set $4
    loop $continue|1
     block $break|1
      local.get $4
      i32.const 0
      i32.lt_s
      br_if $break|1
      local.get $4
      i32.const 3
      i32.shl
      local.get $0
      i32.add
      f64.load
      local.set $7
      i32.const 2
      global.set $~lib/argc
      local.get $6
      local.get $7
      local.get $2
      call_indirect (type $FUNCSIG$idd)
      global.get $~lib/error
      if
       return
      end
      i32.const 0
      i32.ge_s
      br_if $break|1
      local.get $4
      local.tee $5
      i32.const 1
      i32.sub
      local.set $4
      local.get $5
      i32.const 1
      i32.add
      i32.const 3
      i32.shl
      local.get $0
      i32.add
      local.get $7
      f64.store
      br $continue|1
     end
    end
    local.get $4
    i32.const 1
    i32.add
    i32.const 3
    i32.shl
    local.get $0
    i32.add
    local.get $6
    f64.store
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    br $loop|0
   end
   unreachable
  end
 )
 (func $~lib/memory/memory.fill (; 50 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
   local.get $0
   local.get $2
   i32.add
   local.tee $2
   local.get $1
   i32.const 255
   i32.and
   i32.const 16843009
   i32.mul
   local.tee $0
   i32.store
   i32.const -4
   i32.and
   local.tee $3
   local.get $2
   i32.add
   i32.const 4
   i32.sub
   local.get $0
   i32.store
   local.get $3
   i32.const 8
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $2
   i32.const 4
   i32.add
   local.get $0
   i32.store
   local.get $2
   i32.const 8
   i32.add
   local.get $0
   i32.store
   local.get $2
   local.get $3
   i32.add
   local.tee $1
   i32.const 12
   i32.sub
   local.get $0
   i32.store
   local.get $1
   i32.const 8
   i32.sub
   local.get $0
   i32.store
   local.get $3
   i32.const 24
   i32.le_u
   br_if $~lib/util/memory/memset|inlined.0
   local.get $2
   i32.const 12
   i32.add
   local.get $0
   i32.store
   local.get $2
   i32.const 16
   i32.add
   local.get $0
   i32.store
   local.get $2
   i32.const 20
   i32.add
   local.get $0
   i32.store
   local.get $2
   i32.const 24
   i32.add
   local.get $0
   i32.store
   local.get $2
   local.get $3
   i32.add
   local.tee $1
   i32.const 28
   i32.sub
   local.get $0
   i32.store
   local.get $1
   i32.const 24
   i32.sub
   local.get $0
   i32.store
   local.get $1
   i32.const 20
   i32.sub
   local.get $0
   i32.store
   local.get $1
   i32.const 16
   i32.sub
   local.get $0
   i32.store
   local.get $2
   local.get $2
   i32.const 4
   i32.and
   i32.const 24
   i32.add
   local.tee $2
   i32.add
   local.set $1
   local.get $3
   local.get $2
   i32.sub
   local.set $2
   local.get $0
   i64.extend_i32_u
   local.get $0
   i64.extend_i32_u
   i64.const 32
   i64.shl
   i64.or
   local.set $4
   loop $continue|0
    local.get $2
    i32.const 32
    i32.lt_u
    i32.eqz
    if
     local.get $1
     local.get $4
     i64.store
     local.get $1
     i32.const 8
     i32.add
     local.get $4
     i64.store
     local.get $1
     i32.const 16
     i32.add
     local.get $4
     i64.store
     local.get $1
     i32.const 24
     i32.add
     local.get $4
     i64.store
     local.get $2
     i32.const 32
     i32.sub
     local.set $2
     local.get $1
     i32.const 32
     i32.add
     local.set $1
     br $continue|0
    end
   end
  end
 )
 (func $~lib/util/sort/weakHeapSort<f64> (; 51 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 i32)
  (local $7 f64)
  (local $8 i32)
  local.get $1
  i32.const 31
  i32.add
  i32.const 5
  i32.shr_s
  i32.const 2
  i32.shl
  local.tee $3
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $6
  global.get $~lib/error
  if
   return
  end
  local.get $6
  i32.const 0
  local.get $3
  call $~lib/memory/memory.fill
  local.get $1
  i32.const 1
  i32.sub
  local.set $4
  loop $loop|0
   block $break|0
    local.get $4
    i32.const 0
    i32.le_s
    br_if $break|0
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
     local.get $6
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
     i32.ne
     i32.eqz
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
    local.set $7
    i32.const 2
    global.set $~lib/argc
    local.get $5
    local.get $7
    local.get $2
    call_indirect (type $FUNCSIG$idd)
    global.get $~lib/error
    if
     return
    end
    i32.const 0
    i32.lt_s
    if
     local.get $4
     i32.const 5
     i32.shr_s
     i32.const 2
     i32.shl
     local.get $6
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
     local.get $7
     f64.store
    end
    local.get $4
    i32.const 1
    i32.sub
    local.set $4
    br $loop|0
   end
  end
  local.get $1
  i32.const 1
  i32.sub
  local.set $4
  loop $loop|2
   block $break|2
    local.get $4
    i32.const 2
    i32.lt_s
    br_if $break|2
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
    local.set $3
    loop $continue|3
     local.get $3
     i32.const 5
     i32.shr_s
     i32.const 2
     i32.shl
     local.get $6
     i32.add
     i32.load
     local.get $3
     i32.const 31
     i32.and
     i32.shr_u
     i32.const 1
     i32.and
     local.get $3
     i32.const 1
     i32.shl
     i32.add
     local.tee $1
     local.get $4
     i32.ge_s
     i32.eqz
     if
      local.get $1
      local.set $3
      br $continue|3
     end
    end
    loop $continue|4
     local.get $3
     i32.const 0
     i32.gt_s
     if
      local.get $0
      f64.load
      local.set $5
      local.get $3
      i32.const 3
      i32.shl
      local.get $0
      i32.add
      f64.load
      local.set $7
      i32.const 2
      global.set $~lib/argc
      local.get $5
      local.get $7
      local.get $2
      call_indirect (type $FUNCSIG$idd)
      global.get $~lib/error
      if
       return
      end
      i32.const 0
      i32.lt_s
      if
       local.get $3
       i32.const 5
       i32.shr_s
       i32.const 2
       i32.shl
       local.get $6
       i32.add
       local.tee $1
       local.get $1
       i32.load
       i32.const 1
       local.get $3
       i32.const 31
       i32.and
       i32.shl
       i32.xor
       i32.store
       local.get $3
       i32.const 3
       i32.shl
       local.get $0
       i32.add
       local.get $5
       f64.store
       local.get $0
       local.get $7
       f64.store
      end
      local.get $3
      i32.const 1
      i32.shr_s
      local.set $3
      br $continue|4
     end
    end
    local.get $4
    i32.const 1
    i32.sub
    local.set $4
    br $loop|2
   end
  end
  local.get $6
  call $~lib/rt/tlsf/__free
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
 (func $~lib/typedarray/Float64Array#sort (; 52 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 f64)
  block $~lib/typedarray/SORT<~lib/typedarray/Float64Array,f64>|inlined.0
   local.get $0
   call $~lib/rt/pure/__retain
   local.tee $0
   call $~lib/typedarray/Int64Array#get:length
   local.tee $3
   i32.const 1
   i32.le_s
   if
    local.get $0
    call $~lib/rt/pure/__release
    br $~lib/typedarray/SORT<~lib/typedarray/Float64Array,f64>|inlined.0
   end
   local.get $0
   i32.load offset=4
   local.set $2
   local.get $3
   i32.const 2
   i32.eq
   if
    local.get $2
    f64.load offset=8
    local.set $4
    local.get $2
    f64.load
    local.set $5
    i32.const 2
    global.set $~lib/argc
    local.get $4
    local.get $5
    local.get $1
    call_indirect (type $FUNCSIG$idd)
    global.get $~lib/error
    if
     i32.const 0
     local.set $0
     br $~lib/typedarray/SORT<~lib/typedarray/Float64Array,f64>|inlined.0
    end
    i32.const 0
    i32.lt_s
    if
     local.get $2
     local.get $5
     f64.store offset=8
     local.get $2
     local.get $4
     f64.store
    end
    local.get $0
    call $~lib/rt/pure/__release
    br $~lib/typedarray/SORT<~lib/typedarray/Float64Array,f64>|inlined.0
   end
   local.get $3
   i32.const 256
   i32.lt_s
   if
    local.get $2
    local.get $3
    local.get $1
    call $~lib/util/sort/insertionSort<f64>
   else    
    local.get $2
    local.get $3
    local.get $1
    call $~lib/util/sort/weakHeapSort<f64>
   end
   block $~lib/util/sort/SORT<f64>|inlined.0
    global.get $~lib/error
    br_if $~lib/util/sort/SORT<f64>|inlined.0
   end
  end
  local.get $0
 )
 (func $~lib/util/sort/COMPARATOR<f64>~anonymous|0 (; 53 ;) (type $FUNCSIG$idd) (param $0 f64) (param $1 f64) (result i32)
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
 (func $~lib/typedarray/Float64Array#__get (; 54 ;) (type $FUNCSIG$dii) (param $0 i32) (param $1 i32) (result f64)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 280
   call $~lib/error/RangeError#constructor
   global.set $~lib/error
   f64.const 0
   return
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  f64.load
 )
 (func $~lib/typedarray/Uint8ClampedArray#__set (; 55 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 280
   call $~lib/error/RangeError#constructor
   global.set $~lib/error
   return
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
 (func $~lib/typedarray/Uint8ClampedArray#__get (; 56 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 280
   call $~lib/error/RangeError#constructor
   global.set $~lib/error
   i32.const 0
   return
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i32.load8_u
 )
 (func $~lib/typedarray/Int8Array#__set (; 57 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 280
   call $~lib/error/RangeError#constructor
   global.set $~lib/error
   return
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  local.get $2
  i32.store8
 )
 (func $~lib/typedarray/Int8Array#fill (; 58 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $5
  i32.load offset=4
  local.set $6
  local.get $5
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
   local.get $6
   i32.add
   local.get $1
   local.get $0
   local.get $2
   i32.sub
   call $~lib/memory/memory.fill
  end
  local.get $5
 )
 (func $~lib/rt/__allocArray (; 59 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  i32.const 16
  local.get $2
  call $~lib/rt/tlsf/__alloc
  local.set $2
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $0
  local.get $1
  i32.shl
  local.tee $4
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $1
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $2
  local.get $1
  call $~lib/rt/pure/__retain
  i32.store
  local.get $2
  local.get $1
  i32.store offset=4
  local.get $2
  local.get $4
  i32.store offset=8
  local.get $2
  local.get $0
  i32.store offset=12
  local.get $3
  if
   local.get $1
   local.get $3
   local.get $4
   call $~lib/memory/memory.copy
  end
  local.get $2
 )
 (func $~lib/typedarray/Int8Array#__get (; 60 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 280
   call $~lib/error/RangeError#constructor
   global.set $~lib/error
   i32.const 0
   return
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i32.load8_s
 )
 (func $std/typedarray/isInt8ArrayEqual (; 61 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  block $folding-inner0
   local.get $0
   i32.load offset=8
   local.get $1
   i32.load offset=12
   i32.ne
   br_if $folding-inner0
   local.get $0
   i32.load offset=8
   local.set $4
   loop $loop|0
    local.get $2
    local.get $4
    i32.lt_s
    if
     local.get $0
     local.get $2
     call $~lib/typedarray/Int8Array#__get
     global.get $~lib/error
     if
      i32.const 0
      return
     end
     i32.const 24
     i32.shl
     i32.const 24
     i32.shr_s
     local.set $3
     local.get $1
     local.get $2
     call $~lib/typedarray/Int8Array#__get
     global.get $~lib/error
     if
      i32.const 0
      return
     end
     i32.const 24
     i32.shl
     i32.const 24
     i32.shr_s
     local.get $3
     i32.ne
     br_if $folding-inner0
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $loop|0
    end
   end
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   i32.const 1
   return
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  i32.const 0
 )
 (func $~lib/typedarray/Int8Array#subarray (; 62 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $4
  i32.load offset=8
  local.set $3
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $1
   local.get $3
   i32.add
   local.tee $0
   i32.const 0
   local.get $0
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
  local.set $0
  local.get $2
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $2
   local.get $3
   i32.add
   local.tee $1
   i32.const 0
   local.get $1
   i32.const 0
   i32.gt_s
   select
  else   
   local.get $2
   local.get $3
   local.get $2
   local.get $3
   i32.lt_s
   select
  end
  local.tee $1
  local.get $0
  local.get $1
  local.get $0
  i32.gt_s
  select
  local.set $3
  i32.const 12
  i32.const 3
  call $~lib/rt/tlsf/__alloc
  local.set $1
  block $~lib/typedarray/SUBARRAY<~lib/typedarray/Int8Array,i8>|inlined.0
   global.get $~lib/error
   if
    i32.const 0
    local.set $1
    br $~lib/typedarray/SUBARRAY<~lib/typedarray/Int8Array,i8>|inlined.0
   end
   local.get $1
   call $~lib/rt/pure/__retain
   local.tee $1
   local.get $1
   i32.load
   local.tee $6
   local.get $4
   i32.load
   local.tee $2
   i32.ne
   if
    local.get $2
    call $~lib/rt/pure/__retain
    drop
    local.get $6
    call $~lib/rt/pure/__release
   end
   local.get $2
   i32.store
   local.get $1
   local.get $4
   i32.load offset=4
   local.get $0
   i32.add
   i32.store offset=4
   local.get $1
   local.get $3
   local.get $0
   i32.sub
   i32.store offset=8
   local.get $4
   call $~lib/rt/pure/__release
  end
  local.get $1
 )
 (func $~lib/typedarray/Int32Array#fill (; 63 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $1
  local.set $5
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $4
  i32.load offset=4
  local.set $6
  local.get $4
  call $~lib/typedarray/Int32Array#get:length
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
  loop $loop|0
   local.get $0
   local.get $1
   i32.ge_s
   i32.eqz
   if
    local.get $0
    i32.const 2
    i32.shl
    local.get $6
    i32.add
    local.get $5
    i32.store
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    br $loop|0
   end
  end
  local.get $4
 )
 (func $std/typedarray/isInt32ArrayEqual (; 64 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  block $folding-inner0
   local.get $0
   call $~lib/typedarray/Int32Array#get:length
   local.get $1
   i32.load offset=12
   i32.ne
   br_if $folding-inner0
   local.get $0
   call $~lib/typedarray/Int32Array#get:length
   local.set $3
   loop $loop|0
    local.get $2
    local.get $3
    i32.lt_s
    if
     local.get $0
     local.get $2
     call $~lib/typedarray/Int32Array#__get
     global.get $~lib/error
     if
      i32.const 0
      return
     end
     local.get $1
     local.get $2
     call $~lib/typedarray/Int32Array#__get
     global.get $~lib/error
     if
      i32.const 0
      return
     end
     i32.ne
     br_if $folding-inner0
     local.get $2
     i32.const 1
     i32.add
     local.set $2
     br $loop|0
    end
   end
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   i32.const 1
   return
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  i32.const 0
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 (; 65 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $3
  call $~lib/rt/pure/__retain
  drop
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
  local.get $1
  i32.add
 )
 (func $~lib/typedarray/Int8Array#reduce<i8> (; 66 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.load offset=4
  local.set $3
  i32.const 0
  local.set $0
  local.get $1
  i32.load offset=8
  local.set $4
  block $~lib/typedarray/REDUCE<~lib/typedarray/Int8Array,i8,i8>|inlined.0
   loop $loop|0
    local.get $0
    local.get $4
    i32.lt_s
    if
     i32.const 4
     global.set $~lib/argc
     local.get $2
     local.get $0
     local.get $3
     i32.add
     i32.load8_s
     local.get $0
     local.get $1
     call $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0
     local.set $2
     global.get $~lib/error
     if
      i32.const 0
      local.set $2
      br $~lib/typedarray/REDUCE<~lib/typedarray/Int8Array,i8,i8>|inlined.0
     else      
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $loop|0
     end
     unreachable
    end
   end
   local.get $1
   call $~lib/rt/pure/__release
  end
  local.get $2
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8> (; 67 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int8Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int8Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int8Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  call $~lib/typedarray/Int8Array#reduce<i8>
  i32.const 255
  i32.and
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 263
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint8Array#reduce<u8> (; 68 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $2
  i32.load offset=4
  local.set $4
  i32.const 0
  local.set $0
  local.get $2
  i32.load offset=8
  local.set $5
  block $~lib/typedarray/REDUCE<~lib/typedarray/Uint8Array,u8,u8>|inlined.0
   loop $loop|0
    local.get $0
    local.get $5
    i32.lt_s
    if
     i32.const 4
     global.set $~lib/argc
     local.get $3
     local.get $0
     local.get $4
     i32.add
     i32.load8_u
     local.get $0
     local.get $2
     local.get $1
     call_indirect (type $FUNCSIG$iiiii)
     local.set $3
     global.get $~lib/error
     if
      i32.const 0
      local.set $3
      br $~lib/typedarray/REDUCE<~lib/typedarray/Uint8Array,u8,u8>|inlined.0
     else      
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $loop|0
     end
     unreachable
    end
   end
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $3
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Uint8Array,u8> (; 69 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Uint8Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int8Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int8Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int8Array#__set
  global.get $~lib/error
  if
   return
  end
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
   i32.const 263
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Uint8ClampedArray,u8> (; 70 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint8ClampedArray#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint8ClampedArray#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#__set
  global.get $~lib/error
  if
   return
  end
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
   i32.const 263
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int16Array#__set (; 71 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  i32.ge_u
  if
   i32.const 280
   call $~lib/error/RangeError#constructor
   global.set $~lib/error
   return
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
 (func $~lib/typedarray/Int16Array#reduce<i16> (; 72 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $2
  i32.load offset=4
  local.set $3
  i32.const 0
  local.set $0
  local.get $2
  call $~lib/typedarray/Int16Array#get:length
  local.set $4
  block $~lib/typedarray/REDUCE<~lib/typedarray/Int16Array,i16,i16>|inlined.0
   loop $loop|0
    local.get $0
    local.get $4
    i32.lt_s
    if
     i32.const 4
     global.set $~lib/argc
     local.get $1
     local.get $0
     i32.const 1
     i32.shl
     local.get $3
     i32.add
     i32.load16_s
     local.get $0
     local.get $2
     call $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0
     local.set $1
     global.get $~lib/error
     if
      i32.const 0
      local.set $1
      br $~lib/typedarray/REDUCE<~lib/typedarray/Int16Array,i16,i16>|inlined.0
     else      
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $loop|0
     end
     unreachable
    end
   end
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Int16Array,i16> (; 73 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int16Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int16Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int16Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  call $~lib/typedarray/Int16Array#reduce<i16>
  i32.const 65535
  i32.and
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 263
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint16Array#reduce<u16> (; 74 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $2
  i32.load offset=4
  local.set $3
  i32.const 0
  local.set $0
  local.get $2
  call $~lib/typedarray/Int16Array#get:length
  local.set $4
  block $~lib/typedarray/REDUCE<~lib/typedarray/Uint16Array,u16,u16>|inlined.0
   loop $loop|0
    local.get $0
    local.get $4
    i32.lt_s
    if
     i32.const 4
     global.set $~lib/argc
     local.get $1
     local.get $0
     i32.const 1
     i32.shl
     local.get $3
     i32.add
     i32.load16_u
     local.get $0
     local.get $2
     call $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0
     local.set $1
     global.get $~lib/error
     if
      i32.const 0
      local.set $1
      br $~lib/typedarray/REDUCE<~lib/typedarray/Uint16Array,u16,u16>|inlined.0
     else      
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $loop|0
     end
     unreachable
    end
   end
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Uint16Array,u16> (; 75 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Uint16Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int16Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int16Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int16Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  call $~lib/typedarray/Uint16Array#reduce<u16>
  i32.const 65535
  i32.and
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 263
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int32Array#reduce<i32> (; 76 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $3
  i32.load offset=4
  local.set $4
  i32.const 0
  local.set $0
  local.get $3
  call $~lib/typedarray/Int32Array#get:length
  local.set $5
  block $~lib/typedarray/REDUCE<~lib/typedarray/Int32Array,i32,i32>|inlined.0
   loop $loop|0
    local.get $0
    local.get $5
    i32.lt_s
    if
     i32.const 4
     global.set $~lib/argc
     local.get $2
     local.get $0
     i32.const 2
     i32.shl
     local.get $4
     i32.add
     i32.load
     local.get $0
     local.get $3
     local.get $1
     call_indirect (type $FUNCSIG$iiiii)
     local.set $2
     global.get $~lib/error
     if
      i32.const 0
      local.set $2
      br $~lib/typedarray/REDUCE<~lib/typedarray/Int32Array,i32,i32>|inlined.0
     else      
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $loop|0
     end
     unreachable
    end
   end
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $2
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Int32Array,i32> (; 77 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 7
  call $~lib/typedarray/Int32Array#reduce<i32>
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 263
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Uint32Array,u32> (; 78 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Uint32Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 8
  call $~lib/typedarray/Int32Array#reduce<i32>
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 263
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int64Array#__set (; 79 ;) (type $FUNCSIG$viij) (param $0 i32) (param $1 i32) (param $2 i64)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 280
   call $~lib/error/RangeError#constructor
   global.set $~lib/error
   return
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
 (func $std/typedarray/testReduce<~lib/typedarray/Int64Array,i64>~anonymous|0 (; 80 ;) (type $FUNCSIG$jjjii) (param $0 i64) (param $1 i64) (param $2 i32) (param $3 i32) (result i64)
  local.get $3
  call $~lib/rt/pure/__retain
  drop
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
  local.get $1
  i64.add
 )
 (func $~lib/typedarray/Int64Array#reduce<i64> (; 81 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $3
  i32.load offset=4
  local.set $4
  i32.const 0
  local.set $0
  local.get $3
  call $~lib/typedarray/Int64Array#get:length
  local.set $5
  block $~lib/typedarray/REDUCE<~lib/typedarray/Int64Array,i64,i64>|inlined.0
   loop $loop|0
    local.get $0
    local.get $5
    i32.lt_s
    if
     i32.const 4
     global.set $~lib/argc
     local.get $2
     local.get $0
     i32.const 3
     i32.shl
     local.get $4
     i32.add
     i64.load
     local.get $0
     local.get $3
     local.get $1
     call_indirect (type $FUNCSIG$jjjii)
     local.set $2
     global.get $~lib/error
     if
      i64.const 0
      local.set $2
      br $~lib/typedarray/REDUCE<~lib/typedarray/Int64Array,i64,i64>|inlined.0
     else      
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $loop|0
     end
     unreachable
    end
   end
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $2
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Int64Array,i64> (; 82 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i64.const 1
  call $~lib/typedarray/Int64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 1
  i64.const 2
  call $~lib/typedarray/Int64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 2
  i64.const 3
  call $~lib/typedarray/Int64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 9
  call $~lib/typedarray/Int64Array#reduce<i64>
  i64.const 6
  i64.ne
  if
   i32.const 0
   i32.const 24
   i32.const 263
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Uint64Array,u64> (; 83 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Uint64Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i64.const 1
  call $~lib/typedarray/Int64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 1
  i64.const 2
  call $~lib/typedarray/Int64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 2
  i64.const 3
  call $~lib/typedarray/Int64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 10
  call $~lib/typedarray/Int64Array#reduce<i64>
  i64.const 6
  i64.ne
  if
   i32.const 0
   i32.const 24
   i32.const 263
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Float32Array#__set (; 84 ;) (type $FUNCSIG$viif) (param $0 i32) (param $1 i32) (param $2 f32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 280
   call $~lib/error/RangeError#constructor
   global.set $~lib/error
   return
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
 (func $std/typedarray/testReduce<~lib/typedarray/Float32Array,f32>~anonymous|0 (; 85 ;) (type $FUNCSIG$fffii) (param $0 f32) (param $1 f32) (param $2 i32) (param $3 i32) (result f32)
  local.get $3
  call $~lib/rt/pure/__retain
  drop
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
  local.get $1
  f32.add
 )
 (func $~lib/typedarray/Float32Array#reduce<f32> (; 86 ;) (type $FUNCSIG$fi) (param $0 i32) (result f32)
  (local $1 f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $2
  i32.load offset=4
  local.set $3
  i32.const 0
  local.set $0
  local.get $2
  call $~lib/typedarray/Int32Array#get:length
  local.set $4
  block $~lib/typedarray/REDUCE<~lib/typedarray/Float32Array,f32,f32>|inlined.0
   loop $loop|0
    local.get $0
    local.get $4
    i32.lt_s
    if
     i32.const 4
     global.set $~lib/argc
     local.get $1
     local.get $0
     i32.const 2
     i32.shl
     local.get $3
     i32.add
     f32.load
     local.get $0
     local.get $2
     call $std/typedarray/testReduce<~lib/typedarray/Float32Array,f32>~anonymous|0
     local.set $1
     global.get $~lib/error
     if
      f32.const 0
      local.set $1
      br $~lib/typedarray/REDUCE<~lib/typedarray/Float32Array,f32,f32>|inlined.0
     else      
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $loop|0
     end
     unreachable
    end
   end
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Float32Array,f32> (; 87 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Float32Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  f32.const 1
  call $~lib/typedarray/Float32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 1
  f32.const 2
  call $~lib/typedarray/Float32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 2
  f32.const 3
  call $~lib/typedarray/Float32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  call $~lib/typedarray/Float32Array#reduce<f32>
  f32.const 6
  f32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 263
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Float64Array,f64>~anonymous|0 (; 88 ;) (type $FUNCSIG$dddii) (param $0 f64) (param $1 f64) (param $2 i32) (param $3 i32) (result f64)
  local.get $3
  call $~lib/rt/pure/__retain
  drop
  local.get $3
  call $~lib/rt/pure/__release
  local.get $0
  local.get $1
  f64.add
 )
 (func $~lib/typedarray/Float64Array#reduce<f64> (; 89 ;) (type $FUNCSIG$di) (param $0 i32) (result f64)
  (local $1 f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $2
  i32.load offset=4
  local.set $3
  i32.const 0
  local.set $0
  local.get $2
  call $~lib/typedarray/Int64Array#get:length
  local.set $4
  block $~lib/typedarray/REDUCE<~lib/typedarray/Float64Array,f64,f64>|inlined.0
   loop $loop|0
    local.get $0
    local.get $4
    i32.lt_s
    if
     i32.const 4
     global.set $~lib/argc
     local.get $1
     local.get $0
     i32.const 3
     i32.shl
     local.get $3
     i32.add
     f64.load
     local.get $0
     local.get $2
     call $std/typedarray/testReduce<~lib/typedarray/Float64Array,f64>~anonymous|0
     local.set $1
     global.get $~lib/error
     if
      f64.const 0
      local.set $1
      br $~lib/typedarray/REDUCE<~lib/typedarray/Float64Array,f64,f64>|inlined.0
     else      
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $loop|0
     end
     unreachable
    end
   end
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Float64Array,f64> (; 90 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Float64Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  f64.const 1
  call $~lib/typedarray/Float64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 1
  f64.const 2
  call $~lib/typedarray/Float64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 2
  f64.const 3
  call $~lib/typedarray/Float64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  call $~lib/typedarray/Float64Array#reduce<f64>
  f64.const 6
  f64.ne
  if
   i32.const 0
   i32.const 24
   i32.const 263
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int8Array#reduceRight<i8> (; 91 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.load offset=4
  local.set $3
  local.get $1
  i32.load offset=8
  i32.const 1
  i32.sub
  local.set $0
  block $~lib/typedarray/REDUCE_RIGHT<~lib/typedarray/Int8Array,i8,i8>|inlined.0
   loop $loop|0
    local.get $0
    i32.const 0
    i32.ge_s
    if
     i32.const 4
     global.set $~lib/argc
     local.get $2
     local.get $0
     local.get $3
     i32.add
     i32.load8_s
     local.get $0
     local.get $1
     call $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0
     local.set $2
     global.get $~lib/error
     if
      i32.const 0
      local.set $2
      br $~lib/typedarray/REDUCE_RIGHT<~lib/typedarray/Int8Array,i8,i8>|inlined.0
     else      
      local.get $0
      i32.const 1
      i32.sub
      local.set $0
      br $loop|0
     end
     unreachable
    end
   end
   local.get $1
   call $~lib/rt/pure/__release
  end
  local.get $2
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Int8Array,i8> (; 92 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int8Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int8Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int8Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  call $~lib/typedarray/Int8Array#reduceRight<i8>
  i32.const 255
  i32.and
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 290
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint8Array#reduceRight<u8> (; 93 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $2
  i32.load offset=4
  local.set $4
  local.get $2
  i32.load offset=8
  i32.const 1
  i32.sub
  local.set $0
  block $~lib/typedarray/REDUCE_RIGHT<~lib/typedarray/Uint8Array,u8,u8>|inlined.0
   loop $loop|0
    local.get $0
    i32.const 0
    i32.ge_s
    if
     i32.const 4
     global.set $~lib/argc
     local.get $3
     local.get $0
     local.get $4
     i32.add
     i32.load8_u
     local.get $0
     local.get $2
     local.get $1
     call_indirect (type $FUNCSIG$iiiii)
     local.set $3
     global.get $~lib/error
     if
      i32.const 0
      local.set $3
      br $~lib/typedarray/REDUCE_RIGHT<~lib/typedarray/Uint8Array,u8,u8>|inlined.0
     else      
      local.get $0
      i32.const 1
      i32.sub
      local.set $0
      br $loop|0
     end
     unreachable
    end
   end
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $3
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Uint8Array,u8> (; 94 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Uint8Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int8Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int8Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int8Array#__set
  global.get $~lib/error
  if
   return
  end
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
   i32.const 290
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Uint8ClampedArray,u8> (; 95 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint8ClampedArray#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint8ClampedArray#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#__set
  global.get $~lib/error
  if
   return
  end
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
   i32.const 290
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int16Array#reduceRight<i16> (; 96 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $2
  i32.load offset=4
  local.set $3
  local.get $2
  call $~lib/typedarray/Int16Array#get:length
  i32.const 1
  i32.sub
  local.set $0
  block $~lib/typedarray/REDUCE_RIGHT<~lib/typedarray/Int16Array,i16,i16>|inlined.0
   loop $loop|0
    local.get $0
    i32.const 0
    i32.ge_s
    if
     i32.const 4
     global.set $~lib/argc
     local.get $1
     local.get $0
     i32.const 1
     i32.shl
     local.get $3
     i32.add
     i32.load16_s
     local.get $0
     local.get $2
     call $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0
     local.set $1
     global.get $~lib/error
     if
      i32.const 0
      local.set $1
      br $~lib/typedarray/REDUCE_RIGHT<~lib/typedarray/Int16Array,i16,i16>|inlined.0
     else      
      local.get $0
      i32.const 1
      i32.sub
      local.set $0
      br $loop|0
     end
     unreachable
    end
   end
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Int16Array,i16> (; 97 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int16Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int16Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int16Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  call $~lib/typedarray/Int16Array#reduceRight<i16>
  i32.const 65535
  i32.and
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 290
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint16Array#reduceRight<u16> (; 98 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $2
  i32.load offset=4
  local.set $3
  local.get $2
  call $~lib/typedarray/Int16Array#get:length
  i32.const 1
  i32.sub
  local.set $0
  block $~lib/typedarray/REDUCE_RIGHT<~lib/typedarray/Uint16Array,u16,u16>|inlined.0
   loop $loop|0
    local.get $0
    i32.const 0
    i32.ge_s
    if
     i32.const 4
     global.set $~lib/argc
     local.get $1
     local.get $0
     i32.const 1
     i32.shl
     local.get $3
     i32.add
     i32.load16_u
     local.get $0
     local.get $2
     call $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0
     local.set $1
     global.get $~lib/error
     if
      i32.const 0
      local.set $1
      br $~lib/typedarray/REDUCE_RIGHT<~lib/typedarray/Uint16Array,u16,u16>|inlined.0
     else      
      local.get $0
      i32.const 1
      i32.sub
      local.set $0
      br $loop|0
     end
     unreachable
    end
   end
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Uint16Array,u16> (; 99 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Uint16Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int16Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int16Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int16Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  call $~lib/typedarray/Uint16Array#reduceRight<u16>
  i32.const 65535
  i32.and
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 290
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int32Array#reduceRight<i32> (; 100 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $3
  i32.load offset=4
  local.set $4
  local.get $3
  call $~lib/typedarray/Int32Array#get:length
  i32.const 1
  i32.sub
  local.set $0
  block $~lib/typedarray/REDUCE_RIGHT<~lib/typedarray/Int32Array,i32,i32>|inlined.0
   loop $loop|0
    local.get $0
    i32.const 0
    i32.ge_s
    if
     i32.const 4
     global.set $~lib/argc
     local.get $2
     local.get $0
     i32.const 2
     i32.shl
     local.get $4
     i32.add
     i32.load
     local.get $0
     local.get $3
     local.get $1
     call_indirect (type $FUNCSIG$iiiii)
     local.set $2
     global.get $~lib/error
     if
      i32.const 0
      local.set $2
      br $~lib/typedarray/REDUCE_RIGHT<~lib/typedarray/Int32Array,i32,i32>|inlined.0
     else      
      local.get $0
      i32.const 1
      i32.sub
      local.set $0
      br $loop|0
     end
     unreachable
    end
   end
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $2
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Int32Array,i32> (; 101 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 18
  call $~lib/typedarray/Int32Array#reduceRight<i32>
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 290
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Uint32Array,u32> (; 102 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Uint32Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 19
  call $~lib/typedarray/Int32Array#reduceRight<i32>
  i32.const 6
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 290
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int64Array#reduceRight<i64> (; 103 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
  (local $2 i64)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $3
  i32.load offset=4
  local.set $4
  local.get $3
  call $~lib/typedarray/Int64Array#get:length
  i32.const 1
  i32.sub
  local.set $0
  block $~lib/typedarray/REDUCE_RIGHT<~lib/typedarray/Int64Array,i64,i64>|inlined.0
   loop $loop|0
    local.get $0
    i32.const 0
    i32.ge_s
    if
     i32.const 4
     global.set $~lib/argc
     local.get $2
     local.get $0
     i32.const 3
     i32.shl
     local.get $4
     i32.add
     i64.load
     local.get $0
     local.get $3
     local.get $1
     call_indirect (type $FUNCSIG$jjjii)
     local.set $2
     global.get $~lib/error
     if
      i64.const 0
      local.set $2
      br $~lib/typedarray/REDUCE_RIGHT<~lib/typedarray/Int64Array,i64,i64>|inlined.0
     else      
      local.get $0
      i32.const 1
      i32.sub
      local.set $0
      br $loop|0
     end
     unreachable
    end
   end
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $2
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Int64Array,i64> (; 104 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i64.const 1
  call $~lib/typedarray/Int64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 1
  i64.const 2
  call $~lib/typedarray/Int64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 2
  i64.const 3
  call $~lib/typedarray/Int64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 20
  call $~lib/typedarray/Int64Array#reduceRight<i64>
  i64.const 6
  i64.ne
  if
   i32.const 0
   i32.const 24
   i32.const 290
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Uint64Array,u64> (; 105 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Uint64Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i64.const 1
  call $~lib/typedarray/Int64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 1
  i64.const 2
  call $~lib/typedarray/Int64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 2
  i64.const 3
  call $~lib/typedarray/Int64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 21
  call $~lib/typedarray/Int64Array#reduceRight<i64>
  i64.const 6
  i64.ne
  if
   i32.const 0
   i32.const 24
   i32.const 290
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Float32Array#reduceRight<f32> (; 106 ;) (type $FUNCSIG$fi) (param $0 i32) (result f32)
  (local $1 f32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $2
  i32.load offset=4
  local.set $3
  local.get $2
  call $~lib/typedarray/Int32Array#get:length
  i32.const 1
  i32.sub
  local.set $0
  block $~lib/typedarray/REDUCE_RIGHT<~lib/typedarray/Float32Array,f32,f32>|inlined.0
   loop $loop|0
    local.get $0
    i32.const 0
    i32.ge_s
    if
     i32.const 4
     global.set $~lib/argc
     local.get $1
     local.get $0
     i32.const 2
     i32.shl
     local.get $3
     i32.add
     f32.load
     local.get $0
     local.get $2
     call $std/typedarray/testReduce<~lib/typedarray/Float32Array,f32>~anonymous|0
     local.set $1
     global.get $~lib/error
     if
      f32.const 0
      local.set $1
      br $~lib/typedarray/REDUCE_RIGHT<~lib/typedarray/Float32Array,f32,f32>|inlined.0
     else      
      local.get $0
      i32.const 1
      i32.sub
      local.set $0
      br $loop|0
     end
     unreachable
    end
   end
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Float32Array,f32> (; 107 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Float32Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  f32.const 1
  call $~lib/typedarray/Float32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 1
  f32.const 2
  call $~lib/typedarray/Float32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 2
  f32.const 3
  call $~lib/typedarray/Float32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  call $~lib/typedarray/Float32Array#reduceRight<f32>
  f32.const 6
  f32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 290
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Float64Array#reduceRight<f64> (; 108 ;) (type $FUNCSIG$di) (param $0 i32) (result f64)
  (local $1 f64)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $2
  i32.load offset=4
  local.set $3
  local.get $2
  call $~lib/typedarray/Int64Array#get:length
  i32.const 1
  i32.sub
  local.set $0
  block $~lib/typedarray/REDUCE_RIGHT<~lib/typedarray/Float64Array,f64,f64>|inlined.0
   loop $loop|0
    local.get $0
    i32.const 0
    i32.ge_s
    if
     i32.const 4
     global.set $~lib/argc
     local.get $1
     local.get $0
     i32.const 3
     i32.shl
     local.get $3
     i32.add
     f64.load
     local.get $0
     local.get $2
     call $std/typedarray/testReduce<~lib/typedarray/Float64Array,f64>~anonymous|0
     local.set $1
     global.get $~lib/error
     if
      f64.const 0
      local.set $1
      br $~lib/typedarray/REDUCE_RIGHT<~lib/typedarray/Float64Array,f64,f64>|inlined.0
     else      
      local.get $0
      i32.const 1
      i32.sub
      local.set $0
      br $loop|0
     end
     unreachable
    end
   end
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Float64Array,f64> (; 109 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Float64Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  f64.const 1
  call $~lib/typedarray/Float64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 1
  f64.const 2
  call $~lib/typedarray/Float64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 2
  f64.const 3
  call $~lib/typedarray/Float64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  call $~lib/typedarray/Float64Array#reduceRight<f64>
  f64.const 6
  f64.ne
  if
   i32.const 0
   i32.const 24
   i32.const 290
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>~anonymous|0 (; 110 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  local.get $0
  i32.mul
 )
 (func $~lib/typedarray/Int8Array#map (; 111 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/typedarray/MAP<~lib/typedarray/Int8Array,i8>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.tee $2
   i32.load offset=8
   local.set $3
   local.get $2
   i32.load offset=4
   local.set $5
   local.get $3
   call $~lib/typedarray/Int8Array#constructor
   local.set $4
   i32.const 0
   global.get $~lib/error
   br_if $~lib/typedarray/MAP<~lib/typedarray/Int8Array,i8>|inlined.0
   drop
   local.get $4
   call $~lib/rt/pure/__retain
   local.tee $0
   i32.load offset=4
   local.set $6
   loop $loop|0
    local.get $1
    local.get $3
    i32.lt_s
    if
     i32.const 3
     global.set $~lib/argc
     local.get $1
     local.get $5
     i32.add
     i32.load8_s
     local.get $1
     local.get $2
     call $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>~anonymous|0
     local.set $7
     i32.const 0
     global.get $~lib/error
     br_if $~lib/typedarray/MAP<~lib/typedarray/Int8Array,i8>|inlined.0
     drop
     local.get $1
     local.get $6
     i32.add
     local.get $7
     i32.store8
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $loop|0
    end
   end
   local.get $2
   call $~lib/rt/pure/__release
   local.get $4
   call $~lib/rt/pure/__release
   local.get $0
  end
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8> (; 112 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int8Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int8Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int8Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/typedarray/Int8Array#map
  local.tee $2
  i32.const 0
  call $~lib/typedarray/Int8Array#__get
  global.get $~lib/error
  if
   return
  end
  i32.const 255
  i32.and
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 317
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 1
  call $~lib/typedarray/Int8Array#__get
  global.get $~lib/error
  if
   return
  end
  i32.const 255
  i32.and
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 318
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 2
  call $~lib/typedarray/Int8Array#__get
  global.get $~lib/error
  if
   return
  end
  i32.const 255
  i32.and
  i32.const 9
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 319
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint8Array#map (; 113 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/typedarray/MAP<~lib/typedarray/Uint8Array,u8>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.tee $2
   i32.load offset=8
   local.set $3
   local.get $2
   i32.load offset=4
   local.set $5
   local.get $3
   call $~lib/typedarray/Uint8Array#constructor
   local.set $4
   i32.const 0
   global.get $~lib/error
   br_if $~lib/typedarray/MAP<~lib/typedarray/Uint8Array,u8>|inlined.0
   drop
   local.get $4
   call $~lib/rt/pure/__retain
   local.tee $0
   i32.load offset=4
   local.set $6
   loop $loop|0
    local.get $1
    local.get $3
    i32.lt_s
    if
     i32.const 3
     global.set $~lib/argc
     local.get $1
     local.get $5
     i32.add
     i32.load8_u
     local.get $1
     local.get $2
     call $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>~anonymous|0
     local.set $7
     i32.const 0
     global.get $~lib/error
     br_if $~lib/typedarray/MAP<~lib/typedarray/Uint8Array,u8>|inlined.0
     drop
     local.get $1
     local.get $6
     i32.add
     local.get $7
     i32.store8
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $loop|0
    end
   end
   local.get $2
   call $~lib/rt/pure/__release
   local.get $4
   call $~lib/rt/pure/__release
   local.get $0
  end
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Uint8Array,u8> (; 114 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 3
  call $~lib/typedarray/Uint8Array#constructor
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int8Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int8Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int8Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/typedarray/Uint8Array#map
  local.tee $2
  i32.const 0
  call $~lib/typedarray/Uint8ClampedArray#__get
  global.get $~lib/error
  if
   return
  end
  i32.const 255
  i32.and
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 317
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 1
  call $~lib/typedarray/Uint8ClampedArray#__get
  global.get $~lib/error
  if
   return
  end
  i32.const 255
  i32.and
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 318
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 2
  call $~lib/typedarray/Uint8ClampedArray#__get
  global.get $~lib/error
  if
   return
  end
  i32.const 255
  i32.and
  i32.const 9
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 319
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint8ClampedArray#map (; 115 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/typedarray/MAP<~lib/typedarray/Uint8ClampedArray,u8>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.tee $2
   i32.load offset=8
   local.set $3
   local.get $2
   i32.load offset=4
   local.set $5
   local.get $3
   call $~lib/typedarray/Uint8ClampedArray#constructor
   local.set $4
   i32.const 0
   global.get $~lib/error
   br_if $~lib/typedarray/MAP<~lib/typedarray/Uint8ClampedArray,u8>|inlined.0
   drop
   local.get $4
   call $~lib/rt/pure/__retain
   local.tee $0
   i32.load offset=4
   local.set $6
   loop $loop|0
    local.get $1
    local.get $3
    i32.lt_s
    if
     i32.const 3
     global.set $~lib/argc
     local.get $1
     local.get $5
     i32.add
     i32.load8_u
     local.get $1
     local.get $2
     call $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>~anonymous|0
     local.set $7
     i32.const 0
     global.get $~lib/error
     br_if $~lib/typedarray/MAP<~lib/typedarray/Uint8ClampedArray,u8>|inlined.0
     drop
     local.get $1
     local.get $6
     i32.add
     local.get $7
     i32.store8
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $loop|0
    end
   end
   local.get $2
   call $~lib/rt/pure/__release
   local.get $4
   call $~lib/rt/pure/__release
   local.get $0
  end
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Uint8ClampedArray,u8> (; 116 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint8ClampedArray#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint8ClampedArray#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/typedarray/Uint8ClampedArray#map
  local.tee $2
  i32.const 0
  call $~lib/typedarray/Uint8ClampedArray#__get
  global.get $~lib/error
  if
   return
  end
  i32.const 255
  i32.and
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 317
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 1
  call $~lib/typedarray/Uint8ClampedArray#__get
  global.get $~lib/error
  if
   return
  end
  i32.const 255
  i32.and
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 318
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 2
  call $~lib/typedarray/Uint8ClampedArray#__get
  global.get $~lib/error
  if
   return
  end
  i32.const 255
  i32.and
  i32.const 9
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 319
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int16Array#map (; 117 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  block $~lib/typedarray/MAP<~lib/typedarray/Int16Array,i16>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.tee $0
   call $~lib/typedarray/Int16Array#get:length
   local.set $2
   local.get $0
   i32.load offset=4
   local.set $4
   local.get $2
   call $~lib/typedarray/Int16Array#constructor
   local.set $3
   i32.const 0
   global.get $~lib/error
   br_if $~lib/typedarray/MAP<~lib/typedarray/Int16Array,i16>|inlined.0
   drop
   local.get $3
   call $~lib/rt/pure/__retain
   local.tee $5
   i32.load offset=4
   local.set $6
   loop $loop|0
    local.get $1
    local.get $2
    i32.lt_s
    if
     i32.const 3
     global.set $~lib/argc
     local.get $1
     i32.const 1
     i32.shl
     local.tee $7
     local.get $4
     i32.add
     i32.load16_s
     local.get $1
     local.get $0
     call $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>~anonymous|0
     local.set $8
     i32.const 0
     global.get $~lib/error
     br_if $~lib/typedarray/MAP<~lib/typedarray/Int16Array,i16>|inlined.0
     drop
     local.get $6
     local.get $7
     i32.add
     local.get $8
     i32.store16
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $loop|0
    end
   end
   local.get $0
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $5
  end
 )
 (func $~lib/typedarray/Int16Array#__get (; 118 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  i32.ge_u
  if
   i32.const 280
   call $~lib/error/RangeError#constructor
   global.set $~lib/error
   i32.const 0
   return
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_s
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Int16Array,i16> (; 119 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int16Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int16Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int16Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/typedarray/Int16Array#map
  local.tee $2
  i32.const 0
  call $~lib/typedarray/Int16Array#__get
  global.get $~lib/error
  if
   return
  end
  i32.const 65535
  i32.and
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 317
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 1
  call $~lib/typedarray/Int16Array#__get
  global.get $~lib/error
  if
   return
  end
  i32.const 65535
  i32.and
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 318
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 2
  call $~lib/typedarray/Int16Array#__get
  global.get $~lib/error
  if
   return
  end
  i32.const 65535
  i32.and
  i32.const 9
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 319
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint16Array#map (; 120 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  block $~lib/typedarray/MAP<~lib/typedarray/Uint16Array,u16>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.tee $0
   call $~lib/typedarray/Int16Array#get:length
   local.set $2
   local.get $0
   i32.load offset=4
   local.set $4
   local.get $2
   call $~lib/typedarray/Uint16Array#constructor
   local.set $3
   i32.const 0
   global.get $~lib/error
   br_if $~lib/typedarray/MAP<~lib/typedarray/Uint16Array,u16>|inlined.0
   drop
   local.get $3
   call $~lib/rt/pure/__retain
   local.tee $5
   i32.load offset=4
   local.set $6
   loop $loop|0
    local.get $1
    local.get $2
    i32.lt_s
    if
     i32.const 3
     global.set $~lib/argc
     local.get $1
     i32.const 1
     i32.shl
     local.tee $7
     local.get $4
     i32.add
     i32.load16_u
     local.get $1
     local.get $0
     call $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>~anonymous|0
     local.set $8
     i32.const 0
     global.get $~lib/error
     br_if $~lib/typedarray/MAP<~lib/typedarray/Uint16Array,u16>|inlined.0
     drop
     local.get $6
     local.get $7
     i32.add
     local.get $8
     i32.store16
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $loop|0
    end
   end
   local.get $0
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $5
  end
 )
 (func $~lib/typedarray/Uint16Array#__get (; 121 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  i32.ge_u
  if
   i32.const 280
   call $~lib/error/RangeError#constructor
   global.set $~lib/error
   i32.const 0
   return
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 1
  i32.shl
  i32.add
  i32.load16_u
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Uint16Array,u16> (; 122 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 3
  call $~lib/typedarray/Uint16Array#constructor
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int16Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int16Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int16Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/typedarray/Uint16Array#map
  local.tee $2
  i32.const 0
  call $~lib/typedarray/Uint16Array#__get
  global.get $~lib/error
  if
   return
  end
  i32.const 65535
  i32.and
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 317
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 1
  call $~lib/typedarray/Uint16Array#__get
  global.get $~lib/error
  if
   return
  end
  i32.const 65535
  i32.and
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 318
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 2
  call $~lib/typedarray/Uint16Array#__get
  global.get $~lib/error
  if
   return
  end
  i32.const 65535
  i32.and
  i32.const 9
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 319
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int32Array#map (; 123 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  block $~lib/typedarray/MAP<~lib/typedarray/Int32Array,i32>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.tee $0
   call $~lib/typedarray/Int32Array#get:length
   local.set $2
   local.get $0
   i32.load offset=4
   local.set $4
   local.get $2
   call $~lib/typedarray/Int32Array#constructor
   local.set $3
   i32.const 0
   global.get $~lib/error
   br_if $~lib/typedarray/MAP<~lib/typedarray/Int32Array,i32>|inlined.0
   drop
   local.get $3
   call $~lib/rt/pure/__retain
   local.tee $5
   i32.load offset=4
   local.set $6
   loop $loop|0
    local.get $1
    local.get $2
    i32.lt_s
    if
     i32.const 3
     global.set $~lib/argc
     local.get $1
     i32.const 2
     i32.shl
     local.tee $7
     local.get $4
     i32.add
     i32.load
     local.get $1
     local.get $0
     call $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>~anonymous|0
     local.set $8
     i32.const 0
     global.get $~lib/error
     br_if $~lib/typedarray/MAP<~lib/typedarray/Int32Array,i32>|inlined.0
     drop
     local.get $6
     local.get $7
     i32.add
     local.get $8
     i32.store
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $loop|0
    end
   end
   local.get $0
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $5
  end
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Int32Array,i32> (; 124 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/typedarray/Int32Array#map
  local.tee $2
  i32.const 0
  call $~lib/typedarray/Int32Array#__get
  global.get $~lib/error
  if
   return
  end
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 317
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 1
  call $~lib/typedarray/Int32Array#__get
  global.get $~lib/error
  if
   return
  end
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 318
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 2
  call $~lib/typedarray/Int32Array#__get
  global.get $~lib/error
  if
   return
  end
  i32.const 9
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 319
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint32Array#map (; 125 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  block $~lib/typedarray/MAP<~lib/typedarray/Uint32Array,u32>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.tee $0
   call $~lib/typedarray/Int32Array#get:length
   local.set $2
   local.get $0
   i32.load offset=4
   local.set $4
   local.get $2
   call $~lib/typedarray/Uint32Array#constructor
   local.set $3
   i32.const 0
   global.get $~lib/error
   br_if $~lib/typedarray/MAP<~lib/typedarray/Uint32Array,u32>|inlined.0
   drop
   local.get $3
   call $~lib/rt/pure/__retain
   local.tee $5
   i32.load offset=4
   local.set $6
   loop $loop|0
    local.get $1
    local.get $2
    i32.lt_s
    if
     i32.const 3
     global.set $~lib/argc
     local.get $1
     i32.const 2
     i32.shl
     local.tee $7
     local.get $4
     i32.add
     i32.load
     local.get $1
     local.get $0
     call $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>~anonymous|0
     local.set $8
     i32.const 0
     global.get $~lib/error
     br_if $~lib/typedarray/MAP<~lib/typedarray/Uint32Array,u32>|inlined.0
     drop
     local.get $6
     local.get $7
     i32.add
     local.get $8
     i32.store
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $loop|0
    end
   end
   local.get $0
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $5
  end
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Uint32Array,u32> (; 126 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 3
  call $~lib/typedarray/Uint32Array#constructor
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/typedarray/Uint32Array#map
  local.tee $2
  i32.const 0
  call $~lib/typedarray/Int32Array#__get
  global.get $~lib/error
  if
   return
  end
  i32.const 1
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 317
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 1
  call $~lib/typedarray/Int32Array#__get
  global.get $~lib/error
  if
   return
  end
  i32.const 4
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 318
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 2
  call $~lib/typedarray/Int32Array#__get
  global.get $~lib/error
  if
   return
  end
  i32.const 9
  i32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 319
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Int64Array,i64>~anonymous|0 (; 127 ;) (type $FUNCSIG$jjii) (param $0 i64) (param $1 i32) (param $2 i32) (result i64)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  local.get $0
  i64.mul
 )
 (func $~lib/typedarray/Int64Array#map (; 128 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  block $~lib/typedarray/MAP<~lib/typedarray/Int64Array,i64>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.tee $0
   call $~lib/typedarray/Int64Array#get:length
   local.set $2
   local.get $0
   i32.load offset=4
   local.set $4
   local.get $2
   call $~lib/typedarray/Int64Array#constructor
   local.set $3
   i32.const 0
   global.get $~lib/error
   br_if $~lib/typedarray/MAP<~lib/typedarray/Int64Array,i64>|inlined.0
   drop
   local.get $3
   call $~lib/rt/pure/__retain
   local.tee $5
   i32.load offset=4
   local.set $6
   loop $loop|0
    local.get $1
    local.get $2
    i32.lt_s
    if
     i32.const 3
     global.set $~lib/argc
     local.get $1
     i32.const 3
     i32.shl
     local.tee $7
     local.get $4
     i32.add
     i64.load
     local.get $1
     local.get $0
     call $std/typedarray/testArrayMap<~lib/typedarray/Int64Array,i64>~anonymous|0
     local.set $8
     i32.const 0
     global.get $~lib/error
     br_if $~lib/typedarray/MAP<~lib/typedarray/Int64Array,i64>|inlined.0
     drop
     local.get $6
     local.get $7
     i32.add
     local.get $8
     i64.store
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $loop|0
    end
   end
   local.get $0
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $5
  end
 )
 (func $~lib/typedarray/Int64Array#__get (; 129 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 280
   call $~lib/error/RangeError#constructor
   global.set $~lib/error
   i64.const 0
   return
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  i64.load
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Int64Array,i64> (; 130 ;) (type $FUNCSIG$v)
  (local $0 i64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.const 0
  i64.const 1
  call $~lib/typedarray/Int64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 1
  i64.const 2
  call $~lib/typedarray/Int64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 2
  i64.const 3
  call $~lib/typedarray/Int64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/typedarray/Int64Array#map
  local.tee $2
  i32.const 0
  call $~lib/typedarray/Int64Array#__get
  global.get $~lib/error
  if
   return
  end
  i64.const 1
  i64.ne
  if
   i32.const 0
   i32.const 24
   i32.const 317
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 1
  call $~lib/typedarray/Int64Array#__get
  global.get $~lib/error
  if
   return
  end
  i64.const 4
  i64.ne
  if
   i32.const 0
   i32.const 24
   i32.const 318
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 2
  call $~lib/typedarray/Int64Array#__get
  global.get $~lib/error
  if
   return
  end
  i64.const 9
  i64.ne
  if
   i32.const 0
   i32.const 24
   i32.const 319
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint64Array#map (; 131 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  block $~lib/typedarray/MAP<~lib/typedarray/Uint64Array,u64>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.tee $0
   call $~lib/typedarray/Int64Array#get:length
   local.set $2
   local.get $0
   i32.load offset=4
   local.set $4
   local.get $2
   call $~lib/typedarray/Uint64Array#constructor
   local.set $3
   i32.const 0
   global.get $~lib/error
   br_if $~lib/typedarray/MAP<~lib/typedarray/Uint64Array,u64>|inlined.0
   drop
   local.get $3
   call $~lib/rt/pure/__retain
   local.tee $5
   i32.load offset=4
   local.set $6
   loop $loop|0
    local.get $1
    local.get $2
    i32.lt_s
    if
     i32.const 3
     global.set $~lib/argc
     local.get $1
     i32.const 3
     i32.shl
     local.tee $7
     local.get $4
     i32.add
     i64.load
     local.get $1
     local.get $0
     call $std/typedarray/testArrayMap<~lib/typedarray/Int64Array,i64>~anonymous|0
     local.set $8
     i32.const 0
     global.get $~lib/error
     br_if $~lib/typedarray/MAP<~lib/typedarray/Uint64Array,u64>|inlined.0
     drop
     local.get $6
     local.get $7
     i32.add
     local.get $8
     i64.store
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $loop|0
    end
   end
   local.get $0
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $5
  end
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Uint64Array,u64> (; 132 ;) (type $FUNCSIG$v)
  (local $0 i64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 3
  call $~lib/typedarray/Uint64Array#constructor
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.const 0
  i64.const 1
  call $~lib/typedarray/Int64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 1
  i64.const 2
  call $~lib/typedarray/Int64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 2
  i64.const 3
  call $~lib/typedarray/Int64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/typedarray/Uint64Array#map
  local.tee $2
  i32.const 0
  call $~lib/typedarray/Int64Array#__get
  global.get $~lib/error
  if
   return
  end
  i64.const 1
  i64.ne
  if
   i32.const 0
   i32.const 24
   i32.const 317
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 1
  call $~lib/typedarray/Int64Array#__get
  global.get $~lib/error
  if
   return
  end
  i64.const 4
  i64.ne
  if
   i32.const 0
   i32.const 24
   i32.const 318
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 2
  call $~lib/typedarray/Int64Array#__get
  global.get $~lib/error
  if
   return
  end
  i64.const 9
  i64.ne
  if
   i32.const 0
   i32.const 24
   i32.const 319
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Float32Array,f32>~anonymous|0 (; 133 ;) (type $FUNCSIG$ffii) (param $0 f32) (param $1 i32) (param $2 i32) (result f32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  local.get $0
  f32.mul
 )
 (func $~lib/typedarray/Float32Array#map (; 134 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 f32)
  block $~lib/typedarray/MAP<~lib/typedarray/Float32Array,f32>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.tee $0
   call $~lib/typedarray/Int32Array#get:length
   local.set $2
   local.get $0
   i32.load offset=4
   local.set $4
   local.get $2
   call $~lib/typedarray/Float32Array#constructor
   local.set $3
   i32.const 0
   global.get $~lib/error
   br_if $~lib/typedarray/MAP<~lib/typedarray/Float32Array,f32>|inlined.0
   drop
   local.get $3
   call $~lib/rt/pure/__retain
   local.tee $5
   i32.load offset=4
   local.set $6
   loop $loop|0
    local.get $1
    local.get $2
    i32.lt_s
    if
     i32.const 3
     global.set $~lib/argc
     local.get $1
     i32.const 2
     i32.shl
     local.tee $7
     local.get $4
     i32.add
     f32.load
     local.get $1
     local.get $0
     call $std/typedarray/testArrayMap<~lib/typedarray/Float32Array,f32>~anonymous|0
     local.set $8
     i32.const 0
     global.get $~lib/error
     br_if $~lib/typedarray/MAP<~lib/typedarray/Float32Array,f32>|inlined.0
     drop
     local.get $6
     local.get $7
     i32.add
     local.get $8
     f32.store
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $loop|0
    end
   end
   local.get $0
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $5
  end
 )
 (func $~lib/typedarray/Float32Array#__get (; 135 ;) (type $FUNCSIG$fii) (param $0 i32) (param $1 i32) (result f32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 280
   call $~lib/error/RangeError#constructor
   global.set $~lib/error
   f32.const 0
   return
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  f32.load
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Float32Array,f32> (; 136 ;) (type $FUNCSIG$v)
  (local $0 f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 3
  call $~lib/typedarray/Float32Array#constructor
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.const 0
  f32.const 1
  call $~lib/typedarray/Float32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 1
  f32.const 2
  call $~lib/typedarray/Float32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 2
  f32.const 3
  call $~lib/typedarray/Float32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/typedarray/Float32Array#map
  local.tee $2
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  global.get $~lib/error
  if
   return
  end
  f32.const 1
  f32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 317
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  global.get $~lib/error
  if
   return
  end
  f32.const 4
  f32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 318
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 2
  call $~lib/typedarray/Float32Array#__get
  global.get $~lib/error
  if
   return
  end
  f32.const 9
  f32.ne
  if
   i32.const 0
   i32.const 24
   i32.const 319
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Float64Array,f64>~anonymous|0 (; 137 ;) (type $FUNCSIG$ddii) (param $0 f64) (param $1 i32) (param $2 i32) (result f64)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  local.get $0
  f64.mul
 )
 (func $~lib/typedarray/Float64Array#map (; 138 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 f64)
  block $~lib/typedarray/MAP<~lib/typedarray/Float64Array,f64>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.tee $0
   call $~lib/typedarray/Int64Array#get:length
   local.set $2
   local.get $0
   i32.load offset=4
   local.set $4
   local.get $2
   call $~lib/typedarray/Float64Array#constructor
   local.set $3
   i32.const 0
   global.get $~lib/error
   br_if $~lib/typedarray/MAP<~lib/typedarray/Float64Array,f64>|inlined.0
   drop
   local.get $3
   call $~lib/rt/pure/__retain
   local.tee $5
   i32.load offset=4
   local.set $6
   loop $loop|0
    local.get $1
    local.get $2
    i32.lt_s
    if
     i32.const 3
     global.set $~lib/argc
     local.get $1
     i32.const 3
     i32.shl
     local.tee $7
     local.get $4
     i32.add
     f64.load
     local.get $1
     local.get $0
     call $std/typedarray/testArrayMap<~lib/typedarray/Float64Array,f64>~anonymous|0
     local.set $8
     i32.const 0
     global.get $~lib/error
     br_if $~lib/typedarray/MAP<~lib/typedarray/Float64Array,f64>|inlined.0
     drop
     local.get $6
     local.get $7
     i32.add
     local.get $8
     f64.store
     local.get $1
     i32.const 1
     i32.add
     local.set $1
     br $loop|0
    end
   end
   local.get $0
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   local.get $5
  end
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Float64Array,f64> (; 139 ;) (type $FUNCSIG$v)
  (local $0 f64)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 3
  call $~lib/typedarray/Float64Array#constructor
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  call $~lib/rt/pure/__retain
  local.tee $1
  i32.const 0
  f64.const 1
  call $~lib/typedarray/Float64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 1
  f64.const 2
  call $~lib/typedarray/Float64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 2
  f64.const 3
  call $~lib/typedarray/Float64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/typedarray/Float64Array#map
  local.tee $2
  i32.const 0
  call $~lib/typedarray/Float64Array#__get
  global.get $~lib/error
  if
   return
  end
  f64.const 1
  f64.ne
  if
   i32.const 0
   i32.const 24
   i32.const 317
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 1
  call $~lib/typedarray/Float64Array#__get
  global.get $~lib/error
  if
   return
  end
  f64.const 4
  f64.ne
  if
   i32.const 0
   i32.const 24
   i32.const 318
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 2
  call $~lib/typedarray/Float64Array#__get
  global.get $~lib/error
  if
   return
  end
  f64.const 9
  f64.ne
  if
   i32.const 0
   i32.const 24
   i32.const 319
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|0 (; 140 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  i32.const 255
  i32.and
  i32.const 2
  i32.eq
 )
 (func $~lib/typedarray/Int8Array#some (; 141 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/typedarray/SOME<~lib/typedarray/Int8Array,i8>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.tee $2
   i32.load offset=4
   local.set $3
   i32.const 0
   local.set $0
   local.get $2
   i32.load offset=8
   local.set $4
   loop $loop|0
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
     i32.const 0
     global.get $~lib/error
     br_if $~lib/typedarray/SOME<~lib/typedarray/Int8Array,i8>|inlined.0
     drop
     if
      local.get $2
      call $~lib/rt/pure/__release
      i32.const 1
      br $~lib/typedarray/SOME<~lib/typedarray/Int8Array,i8>|inlined.0
     else      
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $loop|0
     end
     unreachable
    end
   end
   local.get $2
   call $~lib/rt/pure/__release
   i32.const 0
  end
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|1 (; 142 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  i32.const 255
  i32.and
  i32.eqz
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8> (; 143 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Int8Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Int8Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Int8Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 35
  call $~lib/typedarray/Int8Array#some
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 346
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 36
  call $~lib/typedarray/Int8Array#some
  if
   i32.const 0
   i32.const 24
   i32.const 349
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint8Array#some (; 144 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/typedarray/SOME<~lib/typedarray/Uint8Array,u8>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.tee $2
   i32.load offset=4
   local.set $3
   i32.const 0
   local.set $0
   local.get $2
   i32.load offset=8
   local.set $4
   loop $loop|0
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
     i32.const 0
     global.get $~lib/error
     br_if $~lib/typedarray/SOME<~lib/typedarray/Uint8Array,u8>|inlined.0
     drop
     if
      local.get $2
      call $~lib/rt/pure/__release
      i32.const 1
      br $~lib/typedarray/SOME<~lib/typedarray/Uint8Array,u8>|inlined.0
     else      
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $loop|0
     end
     unreachable
    end
   end
   local.get $2
   call $~lib/rt/pure/__release
   i32.const 0
  end
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Uint8Array,u8> (; 145 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Uint8Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Int8Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Int8Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Int8Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 37
  call $~lib/typedarray/Uint8Array#some
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 346
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 38
  call $~lib/typedarray/Uint8Array#some
  if
   i32.const 0
   i32.const 24
   i32.const 349
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Uint8ClampedArray,u8> (; 146 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Uint8ClampedArray#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Uint8ClampedArray#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Uint8ClampedArray#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 39
  call $~lib/typedarray/Uint8Array#some
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 346
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 40
  call $~lib/typedarray/Uint8Array#some
  if
   i32.const 0
   i32.const 24
   i32.const 349
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|0 (; 147 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  i32.const 65535
  i32.and
  i32.const 2
  i32.eq
 )
 (func $~lib/typedarray/Int16Array#some (; 148 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/typedarray/SOME<~lib/typedarray/Int16Array,i16>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.tee $2
   i32.load offset=4
   local.set $3
   i32.const 0
   local.set $0
   local.get $2
   call $~lib/typedarray/Int16Array#get:length
   local.set $4
   loop $loop|0
    block $break|0
     local.get $0
     local.get $4
     i32.ge_s
     br_if $break|0
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
     i32.const 0
     global.get $~lib/error
     br_if $~lib/typedarray/SOME<~lib/typedarray/Int16Array,i16>|inlined.0
     drop
     if
      local.get $2
      call $~lib/rt/pure/__release
      i32.const 1
      br $~lib/typedarray/SOME<~lib/typedarray/Int16Array,i16>|inlined.0
     else      
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $loop|0
     end
     unreachable
    end
   end
   local.get $2
   call $~lib/rt/pure/__release
   i32.const 0
  end
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|1 (; 149 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  i32.const 65535
  i32.and
  i32.eqz
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16> (; 150 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Int16Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Int16Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Int16Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 41
  call $~lib/typedarray/Int16Array#some
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 346
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 42
  call $~lib/typedarray/Int16Array#some
  if
   i32.const 0
   i32.const 24
   i32.const 349
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint16Array#some (; 151 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/typedarray/SOME<~lib/typedarray/Uint16Array,u16>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.tee $2
   i32.load offset=4
   local.set $3
   i32.const 0
   local.set $0
   local.get $2
   call $~lib/typedarray/Int16Array#get:length
   local.set $4
   loop $loop|0
    block $break|0
     local.get $0
     local.get $4
     i32.ge_s
     br_if $break|0
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
     i32.const 0
     global.get $~lib/error
     br_if $~lib/typedarray/SOME<~lib/typedarray/Uint16Array,u16>|inlined.0
     drop
     if
      local.get $2
      call $~lib/rt/pure/__release
      i32.const 1
      br $~lib/typedarray/SOME<~lib/typedarray/Uint16Array,u16>|inlined.0
     else      
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $loop|0
     end
     unreachable
    end
   end
   local.get $2
   call $~lib/rt/pure/__release
   i32.const 0
  end
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Uint16Array,u16> (; 152 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Uint16Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Int16Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Int16Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Int16Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 43
  call $~lib/typedarray/Uint16Array#some
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 346
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 44
  call $~lib/typedarray/Uint16Array#some
  if
   i32.const 0
   i32.const 24
   i32.const 349
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|0 (; 153 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  i32.const 2
  i32.eq
 )
 (func $~lib/typedarray/Int32Array#some (; 154 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/typedarray/SOME<~lib/typedarray/Int32Array,i32>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.tee $2
   i32.load offset=4
   local.set $3
   i32.const 0
   local.set $0
   local.get $2
   call $~lib/typedarray/Int32Array#get:length
   local.set $4
   loop $loop|0
    block $break|0
     local.get $0
     local.get $4
     i32.ge_s
     br_if $break|0
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
     i32.const 0
     global.get $~lib/error
     br_if $~lib/typedarray/SOME<~lib/typedarray/Int32Array,i32>|inlined.0
     drop
     if
      local.get $2
      call $~lib/rt/pure/__release
      i32.const 1
      br $~lib/typedarray/SOME<~lib/typedarray/Int32Array,i32>|inlined.0
     else      
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $loop|0
     end
     unreachable
    end
   end
   local.get $2
   call $~lib/rt/pure/__release
   i32.const 0
  end
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|1 (; 155 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  i32.eqz
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32> (; 156 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Int32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Int32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Int32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 45
  call $~lib/typedarray/Int32Array#some
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 346
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 46
  call $~lib/typedarray/Int32Array#some
  if
   i32.const 0
   i32.const 24
   i32.const 349
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Uint32Array,u32> (; 157 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Uint32Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Int32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Int32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Int32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 47
  call $~lib/typedarray/Int32Array#some
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 346
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 48
  call $~lib/typedarray/Int32Array#some
  if
   i32.const 0
   i32.const 24
   i32.const 349
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|0 (; 158 ;) (type $FUNCSIG$ijii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  i64.const 2
  i64.eq
 )
 (func $~lib/typedarray/Int64Array#some (; 159 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/typedarray/SOME<~lib/typedarray/Int64Array,i64>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.tee $2
   i32.load offset=4
   local.set $3
   i32.const 0
   local.set $0
   local.get $2
   call $~lib/typedarray/Int64Array#get:length
   local.set $4
   loop $loop|0
    block $break|0
     local.get $0
     local.get $4
     i32.ge_s
     br_if $break|0
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
     i32.const 0
     global.get $~lib/error
     br_if $~lib/typedarray/SOME<~lib/typedarray/Int64Array,i64>|inlined.0
     drop
     if
      local.get $2
      call $~lib/rt/pure/__release
      i32.const 1
      br $~lib/typedarray/SOME<~lib/typedarray/Int64Array,i64>|inlined.0
     else      
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $loop|0
     end
     unreachable
    end
   end
   local.get $2
   call $~lib/rt/pure/__release
   i32.const 0
  end
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|1 (; 160 ;) (type $FUNCSIG$ijii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  i64.const 0
  i64.eq
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64> (; 161 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i64.const 2
  call $~lib/typedarray/Int64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 1
  i64.const 4
  call $~lib/typedarray/Int64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 2
  i64.const 6
  call $~lib/typedarray/Int64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 49
  call $~lib/typedarray/Int64Array#some
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 346
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 50
  call $~lib/typedarray/Int64Array#some
  if
   i32.const 0
   i32.const 24
   i32.const 349
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Uint64Array,u64> (; 162 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Uint64Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i64.const 2
  call $~lib/typedarray/Int64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 1
  i64.const 4
  call $~lib/typedarray/Int64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 2
  i64.const 6
  call $~lib/typedarray/Int64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 51
  call $~lib/typedarray/Int64Array#some
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 346
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 52
  call $~lib/typedarray/Int64Array#some
  if
   i32.const 0
   i32.const 24
   i32.const 349
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Float32Array,f32>~anonymous|0 (; 163 ;) (type $FUNCSIG$ifii) (param $0 f32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  f32.const 2
  f32.eq
 )
 (func $~lib/typedarray/Float32Array#some (; 164 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/typedarray/SOME<~lib/typedarray/Float32Array,f32>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.tee $2
   i32.load offset=4
   local.set $3
   i32.const 0
   local.set $0
   local.get $2
   call $~lib/typedarray/Int32Array#get:length
   local.set $4
   loop $loop|0
    block $break|0
     local.get $0
     local.get $4
     i32.ge_s
     br_if $break|0
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
     i32.const 0
     global.get $~lib/error
     br_if $~lib/typedarray/SOME<~lib/typedarray/Float32Array,f32>|inlined.0
     drop
     if
      local.get $2
      call $~lib/rt/pure/__release
      i32.const 1
      br $~lib/typedarray/SOME<~lib/typedarray/Float32Array,f32>|inlined.0
     else      
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $loop|0
     end
     unreachable
    end
   end
   local.get $2
   call $~lib/rt/pure/__release
   i32.const 0
  end
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Float32Array,f32>~anonymous|1 (; 165 ;) (type $FUNCSIG$ifii) (param $0 f32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  f32.const 0
  f32.eq
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Float32Array,f32> (; 166 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Float32Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  f32.const 2
  call $~lib/typedarray/Float32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 1
  f32.const 4
  call $~lib/typedarray/Float32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 2
  f32.const 6
  call $~lib/typedarray/Float32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 53
  call $~lib/typedarray/Float32Array#some
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 346
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 54
  call $~lib/typedarray/Float32Array#some
  if
   i32.const 0
   i32.const 24
   i32.const 349
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Float64Array,f64>~anonymous|0 (; 167 ;) (type $FUNCSIG$idii) (param $0 f64) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  f64.const 2
  f64.eq
 )
 (func $~lib/typedarray/Float64Array#some (; 168 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/typedarray/SOME<~lib/typedarray/Float64Array,f64>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.tee $2
   i32.load offset=4
   local.set $3
   i32.const 0
   local.set $0
   local.get $2
   call $~lib/typedarray/Int64Array#get:length
   local.set $4
   loop $loop|0
    block $break|0
     local.get $0
     local.get $4
     i32.ge_s
     br_if $break|0
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
     i32.const 0
     global.get $~lib/error
     br_if $~lib/typedarray/SOME<~lib/typedarray/Float64Array,f64>|inlined.0
     drop
     if
      local.get $2
      call $~lib/rt/pure/__release
      i32.const 1
      br $~lib/typedarray/SOME<~lib/typedarray/Float64Array,f64>|inlined.0
     else      
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $loop|0
     end
     unreachable
    end
   end
   local.get $2
   call $~lib/rt/pure/__release
   i32.const 0
  end
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Float64Array,f64>~anonymous|1 (; 169 ;) (type $FUNCSIG$idii) (param $0 f64) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  f64.const 0
  f64.eq
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Float64Array,f64> (; 170 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Float64Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  f64.const 2
  call $~lib/typedarray/Float64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 1
  f64.const 4
  call $~lib/typedarray/Float64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 2
  f64.const 6
  call $~lib/typedarray/Float64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 55
  call $~lib/typedarray/Float64Array#some
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 346
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 56
  call $~lib/typedarray/Float64Array#some
  if
   i32.const 0
   i32.const 24
   i32.const 349
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int8Array#findIndex (; 171 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $2
  i32.load offset=4
  local.set $3
  i32.const 0
  local.set $0
  local.get $2
  i32.load offset=8
  local.set $4
  block $~lib/typedarray/FIND_INDEX<~lib/typedarray/Int8Array,i8>|inlined.0
   loop $loop|0
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
     global.get $~lib/error
     if
      i32.const 0
      local.set $0
      br $~lib/typedarray/FIND_INDEX<~lib/typedarray/Int8Array,i8>|inlined.0
     end
     if
      local.get $2
      call $~lib/rt/pure/__release
      br $~lib/typedarray/FIND_INDEX<~lib/typedarray/Int8Array,i8>|inlined.0
     else      
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $loop|0
     end
     unreachable
    end
   end
   local.get $2
   call $~lib/rt/pure/__release
   i32.const -1
   local.set $0
  end
  local.get $0
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int8Array,i8>~anonymous|1 (; 172 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  i32.const 255
  i32.and
  i32.const 4
  i32.eq
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int8Array,i8> (; 173 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int8Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int8Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int8Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 57
  call $~lib/typedarray/Int8Array#findIndex
  i32.const 1
  i32.ne
  if
   i32.const 864
   i32.const 24
   i32.const 376
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 58
  call $~lib/typedarray/Int8Array#findIndex
  i32.const -1
  i32.ne
  if
   i32.const 912
   i32.const 24
   i32.const 379
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint8Array#findIndex (; 174 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $2
  i32.load offset=4
  local.set $3
  i32.const 0
  local.set $0
  local.get $2
  i32.load offset=8
  local.set $4
  block $~lib/typedarray/FIND_INDEX<~lib/typedarray/Uint8Array,u8>|inlined.0
   loop $loop|0
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
     global.get $~lib/error
     if
      i32.const 0
      local.set $0
      br $~lib/typedarray/FIND_INDEX<~lib/typedarray/Uint8Array,u8>|inlined.0
     end
     if
      local.get $2
      call $~lib/rt/pure/__release
      br $~lib/typedarray/FIND_INDEX<~lib/typedarray/Uint8Array,u8>|inlined.0
     else      
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $loop|0
     end
     unreachable
    end
   end
   local.get $2
   call $~lib/rt/pure/__release
   i32.const -1
   local.set $0
  end
  local.get $0
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint8Array,u8> (; 175 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Uint8Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int8Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int8Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int8Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 59
  call $~lib/typedarray/Uint8Array#findIndex
  i32.const 1
  i32.ne
  if
   i32.const 864
   i32.const 24
   i32.const 376
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 60
  call $~lib/typedarray/Uint8Array#findIndex
  i32.const -1
  i32.ne
  if
   i32.const 912
   i32.const 24
   i32.const 379
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint8ClampedArray,u8> (; 176 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint8ClampedArray#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint8ClampedArray#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 61
  call $~lib/typedarray/Uint8Array#findIndex
  i32.const 1
  i32.ne
  if
   i32.const 864
   i32.const 24
   i32.const 376
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 62
  call $~lib/typedarray/Uint8Array#findIndex
  i32.const -1
  i32.ne
  if
   i32.const 912
   i32.const 24
   i32.const 379
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int16Array#findIndex (; 177 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $2
  i32.load offset=4
  local.set $3
  i32.const 0
  local.set $0
  local.get $2
  call $~lib/typedarray/Int16Array#get:length
  local.set $4
  block $~lib/typedarray/FIND_INDEX<~lib/typedarray/Int16Array,i16>|inlined.0
   loop $loop|0
    block $break|0
     local.get $0
     local.get $4
     i32.ge_s
     br_if $break|0
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
     global.get $~lib/error
     if
      i32.const 0
      local.set $0
      br $~lib/typedarray/FIND_INDEX<~lib/typedarray/Int16Array,i16>|inlined.0
     end
     if
      local.get $2
      call $~lib/rt/pure/__release
      br $~lib/typedarray/FIND_INDEX<~lib/typedarray/Int16Array,i16>|inlined.0
     else      
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $loop|0
     end
     unreachable
    end
   end
   local.get $2
   call $~lib/rt/pure/__release
   i32.const -1
   local.set $0
  end
  local.get $0
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int16Array,i16>~anonymous|1 (; 178 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  i32.const 65535
  i32.and
  i32.const 4
  i32.eq
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int16Array,i16> (; 179 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int16Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int16Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int16Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 63
  call $~lib/typedarray/Int16Array#findIndex
  i32.const 1
  i32.ne
  if
   i32.const 864
   i32.const 24
   i32.const 376
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 64
  call $~lib/typedarray/Int16Array#findIndex
  i32.const -1
  i32.ne
  if
   i32.const 912
   i32.const 24
   i32.const 379
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint16Array#findIndex (; 180 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $2
  i32.load offset=4
  local.set $3
  i32.const 0
  local.set $0
  local.get $2
  call $~lib/typedarray/Int16Array#get:length
  local.set $4
  block $~lib/typedarray/FIND_INDEX<~lib/typedarray/Uint16Array,u16>|inlined.0
   loop $loop|0
    block $break|0
     local.get $0
     local.get $4
     i32.ge_s
     br_if $break|0
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
     global.get $~lib/error
     if
      i32.const 0
      local.set $0
      br $~lib/typedarray/FIND_INDEX<~lib/typedarray/Uint16Array,u16>|inlined.0
     end
     if
      local.get $2
      call $~lib/rt/pure/__release
      br $~lib/typedarray/FIND_INDEX<~lib/typedarray/Uint16Array,u16>|inlined.0
     else      
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $loop|0
     end
     unreachable
    end
   end
   local.get $2
   call $~lib/rt/pure/__release
   i32.const -1
   local.set $0
  end
  local.get $0
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint16Array,u16> (; 181 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Uint16Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int16Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int16Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int16Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 65
  call $~lib/typedarray/Uint16Array#findIndex
  i32.const 1
  i32.ne
  if
   i32.const 864
   i32.const 24
   i32.const 376
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 66
  call $~lib/typedarray/Uint16Array#findIndex
  i32.const -1
  i32.ne
  if
   i32.const 912
   i32.const 24
   i32.const 379
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int32Array#findIndex (; 182 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $2
  i32.load offset=4
  local.set $3
  i32.const 0
  local.set $0
  local.get $2
  call $~lib/typedarray/Int32Array#get:length
  local.set $4
  block $~lib/typedarray/FIND_INDEX<~lib/typedarray/Int32Array,i32>|inlined.0
   loop $loop|0
    block $break|0
     local.get $0
     local.get $4
     i32.ge_s
     br_if $break|0
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
     global.get $~lib/error
     if
      i32.const 0
      local.set $0
      br $~lib/typedarray/FIND_INDEX<~lib/typedarray/Int32Array,i32>|inlined.0
     end
     if
      local.get $2
      call $~lib/rt/pure/__release
      br $~lib/typedarray/FIND_INDEX<~lib/typedarray/Int32Array,i32>|inlined.0
     else      
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $loop|0
     end
     unreachable
    end
   end
   local.get $2
   call $~lib/rt/pure/__release
   i32.const -1
   local.set $0
  end
  local.get $0
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int32Array,i32>~anonymous|1 (; 183 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  i32.const 4
  i32.eq
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int32Array,i32> (; 184 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 67
  call $~lib/typedarray/Int32Array#findIndex
  i32.const 1
  i32.ne
  if
   i32.const 864
   i32.const 24
   i32.const 376
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 68
  call $~lib/typedarray/Int32Array#findIndex
  i32.const -1
  i32.ne
  if
   i32.const 912
   i32.const 24
   i32.const 379
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint32Array,u32> (; 185 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Uint32Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 69
  call $~lib/typedarray/Int32Array#findIndex
  i32.const 1
  i32.ne
  if
   i32.const 864
   i32.const 24
   i32.const 376
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 70
  call $~lib/typedarray/Int32Array#findIndex
  i32.const -1
  i32.ne
  if
   i32.const 912
   i32.const 24
   i32.const 379
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int64Array#findIndex (; 186 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $2
  i32.load offset=4
  local.set $3
  i32.const 0
  local.set $0
  local.get $2
  call $~lib/typedarray/Int64Array#get:length
  local.set $4
  block $~lib/typedarray/FIND_INDEX<~lib/typedarray/Int64Array,i64>|inlined.0
   loop $loop|0
    block $break|0
     local.get $0
     local.get $4
     i32.ge_s
     br_if $break|0
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
     global.get $~lib/error
     if
      i32.const 0
      local.set $0
      br $~lib/typedarray/FIND_INDEX<~lib/typedarray/Int64Array,i64>|inlined.0
     end
     if
      local.get $2
      call $~lib/rt/pure/__release
      br $~lib/typedarray/FIND_INDEX<~lib/typedarray/Int64Array,i64>|inlined.0
     else      
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $loop|0
     end
     unreachable
    end
   end
   local.get $2
   call $~lib/rt/pure/__release
   i32.const -1
   local.set $0
  end
  local.get $0
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int64Array,i64>~anonymous|1 (; 187 ;) (type $FUNCSIG$ijii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  i64.const 4
  i64.eq
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int64Array,i64> (; 188 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i64.const 1
  call $~lib/typedarray/Int64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 1
  i64.const 2
  call $~lib/typedarray/Int64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 2
  i64.const 3
  call $~lib/typedarray/Int64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 71
  call $~lib/typedarray/Int64Array#findIndex
  i32.const 1
  i32.ne
  if
   i32.const 864
   i32.const 24
   i32.const 376
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 72
  call $~lib/typedarray/Int64Array#findIndex
  i32.const -1
  i32.ne
  if
   i32.const 912
   i32.const 24
   i32.const 379
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint64Array,u64> (; 189 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Uint64Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i64.const 1
  call $~lib/typedarray/Int64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 1
  i64.const 2
  call $~lib/typedarray/Int64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 2
  i64.const 3
  call $~lib/typedarray/Int64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 73
  call $~lib/typedarray/Int64Array#findIndex
  i32.const 1
  i32.ne
  if
   i32.const 864
   i32.const 24
   i32.const 376
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 74
  call $~lib/typedarray/Int64Array#findIndex
  i32.const -1
  i32.ne
  if
   i32.const 912
   i32.const 24
   i32.const 379
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Float32Array#findIndex (; 190 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $2
  i32.load offset=4
  local.set $3
  i32.const 0
  local.set $0
  local.get $2
  call $~lib/typedarray/Int32Array#get:length
  local.set $4
  block $~lib/typedarray/FIND_INDEX<~lib/typedarray/Float32Array,f32>|inlined.0
   loop $loop|0
    block $break|0
     local.get $0
     local.get $4
     i32.ge_s
     br_if $break|0
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
     global.get $~lib/error
     if
      i32.const 0
      local.set $0
      br $~lib/typedarray/FIND_INDEX<~lib/typedarray/Float32Array,f32>|inlined.0
     end
     if
      local.get $2
      call $~lib/rt/pure/__release
      br $~lib/typedarray/FIND_INDEX<~lib/typedarray/Float32Array,f32>|inlined.0
     else      
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $loop|0
     end
     unreachable
    end
   end
   local.get $2
   call $~lib/rt/pure/__release
   i32.const -1
   local.set $0
  end
  local.get $0
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Float32Array,f32>~anonymous|1 (; 191 ;) (type $FUNCSIG$ifii) (param $0 f32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  f32.const 4
  f32.eq
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Float32Array,f32> (; 192 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Float32Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  f32.const 1
  call $~lib/typedarray/Float32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 1
  f32.const 2
  call $~lib/typedarray/Float32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 2
  f32.const 3
  call $~lib/typedarray/Float32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 75
  call $~lib/typedarray/Float32Array#findIndex
  i32.const 1
  i32.ne
  if
   i32.const 864
   i32.const 24
   i32.const 376
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 76
  call $~lib/typedarray/Float32Array#findIndex
  i32.const -1
  i32.ne
  if
   i32.const 912
   i32.const 24
   i32.const 379
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Float64Array#findIndex (; 193 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $2
  i32.load offset=4
  local.set $3
  i32.const 0
  local.set $0
  local.get $2
  call $~lib/typedarray/Int64Array#get:length
  local.set $4
  block $~lib/typedarray/FIND_INDEX<~lib/typedarray/Float64Array,f64>|inlined.0
   loop $loop|0
    block $break|0
     local.get $0
     local.get $4
     i32.ge_s
     br_if $break|0
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
     global.get $~lib/error
     if
      i32.const 0
      local.set $0
      br $~lib/typedarray/FIND_INDEX<~lib/typedarray/Float64Array,f64>|inlined.0
     end
     if
      local.get $2
      call $~lib/rt/pure/__release
      br $~lib/typedarray/FIND_INDEX<~lib/typedarray/Float64Array,f64>|inlined.0
     else      
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $loop|0
     end
     unreachable
    end
   end
   local.get $2
   call $~lib/rt/pure/__release
   i32.const -1
   local.set $0
  end
  local.get $0
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Float64Array,f64>~anonymous|1 (; 194 ;) (type $FUNCSIG$idii) (param $0 f64) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  f64.const 4
  f64.eq
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Float64Array,f64> (; 195 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Float64Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  f64.const 1
  call $~lib/typedarray/Float64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 1
  f64.const 2
  call $~lib/typedarray/Float64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 2
  f64.const 3
  call $~lib/typedarray/Float64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 77
  call $~lib/typedarray/Float64Array#findIndex
  i32.const 1
  i32.ne
  if
   i32.const 864
   i32.const 24
   i32.const 376
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 78
  call $~lib/typedarray/Float64Array#findIndex
  i32.const -1
  i32.ne
  if
   i32.const 912
   i32.const 24
   i32.const 379
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int8Array,i8>~anonymous|0 (; 196 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 2
  i32.rem_s
  i32.eqz
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int8Array#every (; 197 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/typedarray/EVERY<~lib/typedarray/Int8Array,i8>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.tee $2
   i32.load offset=4
   local.set $3
   i32.const 0
   local.set $0
   local.get $2
   i32.load offset=8
   local.set $4
   loop $loop|0
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
     i32.const 0
     global.get $~lib/error
     br_if $~lib/typedarray/EVERY<~lib/typedarray/Int8Array,i8>|inlined.0
     drop
     if
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $loop|0
     else      
      local.get $2
      call $~lib/rt/pure/__release
      i32.const 0
      br $~lib/typedarray/EVERY<~lib/typedarray/Int8Array,i8>|inlined.0
     end
     unreachable
    end
   end
   local.get $2
   call $~lib/rt/pure/__release
   i32.const 1
  end
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int8Array,i8> (; 198 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Int8Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Int8Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Int8Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 79
  call $~lib/typedarray/Int8Array#every
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 406
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 80
  call $~lib/typedarray/Int8Array#every
  if
   i32.const 0
   i32.const 24
   i32.const 409
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint8Array,u8>~anonymous|0 (; 199 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  i32.const 1
  i32.and
  i32.eqz
 )
 (func $~lib/typedarray/Uint8Array#every (; 200 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/typedarray/EVERY<~lib/typedarray/Uint8Array,u8>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.tee $2
   i32.load offset=4
   local.set $3
   i32.const 0
   local.set $0
   local.get $2
   i32.load offset=8
   local.set $4
   loop $loop|0
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
     i32.const 0
     global.get $~lib/error
     br_if $~lib/typedarray/EVERY<~lib/typedarray/Uint8Array,u8>|inlined.0
     drop
     if
      local.get $0
      i32.const 1
      i32.add
      local.set $0
      br $loop|0
     else      
      local.get $2
      call $~lib/rt/pure/__release
      i32.const 0
      br $~lib/typedarray/EVERY<~lib/typedarray/Uint8Array,u8>|inlined.0
     end
     unreachable
    end
   end
   local.get $2
   call $~lib/rt/pure/__release
   i32.const 1
  end
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint8Array,u8> (; 201 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Uint8Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Int8Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Int8Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Int8Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 81
  call $~lib/typedarray/Uint8Array#every
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 406
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 82
  call $~lib/typedarray/Uint8Array#every
  if
   i32.const 0
   i32.const 24
   i32.const 409
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint8ClampedArray,u8> (; 202 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Uint8ClampedArray#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Uint8ClampedArray#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Uint8ClampedArray#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 83
  call $~lib/typedarray/Uint8Array#every
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 406
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 84
  call $~lib/typedarray/Uint8Array#every
  if
   i32.const 0
   i32.const 24
   i32.const 409
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int16Array,i16>~anonymous|0 (; 203 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 2
  i32.rem_s
  i32.eqz
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int16Array#every (; 204 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/typedarray/EVERY<~lib/typedarray/Int16Array,i16>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.tee $2
   i32.load offset=4
   local.set $3
   i32.const 0
   local.set $0
   local.get $2
   call $~lib/typedarray/Int16Array#get:length
   local.set $4
   loop $loop|0
    block $break|0
     local.get $0
     local.get $4
     i32.ge_s
     br_if $break|0
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
     i32.const 0
     global.get $~lib/error
     br_if $~lib/typedarray/EVERY<~lib/typedarray/Int16Array,i16>|inlined.0
     drop
     i32.eqz
     if
      local.get $2
      call $~lib/rt/pure/__release
      i32.const 0
      br $~lib/typedarray/EVERY<~lib/typedarray/Int16Array,i16>|inlined.0
     end
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|0
    end
   end
   local.get $2
   call $~lib/rt/pure/__release
   i32.const 1
  end
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int16Array,i16> (; 205 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Int16Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Int16Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Int16Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 85
  call $~lib/typedarray/Int16Array#every
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 406
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 86
  call $~lib/typedarray/Int16Array#every
  if
   i32.const 0
   i32.const 24
   i32.const 409
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint16Array#every (; 206 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/typedarray/EVERY<~lib/typedarray/Uint16Array,u16>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.tee $2
   i32.load offset=4
   local.set $3
   i32.const 0
   local.set $0
   local.get $2
   call $~lib/typedarray/Int16Array#get:length
   local.set $4
   loop $loop|0
    block $break|0
     local.get $0
     local.get $4
     i32.ge_s
     br_if $break|0
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
     i32.const 0
     global.get $~lib/error
     br_if $~lib/typedarray/EVERY<~lib/typedarray/Uint16Array,u16>|inlined.0
     drop
     i32.eqz
     if
      local.get $2
      call $~lib/rt/pure/__release
      i32.const 0
      br $~lib/typedarray/EVERY<~lib/typedarray/Uint16Array,u16>|inlined.0
     end
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|0
    end
   end
   local.get $2
   call $~lib/rt/pure/__release
   i32.const 1
  end
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint16Array,u16> (; 207 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Uint16Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Int16Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Int16Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Int16Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 87
  call $~lib/typedarray/Uint16Array#every
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 406
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 88
  call $~lib/typedarray/Uint16Array#every
  if
   i32.const 0
   i32.const 24
   i32.const 409
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int32Array,i32>~anonymous|0 (; 208 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 2
  i32.rem_s
  i32.eqz
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int32Array#every (; 209 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/typedarray/EVERY<~lib/typedarray/Int32Array,i32>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.tee $2
   i32.load offset=4
   local.set $3
   i32.const 0
   local.set $0
   local.get $2
   call $~lib/typedarray/Int32Array#get:length
   local.set $4
   loop $loop|0
    block $break|0
     local.get $0
     local.get $4
     i32.ge_s
     br_if $break|0
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
     i32.const 0
     global.get $~lib/error
     br_if $~lib/typedarray/EVERY<~lib/typedarray/Int32Array,i32>|inlined.0
     drop
     i32.eqz
     if
      local.get $2
      call $~lib/rt/pure/__release
      i32.const 0
      br $~lib/typedarray/EVERY<~lib/typedarray/Int32Array,i32>|inlined.0
     end
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|0
    end
   end
   local.get $2
   call $~lib/rt/pure/__release
   i32.const 1
  end
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int32Array,i32> (; 210 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Int32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Int32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Int32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 89
  call $~lib/typedarray/Int32Array#every
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 406
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 90
  call $~lib/typedarray/Int32Array#every
  if
   i32.const 0
   i32.const 24
   i32.const 409
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint32Array,u32> (; 211 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Uint32Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Int32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Int32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Int32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 91
  call $~lib/typedarray/Int32Array#every
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 406
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 92
  call $~lib/typedarray/Int32Array#every
  if
   i32.const 0
   i32.const 24
   i32.const 409
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int64Array,i64>~anonymous|0 (; 212 ;) (type $FUNCSIG$ijii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i64.const 2
  i64.rem_s
  i64.const 0
  i64.eq
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int64Array#every (; 213 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/typedarray/EVERY<~lib/typedarray/Int64Array,i64>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.tee $2
   i32.load offset=4
   local.set $3
   i32.const 0
   local.set $0
   local.get $2
   call $~lib/typedarray/Int64Array#get:length
   local.set $4
   loop $loop|0
    block $break|0
     local.get $0
     local.get $4
     i32.ge_s
     br_if $break|0
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
     i32.const 0
     global.get $~lib/error
     br_if $~lib/typedarray/EVERY<~lib/typedarray/Int64Array,i64>|inlined.0
     drop
     i32.eqz
     if
      local.get $2
      call $~lib/rt/pure/__release
      i32.const 0
      br $~lib/typedarray/EVERY<~lib/typedarray/Int64Array,i64>|inlined.0
     end
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|0
    end
   end
   local.get $2
   call $~lib/rt/pure/__release
   i32.const 1
  end
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int64Array,i64> (; 214 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i64.const 2
  call $~lib/typedarray/Int64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 1
  i64.const 4
  call $~lib/typedarray/Int64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 2
  i64.const 6
  call $~lib/typedarray/Int64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 93
  call $~lib/typedarray/Int64Array#every
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 406
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 94
  call $~lib/typedarray/Int64Array#every
  if
   i32.const 0
   i32.const 24
   i32.const 409
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint64Array,u64>~anonymous|0 (; 215 ;) (type $FUNCSIG$ijii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i64.const 2
  i64.rem_u
  i64.const 0
  i64.eq
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint64Array,u64> (; 216 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Uint64Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  i64.const 2
  call $~lib/typedarray/Int64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 1
  i64.const 4
  call $~lib/typedarray/Int64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 2
  i64.const 6
  call $~lib/typedarray/Int64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 95
  call $~lib/typedarray/Int64Array#every
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 406
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 96
  call $~lib/typedarray/Int64Array#every
  if
   i32.const 0
   i32.const 24
   i32.const 409
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/math/NativeMathf.mod (; 217 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.reinterpret_f32
  local.tee $2
  i32.const -2147483648
  i32.and
  local.set $4
  local.get $2
  i32.const 23
  i32.shr_u
  i32.const 255
  i32.and
  local.tee $3
  i32.const 255
  i32.eq
  if (result i32)
   i32.const 1
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
   local.get $2
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
   local.get $3
   if (result i32)
    local.get $2
    i32.const 8388607
    i32.and
    i32.const 8388608
    i32.or
   else    
    local.get $2
    i32.const 1
    local.get $3
    local.get $2
    i32.const 9
    i32.shl
    i32.clz
    i32.sub
    local.tee $3
    i32.sub
    i32.shl
   end
   local.set $1
   loop $continue|0
    local.get $3
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
     local.get $3
     i32.const 1
     i32.sub
     local.set $3
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
   local.tee $1
   i32.shl
   local.set $2
   local.get $3
   local.get $1
   i32.sub
   local.tee $1
   i32.const 0
   i32.gt_s
   if (result i32)
    local.get $2
    i32.const 8388608
    i32.sub
    local.get $1
    i32.const 23
    i32.shl
    i32.or
   else    
    local.get $2
    i32.const 1
    local.get $1
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
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Float32Array,f32>~anonymous|0 (; 218 ;) (type $FUNCSIG$ifii) (param $0 f32) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  call $~lib/math/NativeMathf.mod
  f32.const 0
  f32.eq
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Float32Array#every (; 219 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/typedarray/EVERY<~lib/typedarray/Float32Array,f32>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.tee $2
   i32.load offset=4
   local.set $3
   i32.const 0
   local.set $0
   local.get $2
   call $~lib/typedarray/Int32Array#get:length
   local.set $4
   loop $loop|0
    block $break|0
     local.get $0
     local.get $4
     i32.ge_s
     br_if $break|0
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
     i32.const 0
     global.get $~lib/error
     br_if $~lib/typedarray/EVERY<~lib/typedarray/Float32Array,f32>|inlined.0
     drop
     i32.eqz
     if
      local.get $2
      call $~lib/rt/pure/__release
      i32.const 0
      br $~lib/typedarray/EVERY<~lib/typedarray/Float32Array,f32>|inlined.0
     end
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|0
    end
   end
   local.get $2
   call $~lib/rt/pure/__release
   i32.const 1
  end
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Float32Array,f32> (; 220 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Float32Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  f32.const 2
  call $~lib/typedarray/Float32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 1
  f32.const 4
  call $~lib/typedarray/Float32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 2
  f32.const 6
  call $~lib/typedarray/Float32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 97
  call $~lib/typedarray/Float32Array#every
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 406
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 98
  call $~lib/typedarray/Float32Array#every
  if
   i32.const 0
   i32.const 24
   i32.const 409
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/math/NativeMath.mod (; 221 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
  (local $1 i64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  local.get $0
  i64.reinterpret_f64
  local.tee $2
  i64.const 63
  i64.shr_u
  local.set $4
  local.get $2
  i64.const 52
  i64.shr_u
  i64.const 2047
  i64.and
  local.tee $3
  i64.const 2047
  i64.eq
  if (result i32)
   i32.const 1
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
   local.get $2
   i64.const 1
   i64.shl
   local.tee $1
   i64.const -9223372036854775808
   i64.le_u
   if
    local.get $1
    i64.const -9223372036854775808
    i64.eq
    br_if $folding-inner0
    local.get $0
    return
   end
   local.get $3
   i64.eqz
   if (result i64)
    local.get $2
    i64.const 0
    local.get $3
    local.get $2
    i64.const 12
    i64.shl
    i64.clz
    i64.sub
    local.tee $3
    i64.sub
    i64.const 1
    i64.add
    i64.shl
   else    
    local.get $2
    i64.const 4503599627370495
    i64.and
    i64.const 4503599627370496
    i64.or
   end
   local.set $1
   loop $continue|0
    local.get $3
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
     local.get $3
     i64.const 1
     i64.sub
     local.set $3
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
   local.tee $1
   i64.shl
   local.set $2
   local.get $3
   local.get $1
   i64.sub
   local.tee $1
   i64.const 0
   i64.gt_s
   if (result i64)
    local.get $2
    i64.const 4503599627370496
    i64.sub
    local.get $1
    i64.const 52
    i64.shl
    i64.or
   else    
    local.get $2
    i64.const 0
    local.get $1
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
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Float64Array,f64>~anonymous|0 (; 222 ;) (type $FUNCSIG$idii) (param $0 f64) (param $1 i32) (param $2 i32) (result i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  call $~lib/math/NativeMath.mod
  f64.const 0
  f64.eq
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Float64Array#every (; 223 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $~lib/typedarray/EVERY<~lib/typedarray/Float64Array,f64>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.tee $2
   i32.load offset=4
   local.set $3
   i32.const 0
   local.set $0
   local.get $2
   call $~lib/typedarray/Int64Array#get:length
   local.set $4
   loop $loop|0
    block $break|0
     local.get $0
     local.get $4
     i32.ge_s
     br_if $break|0
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
     i32.const 0
     global.get $~lib/error
     br_if $~lib/typedarray/EVERY<~lib/typedarray/Float64Array,f64>|inlined.0
     drop
     i32.eqz
     if
      local.get $2
      call $~lib/rt/pure/__release
      i32.const 0
      br $~lib/typedarray/EVERY<~lib/typedarray/Float64Array,f64>|inlined.0
     end
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|0
    end
   end
   local.get $2
   call $~lib/rt/pure/__release
   i32.const 1
  end
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Float64Array,f64> (; 224 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 3
  call $~lib/typedarray/Float64Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  call $~lib/rt/pure/__retain
  local.tee $0
  i32.const 0
  f64.const 2
  call $~lib/typedarray/Float64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 1
  f64.const 4
  call $~lib/typedarray/Float64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 2
  f64.const 6
  call $~lib/typedarray/Float64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 99
  call $~lib/typedarray/Float64Array#every
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 406
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 100
  call $~lib/typedarray/Float64Array#every
  if
   i32.const 0
   i32.const 24
   i32.const 409
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Int8Array,i8>~anonymous|0 (; 225 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  global.get $std/typedarray/forEachValues
  local.get $1
  call $~lib/typedarray/Int32Array#__get
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 255
  i32.and
  local.get $3
  i32.const 255
  i32.and
  i32.ne
  if
   i32.const 1032
   i32.const 24
   i32.const 436
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  global.get $std/typedarray/forEachCallCount
  i32.ne
  if
   i32.const 1096
   i32.const 24
   i32.const 437
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  global.get $std/typedarray/forEachSelf
  i32.ne
  if
   i32.const 1160
   i32.const 24
   i32.const 438
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/typedarray/forEachCallCount
  i32.const 1
  i32.add
  global.set $std/typedarray/forEachCallCount
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int8Array#forEach (; 226 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  block $~lib/typedarray/FOREACH<~lib/typedarray/Int8Array,i8>|inlined.0
   local.get $0
   call $~lib/rt/pure/__retain
   local.tee $1
   i32.load offset=4
   local.set $2
   i32.const 0
   local.set $0
   local.get $1
   i32.load offset=8
   local.set $3
   loop $loop|0
    local.get $0
    local.get $3
    i32.lt_s
    if
     i32.const 3
     global.set $~lib/argc
     local.get $0
     local.get $2
     i32.add
     i32.load8_s
     local.get $0
     local.get $1
     call $std/typedarray/testArrayForEach<~lib/typedarray/Int8Array,i8>~anonymous|0
     global.get $~lib/error
     br_if $~lib/typedarray/FOREACH<~lib/typedarray/Int8Array,i8>|inlined.0
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|0
    end
   end
   local.get $1
   call $~lib/rt/pure/__release
  end
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Int8Array,i8> (; 227 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  global.set $std/typedarray/forEachCallCount
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  global.get $~lib/error
  if
   return
  end
  local.tee $2
  call $~lib/rt/pure/__retain
  local.tee $0
  global.set $std/typedarray/forEachSelf
  global.get $std/typedarray/forEachValues
  i32.const 0
  call $~lib/typedarray/Int32Array#__get
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 0
  local.get $1
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  call $~lib/typedarray/Int8Array#__set
  global.get $~lib/error
  if
   return
  end
  global.get $std/typedarray/forEachValues
  i32.const 1
  call $~lib/typedarray/Int32Array#__get
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 1
  local.get $1
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  call $~lib/typedarray/Int8Array#__set
  global.get $~lib/error
  if
   return
  end
  global.get $std/typedarray/forEachValues
  i32.const 2
  call $~lib/typedarray/Int32Array#__get
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 2
  local.get $1
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  call $~lib/typedarray/Int8Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  call $~lib/typedarray/Int8Array#forEach
  global.get $std/typedarray/forEachCallCount
  i32.const 3
  i32.ne
  if
   i32.const 1240
   i32.const 24
   i32.const 441
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint8Array#forEach (; 228 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/typedarray/FOREACH<~lib/typedarray/Uint8Array,u8>|inlined.0
   local.get $0
   call $~lib/rt/pure/__retain
   local.tee $2
   i32.load offset=4
   local.set $3
   i32.const 0
   local.set $0
   local.get $2
   i32.load offset=8
   local.set $4
   loop $loop|0
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
     call_indirect (type $FUNCSIG$viii)
     global.get $~lib/error
     br_if $~lib/typedarray/FOREACH<~lib/typedarray/Uint8Array,u8>|inlined.0
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|0
    end
   end
   local.get $2
   call $~lib/rt/pure/__release
  end
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Uint8Array,u8> (; 229 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  global.set $std/typedarray/forEachCallCount
  i32.const 3
  call $~lib/typedarray/Uint8Array#constructor
  global.get $~lib/error
  if
   return
  end
  local.tee $2
  call $~lib/rt/pure/__retain
  local.tee $0
  global.set $std/typedarray/forEachSelf
  global.get $std/typedarray/forEachValues
  i32.const 0
  call $~lib/typedarray/Int32Array#__get
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 0
  local.get $1
  i32.const 255
  i32.and
  call $~lib/typedarray/Int8Array#__set
  global.get $~lib/error
  if
   return
  end
  global.get $std/typedarray/forEachValues
  i32.const 1
  call $~lib/typedarray/Int32Array#__get
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 1
  local.get $1
  i32.const 255
  i32.and
  call $~lib/typedarray/Int8Array#__set
  global.get $~lib/error
  if
   return
  end
  global.get $std/typedarray/forEachValues
  i32.const 2
  call $~lib/typedarray/Int32Array#__get
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 2
  local.get $1
  i32.const 255
  i32.and
  call $~lib/typedarray/Int8Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 102
  call $~lib/typedarray/Uint8Array#forEach
  global.get $std/typedarray/forEachCallCount
  i32.const 3
  i32.ne
  if
   i32.const 1240
   i32.const 24
   i32.const 441
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Uint8ClampedArray,u8> (; 230 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  global.set $std/typedarray/forEachCallCount
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#constructor
  global.get $~lib/error
  if
   return
  end
  local.tee $2
  call $~lib/rt/pure/__retain
  local.tee $0
  global.set $std/typedarray/forEachSelf
  global.get $std/typedarray/forEachValues
  i32.const 0
  call $~lib/typedarray/Int32Array#__get
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 0
  local.get $1
  i32.const 255
  i32.and
  call $~lib/typedarray/Uint8ClampedArray#__set
  global.get $~lib/error
  if
   return
  end
  global.get $std/typedarray/forEachValues
  i32.const 1
  call $~lib/typedarray/Int32Array#__get
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 1
  local.get $1
  i32.const 255
  i32.and
  call $~lib/typedarray/Uint8ClampedArray#__set
  global.get $~lib/error
  if
   return
  end
  global.get $std/typedarray/forEachValues
  i32.const 2
  call $~lib/typedarray/Int32Array#__get
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 2
  local.get $1
  i32.const 255
  i32.and
  call $~lib/typedarray/Uint8ClampedArray#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 103
  call $~lib/typedarray/Uint8Array#forEach
  global.get $std/typedarray/forEachCallCount
  i32.const 3
  i32.ne
  if
   i32.const 1240
   i32.const 24
   i32.const 441
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Int16Array,i16>~anonymous|0 (; 231 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  global.get $std/typedarray/forEachValues
  local.get $1
  call $~lib/typedarray/Int32Array#__get
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 65535
  i32.and
  local.get $3
  i32.const 65535
  i32.and
  i32.ne
  if
   i32.const 1032
   i32.const 24
   i32.const 436
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  global.get $std/typedarray/forEachCallCount
  i32.ne
  if
   i32.const 1096
   i32.const 24
   i32.const 437
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  global.get $std/typedarray/forEachSelf
  i32.ne
  if
   i32.const 1160
   i32.const 24
   i32.const 438
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/typedarray/forEachCallCount
  i32.const 1
  i32.add
  global.set $std/typedarray/forEachCallCount
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int16Array#forEach (; 232 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  block $~lib/typedarray/FOREACH<~lib/typedarray/Int16Array,i16>|inlined.0
   local.get $0
   call $~lib/rt/pure/__retain
   local.tee $1
   i32.load offset=4
   local.set $2
   i32.const 0
   local.set $0
   local.get $1
   call $~lib/typedarray/Int16Array#get:length
   local.set $3
   loop $loop|0
    local.get $0
    local.get $3
    i32.lt_s
    if
     i32.const 3
     global.set $~lib/argc
     local.get $0
     i32.const 1
     i32.shl
     local.get $2
     i32.add
     i32.load16_s
     local.get $0
     local.get $1
     call $std/typedarray/testArrayForEach<~lib/typedarray/Int16Array,i16>~anonymous|0
     global.get $~lib/error
     br_if $~lib/typedarray/FOREACH<~lib/typedarray/Int16Array,i16>|inlined.0
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|0
    end
   end
   local.get $1
   call $~lib/rt/pure/__release
  end
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Int16Array,i16> (; 233 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  global.set $std/typedarray/forEachCallCount
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  global.get $~lib/error
  if
   return
  end
  local.tee $2
  call $~lib/rt/pure/__retain
  local.tee $0
  global.set $std/typedarray/forEachSelf
  global.get $std/typedarray/forEachValues
  i32.const 0
  call $~lib/typedarray/Int32Array#__get
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 0
  local.get $1
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  call $~lib/typedarray/Int16Array#__set
  global.get $~lib/error
  if
   return
  end
  global.get $std/typedarray/forEachValues
  i32.const 1
  call $~lib/typedarray/Int32Array#__get
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 1
  local.get $1
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  call $~lib/typedarray/Int16Array#__set
  global.get $~lib/error
  if
   return
  end
  global.get $std/typedarray/forEachValues
  i32.const 2
  call $~lib/typedarray/Int32Array#__get
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 2
  local.get $1
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  call $~lib/typedarray/Int16Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  call $~lib/typedarray/Int16Array#forEach
  global.get $std/typedarray/forEachCallCount
  i32.const 3
  i32.ne
  if
   i32.const 1240
   i32.const 24
   i32.const 441
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint16Array#forEach (; 234 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  block $~lib/typedarray/FOREACH<~lib/typedarray/Uint16Array,u16>|inlined.0
   local.get $0
   call $~lib/rt/pure/__retain
   local.tee $1
   i32.load offset=4
   local.set $2
   i32.const 0
   local.set $0
   local.get $1
   call $~lib/typedarray/Int16Array#get:length
   local.set $3
   loop $loop|0
    local.get $0
    local.get $3
    i32.lt_s
    if
     i32.const 3
     global.set $~lib/argc
     local.get $0
     i32.const 1
     i32.shl
     local.get $2
     i32.add
     i32.load16_u
     local.get $0
     local.get $1
     call $std/typedarray/testArrayForEach<~lib/typedarray/Int16Array,i16>~anonymous|0
     global.get $~lib/error
     br_if $~lib/typedarray/FOREACH<~lib/typedarray/Uint16Array,u16>|inlined.0
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|0
    end
   end
   local.get $1
   call $~lib/rt/pure/__release
  end
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Uint16Array,u16> (; 235 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  global.set $std/typedarray/forEachCallCount
  i32.const 3
  call $~lib/typedarray/Uint16Array#constructor
  global.get $~lib/error
  if
   return
  end
  local.tee $2
  call $~lib/rt/pure/__retain
  local.tee $0
  global.set $std/typedarray/forEachSelf
  global.get $std/typedarray/forEachValues
  i32.const 0
  call $~lib/typedarray/Int32Array#__get
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 0
  local.get $1
  i32.const 65535
  i32.and
  call $~lib/typedarray/Int16Array#__set
  global.get $~lib/error
  if
   return
  end
  global.get $std/typedarray/forEachValues
  i32.const 1
  call $~lib/typedarray/Int32Array#__get
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 1
  local.get $1
  i32.const 65535
  i32.and
  call $~lib/typedarray/Int16Array#__set
  global.get $~lib/error
  if
   return
  end
  global.get $std/typedarray/forEachValues
  i32.const 2
  call $~lib/typedarray/Int32Array#__get
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 2
  local.get $1
  i32.const 65535
  i32.and
  call $~lib/typedarray/Int16Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  call $~lib/typedarray/Uint16Array#forEach
  global.get $std/typedarray/forEachCallCount
  i32.const 3
  i32.ne
  if
   i32.const 1240
   i32.const 24
   i32.const 441
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Int32Array,i32>~anonymous|0 (; 236 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  global.get $std/typedarray/forEachValues
  local.get $1
  call $~lib/typedarray/Int32Array#__get
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.get $3
  i32.ne
  if
   i32.const 1032
   i32.const 24
   i32.const 436
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  global.get $std/typedarray/forEachCallCount
  i32.ne
  if
   i32.const 1096
   i32.const 24
   i32.const 437
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  global.get $std/typedarray/forEachSelf
  i32.ne
  if
   i32.const 1160
   i32.const 24
   i32.const 438
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/typedarray/forEachCallCount
  i32.const 1
  i32.add
  global.set $std/typedarray/forEachCallCount
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int32Array#forEach (; 237 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/typedarray/FOREACH<~lib/typedarray/Int32Array,i32>|inlined.0
   local.get $0
   call $~lib/rt/pure/__retain
   local.tee $2
   i32.load offset=4
   local.set $3
   i32.const 0
   local.set $0
   local.get $2
   call $~lib/typedarray/Int32Array#get:length
   local.set $4
   loop $loop|0
    block $break|0
     local.get $0
     local.get $4
     i32.ge_s
     br_if $break|0
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
     call_indirect (type $FUNCSIG$viii)
     global.get $~lib/error
     br_if $~lib/typedarray/FOREACH<~lib/typedarray/Int32Array,i32>|inlined.0
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|0
    end
   end
   local.get $2
   call $~lib/rt/pure/__release
  end
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Int32Array,i32> (; 238 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  global.set $std/typedarray/forEachCallCount
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  global.get $~lib/error
  if
   return
  end
  local.tee $2
  call $~lib/rt/pure/__retain
  local.tee $0
  global.set $std/typedarray/forEachSelf
  global.get $std/typedarray/forEachValues
  i32.const 0
  call $~lib/typedarray/Int32Array#__get
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 0
  local.get $1
  call $~lib/typedarray/Int32Array#__set
  global.get $~lib/error
  if
   return
  end
  global.get $std/typedarray/forEachValues
  i32.const 1
  call $~lib/typedarray/Int32Array#__get
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 1
  local.get $1
  call $~lib/typedarray/Int32Array#__set
  global.get $~lib/error
  if
   return
  end
  global.get $std/typedarray/forEachValues
  i32.const 2
  call $~lib/typedarray/Int32Array#__get
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 2
  local.get $1
  call $~lib/typedarray/Int32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 106
  call $~lib/typedarray/Int32Array#forEach
  global.get $std/typedarray/forEachCallCount
  i32.const 3
  i32.ne
  if
   i32.const 1240
   i32.const 24
   i32.const 441
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Uint32Array,u32> (; 239 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  global.set $std/typedarray/forEachCallCount
  i32.const 3
  call $~lib/typedarray/Uint32Array#constructor
  global.get $~lib/error
  if
   return
  end
  local.tee $2
  call $~lib/rt/pure/__retain
  local.tee $0
  global.set $std/typedarray/forEachSelf
  global.get $std/typedarray/forEachValues
  i32.const 0
  call $~lib/typedarray/Int32Array#__get
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 0
  local.get $1
  call $~lib/typedarray/Int32Array#__set
  global.get $~lib/error
  if
   return
  end
  global.get $std/typedarray/forEachValues
  i32.const 1
  call $~lib/typedarray/Int32Array#__get
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 1
  local.get $1
  call $~lib/typedarray/Int32Array#__set
  global.get $~lib/error
  if
   return
  end
  global.get $std/typedarray/forEachValues
  i32.const 2
  call $~lib/typedarray/Int32Array#__get
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 2
  local.get $1
  call $~lib/typedarray/Int32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 107
  call $~lib/typedarray/Int32Array#forEach
  global.get $std/typedarray/forEachCallCount
  i32.const 3
  i32.ne
  if
   i32.const 1240
   i32.const 24
   i32.const 441
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Int64Array,i64>~anonymous|0 (; 240 ;) (type $FUNCSIG$vjii) (param $0 i64) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  global.get $std/typedarray/forEachValues
  local.get $1
  call $~lib/typedarray/Int32Array#__get
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.get $3
  i64.extend_i32_s
  i64.ne
  if
   i32.const 1032
   i32.const 24
   i32.const 436
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  global.get $std/typedarray/forEachCallCount
  i32.ne
  if
   i32.const 1096
   i32.const 24
   i32.const 437
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  global.get $std/typedarray/forEachSelf
  i32.ne
  if
   i32.const 1160
   i32.const 24
   i32.const 438
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/typedarray/forEachCallCount
  i32.const 1
  i32.add
  global.set $std/typedarray/forEachCallCount
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int64Array#forEach (; 241 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  block $~lib/typedarray/FOREACH<~lib/typedarray/Int64Array,i64>|inlined.0
   local.get $0
   call $~lib/rt/pure/__retain
   local.tee $2
   i32.load offset=4
   local.set $3
   i32.const 0
   local.set $0
   local.get $2
   call $~lib/typedarray/Int64Array#get:length
   local.set $4
   loop $loop|0
    block $break|0
     local.get $0
     local.get $4
     i32.ge_s
     br_if $break|0
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
     call_indirect (type $FUNCSIG$vjii)
     global.get $~lib/error
     br_if $~lib/typedarray/FOREACH<~lib/typedarray/Int64Array,i64>|inlined.0
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|0
    end
   end
   local.get $2
   call $~lib/rt/pure/__release
  end
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Int64Array,i64> (; 242 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  global.set $std/typedarray/forEachCallCount
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  global.get $~lib/error
  if
   return
  end
  local.tee $2
  call $~lib/rt/pure/__retain
  local.tee $0
  global.set $std/typedarray/forEachSelf
  global.get $std/typedarray/forEachValues
  i32.const 0
  call $~lib/typedarray/Int32Array#__get
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 0
  local.get $1
  i64.extend_i32_s
  call $~lib/typedarray/Int64Array#__set
  global.get $~lib/error
  if
   return
  end
  global.get $std/typedarray/forEachValues
  i32.const 1
  call $~lib/typedarray/Int32Array#__get
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 1
  local.get $1
  i64.extend_i32_s
  call $~lib/typedarray/Int64Array#__set
  global.get $~lib/error
  if
   return
  end
  global.get $std/typedarray/forEachValues
  i32.const 2
  call $~lib/typedarray/Int32Array#__get
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 2
  local.get $1
  i64.extend_i32_s
  call $~lib/typedarray/Int64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 108
  call $~lib/typedarray/Int64Array#forEach
  global.get $std/typedarray/forEachCallCount
  i32.const 3
  i32.ne
  if
   i32.const 1240
   i32.const 24
   i32.const 441
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Uint64Array,u64> (; 243 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  global.set $std/typedarray/forEachCallCount
  i32.const 3
  call $~lib/typedarray/Uint64Array#constructor
  global.get $~lib/error
  if
   return
  end
  local.tee $2
  call $~lib/rt/pure/__retain
  local.tee $0
  global.set $std/typedarray/forEachSelf
  global.get $std/typedarray/forEachValues
  i32.const 0
  call $~lib/typedarray/Int32Array#__get
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 0
  local.get $1
  i64.extend_i32_s
  call $~lib/typedarray/Int64Array#__set
  global.get $~lib/error
  if
   return
  end
  global.get $std/typedarray/forEachValues
  i32.const 1
  call $~lib/typedarray/Int32Array#__get
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 1
  local.get $1
  i64.extend_i32_s
  call $~lib/typedarray/Int64Array#__set
  global.get $~lib/error
  if
   return
  end
  global.get $std/typedarray/forEachValues
  i32.const 2
  call $~lib/typedarray/Int32Array#__get
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 2
  local.get $1
  i64.extend_i32_s
  call $~lib/typedarray/Int64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 109
  call $~lib/typedarray/Int64Array#forEach
  global.get $std/typedarray/forEachCallCount
  i32.const 3
  i32.ne
  if
   i32.const 1240
   i32.const 24
   i32.const 441
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Float32Array,f32>~anonymous|0 (; 244 ;) (type $FUNCSIG$vfii) (param $0 f32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  global.get $std/typedarray/forEachValues
  local.get $1
  call $~lib/typedarray/Int32Array#__get
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.get $3
  f32.convert_i32_s
  f32.ne
  if
   i32.const 1032
   i32.const 24
   i32.const 436
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  global.get $std/typedarray/forEachCallCount
  i32.ne
  if
   i32.const 1096
   i32.const 24
   i32.const 437
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  global.get $std/typedarray/forEachSelf
  i32.ne
  if
   i32.const 1160
   i32.const 24
   i32.const 438
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/typedarray/forEachCallCount
  i32.const 1
  i32.add
  global.set $std/typedarray/forEachCallCount
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Float32Array#forEach (; 245 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  block $~lib/typedarray/FOREACH<~lib/typedarray/Float32Array,f32>|inlined.0
   local.get $0
   call $~lib/rt/pure/__retain
   local.tee $1
   i32.load offset=4
   local.set $2
   i32.const 0
   local.set $0
   local.get $1
   call $~lib/typedarray/Int32Array#get:length
   local.set $3
   loop $loop|0
    local.get $0
    local.get $3
    i32.lt_s
    if
     i32.const 3
     global.set $~lib/argc
     local.get $0
     i32.const 2
     i32.shl
     local.get $2
     i32.add
     f32.load
     local.get $0
     local.get $1
     call $std/typedarray/testArrayForEach<~lib/typedarray/Float32Array,f32>~anonymous|0
     global.get $~lib/error
     br_if $~lib/typedarray/FOREACH<~lib/typedarray/Float32Array,f32>|inlined.0
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|0
    end
   end
   local.get $1
   call $~lib/rt/pure/__release
  end
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Float32Array,f32> (; 246 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  global.set $std/typedarray/forEachCallCount
  i32.const 3
  call $~lib/typedarray/Float32Array#constructor
  global.get $~lib/error
  if
   return
  end
  local.tee $2
  call $~lib/rt/pure/__retain
  local.tee $0
  global.set $std/typedarray/forEachSelf
  global.get $std/typedarray/forEachValues
  i32.const 0
  call $~lib/typedarray/Int32Array#__get
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 0
  local.get $1
  f32.convert_i32_s
  call $~lib/typedarray/Float32Array#__set
  global.get $~lib/error
  if
   return
  end
  global.get $std/typedarray/forEachValues
  i32.const 1
  call $~lib/typedarray/Int32Array#__get
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 1
  local.get $1
  f32.convert_i32_s
  call $~lib/typedarray/Float32Array#__set
  global.get $~lib/error
  if
   return
  end
  global.get $std/typedarray/forEachValues
  i32.const 2
  call $~lib/typedarray/Int32Array#__get
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 2
  local.get $1
  f32.convert_i32_s
  call $~lib/typedarray/Float32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  call $~lib/typedarray/Float32Array#forEach
  global.get $std/typedarray/forEachCallCount
  i32.const 3
  i32.ne
  if
   i32.const 1240
   i32.const 24
   i32.const 441
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Float64Array,f64>~anonymous|0 (; 247 ;) (type $FUNCSIG$vdii) (param $0 f64) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  global.get $std/typedarray/forEachValues
  local.get $1
  call $~lib/typedarray/Int32Array#__get
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.get $3
  f64.convert_i32_s
  f64.ne
  if
   i32.const 1032
   i32.const 24
   i32.const 436
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  global.get $std/typedarray/forEachCallCount
  i32.ne
  if
   i32.const 1096
   i32.const 24
   i32.const 437
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  global.get $std/typedarray/forEachSelf
  i32.ne
  if
   i32.const 1160
   i32.const 24
   i32.const 438
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/typedarray/forEachCallCount
  i32.const 1
  i32.add
  global.set $std/typedarray/forEachCallCount
  local.get $2
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Float64Array#forEach (; 248 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  block $~lib/typedarray/FOREACH<~lib/typedarray/Float64Array,f64>|inlined.0
   local.get $0
   call $~lib/rt/pure/__retain
   local.tee $1
   i32.load offset=4
   local.set $2
   i32.const 0
   local.set $0
   local.get $1
   call $~lib/typedarray/Int64Array#get:length
   local.set $3
   loop $loop|0
    local.get $0
    local.get $3
    i32.lt_s
    if
     i32.const 3
     global.set $~lib/argc
     local.get $0
     i32.const 3
     i32.shl
     local.get $2
     i32.add
     f64.load
     local.get $0
     local.get $1
     call $std/typedarray/testArrayForEach<~lib/typedarray/Float64Array,f64>~anonymous|0
     global.get $~lib/error
     br_if $~lib/typedarray/FOREACH<~lib/typedarray/Float64Array,f64>|inlined.0
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|0
    end
   end
   local.get $1
   call $~lib/rt/pure/__release
  end
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Float64Array,f64> (; 249 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  global.set $std/typedarray/forEachCallCount
  i32.const 3
  call $~lib/typedarray/Float64Array#constructor
  global.get $~lib/error
  if
   return
  end
  local.tee $2
  call $~lib/rt/pure/__retain
  local.tee $0
  global.set $std/typedarray/forEachSelf
  global.get $std/typedarray/forEachValues
  i32.const 0
  call $~lib/typedarray/Int32Array#__get
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 0
  local.get $1
  f64.convert_i32_s
  call $~lib/typedarray/Float64Array#__set
  global.get $~lib/error
  if
   return
  end
  global.get $std/typedarray/forEachValues
  i32.const 1
  call $~lib/typedarray/Int32Array#__get
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 1
  local.get $1
  f64.convert_i32_s
  call $~lib/typedarray/Float64Array#__set
  global.get $~lib/error
  if
   return
  end
  global.get $std/typedarray/forEachValues
  i32.const 2
  call $~lib/typedarray/Int32Array#__get
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $0
  i32.const 2
  local.get $1
  f64.convert_i32_s
  call $~lib/typedarray/Float64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $0
  call $~lib/typedarray/Float64Array#forEach
  global.get $std/typedarray/forEachCallCount
  i32.const 3
  i32.ne
  if
   i32.const 1240
   i32.const 24
   i32.const 441
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int8Array#reverse (; 250 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $3
  i32.load offset=4
  local.set $4
  i32.const 0
  local.set $0
  local.get $3
  i32.load offset=8
  i32.const 1
  i32.sub
  local.set $1
  loop $loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $0
    local.get $4
    i32.add
    local.tee $2
    i32.load8_s
    local.set $5
    local.get $2
    local.get $1
    local.get $4
    i32.add
    local.tee $2
    i32.load8_s
    i32.store8
    local.get $2
    local.get $5
    i32.store8
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    i32.const 1
    i32.sub
    local.set $1
    br $loop|0
   end
  end
  local.get $3
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Int8Array,i8> (; 251 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $std/typedarray/testArrayReverseValues
  call $~lib/rt/pure/__retain
  local.set $3
  i32.const 9
  call $~lib/typedarray/Int8Array#constructor
  global.get $~lib/error
  if
   return
  end
  local.tee $6
  call $~lib/rt/pure/__retain
  local.set $4
  i32.const 9
  call $~lib/typedarray/Int8Array#constructor
  global.get $~lib/error
  if
   return
  end
  local.tee $7
  call $~lib/rt/pure/__retain
  local.set $5
  i32.const 0
  local.set $0
  loop $loop|0
   block $break|0
    local.get $0
    i32.const 9
    i32.ge_s
    br_if $break|0
    local.get $3
    local.get $0
    call $~lib/typedarray/Int32Array#__get
    local.set $1
    global.get $~lib/error
    if
     return
    end
    local.get $4
    local.get $0
    local.get $1
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    call $~lib/typedarray/Int8Array#__set
    global.get $~lib/error
    if
     return
    end
    local.get $3
    local.get $0
    call $~lib/typedarray/Int32Array#__get
    local.set $1
    global.get $~lib/error
    if
     return
    end
    local.get $5
    local.get $0
    local.get $1
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    call $~lib/typedarray/Int8Array#__set
    global.get $~lib/error
    if
     return
    else     
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|0
    end
    unreachable
   end
  end
  local.get $4
  call $~lib/typedarray/Int8Array#reverse
  call $~lib/rt/pure/__release
  i32.const 0
  local.set $0
  loop $loop|1
   block $break|1
    local.get $0
    i32.const 9
    i32.ge_s
    br_if $break|1
    local.get $4
    local.get $0
    call $~lib/typedarray/Int8Array#__get
    global.get $~lib/error
    if
     return
    end
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    local.get $3
    i32.const 8
    local.get $0
    i32.sub
    call $~lib/typedarray/Int32Array#__get
    global.get $~lib/error
    if
     return
    end
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    i32.ne
    if
     i32.const 1400
     i32.const 24
     i32.const 471
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else     
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|1
    end
    unreachable
   end
  end
  local.get $5
  i32.const 4
  i32.const 8
  call $~lib/typedarray/Int8Array#subarray
  local.tee $1
  call $~lib/typedarray/Int8Array#reverse
  local.tee $0
  i32.const 0
  call $~lib/typedarray/Int8Array#__get
  global.get $~lib/error
  if
   return
  end
  i32.const 255
  i32.and
  i32.const 8
  i32.ne
  if
   i32.const 1488
   i32.const 24
   i32.const 476
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Int8Array#__get
  global.get $~lib/error
  if
   return
  end
  i32.const 255
  i32.and
  i32.const 7
  i32.ne
  if
   i32.const 1488
   i32.const 24
   i32.const 477
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Int8Array#__get
  global.get $~lib/error
  if
   return
  end
  i32.const 255
  i32.and
  i32.const 6
  i32.ne
  if
   i32.const 1488
   i32.const 24
   i32.const 478
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/typedarray/Int8Array#__get
  global.get $~lib/error
  if
   return
  end
  i32.const 255
  i32.and
  i32.const 5
  i32.ne
  if
   i32.const 1488
   i32.const 24
   i32.const 479
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint8Array#reverse (; 252 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $3
  i32.load offset=4
  local.set $4
  i32.const 0
  local.set $0
  local.get $3
  i32.load offset=8
  i32.const 1
  i32.sub
  local.set $1
  loop $loop|0
   local.get $0
   local.get $1
   i32.lt_s
   if
    local.get $0
    local.get $4
    i32.add
    local.tee $2
    i32.load8_u
    local.set $5
    local.get $2
    local.get $1
    local.get $4
    i32.add
    local.tee $2
    i32.load8_u
    i32.store8
    local.get $2
    local.get $5
    i32.store8
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    i32.const 1
    i32.sub
    local.set $1
    br $loop|0
   end
  end
  local.get $3
 )
 (func $~lib/typedarray/Uint8Array#subarray (; 253 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 8
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $2
  i32.load offset=8
  local.tee $0
  i32.const 8
  local.get $0
  i32.lt_s
  select
  local.tee $1
  i32.const 4
  local.get $0
  i32.const 4
  local.get $0
  i32.lt_s
  select
  local.tee $3
  local.get $1
  local.get $3
  i32.gt_s
  select
  local.set $4
  i32.const 12
  i32.const 6
  call $~lib/rt/tlsf/__alloc
  local.set $0
  block $~lib/typedarray/SUBARRAY<~lib/typedarray/Uint8Array,u8>|inlined.0
   global.get $~lib/error
   if
    i32.const 0
    local.set $0
    br $~lib/typedarray/SUBARRAY<~lib/typedarray/Uint8Array,u8>|inlined.0
   end
   local.get $0
   call $~lib/rt/pure/__retain
   local.tee $0
   local.get $2
   i32.load
   local.tee $1
   local.get $0
   i32.load
   local.tee $6
   i32.ne
   if
    local.get $1
    call $~lib/rt/pure/__retain
    drop
    local.get $6
    call $~lib/rt/pure/__release
   end
   local.get $1
   i32.store
   local.get $0
   local.get $2
   i32.load offset=4
   local.get $3
   i32.add
   i32.store offset=4
   local.get $0
   local.get $4
   local.get $3
   i32.sub
   i32.store offset=8
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $0
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Uint8Array,u8> (; 254 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $std/typedarray/testArrayReverseValues
  call $~lib/rt/pure/__retain
  local.set $3
  i32.const 9
  call $~lib/typedarray/Uint8Array#constructor
  global.get $~lib/error
  if
   return
  end
  local.tee $6
  call $~lib/rt/pure/__retain
  local.set $4
  i32.const 9
  call $~lib/typedarray/Uint8Array#constructor
  global.get $~lib/error
  if
   return
  end
  local.tee $7
  call $~lib/rt/pure/__retain
  local.set $5
  i32.const 0
  local.set $0
  loop $loop|0
   block $break|0
    local.get $0
    i32.const 9
    i32.ge_s
    br_if $break|0
    local.get $3
    local.get $0
    call $~lib/typedarray/Int32Array#__get
    local.set $1
    global.get $~lib/error
    if
     return
    end
    local.get $4
    local.get $0
    local.get $1
    i32.const 255
    i32.and
    call $~lib/typedarray/Int8Array#__set
    global.get $~lib/error
    if
     return
    end
    local.get $3
    local.get $0
    call $~lib/typedarray/Int32Array#__get
    local.set $1
    global.get $~lib/error
    if
     return
    end
    local.get $5
    local.get $0
    local.get $1
    i32.const 255
    i32.and
    call $~lib/typedarray/Int8Array#__set
    global.get $~lib/error
    if
     return
    else     
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|0
    end
    unreachable
   end
  end
  local.get $4
  call $~lib/typedarray/Uint8Array#reverse
  call $~lib/rt/pure/__release
  i32.const 0
  local.set $0
  loop $loop|1
   block $break|1
    local.get $0
    i32.const 9
    i32.ge_s
    br_if $break|1
    local.get $4
    local.get $0
    call $~lib/typedarray/Uint8ClampedArray#__get
    global.get $~lib/error
    if
     return
    end
    i32.const 255
    i32.and
    local.get $3
    i32.const 8
    local.get $0
    i32.sub
    call $~lib/typedarray/Int32Array#__get
    global.get $~lib/error
    if
     return
    end
    i32.const 255
    i32.and
    i32.ne
    if
     i32.const 1400
     i32.const 24
     i32.const 471
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else     
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|1
    end
    unreachable
   end
  end
  local.get $5
  call $~lib/typedarray/Uint8Array#subarray
  local.tee $1
  call $~lib/typedarray/Uint8Array#reverse
  local.tee $0
  i32.const 0
  call $~lib/typedarray/Uint8ClampedArray#__get
  global.get $~lib/error
  if
   return
  end
  i32.const 255
  i32.and
  i32.const 8
  i32.ne
  if
   i32.const 1488
   i32.const 24
   i32.const 476
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Uint8ClampedArray#__get
  global.get $~lib/error
  if
   return
  end
  i32.const 255
  i32.and
  i32.const 7
  i32.ne
  if
   i32.const 1488
   i32.const 24
   i32.const 477
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Uint8ClampedArray#__get
  global.get $~lib/error
  if
   return
  end
  i32.const 255
  i32.and
  i32.const 6
  i32.ne
  if
   i32.const 1488
   i32.const 24
   i32.const 478
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#__get
  global.get $~lib/error
  if
   return
  end
  i32.const 255
  i32.and
  i32.const 5
  i32.ne
  if
   i32.const 1488
   i32.const 24
   i32.const 479
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint8ClampedArray#subarray (; 255 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 8
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $2
  i32.load offset=8
  local.tee $0
  i32.const 8
  local.get $0
  i32.lt_s
  select
  local.tee $1
  i32.const 4
  local.get $0
  i32.const 4
  local.get $0
  i32.lt_s
  select
  local.tee $3
  local.get $1
  local.get $3
  i32.gt_s
  select
  local.set $4
  i32.const 12
  i32.const 7
  call $~lib/rt/tlsf/__alloc
  local.set $0
  block $~lib/typedarray/SUBARRAY<~lib/typedarray/Uint8ClampedArray,u8>|inlined.0
   global.get $~lib/error
   if
    i32.const 0
    local.set $0
    br $~lib/typedarray/SUBARRAY<~lib/typedarray/Uint8ClampedArray,u8>|inlined.0
   end
   local.get $0
   call $~lib/rt/pure/__retain
   local.tee $0
   local.get $2
   i32.load
   local.tee $1
   local.get $0
   i32.load
   local.tee $6
   i32.ne
   if
    local.get $1
    call $~lib/rt/pure/__retain
    drop
    local.get $6
    call $~lib/rt/pure/__release
   end
   local.get $1
   i32.store
   local.get $0
   local.get $2
   i32.load offset=4
   local.get $3
   i32.add
   i32.store offset=4
   local.get $0
   local.get $4
   local.get $3
   i32.sub
   i32.store offset=8
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $0
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Uint8ClampedArray,u8> (; 256 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $std/typedarray/testArrayReverseValues
  call $~lib/rt/pure/__retain
  local.set $3
  i32.const 9
  call $~lib/typedarray/Uint8ClampedArray#constructor
  global.get $~lib/error
  if
   return
  end
  local.tee $6
  call $~lib/rt/pure/__retain
  local.set $4
  i32.const 9
  call $~lib/typedarray/Uint8ClampedArray#constructor
  global.get $~lib/error
  if
   return
  end
  local.tee $7
  call $~lib/rt/pure/__retain
  local.set $5
  i32.const 0
  local.set $0
  loop $loop|0
   block $break|0
    local.get $0
    i32.const 9
    i32.ge_s
    br_if $break|0
    local.get $3
    local.get $0
    call $~lib/typedarray/Int32Array#__get
    local.set $1
    global.get $~lib/error
    if
     return
    end
    local.get $4
    local.get $0
    local.get $1
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8ClampedArray#__set
    global.get $~lib/error
    if
     return
    end
    local.get $3
    local.get $0
    call $~lib/typedarray/Int32Array#__get
    local.set $1
    global.get $~lib/error
    if
     return
    end
    local.get $5
    local.get $0
    local.get $1
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8ClampedArray#__set
    global.get $~lib/error
    if
     return
    else     
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|0
    end
    unreachable
   end
  end
  local.get $4
  call $~lib/typedarray/Uint8Array#reverse
  call $~lib/rt/pure/__release
  i32.const 0
  local.set $0
  loop $loop|1
   block $break|1
    local.get $0
    i32.const 9
    i32.ge_s
    br_if $break|1
    local.get $4
    local.get $0
    call $~lib/typedarray/Uint8ClampedArray#__get
    global.get $~lib/error
    if
     return
    end
    i32.const 255
    i32.and
    local.get $3
    i32.const 8
    local.get $0
    i32.sub
    call $~lib/typedarray/Int32Array#__get
    global.get $~lib/error
    if
     return
    end
    i32.const 255
    i32.and
    i32.ne
    if
     i32.const 1400
     i32.const 24
     i32.const 471
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else     
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|1
    end
    unreachable
   end
  end
  local.get $5
  call $~lib/typedarray/Uint8ClampedArray#subarray
  local.tee $1
  call $~lib/typedarray/Uint8Array#reverse
  local.tee $0
  i32.const 0
  call $~lib/typedarray/Uint8ClampedArray#__get
  global.get $~lib/error
  if
   return
  end
  i32.const 255
  i32.and
  i32.const 8
  i32.ne
  if
   i32.const 1488
   i32.const 24
   i32.const 476
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Uint8ClampedArray#__get
  global.get $~lib/error
  if
   return
  end
  i32.const 255
  i32.and
  i32.const 7
  i32.ne
  if
   i32.const 1488
   i32.const 24
   i32.const 477
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Uint8ClampedArray#__get
  global.get $~lib/error
  if
   return
  end
  i32.const 255
  i32.and
  i32.const 6
  i32.ne
  if
   i32.const 1488
   i32.const 24
   i32.const 478
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#__get
  global.get $~lib/error
  if
   return
  end
  i32.const 255
  i32.and
  i32.const 5
  i32.ne
  if
   i32.const 1488
   i32.const 24
   i32.const 479
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int16Array#reverse (; 257 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $3
  i32.load offset=4
  local.set $4
  i32.const 0
  local.set $0
  local.get $3
  call $~lib/typedarray/Int16Array#get:length
  i32.const 1
  i32.sub
  local.set $1
  loop $loop|0
   block $break|0
    local.get $0
    local.get $1
    i32.ge_s
    br_if $break|0
    local.get $0
    i32.const 1
    i32.shl
    local.get $4
    i32.add
    local.tee $2
    i32.load16_s
    local.set $5
    local.get $2
    local.get $1
    i32.const 1
    i32.shl
    local.get $4
    i32.add
    local.tee $2
    i32.load16_s
    i32.store16
    local.get $2
    local.get $5
    i32.store16
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    i32.const 1
    i32.sub
    local.set $1
    br $loop|0
   end
  end
  local.get $3
 )
 (func $~lib/typedarray/Int16Array#subarray (; 258 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 4
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $2
  call $~lib/typedarray/Int16Array#get:length
  local.tee $1
  i32.const 4
  local.get $1
  i32.lt_s
  select
  local.set $0
  i32.const 8
  local.get $1
  i32.const 8
  local.get $1
  i32.lt_s
  select
  local.tee $1
  local.get $0
  local.get $1
  local.get $0
  i32.gt_s
  select
  local.set $4
  i32.const 12
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  local.set $1
  block $~lib/typedarray/SUBARRAY<~lib/typedarray/Int16Array,i16>|inlined.0
   global.get $~lib/error
   if
    i32.const 0
    local.set $1
    br $~lib/typedarray/SUBARRAY<~lib/typedarray/Int16Array,i16>|inlined.0
   end
   local.get $1
   call $~lib/rt/pure/__retain
   local.tee $1
   local.get $1
   i32.load
   local.tee $6
   local.get $2
   i32.load
   local.tee $3
   i32.ne
   if
    local.get $3
    call $~lib/rt/pure/__retain
    drop
    local.get $6
    call $~lib/rt/pure/__release
   end
   local.get $3
   i32.store
   local.get $1
   local.get $2
   i32.load offset=4
   local.get $0
   i32.const 1
   i32.shl
   i32.add
   i32.store offset=4
   local.get $1
   local.get $4
   local.get $0
   i32.sub
   i32.const 1
   i32.shl
   i32.store offset=8
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Int16Array,i16> (; 259 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $std/typedarray/testArrayReverseValues
  call $~lib/rt/pure/__retain
  local.set $3
  i32.const 9
  call $~lib/typedarray/Int16Array#constructor
  global.get $~lib/error
  if
   return
  end
  local.tee $6
  call $~lib/rt/pure/__retain
  local.set $4
  i32.const 9
  call $~lib/typedarray/Int16Array#constructor
  global.get $~lib/error
  if
   return
  end
  local.tee $7
  call $~lib/rt/pure/__retain
  local.set $5
  i32.const 0
  local.set $0
  loop $loop|0
   block $break|0
    local.get $0
    i32.const 9
    i32.ge_s
    br_if $break|0
    local.get $3
    local.get $0
    call $~lib/typedarray/Int32Array#__get
    local.set $1
    global.get $~lib/error
    if
     return
    end
    local.get $4
    local.get $0
    local.get $1
    i32.const 16
    i32.shl
    i32.const 16
    i32.shr_s
    call $~lib/typedarray/Int16Array#__set
    global.get $~lib/error
    if
     return
    end
    local.get $3
    local.get $0
    call $~lib/typedarray/Int32Array#__get
    local.set $1
    global.get $~lib/error
    if
     return
    end
    local.get $5
    local.get $0
    local.get $1
    i32.const 16
    i32.shl
    i32.const 16
    i32.shr_s
    call $~lib/typedarray/Int16Array#__set
    global.get $~lib/error
    if
     return
    else     
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|0
    end
    unreachable
   end
  end
  local.get $4
  call $~lib/typedarray/Int16Array#reverse
  call $~lib/rt/pure/__release
  i32.const 0
  local.set $0
  loop $loop|1
   block $break|1
    local.get $0
    i32.const 9
    i32.ge_s
    br_if $break|1
    local.get $4
    local.get $0
    call $~lib/typedarray/Int16Array#__get
    global.get $~lib/error
    if
     return
    end
    i32.const 16
    i32.shl
    i32.const 16
    i32.shr_s
    local.get $3
    i32.const 8
    local.get $0
    i32.sub
    call $~lib/typedarray/Int32Array#__get
    global.get $~lib/error
    if
     return
    end
    i32.const 16
    i32.shl
    i32.const 16
    i32.shr_s
    i32.ne
    if
     i32.const 1400
     i32.const 24
     i32.const 471
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else     
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|1
    end
    unreachable
   end
  end
  local.get $5
  call $~lib/typedarray/Int16Array#subarray
  local.tee $1
  call $~lib/typedarray/Int16Array#reverse
  local.tee $0
  i32.const 0
  call $~lib/typedarray/Int16Array#__get
  global.get $~lib/error
  if
   return
  end
  i32.const 65535
  i32.and
  i32.const 8
  i32.ne
  if
   i32.const 1488
   i32.const 24
   i32.const 476
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Int16Array#__get
  global.get $~lib/error
  if
   return
  end
  i32.const 65535
  i32.and
  i32.const 7
  i32.ne
  if
   i32.const 1488
   i32.const 24
   i32.const 477
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Int16Array#__get
  global.get $~lib/error
  if
   return
  end
  i32.const 65535
  i32.and
  i32.const 6
  i32.ne
  if
   i32.const 1488
   i32.const 24
   i32.const 478
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/typedarray/Int16Array#__get
  global.get $~lib/error
  if
   return
  end
  i32.const 65535
  i32.and
  i32.const 5
  i32.ne
  if
   i32.const 1488
   i32.const 24
   i32.const 479
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint16Array#reverse (; 260 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $3
  i32.load offset=4
  local.set $4
  i32.const 0
  local.set $0
  local.get $3
  call $~lib/typedarray/Int16Array#get:length
  i32.const 1
  i32.sub
  local.set $1
  loop $loop|0
   block $break|0
    local.get $0
    local.get $1
    i32.ge_s
    br_if $break|0
    local.get $0
    i32.const 1
    i32.shl
    local.get $4
    i32.add
    local.tee $2
    i32.load16_u
    local.set $5
    local.get $2
    local.get $1
    i32.const 1
    i32.shl
    local.get $4
    i32.add
    local.tee $2
    i32.load16_u
    i32.store16
    local.get $2
    local.get $5
    i32.store16
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    i32.const 1
    i32.sub
    local.set $1
    br $loop|0
   end
  end
  local.get $3
 )
 (func $~lib/typedarray/Uint16Array#subarray (; 261 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 4
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $2
  call $~lib/typedarray/Int16Array#get:length
  local.tee $1
  i32.const 4
  local.get $1
  i32.lt_s
  select
  local.set $0
  i32.const 8
  local.get $1
  i32.const 8
  local.get $1
  i32.lt_s
  select
  local.tee $1
  local.get $0
  local.get $1
  local.get $0
  i32.gt_s
  select
  local.set $4
  i32.const 12
  i32.const 9
  call $~lib/rt/tlsf/__alloc
  local.set $1
  block $~lib/typedarray/SUBARRAY<~lib/typedarray/Uint16Array,u16>|inlined.0
   global.get $~lib/error
   if
    i32.const 0
    local.set $1
    br $~lib/typedarray/SUBARRAY<~lib/typedarray/Uint16Array,u16>|inlined.0
   end
   local.get $1
   call $~lib/rt/pure/__retain
   local.tee $1
   local.get $1
   i32.load
   local.tee $6
   local.get $2
   i32.load
   local.tee $3
   i32.ne
   if
    local.get $3
    call $~lib/rt/pure/__retain
    drop
    local.get $6
    call $~lib/rt/pure/__release
   end
   local.get $3
   i32.store
   local.get $1
   local.get $2
   i32.load offset=4
   local.get $0
   i32.const 1
   i32.shl
   i32.add
   i32.store offset=4
   local.get $1
   local.get $4
   local.get $0
   i32.sub
   i32.const 1
   i32.shl
   i32.store offset=8
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Uint16Array,u16> (; 262 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $std/typedarray/testArrayReverseValues
  call $~lib/rt/pure/__retain
  local.set $3
  i32.const 9
  call $~lib/typedarray/Uint16Array#constructor
  global.get $~lib/error
  if
   return
  end
  local.tee $6
  call $~lib/rt/pure/__retain
  local.set $4
  i32.const 9
  call $~lib/typedarray/Uint16Array#constructor
  global.get $~lib/error
  if
   return
  end
  local.tee $7
  call $~lib/rt/pure/__retain
  local.set $5
  i32.const 0
  local.set $0
  loop $loop|0
   block $break|0
    local.get $0
    i32.const 9
    i32.ge_s
    br_if $break|0
    local.get $3
    local.get $0
    call $~lib/typedarray/Int32Array#__get
    local.set $1
    global.get $~lib/error
    if
     return
    end
    local.get $4
    local.get $0
    local.get $1
    i32.const 65535
    i32.and
    call $~lib/typedarray/Int16Array#__set
    global.get $~lib/error
    if
     return
    end
    local.get $3
    local.get $0
    call $~lib/typedarray/Int32Array#__get
    local.set $1
    global.get $~lib/error
    if
     return
    end
    local.get $5
    local.get $0
    local.get $1
    i32.const 65535
    i32.and
    call $~lib/typedarray/Int16Array#__set
    global.get $~lib/error
    if
     return
    else     
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|0
    end
    unreachable
   end
  end
  local.get $4
  call $~lib/typedarray/Uint16Array#reverse
  call $~lib/rt/pure/__release
  i32.const 0
  local.set $0
  loop $loop|1
   block $break|1
    local.get $0
    i32.const 9
    i32.ge_s
    br_if $break|1
    local.get $4
    local.get $0
    call $~lib/typedarray/Uint16Array#__get
    global.get $~lib/error
    if
     return
    end
    i32.const 65535
    i32.and
    local.get $3
    i32.const 8
    local.get $0
    i32.sub
    call $~lib/typedarray/Int32Array#__get
    global.get $~lib/error
    if
     return
    end
    i32.const 65535
    i32.and
    i32.ne
    if
     i32.const 1400
     i32.const 24
     i32.const 471
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else     
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|1
    end
    unreachable
   end
  end
  local.get $5
  call $~lib/typedarray/Uint16Array#subarray
  local.tee $1
  call $~lib/typedarray/Uint16Array#reverse
  local.tee $0
  i32.const 0
  call $~lib/typedarray/Uint16Array#__get
  global.get $~lib/error
  if
   return
  end
  i32.const 65535
  i32.and
  i32.const 8
  i32.ne
  if
   i32.const 1488
   i32.const 24
   i32.const 476
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Uint16Array#__get
  global.get $~lib/error
  if
   return
  end
  i32.const 65535
  i32.and
  i32.const 7
  i32.ne
  if
   i32.const 1488
   i32.const 24
   i32.const 477
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Uint16Array#__get
  global.get $~lib/error
  if
   return
  end
  i32.const 65535
  i32.and
  i32.const 6
  i32.ne
  if
   i32.const 1488
   i32.const 24
   i32.const 478
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/typedarray/Uint16Array#__get
  global.get $~lib/error
  if
   return
  end
  i32.const 65535
  i32.and
  i32.const 5
  i32.ne
  if
   i32.const 1488
   i32.const 24
   i32.const 479
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int32Array#reverse (; 263 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $3
  i32.load offset=4
  local.set $4
  i32.const 0
  local.set $0
  local.get $3
  call $~lib/typedarray/Int32Array#get:length
  i32.const 1
  i32.sub
  local.set $1
  loop $loop|0
   block $break|0
    local.get $0
    local.get $1
    i32.ge_s
    br_if $break|0
    local.get $0
    i32.const 2
    i32.shl
    local.get $4
    i32.add
    local.tee $2
    i32.load
    local.set $5
    local.get $2
    local.get $1
    i32.const 2
    i32.shl
    local.get $4
    i32.add
    local.tee $2
    i32.load
    i32.store
    local.get $2
    local.get $5
    i32.store
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    i32.const 1
    i32.sub
    local.set $1
    br $loop|0
   end
  end
  local.get $3
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Int32Array,i32> (; 264 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $std/typedarray/testArrayReverseValues
  call $~lib/rt/pure/__retain
  local.set $3
  i32.const 9
  call $~lib/typedarray/Int32Array#constructor
  global.get $~lib/error
  if
   return
  end
  local.tee $6
  call $~lib/rt/pure/__retain
  local.set $4
  i32.const 9
  call $~lib/typedarray/Int32Array#constructor
  global.get $~lib/error
  if
   return
  end
  local.tee $7
  call $~lib/rt/pure/__retain
  local.set $5
  i32.const 0
  local.set $0
  loop $loop|0
   block $break|0
    local.get $0
    i32.const 9
    i32.ge_s
    br_if $break|0
    local.get $3
    local.get $0
    call $~lib/typedarray/Int32Array#__get
    local.set $2
    global.get $~lib/error
    if
     return
    end
    local.get $4
    local.get $0
    local.get $2
    call $~lib/typedarray/Int32Array#__set
    global.get $~lib/error
    if
     return
    end
    local.get $3
    local.get $0
    call $~lib/typedarray/Int32Array#__get
    local.set $2
    global.get $~lib/error
    if
     return
    end
    local.get $5
    local.get $0
    local.get $2
    call $~lib/typedarray/Int32Array#__set
    global.get $~lib/error
    if
     return
    else     
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|0
    end
    unreachable
   end
  end
  local.get $4
  call $~lib/typedarray/Int32Array#reverse
  call $~lib/rt/pure/__release
  i32.const 0
  local.set $0
  loop $loop|1
   block $break|1
    local.get $0
    i32.const 9
    i32.ge_s
    br_if $break|1
    local.get $4
    local.get $0
    call $~lib/typedarray/Int32Array#__get
    local.set $2
    global.get $~lib/error
    if
     return
    end
    local.get $3
    i32.const 8
    local.get $0
    i32.sub
    call $~lib/typedarray/Int32Array#__get
    global.get $~lib/error
    if
     return
    end
    local.get $2
    i32.ne
    if
     i32.const 1400
     i32.const 24
     i32.const 471
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else     
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|1
    end
    unreachable
   end
  end
  local.get $5
  i32.const 4
  i32.const 8
  call $~lib/typedarray/Int32Array#subarray
  local.tee $2
  call $~lib/typedarray/Int32Array#reverse
  local.tee $0
  i32.const 0
  call $~lib/typedarray/Int32Array#__get
  global.get $~lib/error
  if
   return
  end
  i32.const 8
  i32.ne
  if
   i32.const 1488
   i32.const 24
   i32.const 476
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Int32Array#__get
  global.get $~lib/error
  if
   return
  end
  i32.const 7
  i32.ne
  if
   i32.const 1488
   i32.const 24
   i32.const 477
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Int32Array#__get
  global.get $~lib/error
  if
   return
  end
  i32.const 6
  i32.ne
  if
   i32.const 1488
   i32.const 24
   i32.const 478
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/typedarray/Int32Array#__get
  global.get $~lib/error
  if
   return
  end
  i32.const 5
  i32.ne
  if
   i32.const 1488
   i32.const 24
   i32.const 479
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint32Array#subarray (; 265 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 4
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $2
  call $~lib/typedarray/Int32Array#get:length
  local.tee $1
  i32.const 4
  local.get $1
  i32.lt_s
  select
  local.set $0
  i32.const 8
  local.get $1
  i32.const 8
  local.get $1
  i32.lt_s
  select
  local.tee $1
  local.get $0
  local.get $1
  local.get $0
  i32.gt_s
  select
  local.set $4
  i32.const 12
  i32.const 11
  call $~lib/rt/tlsf/__alloc
  local.set $1
  block $~lib/typedarray/SUBARRAY<~lib/typedarray/Uint32Array,u32>|inlined.0
   global.get $~lib/error
   if
    i32.const 0
    local.set $1
    br $~lib/typedarray/SUBARRAY<~lib/typedarray/Uint32Array,u32>|inlined.0
   end
   local.get $1
   call $~lib/rt/pure/__retain
   local.tee $1
   local.get $1
   i32.load
   local.tee $6
   local.get $2
   i32.load
   local.tee $3
   i32.ne
   if
    local.get $3
    call $~lib/rt/pure/__retain
    drop
    local.get $6
    call $~lib/rt/pure/__release
   end
   local.get $3
   i32.store
   local.get $1
   local.get $2
   i32.load offset=4
   local.get $0
   i32.const 2
   i32.shl
   i32.add
   i32.store offset=4
   local.get $1
   local.get $4
   local.get $0
   i32.sub
   i32.const 2
   i32.shl
   i32.store offset=8
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Uint32Array,u32> (; 266 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $std/typedarray/testArrayReverseValues
  call $~lib/rt/pure/__retain
  local.set $3
  i32.const 9
  call $~lib/typedarray/Uint32Array#constructor
  global.get $~lib/error
  if
   return
  end
  local.tee $6
  call $~lib/rt/pure/__retain
  local.set $4
  i32.const 9
  call $~lib/typedarray/Uint32Array#constructor
  global.get $~lib/error
  if
   return
  end
  local.tee $7
  call $~lib/rt/pure/__retain
  local.set $5
  i32.const 0
  local.set $0
  loop $loop|0
   block $break|0
    local.get $0
    i32.const 9
    i32.ge_s
    br_if $break|0
    local.get $3
    local.get $0
    call $~lib/typedarray/Int32Array#__get
    local.set $2
    global.get $~lib/error
    if
     return
    end
    local.get $4
    local.get $0
    local.get $2
    call $~lib/typedarray/Int32Array#__set
    global.get $~lib/error
    if
     return
    end
    local.get $3
    local.get $0
    call $~lib/typedarray/Int32Array#__get
    local.set $2
    global.get $~lib/error
    if
     return
    end
    local.get $5
    local.get $0
    local.get $2
    call $~lib/typedarray/Int32Array#__set
    global.get $~lib/error
    if
     return
    else     
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|0
    end
    unreachable
   end
  end
  local.get $4
  call $~lib/typedarray/Int32Array#reverse
  call $~lib/rt/pure/__release
  i32.const 0
  local.set $0
  loop $loop|1
   block $break|1
    local.get $0
    i32.const 9
    i32.ge_s
    br_if $break|1
    local.get $4
    local.get $0
    call $~lib/typedarray/Int32Array#__get
    local.set $2
    global.get $~lib/error
    if
     return
    end
    local.get $3
    i32.const 8
    local.get $0
    i32.sub
    call $~lib/typedarray/Int32Array#__get
    global.get $~lib/error
    if
     return
    end
    local.get $2
    i32.ne
    if
     i32.const 1400
     i32.const 24
     i32.const 471
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else     
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|1
    end
    unreachable
   end
  end
  local.get $5
  call $~lib/typedarray/Uint32Array#subarray
  local.tee $2
  call $~lib/typedarray/Int32Array#reverse
  local.tee $0
  i32.const 0
  call $~lib/typedarray/Int32Array#__get
  global.get $~lib/error
  if
   return
  end
  i32.const 8
  i32.ne
  if
   i32.const 1488
   i32.const 24
   i32.const 476
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Int32Array#__get
  global.get $~lib/error
  if
   return
  end
  i32.const 7
  i32.ne
  if
   i32.const 1488
   i32.const 24
   i32.const 477
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Int32Array#__get
  global.get $~lib/error
  if
   return
  end
  i32.const 6
  i32.ne
  if
   i32.const 1488
   i32.const 24
   i32.const 478
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/typedarray/Int32Array#__get
  global.get $~lib/error
  if
   return
  end
  i32.const 5
  i32.ne
  if
   i32.const 1488
   i32.const 24
   i32.const 479
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int64Array#reverse (; 267 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $3
  i32.load offset=4
  local.set $4
  i32.const 0
  local.set $0
  local.get $3
  call $~lib/typedarray/Int64Array#get:length
  i32.const 1
  i32.sub
  local.set $1
  loop $loop|0
   block $break|0
    local.get $0
    local.get $1
    i32.ge_s
    br_if $break|0
    local.get $0
    i32.const 3
    i32.shl
    local.get $4
    i32.add
    local.tee $2
    i64.load
    local.set $5
    local.get $2
    local.get $1
    i32.const 3
    i32.shl
    local.get $4
    i32.add
    local.tee $2
    i64.load
    i64.store
    local.get $2
    local.get $5
    i64.store
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    i32.const 1
    i32.sub
    local.set $1
    br $loop|0
   end
  end
  local.get $3
 )
 (func $~lib/typedarray/Int64Array#subarray (; 268 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 4
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $2
  call $~lib/typedarray/Int64Array#get:length
  local.tee $1
  i32.const 4
  local.get $1
  i32.lt_s
  select
  local.set $0
  i32.const 8
  local.get $1
  i32.const 8
  local.get $1
  i32.lt_s
  select
  local.tee $1
  local.get $0
  local.get $1
  local.get $0
  i32.gt_s
  select
  local.set $4
  i32.const 12
  i32.const 12
  call $~lib/rt/tlsf/__alloc
  local.set $1
  block $~lib/typedarray/SUBARRAY<~lib/typedarray/Int64Array,i64>|inlined.0
   global.get $~lib/error
   if
    i32.const 0
    local.set $1
    br $~lib/typedarray/SUBARRAY<~lib/typedarray/Int64Array,i64>|inlined.0
   end
   local.get $1
   call $~lib/rt/pure/__retain
   local.tee $1
   local.get $1
   i32.load
   local.tee $6
   local.get $2
   i32.load
   local.tee $3
   i32.ne
   if
    local.get $3
    call $~lib/rt/pure/__retain
    drop
    local.get $6
    call $~lib/rt/pure/__release
   end
   local.get $3
   i32.store
   local.get $1
   local.get $2
   i32.load offset=4
   local.get $0
   i32.const 3
   i32.shl
   i32.add
   i32.store offset=4
   local.get $1
   local.get $4
   local.get $0
   i32.sub
   i32.const 3
   i32.shl
   i32.store offset=8
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Int64Array,i64> (; 269 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $std/typedarray/testArrayReverseValues
  call $~lib/rt/pure/__retain
  local.set $3
  i32.const 9
  call $~lib/typedarray/Int64Array#constructor
  global.get $~lib/error
  if
   return
  end
  local.tee $6
  call $~lib/rt/pure/__retain
  local.set $4
  i32.const 9
  call $~lib/typedarray/Int64Array#constructor
  global.get $~lib/error
  if
   return
  end
  local.tee $7
  call $~lib/rt/pure/__retain
  local.set $5
  i32.const 0
  local.set $0
  loop $loop|0
   block $break|0
    local.get $0
    i32.const 9
    i32.ge_s
    br_if $break|0
    local.get $3
    local.get $0
    call $~lib/typedarray/Int32Array#__get
    local.set $2
    global.get $~lib/error
    if
     return
    end
    local.get $4
    local.get $0
    local.get $2
    i64.extend_i32_s
    call $~lib/typedarray/Int64Array#__set
    global.get $~lib/error
    if
     return
    end
    local.get $3
    local.get $0
    call $~lib/typedarray/Int32Array#__get
    local.set $2
    global.get $~lib/error
    if
     return
    end
    local.get $5
    local.get $0
    local.get $2
    i64.extend_i32_s
    call $~lib/typedarray/Int64Array#__set
    global.get $~lib/error
    if
     return
    else     
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|0
    end
    unreachable
   end
  end
  local.get $4
  call $~lib/typedarray/Int64Array#reverse
  call $~lib/rt/pure/__release
  i32.const 0
  local.set $0
  loop $loop|1
   block $break|1
    local.get $0
    i32.const 9
    i32.ge_s
    br_if $break|1
    local.get $4
    local.get $0
    call $~lib/typedarray/Int64Array#__get
    global.get $~lib/error
    if
     return
    end
    local.get $3
    i32.const 8
    local.get $0
    i32.sub
    call $~lib/typedarray/Int32Array#__get
    global.get $~lib/error
    if
     return
    end
    i64.extend_i32_s
    i64.ne
    if
     i32.const 1400
     i32.const 24
     i32.const 471
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else     
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|1
    end
    unreachable
   end
  end
  local.get $5
  call $~lib/typedarray/Int64Array#subarray
  local.tee $2
  call $~lib/typedarray/Int64Array#reverse
  local.tee $0
  i32.const 0
  call $~lib/typedarray/Int64Array#__get
  global.get $~lib/error
  if
   return
  end
  i64.const 8
  i64.ne
  if
   i32.const 1488
   i32.const 24
   i32.const 476
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Int64Array#__get
  global.get $~lib/error
  if
   return
  end
  i64.const 7
  i64.ne
  if
   i32.const 1488
   i32.const 24
   i32.const 477
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Int64Array#__get
  global.get $~lib/error
  if
   return
  end
  i64.const 6
  i64.ne
  if
   i32.const 1488
   i32.const 24
   i32.const 478
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/typedarray/Int64Array#__get
  global.get $~lib/error
  if
   return
  end
  i64.const 5
  i64.ne
  if
   i32.const 1488
   i32.const 24
   i32.const 479
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint64Array#subarray (; 270 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 4
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $2
  call $~lib/typedarray/Int64Array#get:length
  local.tee $1
  i32.const 4
  local.get $1
  i32.lt_s
  select
  local.set $0
  i32.const 8
  local.get $1
  i32.const 8
  local.get $1
  i32.lt_s
  select
  local.tee $1
  local.get $0
  local.get $1
  local.get $0
  i32.gt_s
  select
  local.set $4
  i32.const 12
  i32.const 13
  call $~lib/rt/tlsf/__alloc
  local.set $1
  block $~lib/typedarray/SUBARRAY<~lib/typedarray/Uint64Array,u64>|inlined.0
   global.get $~lib/error
   if
    i32.const 0
    local.set $1
    br $~lib/typedarray/SUBARRAY<~lib/typedarray/Uint64Array,u64>|inlined.0
   end
   local.get $1
   call $~lib/rt/pure/__retain
   local.tee $1
   local.get $1
   i32.load
   local.tee $6
   local.get $2
   i32.load
   local.tee $3
   i32.ne
   if
    local.get $3
    call $~lib/rt/pure/__retain
    drop
    local.get $6
    call $~lib/rt/pure/__release
   end
   local.get $3
   i32.store
   local.get $1
   local.get $2
   i32.load offset=4
   local.get $0
   i32.const 3
   i32.shl
   i32.add
   i32.store offset=4
   local.get $1
   local.get $4
   local.get $0
   i32.sub
   i32.const 3
   i32.shl
   i32.store offset=8
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Uint64Array,u64> (; 271 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $std/typedarray/testArrayReverseValues
  call $~lib/rt/pure/__retain
  local.set $3
  i32.const 9
  call $~lib/typedarray/Uint64Array#constructor
  global.get $~lib/error
  if
   return
  end
  local.tee $6
  call $~lib/rt/pure/__retain
  local.set $4
  i32.const 9
  call $~lib/typedarray/Uint64Array#constructor
  global.get $~lib/error
  if
   return
  end
  local.tee $7
  call $~lib/rt/pure/__retain
  local.set $5
  i32.const 0
  local.set $0
  loop $loop|0
   block $break|0
    local.get $0
    i32.const 9
    i32.ge_s
    br_if $break|0
    local.get $3
    local.get $0
    call $~lib/typedarray/Int32Array#__get
    local.set $2
    global.get $~lib/error
    if
     return
    end
    local.get $4
    local.get $0
    local.get $2
    i64.extend_i32_s
    call $~lib/typedarray/Int64Array#__set
    global.get $~lib/error
    if
     return
    end
    local.get $3
    local.get $0
    call $~lib/typedarray/Int32Array#__get
    local.set $2
    global.get $~lib/error
    if
     return
    end
    local.get $5
    local.get $0
    local.get $2
    i64.extend_i32_s
    call $~lib/typedarray/Int64Array#__set
    global.get $~lib/error
    if
     return
    else     
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|0
    end
    unreachable
   end
  end
  local.get $4
  call $~lib/typedarray/Int64Array#reverse
  call $~lib/rt/pure/__release
  i32.const 0
  local.set $0
  loop $loop|1
   block $break|1
    local.get $0
    i32.const 9
    i32.ge_s
    br_if $break|1
    local.get $4
    local.get $0
    call $~lib/typedarray/Int64Array#__get
    global.get $~lib/error
    if
     return
    end
    local.get $3
    i32.const 8
    local.get $0
    i32.sub
    call $~lib/typedarray/Int32Array#__get
    global.get $~lib/error
    if
     return
    end
    i64.extend_i32_s
    i64.ne
    if
     i32.const 1400
     i32.const 24
     i32.const 471
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else     
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|1
    end
    unreachable
   end
  end
  local.get $5
  call $~lib/typedarray/Uint64Array#subarray
  local.tee $2
  call $~lib/typedarray/Int64Array#reverse
  local.tee $0
  i32.const 0
  call $~lib/typedarray/Int64Array#__get
  global.get $~lib/error
  if
   return
  end
  i64.const 8
  i64.ne
  if
   i32.const 1488
   i32.const 24
   i32.const 476
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Int64Array#__get
  global.get $~lib/error
  if
   return
  end
  i64.const 7
  i64.ne
  if
   i32.const 1488
   i32.const 24
   i32.const 477
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Int64Array#__get
  global.get $~lib/error
  if
   return
  end
  i64.const 6
  i64.ne
  if
   i32.const 1488
   i32.const 24
   i32.const 478
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/typedarray/Int64Array#__get
  global.get $~lib/error
  if
   return
  end
  i64.const 5
  i64.ne
  if
   i32.const 1488
   i32.const 24
   i32.const 479
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Float32Array#reverse (; 272 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $3
  i32.load offset=4
  local.set $4
  i32.const 0
  local.set $0
  local.get $3
  call $~lib/typedarray/Int32Array#get:length
  i32.const 1
  i32.sub
  local.set $1
  loop $loop|0
   block $break|0
    local.get $0
    local.get $1
    i32.ge_s
    br_if $break|0
    local.get $0
    i32.const 2
    i32.shl
    local.get $4
    i32.add
    local.tee $2
    f32.load
    local.set $5
    local.get $2
    local.get $1
    i32.const 2
    i32.shl
    local.get $4
    i32.add
    local.tee $2
    f32.load
    f32.store
    local.get $2
    local.get $5
    f32.store
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    i32.const 1
    i32.sub
    local.set $1
    br $loop|0
   end
  end
  local.get $3
 )
 (func $~lib/typedarray/Float32Array#subarray (; 273 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 4
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $2
  call $~lib/typedarray/Int32Array#get:length
  local.tee $1
  i32.const 4
  local.get $1
  i32.lt_s
  select
  local.set $0
  i32.const 8
  local.get $1
  i32.const 8
  local.get $1
  i32.lt_s
  select
  local.tee $1
  local.get $0
  local.get $1
  local.get $0
  i32.gt_s
  select
  local.set $4
  i32.const 12
  i32.const 14
  call $~lib/rt/tlsf/__alloc
  local.set $1
  block $~lib/typedarray/SUBARRAY<~lib/typedarray/Float32Array,f32>|inlined.0
   global.get $~lib/error
   if
    i32.const 0
    local.set $1
    br $~lib/typedarray/SUBARRAY<~lib/typedarray/Float32Array,f32>|inlined.0
   end
   local.get $1
   call $~lib/rt/pure/__retain
   local.tee $1
   local.get $1
   i32.load
   local.tee $6
   local.get $2
   i32.load
   local.tee $3
   i32.ne
   if
    local.get $3
    call $~lib/rt/pure/__retain
    drop
    local.get $6
    call $~lib/rt/pure/__release
   end
   local.get $3
   i32.store
   local.get $1
   local.get $2
   i32.load offset=4
   local.get $0
   i32.const 2
   i32.shl
   i32.add
   i32.store offset=4
   local.get $1
   local.get $4
   local.get $0
   i32.sub
   i32.const 2
   i32.shl
   i32.store offset=8
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $1
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Float32Array,f32> (; 274 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $std/typedarray/testArrayReverseValues
  call $~lib/rt/pure/__retain
  local.set $3
  i32.const 9
  call $~lib/typedarray/Float32Array#constructor
  global.get $~lib/error
  if
   return
  end
  local.tee $6
  call $~lib/rt/pure/__retain
  local.set $4
  i32.const 9
  call $~lib/typedarray/Float32Array#constructor
  global.get $~lib/error
  if
   return
  end
  local.tee $7
  call $~lib/rt/pure/__retain
  local.set $5
  i32.const 0
  local.set $0
  loop $loop|0
   block $break|0
    local.get $0
    i32.const 9
    i32.ge_s
    br_if $break|0
    local.get $3
    local.get $0
    call $~lib/typedarray/Int32Array#__get
    local.set $2
    global.get $~lib/error
    if
     return
    end
    local.get $4
    local.get $0
    local.get $2
    f32.convert_i32_s
    call $~lib/typedarray/Float32Array#__set
    global.get $~lib/error
    if
     return
    end
    local.get $3
    local.get $0
    call $~lib/typedarray/Int32Array#__get
    local.set $2
    global.get $~lib/error
    if
     return
    end
    local.get $5
    local.get $0
    local.get $2
    f32.convert_i32_s
    call $~lib/typedarray/Float32Array#__set
    global.get $~lib/error
    if
     return
    else     
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|0
    end
    unreachable
   end
  end
  local.get $4
  call $~lib/typedarray/Float32Array#reverse
  call $~lib/rt/pure/__release
  i32.const 0
  local.set $0
  loop $loop|1
   block $break|1
    local.get $0
    i32.const 9
    i32.ge_s
    br_if $break|1
    local.get $4
    local.get $0
    call $~lib/typedarray/Float32Array#__get
    global.get $~lib/error
    if
     return
    end
    local.get $3
    i32.const 8
    local.get $0
    i32.sub
    call $~lib/typedarray/Int32Array#__get
    global.get $~lib/error
    if
     return
    end
    f32.convert_i32_s
    f32.ne
    if
     i32.const 1400
     i32.const 24
     i32.const 471
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else     
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|1
    end
    unreachable
   end
  end
  local.get $5
  call $~lib/typedarray/Float32Array#subarray
  local.tee $2
  call $~lib/typedarray/Float32Array#reverse
  local.tee $0
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  global.get $~lib/error
  if
   return
  end
  f32.const 8
  f32.ne
  if
   i32.const 1488
   i32.const 24
   i32.const 476
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  global.get $~lib/error
  if
   return
  end
  f32.const 7
  f32.ne
  if
   i32.const 1488
   i32.const 24
   i32.const 477
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Float32Array#__get
  global.get $~lib/error
  if
   return
  end
  f32.const 6
  f32.ne
  if
   i32.const 1488
   i32.const 24
   i32.const 478
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/typedarray/Float32Array#__get
  global.get $~lib/error
  if
   return
  end
  f32.const 5
  f32.ne
  if
   i32.const 1488
   i32.const 24
   i32.const 479
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Float64Array#reverse (; 275 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  local.get $0
  call $~lib/rt/pure/__retain
  local.tee $3
  i32.load offset=4
  local.set $4
  i32.const 0
  local.set $0
  local.get $3
  call $~lib/typedarray/Int64Array#get:length
  i32.const 1
  i32.sub
  local.set $1
  loop $loop|0
   block $break|0
    local.get $0
    local.get $1
    i32.ge_s
    br_if $break|0
    local.get $0
    i32.const 3
    i32.shl
    local.get $4
    i32.add
    local.tee $2
    f64.load
    local.set $5
    local.get $2
    local.get $1
    i32.const 3
    i32.shl
    local.get $4
    i32.add
    local.tee $2
    f64.load
    f64.store
    local.get $2
    local.get $5
    f64.store
    local.get $0
    i32.const 1
    i32.add
    local.set $0
    local.get $1
    i32.const 1
    i32.sub
    local.set $1
    br $loop|0
   end
  end
  local.get $3
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Float64Array,f64> (; 276 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $std/typedarray/testArrayReverseValues
  call $~lib/rt/pure/__retain
  local.set $3
  i32.const 9
  call $~lib/typedarray/Float64Array#constructor
  global.get $~lib/error
  if
   return
  end
  local.tee $6
  call $~lib/rt/pure/__retain
  local.set $4
  i32.const 9
  call $~lib/typedarray/Float64Array#constructor
  global.get $~lib/error
  if
   return
  end
  local.tee $7
  call $~lib/rt/pure/__retain
  local.set $5
  i32.const 0
  local.set $0
  loop $loop|0
   block $break|0
    local.get $0
    i32.const 9
    i32.ge_s
    br_if $break|0
    local.get $3
    local.get $0
    call $~lib/typedarray/Int32Array#__get
    local.set $2
    global.get $~lib/error
    if
     return
    end
    local.get $4
    local.get $0
    local.get $2
    f64.convert_i32_s
    call $~lib/typedarray/Float64Array#__set
    global.get $~lib/error
    if
     return
    end
    local.get $3
    local.get $0
    call $~lib/typedarray/Int32Array#__get
    local.set $2
    global.get $~lib/error
    if
     return
    end
    local.get $5
    local.get $0
    local.get $2
    f64.convert_i32_s
    call $~lib/typedarray/Float64Array#__set
    global.get $~lib/error
    if
     return
    else     
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|0
    end
    unreachable
   end
  end
  local.get $4
  call $~lib/typedarray/Float64Array#reverse
  call $~lib/rt/pure/__release
  i32.const 0
  local.set $0
  loop $loop|1
   block $break|1
    local.get $0
    i32.const 9
    i32.ge_s
    br_if $break|1
    local.get $4
    local.get $0
    call $~lib/typedarray/Float64Array#__get
    global.get $~lib/error
    if
     return
    end
    local.get $3
    i32.const 8
    local.get $0
    i32.sub
    call $~lib/typedarray/Int32Array#__get
    global.get $~lib/error
    if
     return
    end
    f64.convert_i32_s
    f64.ne
    if
     i32.const 1400
     i32.const 24
     i32.const 471
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    else     
     local.get $0
     i32.const 1
     i32.add
     local.set $0
     br $loop|1
    end
    unreachable
   end
  end
  local.get $5
  i32.const 4
  i32.const 8
  call $~lib/typedarray/Float64Array#subarray
  local.tee $2
  call $~lib/typedarray/Float64Array#reverse
  local.tee $0
  i32.const 0
  call $~lib/typedarray/Float64Array#__get
  global.get $~lib/error
  if
   return
  end
  f64.const 8
  f64.ne
  if
   i32.const 1488
   i32.const 24
   i32.const 476
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Float64Array#__get
  global.get $~lib/error
  if
   return
  end
  f64.const 7
  f64.ne
  if
   i32.const 1488
   i32.const 24
   i32.const 477
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Float64Array#__get
  global.get $~lib/error
  if
   return
  end
  f64.const 6
  f64.ne
  if
   i32.const 1488
   i32.const 24
   i32.const 478
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 3
  call $~lib/typedarray/Float64Array#__get
  global.get $~lib/error
  if
   return
  end
  f64.const 5
  f64.ne
  if
   i32.const 1488
   i32.const 24
   i32.const 479
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
 )
 (func $start:std/typedarray (; 277 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  i32.const 0
  call $std/typedarray/testInstantiate
  block $uncaughtError
   global.get $~lib/error
   br_if $uncaughtError
   i32.const 5
   call $std/typedarray/testInstantiate
   global.get $~lib/error
   br_if $uncaughtError
   i32.const 3
   call $~lib/typedarray/Int32Array#constructor
   local.set $0
   global.get $~lib/error
   br_if $uncaughtError
   local.get $0
   i32.const 0
   i32.const 1
   call $~lib/typedarray/Int32Array#__set
   global.get $~lib/error
   br_if $uncaughtError
   local.get $0
   i32.const 1
   i32.const 2
   call $~lib/typedarray/Int32Array#__set
   global.get $~lib/error
   br_if $uncaughtError
   local.get $0
   i32.const 2
   i32.const 3
   call $~lib/typedarray/Int32Array#__set
   global.get $~lib/error
   br_if $uncaughtError
   local.get $0
   call $~lib/typedarray/Int32Array#get:length
   i32.const 3
   i32.ne
   if
    i32.const 0
    i32.const 24
    i32.const 95
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
   if
    i32.const 0
    i32.const 24
    i32.const 96
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load offset=8
   i32.const 12
   i32.ne
   if
    i32.const 0
    i32.const 24
    i32.const 97
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 0
   call $~lib/typedarray/Int32Array#__get
   global.get $~lib/error
   br_if $uncaughtError
   i32.const 1
   i32.ne
   if
    i32.const 0
    i32.const 24
    i32.const 98
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 1
   call $~lib/typedarray/Int32Array#__get
   global.get $~lib/error
   br_if $uncaughtError
   i32.const 2
   i32.ne
   if
    i32.const 0
    i32.const 24
    i32.const 99
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 2
   call $~lib/typedarray/Int32Array#__get
   global.get $~lib/error
   br_if $uncaughtError
   i32.const 3
   i32.ne
   if
    i32.const 0
    i32.const 24
    i32.const 100
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 1
   i32.const 2
   call $~lib/typedarray/Int32Array#subarray
   local.get $0
   call $~lib/rt/pure/__release
   local.tee $0
   call $~lib/typedarray/Int32Array#get:length
   i32.const 1
   i32.ne
   if
    i32.const 0
    i32.const 24
    i32.const 103
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
   i32.const 4
   i32.ne
   if
    i32.const 0
    i32.const 24
    i32.const 104
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load offset=8
   i32.const 4
   i32.ne
   if
    i32.const 0
    i32.const 24
    i32.const 105
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 0
   call $~lib/typedarray/Int32Array#__get
   global.get $~lib/error
   br_if $uncaughtError
   i32.const 2
   i32.ne
   if
    i32.const 0
    i32.const 24
    i32.const 106
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   call $~lib/rt/pure/__release
   i32.const 8
   call $~lib/typedarray/Float64Array#constructor
   local.set $0
   global.get $~lib/error
   br_if $uncaughtError
   local.get $0
   i32.const 0
   f64.const 1
   call $~lib/typedarray/Float64Array#__set
   global.get $~lib/error
   br_if $uncaughtError
   local.get $0
   i32.const 1
   f64.const 2
   call $~lib/typedarray/Float64Array#__set
   global.get $~lib/error
   br_if $uncaughtError
   local.get $0
   i32.const 2
   f64.const 7
   call $~lib/typedarray/Float64Array#__set
   global.get $~lib/error
   br_if $uncaughtError
   local.get $0
   i32.const 3
   f64.const 6
   call $~lib/typedarray/Float64Array#__set
   global.get $~lib/error
   br_if $uncaughtError
   local.get $0
   i32.const 4
   f64.const 5
   call $~lib/typedarray/Float64Array#__set
   global.get $~lib/error
   br_if $uncaughtError
   local.get $0
   i32.const 5
   f64.const 4
   call $~lib/typedarray/Float64Array#__set
   global.get $~lib/error
   br_if $uncaughtError
   local.get $0
   i32.const 6
   f64.const 3
   call $~lib/typedarray/Float64Array#__set
   global.get $~lib/error
   br_if $uncaughtError
   local.get $0
   i32.const 7
   f64.const 8
   call $~lib/typedarray/Float64Array#__set
   global.get $~lib/error
   br_if $uncaughtError
   local.get $0
   i32.const 2
   i32.const 6
   call $~lib/typedarray/Float64Array#subarray
   local.get $0
   call $~lib/rt/pure/__release
   local.tee $0
   call $~lib/typedarray/Int64Array#get:length
   i32.const 4
   i32.ne
   if
    i32.const 0
    i32.const 24
    i32.const 122
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
   i32.const 16
   i32.ne
   if
    i32.const 0
    i32.const 24
    i32.const 123
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load offset=8
   i32.const 32
   i32.ne
   if
    i32.const 0
    i32.const 24
    i32.const 124
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   global.set $~lib/argc
   i32.const 0
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
    local.set $1
   end
   local.get $0
   local.get $1
   call $~lib/typedarray/Float64Array#sort
   call $~lib/rt/pure/__release
   local.get $0
   i32.const 0
   call $~lib/typedarray/Float64Array#__get
   global.get $~lib/error
   br_if $uncaughtError
   f64.const 4
   f64.eq
   if (result i32)
    local.get $0
    i32.const 1
    call $~lib/typedarray/Float64Array#__get
    global.get $~lib/error
    br_if $uncaughtError
    f64.const 5
    f64.eq
   else    
    i32.const 0
   end
   if (result i32)
    local.get $0
    i32.const 2
    call $~lib/typedarray/Float64Array#__get
    global.get $~lib/error
    br_if $uncaughtError
    f64.const 6
    f64.eq
   else    
    i32.const 0
   end
   if (result i32)
    local.get $0
    i32.const 3
    call $~lib/typedarray/Float64Array#__get
    global.get $~lib/error
    br_if $uncaughtError
    f64.const 7
    f64.eq
   else    
    i32.const 0
   end
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 126
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   call $~lib/rt/pure/__release
   i32.const 3
   call $~lib/typedarray/Uint8ClampedArray#constructor
   local.set $0
   global.get $~lib/error
   br_if $uncaughtError
   local.get $0
   i32.const 0
   i32.const -32
   call $~lib/typedarray/Uint8ClampedArray#__set
   global.get $~lib/error
   br_if $uncaughtError
   local.get $0
   i32.const 1
   i32.const 2
   call $~lib/typedarray/Uint8ClampedArray#__set
   global.get $~lib/error
   br_if $uncaughtError
   local.get $0
   i32.const 2
   i32.const 256
   call $~lib/typedarray/Uint8ClampedArray#__set
   global.get $~lib/error
   br_if $uncaughtError
   local.get $0
   i32.const 0
   call $~lib/typedarray/Uint8ClampedArray#__get
   global.get $~lib/error
   br_if $uncaughtError
   i32.const 255
   i32.and
   if
    i32.const 0
    i32.const 24
    i32.const 135
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 1
   call $~lib/typedarray/Uint8ClampedArray#__get
   global.get $~lib/error
   br_if $uncaughtError
   i32.const 255
   i32.and
   i32.const 2
   i32.ne
   if
    i32.const 0
    i32.const 24
    i32.const 136
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 2
   call $~lib/typedarray/Uint8ClampedArray#__get
   global.get $~lib/error
   br_if $uncaughtError
   i32.const 255
   i32.and
   i32.const 255
   i32.ne
   if
    i32.const 0
    i32.const 24
    i32.const 137
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   call $~lib/rt/pure/__release
   i32.const 5
   call $~lib/typedarray/Int8Array#constructor
   local.set $0
   global.get $~lib/error
   br_if $uncaughtError
   local.get $0
   i32.const 0
   i32.const 1
   call $~lib/typedarray/Int8Array#__set
   global.get $~lib/error
   br_if $uncaughtError
   local.get $0
   i32.const 1
   i32.const 2
   call $~lib/typedarray/Int8Array#__set
   global.get $~lib/error
   br_if $uncaughtError
   local.get $0
   i32.const 2
   i32.const 3
   call $~lib/typedarray/Int8Array#__set
   global.get $~lib/error
   br_if $uncaughtError
   local.get $0
   i32.const 3
   i32.const 4
   call $~lib/typedarray/Int8Array#__set
   global.get $~lib/error
   br_if $uncaughtError
   local.get $0
   i32.const 4
   i32.const 5
   call $~lib/typedarray/Int8Array#__set
   global.get $~lib/error
   br_if $uncaughtError
   local.get $0
   i32.const 1
   i32.const 1
   i32.const 3
   call $~lib/typedarray/Int8Array#fill
   call $~lib/rt/pure/__release
   i32.const 5
   i32.const 0
   i32.const 16
   i32.const 424
   call $~lib/rt/__allocArray
   local.set $1
   global.get $~lib/error
   br_if $uncaughtError
   local.get $0
   local.get $1
   call $~lib/rt/pure/__retain
   local.tee $2
   call $std/typedarray/isInt8ArrayEqual
   global.get $~lib/error
   br_if $uncaughtError
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 149
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 0
   i32.const 0
   i32.const 2147483647
   call $~lib/typedarray/Int8Array#fill
   call $~lib/rt/pure/__release
   i32.const 5
   i32.const 0
   i32.const 16
   i32.const 448
   call $~lib/rt/__allocArray
   local.set $1
   global.get $~lib/error
   br_if $uncaughtError
   local.get $0
   local.get $1
   call $~lib/rt/pure/__retain
   local.tee $4
   call $std/typedarray/isInt8ArrayEqual
   global.get $~lib/error
   br_if $uncaughtError
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 152
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 1
   i32.const 0
   i32.const -3
   call $~lib/typedarray/Int8Array#fill
   call $~lib/rt/pure/__release
   i32.const 5
   i32.const 0
   i32.const 16
   i32.const 472
   call $~lib/rt/__allocArray
   local.set $1
   global.get $~lib/error
   br_if $uncaughtError
   local.get $0
   local.get $1
   call $~lib/rt/pure/__retain
   local.tee $7
   call $std/typedarray/isInt8ArrayEqual
   global.get $~lib/error
   br_if $uncaughtError
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 155
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 2
   i32.const -2
   i32.const 2147483647
   call $~lib/typedarray/Int8Array#fill
   call $~lib/rt/pure/__release
   i32.const 5
   i32.const 0
   i32.const 16
   i32.const 496
   call $~lib/rt/__allocArray
   local.set $1
   global.get $~lib/error
   br_if $uncaughtError
   local.get $0
   local.get $1
   call $~lib/rt/pure/__retain
   local.tee $8
   call $std/typedarray/isInt8ArrayEqual
   global.get $~lib/error
   br_if $uncaughtError
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 158
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 0
   i32.const 1
   i32.const 0
   call $~lib/typedarray/Int8Array#fill
   call $~lib/rt/pure/__release
   i32.const 5
   i32.const 0
   i32.const 16
   i32.const 520
   call $~lib/rt/__allocArray
   local.set $1
   global.get $~lib/error
   br_if $uncaughtError
   local.get $0
   local.get $1
   call $~lib/rt/pure/__retain
   local.tee $9
   call $std/typedarray/isInt8ArrayEqual
   global.get $~lib/error
   br_if $uncaughtError
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 161
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 1
   i32.const 4
   call $~lib/typedarray/Int8Array#subarray
   local.tee $1
   i32.const 0
   i32.const 0
   i32.const 2147483647
   call $~lib/typedarray/Int8Array#fill
   call $~lib/rt/pure/__release
   local.get $1
   i32.load offset=8
   i32.const 3
   i32.ne
   if
    i32.const 0
    i32.const 24
    i32.const 165
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
   i32.const 1
   i32.ne
   if
    i32.const 0
    i32.const 24
    i32.const 166
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.load offset=8
   i32.const 3
   i32.ne
   if
    i32.const 0
    i32.const 24
    i32.const 167
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 3
   i32.const 0
   i32.const 16
   i32.const 544
   call $~lib/rt/__allocArray
   local.set $6
   global.get $~lib/error
   br_if $uncaughtError
   local.get $1
   local.get $6
   call $~lib/rt/pure/__retain
   local.tee $6
   call $std/typedarray/isInt8ArrayEqual
   global.get $~lib/error
   br_if $uncaughtError
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 168
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 5
   i32.const 0
   i32.const 16
   i32.const 568
   call $~lib/rt/__allocArray
   local.set $3
   global.get $~lib/error
   br_if $uncaughtError
   local.get $0
   local.get $3
   call $~lib/rt/pure/__retain
   local.tee $3
   call $std/typedarray/isInt8ArrayEqual
   global.get $~lib/error
   br_if $uncaughtError
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 169
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $4
   call $~lib/rt/pure/__release
   local.get $7
   call $~lib/rt/pure/__release
   local.get $8
   call $~lib/rt/pure/__release
   local.get $9
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $6
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   i32.const 5
   call $~lib/typedarray/Int32Array#constructor
   local.set $0
   global.get $~lib/error
   br_if $uncaughtError
   local.get $0
   i32.const 0
   i32.const 1
   call $~lib/typedarray/Int32Array#__set
   global.get $~lib/error
   br_if $uncaughtError
   local.get $0
   i32.const 1
   i32.const 2
   call $~lib/typedarray/Int32Array#__set
   global.get $~lib/error
   br_if $uncaughtError
   local.get $0
   i32.const 2
   i32.const 3
   call $~lib/typedarray/Int32Array#__set
   global.get $~lib/error
   br_if $uncaughtError
   local.get $0
   i32.const 3
   i32.const 4
   call $~lib/typedarray/Int32Array#__set
   global.get $~lib/error
   br_if $uncaughtError
   local.get $0
   i32.const 4
   i32.const 5
   call $~lib/typedarray/Int32Array#__set
   global.get $~lib/error
   br_if $uncaughtError
   local.get $0
   i32.const 1
   i32.const 1
   i32.const 3
   call $~lib/typedarray/Int32Array#fill
   call $~lib/rt/pure/__release
   i32.const 5
   i32.const 2
   i32.const 17
   i32.const 592
   call $~lib/rt/__allocArray
   local.set $1
   global.get $~lib/error
   br_if $uncaughtError
   local.get $0
   local.get $1
   call $~lib/rt/pure/__retain
   local.tee $2
   call $std/typedarray/isInt32ArrayEqual
   global.get $~lib/error
   br_if $uncaughtError
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 181
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 0
   i32.const 0
   i32.const 2147483647
   call $~lib/typedarray/Int32Array#fill
   call $~lib/rt/pure/__release
   i32.const 5
   i32.const 2
   i32.const 17
   i32.const 632
   call $~lib/rt/__allocArray
   local.set $1
   global.get $~lib/error
   br_if $uncaughtError
   local.get $0
   local.get $1
   call $~lib/rt/pure/__retain
   local.tee $4
   call $std/typedarray/isInt32ArrayEqual
   global.get $~lib/error
   br_if $uncaughtError
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 184
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 1
   i32.const 0
   i32.const -3
   call $~lib/typedarray/Int32Array#fill
   call $~lib/rt/pure/__release
   i32.const 5
   i32.const 2
   i32.const 17
   i32.const 672
   call $~lib/rt/__allocArray
   local.set $1
   global.get $~lib/error
   br_if $uncaughtError
   local.get $0
   local.get $1
   call $~lib/rt/pure/__retain
   local.tee $7
   call $std/typedarray/isInt32ArrayEqual
   global.get $~lib/error
   br_if $uncaughtError
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 187
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 2
   i32.const -2
   i32.const 2147483647
   call $~lib/typedarray/Int32Array#fill
   call $~lib/rt/pure/__release
   i32.const 5
   i32.const 2
   i32.const 17
   i32.const 712
   call $~lib/rt/__allocArray
   local.set $1
   global.get $~lib/error
   br_if $uncaughtError
   local.get $0
   local.get $1
   call $~lib/rt/pure/__retain
   local.tee $8
   call $std/typedarray/isInt32ArrayEqual
   global.get $~lib/error
   br_if $uncaughtError
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 190
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 0
   i32.const 1
   i32.const 0
   call $~lib/typedarray/Int32Array#fill
   call $~lib/rt/pure/__release
   i32.const 5
   i32.const 2
   i32.const 17
   i32.const 752
   call $~lib/rt/__allocArray
   local.set $1
   global.get $~lib/error
   br_if $uncaughtError
   local.get $0
   local.get $1
   call $~lib/rt/pure/__retain
   local.tee $9
   call $std/typedarray/isInt32ArrayEqual
   global.get $~lib/error
   br_if $uncaughtError
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 193
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 1
   i32.const 4
   call $~lib/typedarray/Int32Array#subarray
   local.tee $1
   i32.const 0
   i32.const 0
   i32.const 2147483647
   call $~lib/typedarray/Int32Array#fill
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/typedarray/Int32Array#get:length
   i32.const 3
   i32.ne
   if
    i32.const 0
    i32.const 24
    i32.const 197
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
   i32.const 4
   i32.ne
   if
    i32.const 0
    i32.const 24
    i32.const 198
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.load offset=8
   i32.const 12
   i32.ne
   if
    i32.const 0
    i32.const 24
    i32.const 199
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 3
   i32.const 2
   i32.const 17
   i32.const 792
   call $~lib/rt/__allocArray
   local.set $6
   global.get $~lib/error
   br_if $uncaughtError
   local.get $1
   local.get $6
   call $~lib/rt/pure/__retain
   local.tee $6
   call $std/typedarray/isInt32ArrayEqual
   global.get $~lib/error
   br_if $uncaughtError
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 200
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 5
   i32.const 2
   i32.const 17
   i32.const 824
   call $~lib/rt/__allocArray
   local.set $3
   global.get $~lib/error
   br_if $uncaughtError
   local.get $0
   local.get $3
   call $~lib/rt/pure/__retain
   local.tee $3
   call $std/typedarray/isInt32ArrayEqual
   global.get $~lib/error
   br_if $uncaughtError
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 201
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $4
   call $~lib/rt/pure/__release
   local.get $7
   call $~lib/rt/pure/__release
   local.get $8
   call $~lib/rt/pure/__release
   local.get $9
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $6
   call $~lib/rt/pure/__release
   local.get $3
   call $~lib/rt/pure/__release
   i32.const 6
   call $~lib/typedarray/Int8Array#constructor
   local.set $0
   global.get $~lib/error
   br_if $uncaughtError
   local.get $0
   i32.const 0
   i32.const 1
   call $~lib/typedarray/Int8Array#__set
   global.get $~lib/error
   br_if $uncaughtError
   local.get $0
   i32.const 1
   i32.const 2
   call $~lib/typedarray/Int8Array#__set
   global.get $~lib/error
   br_if $uncaughtError
   local.get $0
   i32.const 2
   i32.const 3
   call $~lib/typedarray/Int8Array#__set
   global.get $~lib/error
   br_if $uncaughtError
   local.get $0
   i32.const 3
   i32.const 4
   call $~lib/typedarray/Int8Array#__set
   global.get $~lib/error
   br_if $uncaughtError
   local.get $0
   i32.const 4
   i32.const 5
   call $~lib/typedarray/Int8Array#__set
   global.get $~lib/error
   br_if $uncaughtError
   local.get $0
   i32.const 5
   i32.const 6
   call $~lib/typedarray/Int8Array#__set
   global.get $~lib/error
   br_if $uncaughtError
   local.get $0
   i32.const 1
   i32.const 6
   call $~lib/typedarray/Int8Array#subarray
   local.tee $1
   i32.const 0
   call $~lib/typedarray/Int8Array#__get
   global.get $~lib/error
   br_if $uncaughtError
   i32.const 255
   i32.and
   i32.const 2
   i32.ne
   if
    i32.const 0
    i32.const 24
    i32.const 222
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.load offset=8
   i32.const 5
   i32.ne
   if
    i32.const 0
    i32.const 24
    i32.const 223
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
   i32.const 1
   i32.ne
   if
    i32.const 0
    i32.const 24
    i32.const 224
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.load offset=8
   i32.const 5
   i32.ne
   if
    i32.const 0
    i32.const 24
    i32.const 225
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 1
   i32.const 5
   call $~lib/typedarray/Int8Array#subarray
   local.tee $2
   i32.const 0
   call $~lib/typedarray/Int8Array#__get
   global.get $~lib/error
   br_if $uncaughtError
   i32.const 255
   i32.and
   i32.const 3
   i32.ne
   if
    i32.const 0
    i32.const 24
    i32.const 228
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   i32.load offset=8
   i32.const 4
   i32.ne
   if
    i32.const 0
    i32.const 24
    i32.const 229
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
   i32.const 2
   i32.ne
   if
    i32.const 0
    i32.const 24
    i32.const 230
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   i32.load offset=8
   i32.const 4
   i32.ne
   if
    i32.const 0
    i32.const 24
    i32.const 231
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $2
   i32.const 1
   i32.const 4
   call $~lib/typedarray/Int8Array#subarray
   local.tee $4
   i32.const 0
   call $~lib/typedarray/Int8Array#__get
   global.get $~lib/error
   br_if $uncaughtError
   i32.const 255
   i32.and
   i32.const 4
   i32.ne
   if
    i32.const 0
    i32.const 24
    i32.const 234
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $4
   i32.load offset=8
   i32.const 3
   i32.ne
   if
    i32.const 0
    i32.const 24
    i32.const 235
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $4
   call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
   i32.const 3
   i32.ne
   if
    i32.const 0
    i32.const 24
    i32.const 236
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $4
   i32.load offset=8
   i32.const 3
   i32.ne
   if
    i32.const 0
    i32.const 24
    i32.const 237
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   call $~lib/rt/pure/__release
   local.get $4
   call $~lib/rt/pure/__release
   call $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testReduce<~lib/typedarray/Uint8Array,u8>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testReduce<~lib/typedarray/Uint8ClampedArray,u8>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testReduce<~lib/typedarray/Int16Array,i16>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testReduce<~lib/typedarray/Uint16Array,u16>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testReduce<~lib/typedarray/Int32Array,i32>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testReduce<~lib/typedarray/Uint32Array,u32>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testReduce<~lib/typedarray/Int64Array,i64>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testReduce<~lib/typedarray/Uint64Array,u64>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testReduce<~lib/typedarray/Float32Array,f32>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testReduce<~lib/typedarray/Float64Array,f64>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testReduceRight<~lib/typedarray/Int8Array,i8>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testReduceRight<~lib/typedarray/Uint8Array,u8>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testReduceRight<~lib/typedarray/Uint8ClampedArray,u8>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testReduceRight<~lib/typedarray/Int16Array,i16>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testReduceRight<~lib/typedarray/Uint16Array,u16>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testReduceRight<~lib/typedarray/Int32Array,i32>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testReduceRight<~lib/typedarray/Uint32Array,u32>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testReduceRight<~lib/typedarray/Int64Array,i64>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testReduceRight<~lib/typedarray/Uint64Array,u64>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testReduceRight<~lib/typedarray/Float32Array,f32>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testReduceRight<~lib/typedarray/Float64Array,f64>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testArrayMap<~lib/typedarray/Uint8Array,u8>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testArrayMap<~lib/typedarray/Uint8ClampedArray,u8>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testArrayMap<~lib/typedarray/Int16Array,i16>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testArrayMap<~lib/typedarray/Uint16Array,u16>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testArrayMap<~lib/typedarray/Int32Array,i32>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testArrayMap<~lib/typedarray/Uint32Array,u32>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testArrayMap<~lib/typedarray/Int64Array,i64>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testArrayMap<~lib/typedarray/Uint64Array,u64>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testArrayMap<~lib/typedarray/Float32Array,f32>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testArrayMap<~lib/typedarray/Float64Array,f64>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testArraySome<~lib/typedarray/Uint8Array,u8>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testArraySome<~lib/typedarray/Uint8ClampedArray,u8>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testArraySome<~lib/typedarray/Uint16Array,u16>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testArraySome<~lib/typedarray/Uint32Array,u32>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testArraySome<~lib/typedarray/Uint64Array,u64>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testArraySome<~lib/typedarray/Float32Array,f32>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testArraySome<~lib/typedarray/Float64Array,f64>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testArrayFindIndex<~lib/typedarray/Int8Array,i8>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint8Array,u8>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint8ClampedArray,u8>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testArrayFindIndex<~lib/typedarray/Int16Array,i16>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint16Array,u16>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testArrayFindIndex<~lib/typedarray/Int32Array,i32>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint32Array,u32>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testArrayFindIndex<~lib/typedarray/Int64Array,i64>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint64Array,u64>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testArrayFindIndex<~lib/typedarray/Float32Array,f32>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testArrayFindIndex<~lib/typedarray/Float64Array,f64>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testArrayEvery<~lib/typedarray/Int8Array,i8>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testArrayEvery<~lib/typedarray/Uint8Array,u8>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testArrayEvery<~lib/typedarray/Uint8ClampedArray,u8>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testArrayEvery<~lib/typedarray/Int16Array,i16>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testArrayEvery<~lib/typedarray/Uint16Array,u16>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testArrayEvery<~lib/typedarray/Int32Array,i32>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testArrayEvery<~lib/typedarray/Uint32Array,u32>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testArrayEvery<~lib/typedarray/Int64Array,i64>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testArrayEvery<~lib/typedarray/Uint64Array,u64>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testArrayEvery<~lib/typedarray/Float32Array,f32>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testArrayEvery<~lib/typedarray/Float64Array,f64>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testArrayForEach<~lib/typedarray/Int8Array,i8>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testArrayForEach<~lib/typedarray/Uint8Array,u8>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testArrayForEach<~lib/typedarray/Uint8ClampedArray,u8>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testArrayForEach<~lib/typedarray/Int16Array,i16>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testArrayForEach<~lib/typedarray/Uint16Array,u16>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testArrayForEach<~lib/typedarray/Int32Array,i32>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testArrayForEach<~lib/typedarray/Uint32Array,u32>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testArrayForEach<~lib/typedarray/Int64Array,i64>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testArrayForEach<~lib/typedarray/Uint64Array,u64>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testArrayForEach<~lib/typedarray/Float32Array,f32>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testArrayForEach<~lib/typedarray/Float64Array,f64>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testArrayReverse<~lib/typedarray/Int8Array,i8>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testArrayReverse<~lib/typedarray/Uint8Array,u8>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testArrayReverse<~lib/typedarray/Uint8ClampedArray,u8>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testArrayReverse<~lib/typedarray/Int16Array,i16>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testArrayReverse<~lib/typedarray/Uint16Array,u16>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testArrayReverse<~lib/typedarray/Int32Array,i32>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testArrayReverse<~lib/typedarray/Uint32Array,u32>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testArrayReverse<~lib/typedarray/Int64Array,i64>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testArrayReverse<~lib/typedarray/Uint64Array,u64>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testArrayReverse<~lib/typedarray/Float32Array,f32>
   global.get $~lib/error
   br_if $uncaughtError
   call $std/typedarray/testArrayReverse<~lib/typedarray/Float64Array,f64>
   global.get $~lib/error
   br_if $uncaughtError
   global.get $std/typedarray/forEachValues
   call $~lib/rt/pure/__release
   global.get $~lib/error
   br_if $uncaughtError
   global.get $std/typedarray/testArrayReverseValues
   call $~lib/rt/pure/__release
   global.get $~lib/error
   br_if $uncaughtError
   return
  end
  i32.const 1592
  i32.const 24
  i32.const 1
  i32.const 0
  call $~lib/builtins/abort
  unreachable
 )
 (func $start (; 278 ;) (type $FUNCSIG$v)
  global.get $~lib/started
  if
   return
  else   
   i32.const 1
   global.set $~lib/started
  end
  call $start:std/typedarray
 )
 (func $~lib/rt/pure/markGray (; 279 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.tee $1
  i32.const 1879048192
  i32.and
  i32.const 268435456
  i32.ne
  if
   local.get $0
   local.get $1
   i32.const -1879048193
   i32.and
   i32.const 268435456
   i32.or
   i32.store offset=4
   local.get $0
   i32.const 16
   i32.add
   i32.const 2
   call $~lib/rt/__visit_members
  end
 )
 (func $~lib/rt/pure/scanBlack (; 280 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const -1879048193
  i32.and
  i32.store offset=4
  local.get $0
  i32.const 16
  i32.add
  i32.const 4
  call $~lib/rt/__visit_members
 )
 (func $~lib/rt/pure/scan (; 281 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.tee $1
  i32.const 1879048192
  i32.and
  i32.const 268435456
  i32.eq
  if
   local.get $1
   i32.const 268435455
   i32.and
   i32.const 0
   i32.gt_u
   if
    local.get $0
    call $~lib/rt/pure/scanBlack
   else    
    local.get $0
    local.get $1
    i32.const -1879048193
    i32.and
    i32.const 536870912
    i32.or
    i32.store offset=4
    local.get $0
    i32.const 16
    i32.add
    i32.const 3
    call $~lib/rt/__visit_members
   end
  end
 )
 (func $~lib/rt/pure/collectWhite (; 282 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.tee $1
  i32.const 1879048192
  i32.and
  i32.const 536870912
  i32.eq
  if (result i32)
   local.get $1
   i32.const -2147483648
   i32.and
   i32.eqz
  else   
   i32.const 0
  end
  if
   local.get $0
   local.get $1
   i32.const -1879048193
   i32.and
   i32.store offset=4
   local.get $0
   i32.const 16
   i32.add
   i32.const 5
   call $~lib/rt/__visit_members
   global.get $~lib/rt/tlsf/ROOT
   local.get $0
   call $~lib/rt/tlsf/freeBlock
  end
 )
 (func $~lib/rt/pure/__visit (; 283 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  local.get $0
  i32.const 1772
  i32.lt_u
  if
   return
  end
  local.get $0
  i32.const 16
  i32.sub
  local.set $0
  block $break|0
   block $case5|0
    block $case4|0
     block $case3|0
      block $case2|0
       block $case1|0
        local.get $1
        i32.const 1
        i32.ne
        if
         local.get $1
         i32.const 2
         i32.eq
         br_if $case1|0
         block $tablify|0
          local.get $1
          i32.const 3
          i32.sub
          br_table $case2|0 $case3|0 $case4|0 $tablify|0
         end
         br $case5|0
        end
        local.get $0
        call $~lib/rt/pure/decrement
        global.get $~lib/error
        if
         return
        end
        br $break|0
       end
       local.get $0
       i32.load offset=4
       i32.const 268435455
       i32.and
       i32.const 0
       i32.le_u
       if
        i32.const 0
        i32.const 80
        i32.const 75
        i32.const 17
        call $~lib/builtins/abort
        unreachable
       end
       local.get $0
       local.get $0
       i32.load offset=4
       i32.const 1
       i32.sub
       i32.store offset=4
       local.get $0
       call $~lib/rt/pure/markGray
       br $break|0
      end
      local.get $0
      call $~lib/rt/pure/scan
      br $break|0
     end
     local.get $0
     i32.load offset=4
     local.tee $1
     i32.const -268435456
     i32.and
     local.get $1
     i32.const 1
     i32.add
     i32.const -268435456
     i32.and
     i32.ne
     if
      i32.const 0
      i32.const 80
      i32.const 86
      i32.const 6
      call $~lib/builtins/abort
      unreachable
     end
     local.get $0
     local.get $1
     i32.const 1
     i32.add
     i32.store offset=4
     local.get $1
     i32.const 1879048192
     i32.and
     if
      local.get $0
      call $~lib/rt/pure/scanBlack
     end
     br $break|0
    end
    local.get $0
    call $~lib/rt/pure/collectWhite
    br $break|0
   end
   i32.const 0
   i32.const 80
   i32.const 97
   i32.const 24
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/rt/__visit_members (; 284 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $block$4$break
   block $switch$1$default
    block $switch$1$case$6
     block $switch$1$case$2
      local.get $0
      i32.const 8
      i32.sub
      i32.load
      br_table $switch$1$case$2 $switch$1$case$2 $block$4$break $block$4$break $switch$1$case$6 $switch$1$case$6 $block$4$break $block$4$break $block$4$break $block$4$break $block$4$break $block$4$break $block$4$break $block$4$break $block$4$break $block$4$break $block$4$break $block$4$break $switch$1$default
     end
     return
    end
    local.get $0
    i32.load
    local.tee $2
    if
     local.get $2
     local.get $1
     call $~lib/rt/pure/__visit
    end
    local.get $0
    i32.load offset=4
    local.tee $2
    if
     local.get $2
     local.get $1
     call $~lib/rt/pure/__visit
    end
    local.get $0
    i32.load offset=8
    local.tee $0
    if
     local.get $0
     local.get $1
     call $~lib/rt/pure/__visit
    end
    return
   end
   unreachable
  end
  local.get $0
  i32.load
  local.tee $0
  if
   local.get $0
   local.get $1
   call $~lib/rt/pure/__visit
  end
 )
 (func $null (; 285 ;) (type $FUNCSIG$v)
  nop
 )
)
