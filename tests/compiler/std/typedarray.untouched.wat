(module
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$viiii (func (param i32 i32 i32 i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$viii (func (param i32 i32 i32)))
 (type $FUNCSIG$viid (func (param i32 i32 f64)))
 (type $FUNCSIG$idd (func (param f64 f64) (result i32)))
 (type $FUNCSIG$dii (func (param i32 i32) (result f64)))
 (type $FUNCSIG$iiiii (func (param i32 i32 i32 i32) (result i32)))
 (type $FUNCSIG$viij (func (param i32 i32 i64)))
 (type $FUNCSIG$jjjii (func (param i64 i64 i32 i32) (result i64)))
 (type $FUNCSIG$jiij (func (param i32 i32 i64) (result i64)))
 (type $FUNCSIG$viif (func (param i32 i32 f32)))
 (type $FUNCSIG$fffii (func (param f32 f32 i32 i32) (result f32)))
 (type $FUNCSIG$fiif (func (param i32 i32 f32) (result f32)))
 (type $FUNCSIG$dddii (func (param f64 f64 i32 i32) (result f64)))
 (type $FUNCSIG$diid (func (param i32 i32 f64) (result f64)))
 (type $FUNCSIG$jjii (func (param i64 i32 i32) (result i64)))
 (type $FUNCSIG$jii (func (param i32 i32) (result i64)))
 (type $FUNCSIG$ffii (func (param f32 i32 i32) (result f32)))
 (type $FUNCSIG$fii (func (param i32 i32) (result f32)))
 (type $FUNCSIG$ddii (func (param f64 i32 i32) (result f64)))
 (type $FUNCSIG$ijii (func (param i64 i32 i32) (result i32)))
 (type $FUNCSIG$ifii (func (param f32 i32 i32) (result i32)))
 (type $FUNCSIG$idii (func (param f64 i32 i32) (result i32)))
 (type $FUNCSIG$fff (func (param f32 f32) (result f32)))
 (type $FUNCSIG$if (func (param f32) (result i32)))
 (type $FUNCSIG$ddd (func (param f64 f64) (result f64)))
 (type $FUNCSIG$id (func (param f64) (result i32)))
 (type $FUNCSIG$vjii (func (param i64 i32 i32)))
 (type $FUNCSIG$vfii (func (param f32 i32 i32)))
 (type $FUNCSIG$vdii (func (param f64 i32 i32)))
 (type $FUNCSIG$iiji (func (param i32 i64 i32) (result i32)))
 (type $FUNCSIG$iifi (func (param i32 f32 i32) (result i32)))
 (type $FUNCSIG$iidi (func (param i32 f64 i32) (result i32)))
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "rtrace" "onalloc" (func $~lib/rt/rtrace/onalloc (param i32)))
 (import "rtrace" "onincrement" (func $~lib/rt/rtrace/onincrement (param i32)))
 (import "rtrace" "ondecrement" (func $~lib/rt/rtrace/ondecrement (param i32)))
 (import "rtrace" "onfree" (func $~lib/rt/rtrace/onfree (param i32)))
 (memory $0 1)
 (data (i32.const 8) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h\00")
 (data (i32.const 56) "&\00\00\00\01\00\00\00\01\00\00\00&\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 112) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s\00")
 (data (i32.const 160) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00a\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e\00")
 (data (i32.const 216) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00p\00u\00r\00e\00.\00t\00s\00")
 (data (i32.const 264) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00")
 (data (i32.const 320) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00~\00l\00i\00b\00/\00r\00t\00.\00t\00s\00")
 (data (i32.const 360) "\"\00\00\00\01\00\00\00\01\00\00\00\"\00\00\00s\00t\00d\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 416) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00~\00l\00i\00b\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 472) "\05\00\00\00\01\00\00\00\00\00\00\00\05\00\00\00\01\01\01\04\05")
 (data (i32.const 496) "\1a\00\00\00\01\00\00\00\01\00\00\00\1a\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 544) "\05\00\00\00\01\00\00\00\00\00\00\00\05\00\00\00\00\00\00\00\00")
 (data (i32.const 568) "\05\00\00\00\01\00\00\00\00\00\00\00\05\00\00\00\01\01\00\00\00")
 (data (i32.const 592) "\05\00\00\00\01\00\00\00\00\00\00\00\05\00\00\00\01\01\00\02\02")
 (data (i32.const 616) "\05\00\00\00\01\00\00\00\00\00\00\00\05\00\00\00\01\01\00\02\02")
 (data (i32.const 640) "\03\00\00\00\01\00\00\00\00\00\00\00\03\00\00\00\00\00\00")
 (data (i32.const 664) "\05\00\00\00\01\00\00\00\00\00\00\00\05\00\00\00\01\00\00\00\02")
 (data (i32.const 688) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 728) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 768) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 808) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00")
 (data (i32.const 848) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00")
 (data (i32.const 888) "\0c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 920) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00")
 (data (i32.const 960) "\0c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\n\00\00\00\0c\00\00\00\0e\00\00\00")
 (data (i32.const 992) "\10\00\00\00\01\00\00\00\0f\00\00\00\10\00\00\00\d0\03\00\00\d0\03\00\00\0c\00\00\00\03\00\00\00")
 (data (i32.const 1024) "$\00\00\00\01\00\00\00\00\00\00\00$\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00\07\00\00\00\08\00\00\00\t\00\00\00")
 (data (i32.const 1080) "\10\00\00\00\01\00\00\00\0f\00\00\00\10\00\00\00\10\04\00\00\10\04\00\00$\00\00\00\t\00\00\00")
 (data (i32.const 1112) ",\00\00\00\01\00\00\00\00\00\00\00,\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00\07\00\00\00\08\00\00\00\t\00\00\00\n\00\00\00")
 (data (i32.const 1176) "\10\00\00\00\01\00\00\00\0f\00\00\00\10\00\00\00h\04\00\00h\04\00\00,\00\00\00\0b\00\00\00")
 (data (i32.const 1208) ",\00\00\00\01\00\00\00\00\00\00\00,\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00\07\00\00\00\08\00\00\00\t\00\00\00\n\00\00\00")
 (data (i32.const 1272) "\10\00\00\00\01\00\00\00\0f\00\00\00\10\00\00\00\c8\04\00\00\c8\04\00\00,\00\00\00\0b\00\00\00")
 (data (i32.const 1304) "\10\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\001\04\00\00\02\00\00\001\00\00\00\02\00\00\001\00\00\00\02\00\00\00Q\04\00\00\02\00\00\00Q\00\00\00\02\00\00\00\91\04\00\00\02\00\00\00\91\00\00\00\02\00\00\00\11\05\00\00\02\00\00\00\11\01\00\00\02\00\00\00\91\0c\00\00\02\00\00\00\11\0d\00\00\02\00\00\003\04\00\00\02\00\00\00\93\04\00\00\02\00\00\00")
 (table $0 123 funcref)
 (elem (i32.const 0) $null $~lib/util/sort/COMPARATOR<f64>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Uint8Array,u8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Uint8ClampedArray,u8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Uint16Array,u16>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Uint32Array,u32>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Uint64Array,u64>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Float32Array,f32>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Float64Array,f64>~anonymous|0 $std/typedarray/testReduceRight<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduceRight<~lib/typedarray/Uint8Array,u8>~anonymous|0 $std/typedarray/testReduceRight<~lib/typedarray/Uint8ClampedArray,u8>~anonymous|0 $std/typedarray/testReduceRight<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testReduceRight<~lib/typedarray/Uint16Array,u16>~anonymous|0 $std/typedarray/testReduceRight<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testReduceRight<~lib/typedarray/Uint32Array,u32>~anonymous|0 $std/typedarray/testReduceRight<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testReduceRight<~lib/typedarray/Uint64Array,u64>~anonymous|0 $std/typedarray/testReduceRight<~lib/typedarray/Float32Array,f32>~anonymous|0 $std/typedarray/testReduceRight<~lib/typedarray/Float64Array,f64>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Uint8Array,u8>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Uint8ClampedArray,u8>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Uint16Array,u16>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Uint32Array,u32>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Uint64Array,u64>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Float32Array,f32>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Float64Array,f64>~anonymous|0 $std/typedarray/testArrayFilter<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayFilter<~lib/typedarray/Uint8Array,u8>~anonymous|0 $std/typedarray/testArrayFilter<~lib/typedarray/Uint8ClampedArray,u8>~anonymous|0 $std/typedarray/testArrayFilter<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArrayFilter<~lib/typedarray/Uint16Array,u16>~anonymous|0 $std/typedarray/testArrayFilter<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArrayFilter<~lib/typedarray/Uint32Array,u32>~anonymous|0 $std/typedarray/testArrayFilter<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArrayFilter<~lib/typedarray/Uint64Array,u64>~anonymous|0 $std/typedarray/testArrayFilter<~lib/typedarray/Float32Array,f32>~anonymous|0 $std/typedarray/testArrayFilter<~lib/typedarray/Float64Array,f64>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Uint8Array,u8>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Uint8Array,u8>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Uint8ClampedArray,u8>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Uint8ClampedArray,u8>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Uint16Array,u16>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Uint16Array,u16>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Uint32Array,u32>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Uint32Array,u32>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Uint64Array,u64>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Uint64Array,u64>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Float32Array,f32>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Float32Array,f32>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Float64Array,f64>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Float64Array,f64>~anonymous|1 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int8Array,i8>~anonymous|1 $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint8Array,u8>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint8Array,u8>~anonymous|1 $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint8ClampedArray,u8>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint8ClampedArray,u8>~anonymous|1 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int16Array,i16>~anonymous|1 $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint16Array,u16>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint16Array,u16>~anonymous|1 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int32Array,i32>~anonymous|1 $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint32Array,u32>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint32Array,u32>~anonymous|1 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int64Array,i64>~anonymous|1 $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint64Array,u64>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint64Array,u64>~anonymous|1 $std/typedarray/testArrayFindIndex<~lib/typedarray/Float32Array,f32>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Float32Array,f32>~anonymous|1 $std/typedarray/testArrayFindIndex<~lib/typedarray/Float64Array,f64>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Float64Array,f64>~anonymous|1 $std/typedarray/testArrayEvery<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Int8Array,i8>~anonymous|1 $std/typedarray/testArrayEvery<~lib/typedarray/Uint8Array,u8>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Uint8Array,u8>~anonymous|1 $std/typedarray/testArrayEvery<~lib/typedarray/Uint8ClampedArray,u8>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Uint8ClampedArray,u8>~anonymous|1 $std/typedarray/testArrayEvery<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Int16Array,i16>~anonymous|1 $std/typedarray/testArrayEvery<~lib/typedarray/Uint16Array,u16>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Uint16Array,u16>~anonymous|1 $std/typedarray/testArrayEvery<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Int32Array,i32>~anonymous|1 $std/typedarray/testArrayEvery<~lib/typedarray/Uint32Array,u32>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Uint32Array,u32>~anonymous|1 $std/typedarray/testArrayEvery<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Int64Array,i64>~anonymous|1 $std/typedarray/testArrayEvery<~lib/typedarray/Uint64Array,u64>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Uint64Array,u64>~anonymous|1 $std/typedarray/testArrayEvery<~lib/typedarray/Float32Array,f32>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Float32Array,f32>~anonymous|1 $std/typedarray/testArrayEvery<~lib/typedarray/Float64Array,f64>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Float64Array,f64>~anonymous|1 $std/typedarray/testArrayForEach<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Uint8Array,u8>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Uint8ClampedArray,u8>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Uint16Array,u16>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Uint32Array,u32>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Uint64Array,u64>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Float32Array,f32>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Float64Array,f64>~anonymous|0)
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
 (global $~lib/rt/tlsf/ROOT (mut i32) (i32.const 0))
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $~lib/rt/pure/CUR (mut i32) (i32.const 0))
 (global $~lib/rt/pure/END (mut i32) (i32.const 0))
 (global $~lib/rt/pure/ROOTS (mut i32) (i32.const 0))
 (global $~lib/argc (mut i32) (i32.const 0))
 (global $~lib/builtins/i32.MAX_VALUE i32 (i32.const 2147483647))
 (global $std/typedarray/forEachCallCount (mut i32) (i32.const 0))
 (global $std/typedarray/forEachSelf (mut i32) (i32.const 0))
 (global $std/typedarray/forEachValues i32 (i32.const 1008))
 (global $std/typedarray/testArrayReverseValues i32 (i32.const 1096))
 (global $std/typedarray/testArrayIndexOfAndLastIndexOfValues i32 (i32.const 1192))
 (global $std/typedarray/testArrayWrapValues i32 (i32.const 1288))
 (global $~lib/started (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 1304))
 (global $~lib/heap/__heap_base i32 (i32.const 1436))
 (export "__start" (func $start))
 (export "memory" (memory $0))
 (func $~lib/rt/tlsf/removeBlock (; 5 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
  local.get $1
  i32.load
  local.set $2
  local.get $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 277
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $3
  local.get $3
  i32.const 16
  i32.ge_u
  if (result i32)
   local.get $3
   i32.const 1073741808
   i32.lt_u
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 279
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $4
   local.get $3
   i32.const 4
   i32.shr_u
   local.set $5
  else   
   i32.const 31
   local.get $3
   i32.clz
   i32.sub
   local.set $4
   local.get $3
   local.get $4
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $5
   local.get $4
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $4
  end
  local.get $4
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $5
   i32.const 16
   i32.lt_u
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 292
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load offset=16
  local.set $6
  local.get $1
  i32.load offset=20
  local.set $7
  local.get $6
  if
   local.get $6
   local.get $7
   i32.store offset=20
  end
  local.get $7
  if
   local.get $7
   local.get $6
   i32.store offset=16
  end
  local.get $1
  local.get $0
  local.set $10
  local.get $4
  local.set $9
  local.get $5
  local.set $8
  local.get $10
  local.get $9
  i32.const 4
  i32.shl
  local.get $8
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  i32.eq
  if
   local.get $0
   local.set $11
   local.get $4
   local.set $10
   local.get $5
   local.set $9
   local.get $7
   local.set $8
   local.get $11
   local.get $10
   i32.const 4
   i32.shl
   local.get $9
   i32.add
   i32.const 2
   i32.shl
   i32.add
   local.get $8
   i32.store offset=96
   local.get $7
   i32.eqz
   if
    local.get $0
    local.set $9
    local.get $4
    local.set $8
    local.get $9
    local.get $8
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    local.set $9
    local.get $0
    local.set $8
    local.get $4
    local.set $11
    local.get $9
    i32.const 1
    local.get $5
    i32.shl
    i32.const -1
    i32.xor
    i32.and
    local.tee $9
    local.set $10
    local.get $8
    local.get $11
    i32.const 2
    i32.shl
    i32.add
    local.get $10
    i32.store offset=4
    local.get $9
    i32.eqz
    if
     local.get $0
     local.get $0
     i32.load
     i32.const 1
     local.get $4
     i32.shl
     i32.const -1
     i32.xor
     i32.and
     i32.store
    end
   end
  end
 )
 (func $~lib/rt/tlsf/insertBlock (; 6 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
  local.get $1
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 205
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.load
  local.set $2
  local.get $2
  i32.const 1
  i32.and
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 207
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.set $3
  local.get $3
  i32.const 16
  i32.add
  local.get $3
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.add
  local.set $4
  local.get $4
  i32.load
  local.set $5
  local.get $5
  i32.const 1
  i32.and
  if
   local.get $2
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.add
   local.get $5
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.set $3
   local.get $3
   i32.const 1073741808
   i32.lt_u
   if
    local.get $0
    local.get $4
    call $~lib/rt/tlsf/removeBlock
    local.get $1
    local.get $2
    i32.const 3
    i32.and
    local.get $3
    i32.or
    local.tee $2
    i32.store
    local.get $1
    local.set $6
    local.get $6
    i32.const 16
    i32.add
    local.get $6
    i32.load
    i32.const 3
    i32.const -1
    i32.xor
    i32.and
    i32.add
    local.set $4
    local.get $4
    i32.load
    local.set $5
   end
  end
  local.get $2
  i32.const 2
  i32.and
  if
   local.get $1
   local.set $6
   local.get $6
   i32.const 4
   i32.sub
   i32.load
   local.set $6
   local.get $6
   i32.load
   local.set $3
   local.get $3
   i32.const 1
   i32.and
   i32.eqz
   if
    i32.const 0
    i32.const 128
    i32.const 228
    i32.const 15
    call $~lib/builtins/abort
    unreachable
   end
   local.get $3
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.add
   local.get $2
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.set $7
   local.get $7
   i32.const 1073741808
   i32.lt_u
   if
    local.get $0
    local.get $6
    call $~lib/rt/tlsf/removeBlock
    local.get $6
    local.get $3
    i32.const 3
    i32.and
    local.get $7
    i32.or
    local.tee $2
    i32.store
    local.get $6
    local.set $1
   end
  end
  local.get $4
  local.get $5
  i32.const 2
  i32.or
  i32.store
  local.get $2
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.set $8
  local.get $8
  i32.const 16
  i32.ge_u
  if (result i32)
   local.get $8
   i32.const 1073741808
   i32.lt_u
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 243
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 16
  i32.add
  local.get $8
  i32.add
  local.get $4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 244
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 4
  i32.sub
  local.get $1
  i32.store
  local.get $8
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $9
   local.get $8
   i32.const 4
   i32.shr_u
   local.set $10
  else   
   i32.const 31
   local.get $8
   i32.clz
   i32.sub
   local.set $9
   local.get $8
   local.get $9
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $10
   local.get $9
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $9
  end
  local.get $9
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $10
   i32.const 16
   i32.lt_u
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 260
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.set $7
  local.get $9
  local.set $3
  local.get $10
  local.set $6
  local.get $7
  local.get $3
  i32.const 4
  i32.shl
  local.get $6
  i32.add
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=96
  local.set $11
  local.get $1
  i32.const 0
  i32.store offset=16
  local.get $1
  local.get $11
  i32.store offset=20
  local.get $11
  if
   local.get $11
   local.get $1
   i32.store offset=16
  end
  local.get $0
  local.set $12
  local.get $9
  local.set $7
  local.get $10
  local.set $3
  local.get $1
  local.set $6
  local.get $12
  local.get $7
  i32.const 4
  i32.shl
  local.get $3
  i32.add
  i32.const 2
  i32.shl
  i32.add
  local.get $6
  i32.store offset=96
  local.get $0
  local.get $0
  i32.load
  i32.const 1
  local.get $9
  i32.shl
  i32.or
  i32.store
  local.get $0
  local.set $13
  local.get $9
  local.set $12
  local.get $0
  local.set $3
  local.get $9
  local.set $6
  local.get $3
  local.get $6
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const 1
  local.get $10
  i32.shl
  i32.or
  local.set $7
  local.get $13
  local.get $12
  i32.const 2
  i32.shl
  i32.add
  local.get $7
  i32.store offset=4
 )
 (func $~lib/rt/tlsf/addMemory (; 7 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $1
  local.get $2
  i32.le_u
  if (result i32)
   local.get $1
   i32.const 15
   i32.and
   i32.eqz
  else   
   i32.const 0
  end
  if (result i32)
   local.get $2
   i32.const 15
   i32.and
   i32.eqz
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 386
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.set $3
  local.get $3
  i32.load offset=1568
  local.set $4
  i32.const 0
  local.set $5
  local.get $4
  if
   local.get $1
   local.get $4
   i32.const 16
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 128
    i32.const 396
    i32.const 15
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 16
   i32.sub
   local.get $4
   i32.eq
   if
    local.get $1
    i32.const 16
    i32.sub
    local.set $1
    local.get $4
    i32.load
    local.set $5
   else    
    nop
   end
  else   
   local.get $1
   local.get $0
   i32.const 1572
   i32.add
   i32.ge_u
   i32.eqz
   if
    i32.const 0
    i32.const 128
    i32.const 408
    i32.const 4
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $2
  local.get $1
  i32.sub
  local.set $6
  local.get $6
  i32.const 48
  i32.lt_u
  if
   i32.const 0
   return
  end
  local.get $6
  i32.const 16
  i32.const 1
  i32.shl
  i32.sub
  local.set $7
  local.get $1
  local.set $8
  local.get $8
  local.get $7
  i32.const 1
  i32.or
  local.get $5
  i32.const 2
  i32.and
  i32.or
  i32.store
  local.get $8
  i32.const 0
  i32.store offset=16
  local.get $8
  i32.const 0
  i32.store offset=20
  local.get $1
  local.get $6
  i32.add
  i32.const 16
  i32.sub
  local.set $4
  local.get $4
  i32.const 0
  i32.const 2
  i32.or
  i32.store
  local.get $0
  local.set $9
  local.get $4
  local.set $3
  local.get $9
  local.get $3
  i32.store offset=1568
  local.get $0
  local.get $8
  call $~lib/rt/tlsf/insertBlock
  i32.const 1
 )
 (func $~lib/rt/tlsf/initializeRoot (; 8 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  global.get $~lib/heap/__heap_base
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.set $0
  memory.size
  local.set $1
  local.get $0
  i32.const 1572
  i32.add
  i32.const 65535
  i32.add
  i32.const 65535
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.shr_u
  local.set $2
  local.get $2
  local.get $1
  i32.gt_s
  if (result i32)
   local.get $2
   local.get $1
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
  local.get $0
  local.set $3
  local.get $3
  i32.const 0
  i32.store
  local.get $3
  local.set $5
  i32.const 0
  local.set $4
  local.get $5
  local.get $4
  i32.store offset=1568
  block $break|0
   i32.const 0
   local.set $5
   loop $loop|0
    local.get $5
    i32.const 23
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $3
    local.set $7
    local.get $5
    local.set $6
    i32.const 0
    local.set $4
    local.get $7
    local.get $6
    i32.const 2
    i32.shl
    i32.add
    local.get $4
    i32.store offset=4
    block $break|1
     i32.const 0
     local.set $7
     loop $loop|1
      local.get $7
      i32.const 16
      i32.lt_u
      i32.eqz
      br_if $break|1
      local.get $3
      local.set $9
      local.get $5
      local.set $8
      local.get $7
      local.set $6
      i32.const 0
      local.set $4
      local.get $9
      local.get $8
      i32.const 4
      i32.shl
      local.get $6
      i32.add
      i32.const 2
      i32.shl
      i32.add
      local.get $4
      i32.store offset=96
      local.get $7
      i32.const 1
      i32.add
      local.set $7
      br $loop|1
     end
     unreachable
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $loop|0
   end
   unreachable
  end
  local.get $3
  local.get $0
  i32.const 1572
  i32.add
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  memory.size
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  drop
  local.get $3
  global.set $~lib/rt/tlsf/ROOT
 )
 (func $~lib/rt/tlsf/prepareSize (; 9 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.const 1073741808
  i32.ge_u
  if
   i32.const 176
   i32.const 128
   i32.const 457
   i32.const 29
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 15
  i32.add
  i32.const 15
  i32.const -1
  i32.xor
  i32.and
  local.tee $1
  i32.const 16
  local.tee $2
  local.get $1
  local.get $2
  i32.gt_u
  select
 )
 (func $~lib/rt/tlsf/searchBlock (; 10 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $1
  i32.const 256
  i32.lt_u
  if
   i32.const 0
   local.set $2
   local.get $1
   i32.const 4
   i32.shr_u
   local.set $3
  else   
   local.get $1
   i32.const 536870904
   i32.lt_u
   if (result i32)
    local.get $1
    i32.const 1
    i32.const 27
    local.get $1
    i32.clz
    i32.sub
    i32.shl
    i32.add
    i32.const 1
    i32.sub
   else    
    local.get $1
   end
   local.set $4
   i32.const 31
   local.get $4
   i32.clz
   i32.sub
   local.set $2
   local.get $4
   local.get $2
   i32.const 4
   i32.sub
   i32.shr_u
   i32.const 1
   i32.const 4
   i32.shl
   i32.xor
   local.set $3
   local.get $2
   i32.const 8
   i32.const 1
   i32.sub
   i32.sub
   local.set $2
  end
  local.get $2
  i32.const 23
  i32.lt_u
  if (result i32)
   local.get $3
   i32.const 16
   i32.lt_u
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 338
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.set $5
  local.get $2
  local.set $4
  local.get $5
  local.get $4
  i32.const 2
  i32.shl
  i32.add
  i32.load offset=4
  i32.const 0
  i32.const -1
  i32.xor
  local.get $3
  i32.shl
  i32.and
  local.set $6
  i32.const 0
  local.set $7
  local.get $6
  i32.eqz
  if
   local.get $0
   i32.load
   i32.const 0
   i32.const -1
   i32.xor
   local.get $2
   i32.const 1
   i32.add
   i32.shl
   i32.and
   local.set $5
   local.get $5
   i32.eqz
   if
    i32.const 0
    local.set $7
   else    
    local.get $5
    i32.ctz
    local.set $2
    local.get $0
    local.set $8
    local.get $2
    local.set $4
    local.get $8
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=4
    local.set $6
    local.get $6
    i32.eqz
    if
     i32.const 0
     i32.const 128
     i32.const 351
     i32.const 17
     call $~lib/builtins/abort
     unreachable
    end
    local.get $0
    local.set $9
    local.get $2
    local.set $8
    local.get $6
    i32.ctz
    local.set $4
    local.get $9
    local.get $8
    i32.const 4
    i32.shl
    local.get $4
    i32.add
    i32.const 2
    i32.shl
    i32.add
    i32.load offset=96
    local.set $7
   end
  else   
   local.get $0
   local.set $9
   local.get $2
   local.set $8
   local.get $6
   i32.ctz
   local.set $4
   local.get $9
   local.get $8
   i32.const 4
   i32.shl
   local.get $4
   i32.add
   i32.const 2
   i32.shl
   i32.add
   i32.load offset=96
   local.set $7
  end
  local.get $7
 )
 (func $~lib/rt/tlsf/growMemory (; 11 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $1
  i32.const 536870904
  i32.lt_u
  if
   local.get $1
   i32.const 1
   i32.const 27
   local.get $1
   i32.clz
   i32.sub
   i32.shl
   i32.const 1
   i32.sub
   i32.add
   local.set $1
  end
  memory.size
  local.set $2
  local.get $1
  i32.const 16
  local.get $2
  i32.const 16
  i32.shl
  i32.const 16
  i32.sub
  local.get $0
  local.set $3
  local.get $3
  i32.load offset=1568
  i32.ne
  i32.shl
  i32.add
  local.set $1
  local.get $1
  i32.const 65535
  i32.add
  i32.const 65535
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.shr_u
  local.set $4
  local.get $2
  local.tee $3
  local.get $4
  local.tee $5
  local.get $3
  local.get $5
  i32.gt_s
  select
  local.set $6
  local.get $6
  memory.grow
  i32.const 0
  i32.lt_s
  if
   local.get $4
   memory.grow
   i32.const 0
   i32.lt_s
   if
    unreachable
   end
  end
  memory.size
  local.set $7
  local.get $0
  local.get $2
  i32.const 16
  i32.shl
  local.get $7
  i32.const 16
  i32.shl
  call $~lib/rt/tlsf/addMemory
  drop
 )
 (func $~lib/rt/tlsf/prepareBlock (; 12 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.load
  local.set $3
  local.get $2
  i32.const 15
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 365
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $2
  i32.sub
  local.set $4
  local.get $4
  i32.const 32
  i32.ge_u
  if
   local.get $1
   local.get $2
   local.get $3
   i32.const 2
   i32.and
   i32.or
   i32.store
   local.get $1
   i32.const 16
   i32.add
   local.get $2
   i32.add
   local.set $5
   local.get $5
   local.get $4
   i32.const 16
   i32.sub
   i32.const 1
   i32.or
   i32.store
   local.get $0
   local.get $5
   call $~lib/rt/tlsf/insertBlock
  else   
   local.get $1
   local.get $3
   i32.const 1
   i32.const -1
   i32.xor
   i32.and
   i32.store
   local.get $1
   local.set $5
   local.get $5
   i32.const 16
   i32.add
   local.get $5
   i32.load
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.get $1
   local.set $5
   local.get $5
   i32.const 16
   i32.add
   local.get $5
   i32.load
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   i32.load
   i32.const 2
   i32.const -1
   i32.xor
   i32.and
   i32.store
  end
 )
 (func $~lib/rt/tlsf/allocateBlock (; 13 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/tlsf/prepareSize
  local.set $2
  local.get $0
  local.get $2
  call $~lib/rt/tlsf/searchBlock
  local.set $3
  local.get $3
  i32.eqz
  if
   local.get $0
   local.get $2
   call $~lib/rt/tlsf/growMemory
   local.get $0
   local.get $2
   call $~lib/rt/tlsf/searchBlock
   local.set $3
   local.get $3
   i32.eqz
   if
    i32.const 0
    i32.const 128
    i32.const 487
    i32.const 15
    call $~lib/builtins/abort
    unreachable
   end
  end
  local.get $3
  i32.load
  i32.const -4
  i32.and
  local.get $2
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 489
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 0
  i32.store offset=4
  local.get $3
  local.get $1
  i32.store offset=12
  local.get $0
  local.get $3
  call $~lib/rt/tlsf/removeBlock
  local.get $0
  local.get $3
  local.get $2
  call $~lib/rt/tlsf/prepareBlock
  local.get $3
  call $~lib/rt/rtrace/onalloc
  local.get $3
 )
 (func $~lib/rt/tlsf/__alloc (; 14 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  global.get $~lib/rt/tlsf/ROOT
  local.set $2
  local.get $2
  i32.eqz
  if
   call $~lib/rt/tlsf/initializeRoot
   global.get $~lib/rt/tlsf/ROOT
   local.set $2
  end
  local.get $2
  local.get $0
  call $~lib/rt/tlsf/allocateBlock
  local.set $3
  local.get $3
  local.get $1
  i32.store offset=8
  local.get $3
  i32.const 16
  i32.add
 )
 (func $~lib/memory/memory.fill (; 15 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  block $~lib/util/memory/memset|inlined.0
   local.get $0
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   local.get $3
   i32.eqz
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   local.get $4
   i32.store8
   local.get $5
   local.get $3
   i32.add
   i32.const 1
   i32.sub
   local.get $4
   i32.store8
   local.get $3
   i32.const 2
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   i32.const 1
   i32.add
   local.get $4
   i32.store8
   local.get $5
   i32.const 2
   i32.add
   local.get $4
   i32.store8
   local.get $5
   local.get $3
   i32.add
   i32.const 2
   i32.sub
   local.get $4
   i32.store8
   local.get $5
   local.get $3
   i32.add
   i32.const 3
   i32.sub
   local.get $4
   i32.store8
   local.get $3
   i32.const 6
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   i32.const 3
   i32.add
   local.get $4
   i32.store8
   local.get $5
   local.get $3
   i32.add
   i32.const 4
   i32.sub
   local.get $4
   i32.store8
   local.get $3
   i32.const 8
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   i32.const 0
   local.get $5
   i32.sub
   i32.const 3
   i32.and
   local.set $6
   local.get $5
   local.get $6
   i32.add
   local.set $5
   local.get $3
   local.get $6
   i32.sub
   local.set $3
   local.get $3
   i32.const -4
   i32.and
   local.set $3
   i32.const -1
   i32.const 255
   i32.div_u
   local.get $4
   i32.const 255
   i32.and
   i32.mul
   local.set $7
   local.get $5
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 4
   i32.sub
   local.get $7
   i32.store
   local.get $3
   i32.const 8
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   i32.const 4
   i32.add
   local.get $7
   i32.store
   local.get $5
   i32.const 8
   i32.add
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 12
   i32.sub
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 8
   i32.sub
   local.get $7
   i32.store
   local.get $3
   i32.const 24
   i32.le_u
   if
    br $~lib/util/memory/memset|inlined.0
   end
   local.get $5
   i32.const 12
   i32.add
   local.get $7
   i32.store
   local.get $5
   i32.const 16
   i32.add
   local.get $7
   i32.store
   local.get $5
   i32.const 20
   i32.add
   local.get $7
   i32.store
   local.get $5
   i32.const 24
   i32.add
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 28
   i32.sub
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 24
   i32.sub
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 20
   i32.sub
   local.get $7
   i32.store
   local.get $5
   local.get $3
   i32.add
   i32.const 16
   i32.sub
   local.get $7
   i32.store
   i32.const 24
   local.get $5
   i32.const 4
   i32.and
   i32.add
   local.set $6
   local.get $5
   local.get $6
   i32.add
   local.set $5
   local.get $3
   local.get $6
   i32.sub
   local.set $3
   local.get $7
   i64.extend_i32_u
   local.get $7
   i64.extend_i32_u
   i64.const 32
   i64.shl
   i64.or
   local.set $8
   block $break|0
    loop $continue|0
     local.get $3
     i32.const 32
     i32.ge_u
     i32.eqz
     br_if $break|0
     local.get $5
     local.get $8
     i64.store
     local.get $5
     i32.const 8
     i32.add
     local.get $8
     i64.store
     local.get $5
     i32.const 16
     i32.add
     local.get $8
     i64.store
     local.get $5
     i32.const 24
     i32.add
     local.get $8
     i64.store
     local.get $3
     i32.const 32
     i32.sub
     local.set $3
     local.get $5
     i32.const 32
     i32.add
     local.set $5
     br $continue|0
    end
    unreachable
   end
  end
 )
 (func $~lib/rt/pure/increment (; 16 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  i32.const -268435456
  i32.and
  local.get $1
  i32.const 1
  i32.add
  i32.const -268435456
  i32.and
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 232
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
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 232
   i32.const 107
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
 )
 (func $~lib/rt/pure/__retain (; 17 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  global.get $~lib/heap/__heap_base
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/increment
  end
  local.get $0
 )
 (func $~lib/rt/tlsf/freeBlock (; 18 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  local.get $1
  i32.load
  local.set $2
  local.get $2
  i32.const 1
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 546
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
 (func $~lib/rt/__typeinfo (; 19 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  global.get $~lib/rt/__rtti_base
  local.set $1
  local.get $0
  local.get $1
  i32.load
  i32.gt_u
  if
   i32.const 280
   i32.const 336
   i32.const 22
   i32.const 27
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 4
  i32.add
  local.get $0
  i32.const 8
  i32.mul
  i32.add
  i32.load
 )
 (func $~lib/util/memory/memcpy (; 20 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
     i32.const 0
    end
    i32.eqz
    br_if $break|0
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
    i32.load8_u
    i32.store8
    local.get $2
    i32.const 1
    i32.sub
    local.set $2
    br $continue|0
   end
   unreachable
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
     i32.eqz
     br_if $break|1
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
    unreachable
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
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
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
      local.get $1
      i32.load
      local.set $3
      local.get $0
      local.tee $5
      i32.const 1
      i32.add
      local.set $0
      local.get $5
      local.get $1
      local.tee $5
      i32.const 1
      i32.add
      local.set $1
      local.get $5
      i32.load8_u
      i32.store8
      local.get $0
      local.tee $5
      i32.const 1
      i32.add
      local.set $0
      local.get $5
      local.get $1
      local.tee $5
      i32.const 1
      i32.add
      local.set $1
      local.get $5
      i32.load8_u
      i32.store8
      local.get $0
      local.tee $5
      i32.const 1
      i32.add
      local.set $0
      local.get $5
      local.get $1
      local.tee $5
      i32.const 1
      i32.add
      local.set $1
      local.get $5
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
        i32.eqz
        br_if $break|3
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
        br $continue|3
       end
       unreachable
      end
      br $break|2
     end
     local.get $1
     i32.load
     local.set $3
     local.get $0
     local.tee $5
     i32.const 1
     i32.add
     local.set $0
     local.get $5
     local.get $1
     local.tee $5
     i32.const 1
     i32.add
     local.set $1
     local.get $5
     i32.load8_u
     i32.store8
     local.get $0
     local.tee $5
     i32.const 1
     i32.add
     local.set $0
     local.get $5
     local.get $1
     local.tee $5
     i32.const 1
     i32.add
     local.set $1
     local.get $5
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
       i32.eqz
       br_if $break|4
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
       br $continue|4
      end
      unreachable
     end
     br $break|2
    end
    local.get $1
    i32.load
    local.set $3
    local.get $0
    local.tee $5
    i32.const 1
    i32.add
    local.set $0
    local.get $5
    local.get $1
    local.tee $5
    i32.const 1
    i32.add
    local.set $1
    local.get $5
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
      i32.eqz
      br_if $break|5
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
      br $continue|5
     end
     unreachable
    end
    br $break|2
   end
  end
  local.get $2
  i32.const 16
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 8
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 4
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 2
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
  local.get $2
  i32.const 1
  i32.and
  if
   local.get $0
   local.tee $5
   i32.const 1
   i32.add
   local.set $0
   local.get $5
   local.get $1
   local.tee $5
   i32.const 1
   i32.add
   local.set $1
   local.get $5
   i32.load8_u
   i32.store8
  end
 )
 (func $~lib/memory/memory.copy (; 21 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $~lib/util/memory/memmove|inlined.0
   local.get $0
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   local.get $5
   local.get $4
   i32.eq
   if
    br $~lib/util/memory/memmove|inlined.0
   end
   local.get $4
   local.get $3
   i32.add
   local.get $5
   i32.le_u
   if (result i32)
    i32.const 1
   else    
    local.get $5
    local.get $3
    i32.add
    local.get $4
    i32.le_u
   end
   if
    local.get $5
    local.get $4
    local.get $3
    call $~lib/util/memory/memcpy
    br $~lib/util/memory/memmove|inlined.0
   end
   local.get $5
   local.get $4
   i32.lt_u
   if
    local.get $4
    i32.const 7
    i32.and
    local.get $5
    i32.const 7
    i32.and
    i32.eq
    if
     block $break|0
      loop $continue|0
       local.get $5
       i32.const 7
       i32.and
       i32.eqz
       br_if $break|0
       local.get $3
       i32.eqz
       if
        br $~lib/util/memory/memmove|inlined.0
       end
       local.get $3
       i32.const 1
       i32.sub
       local.set $3
       local.get $5
       local.tee $6
       i32.const 1
       i32.add
       local.set $5
       local.get $6
       local.get $4
       local.tee $6
       i32.const 1
       i32.add
       local.set $4
       local.get $6
       i32.load8_u
       i32.store8
       br $continue|0
      end
      unreachable
     end
     block $break|1
      loop $continue|1
       local.get $3
       i32.const 8
       i32.ge_u
       i32.eqz
       br_if $break|1
       local.get $5
       local.get $4
       i64.load
       i64.store
       local.get $3
       i32.const 8
       i32.sub
       local.set $3
       local.get $5
       i32.const 8
       i32.add
       local.set $5
       local.get $4
       i32.const 8
       i32.add
       local.set $4
       br $continue|1
      end
      unreachable
     end
    end
    block $break|2
     loop $continue|2
      local.get $3
      i32.eqz
      br_if $break|2
      local.get $5
      local.tee $6
      i32.const 1
      i32.add
      local.set $5
      local.get $6
      local.get $4
      local.tee $6
      i32.const 1
      i32.add
      local.set $4
      local.get $6
      i32.load8_u
      i32.store8
      local.get $3
      i32.const 1
      i32.sub
      local.set $3
      br $continue|2
     end
     unreachable
    end
   else    
    local.get $4
    i32.const 7
    i32.and
    local.get $5
    i32.const 7
    i32.and
    i32.eq
    if
     block $break|3
      loop $continue|3
       local.get $5
       local.get $3
       i32.add
       i32.const 7
       i32.and
       i32.eqz
       br_if $break|3
       local.get $3
       i32.eqz
       if
        br $~lib/util/memory/memmove|inlined.0
       end
       local.get $5
       local.get $3
       i32.const 1
       i32.sub
       local.tee $3
       i32.add
       local.get $4
       local.get $3
       i32.add
       i32.load8_u
       i32.store8
       br $continue|3
      end
      unreachable
     end
     block $break|4
      loop $continue|4
       local.get $3
       i32.const 8
       i32.ge_u
       i32.eqz
       br_if $break|4
       local.get $3
       i32.const 8
       i32.sub
       local.set $3
       local.get $5
       local.get $3
       i32.add
       local.get $4
       local.get $3
       i32.add
       i64.load
       i64.store
       br $continue|4
      end
      unreachable
     end
    end
    block $break|5
     loop $continue|5
      local.get $3
      i32.eqz
      br_if $break|5
      local.get $5
      local.get $3
      i32.const 1
      i32.sub
      local.tee $3
      i32.add
      local.get $4
      local.get $3
      i32.add
      i32.load8_u
      i32.store8
      br $continue|5
     end
     unreachable
    end
   end
  end
 )
 (func $~lib/rt/tlsf/__free (; 22 ;) (type $FUNCSIG$vi) (param $0 i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 576
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  i32.ne
  if (result i32)
   local.get $0
   i32.const 15
   i32.and
   i32.eqz
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 577
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
 (func $~lib/rt/pure/growRoots (; 23 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $~lib/rt/pure/ROOTS
  local.set $0
  global.get $~lib/rt/pure/CUR
  local.get $0
  i32.sub
  local.set $1
  local.get $1
  i32.const 2
  i32.mul
  local.tee $2
  i32.const 64
  i32.const 2
  i32.shl
  local.tee $3
  local.get $2
  local.get $3
  i32.gt_u
  select
  local.set $4
  local.get $4
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $5
  local.get $5
  i32.const 16
  i32.sub
  call $~lib/rt/rtrace/onfree
  local.get $5
  local.get $0
  local.get $1
  call $~lib/memory/memory.copy
  local.get $0
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/rtrace/onalloc
   local.get $0
   call $~lib/rt/tlsf/__free
  end
  local.get $5
  global.set $~lib/rt/pure/ROOTS
  local.get $5
  local.get $1
  i32.add
  global.set $~lib/rt/pure/CUR
  local.get $5
  local.get $4
  i32.add
  global.set $~lib/rt/pure/END
 )
 (func $~lib/rt/pure/appendRoot (; 24 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  global.get $~lib/rt/pure/CUR
  local.set $1
  local.get $1
  global.get $~lib/rt/pure/END
  i32.ge_u
  if
   call $~lib/rt/pure/growRoots
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
 (func $~lib/rt/pure/decrement (; 25 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  i32.const 268435455
  i32.and
  local.set $2
  local.get $0
  call $~lib/rt/rtrace/ondecrement
  local.get $0
  i32.load
  i32.const 1
  i32.and
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 232
   i32.const 115
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 1
  i32.eq
  if
   local.get $0
   i32.const 16
   i32.add
   i32.const 1
   call $~lib/rt/__visit_members
   local.get $1
   i32.const -2147483648
   i32.and
   i32.eqz
   if
    global.get $~lib/rt/tlsf/ROOT
    local.get $0
    call $~lib/rt/tlsf/freeBlock
   else    
    local.get $0
    i32.const -2147483648
    i32.const 0
    i32.or
    i32.const 0
    i32.or
    i32.store offset=4
   end
  else   
   local.get $2
   i32.const 0
   i32.gt_u
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 124
    i32.const 15
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load offset=8
   call $~lib/rt/__typeinfo
   i32.const 16
   i32.and
   i32.eqz
   if
    local.get $0
    i32.const -2147483648
    i32.const 805306368
    i32.or
    local.get $2
    i32.const 1
    i32.sub
    i32.or
    i32.store offset=4
    local.get $1
    i32.const -2147483648
    i32.and
    i32.eqz
    if
     local.get $0
     call $~lib/rt/pure/appendRoot
    end
   else    
    local.get $0
    local.get $1
    i32.const 268435455
    i32.const -1
    i32.xor
    i32.and
    local.get $2
    i32.const 1
    i32.sub
    i32.or
    i32.store offset=4
   end
  end
 )
 (func $~lib/rt/pure/__release (; 26 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  global.get $~lib/heap/__heap_base
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
  end
 )
 (func $~lib/arraybuffer/ArrayBufferView#constructor (; 27 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.const 1073741808
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   i32.const 24
   i32.const 72
   i32.const 14
   i32.const 56
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  local.get $2
  i32.shl
  local.tee $1
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $3
  local.get $3
  i32.const 0
  local.get $1
  call $~lib/memory/memory.fill
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
  local.tee $4
  local.get $3
  local.tee $5
  local.get $4
  i32.load
  local.tee $4
  i32.ne
  if
   local.get $5
   call $~lib/rt/pure/__retain
   drop
   local.get $4
   call $~lib/rt/pure/__release
  end
  local.get $5
  i32.store
  local.get $0
  local.get $3
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
 )
 (func $~lib/typedarray/Int8Array#constructor (; 28 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 12
   i32.const 3
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
  end
  local.get $1
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
 )
 (func $~lib/arraybuffer/ArrayBufferView#get:byteOffset (; 29 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load
  i32.sub
 )
 (func $~lib/arraybuffer/ArrayBufferView#get:byteLength (; 30 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=8
 )
 (func $~lib/typedarray/Int8Array#get:length (; 31 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
 )
 (func $~lib/typedarray/Uint8Array#constructor (; 32 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 12
   i32.const 4
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
  end
  local.get $1
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
 )
 (func $~lib/typedarray/Uint8Array#get:length (; 33 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
 )
 (func $~lib/typedarray/Uint8ClampedArray#constructor (; 34 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 12
   i32.const 5
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
  end
  local.get $1
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
 )
 (func $~lib/typedarray/Uint8ClampedArray#get:length (; 35 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
 )
 (func $~lib/typedarray/Int16Array#constructor (; 36 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 12
   i32.const 6
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
  end
  local.get $1
  i32.const 1
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
 )
 (func $~lib/typedarray/Int16Array#get:length (; 37 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  i32.const 1
  i32.shr_u
 )
 (func $~lib/typedarray/Uint16Array#constructor (; 38 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 12
   i32.const 7
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
  end
  local.get $1
  i32.const 1
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
 )
 (func $~lib/typedarray/Uint16Array#get:length (; 39 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  i32.const 1
  i32.shr_u
 )
 (func $~lib/typedarray/Int32Array#constructor (; 40 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 12
   i32.const 8
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
  end
  local.get $1
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
 )
 (func $~lib/typedarray/Int32Array#get:length (; 41 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  i32.const 2
  i32.shr_u
 )
 (func $~lib/typedarray/Uint32Array#constructor (; 42 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 12
   i32.const 9
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
  end
  local.get $1
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
 )
 (func $~lib/typedarray/Uint32Array#get:length (; 43 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  i32.const 2
  i32.shr_u
 )
 (func $~lib/typedarray/Int64Array#constructor (; 44 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 12
   i32.const 10
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
  end
  local.get $1
  i32.const 3
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
 )
 (func $~lib/typedarray/Int64Array#get:length (; 45 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  i32.const 3
  i32.shr_u
 )
 (func $~lib/typedarray/Uint64Array#constructor (; 46 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 12
   i32.const 11
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
  end
  local.get $1
  i32.const 3
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
 )
 (func $~lib/typedarray/Uint64Array#get:length (; 47 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  i32.const 3
  i32.shr_u
 )
 (func $~lib/typedarray/Float32Array#constructor (; 48 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 12
   i32.const 12
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
  end
  local.get $1
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
 )
 (func $~lib/typedarray/Float32Array#get:length (; 49 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  i32.const 2
  i32.shr_u
 )
 (func $~lib/typedarray/Float64Array#constructor (; 50 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 12
   i32.const 13
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
  end
  local.get $1
  i32.const 3
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $0
  local.get $0
 )
 (func $~lib/typedarray/Float64Array#get:length (; 51 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  i32.const 3
  i32.shr_u
 )
 (func $std/typedarray/testInstantiate (; 52 ;) (type $FUNCSIG$vi) (param $0 i32)
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
  local.get $0
  call $~lib/typedarray/Int8Array#constructor
  local.set $1
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 32
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  local.get $0
  i32.const 1
  i32.mul
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 33
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/typedarray/Int8Array#get:length
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 34
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.get $0
  call $~lib/typedarray/Uint8Array#constructor
  local.set $2
  local.get $2
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 37
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  local.get $0
  i32.const 1
  i32.mul
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 38
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/typedarray/Uint8Array#get:length
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 39
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.get $0
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.set $3
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 42
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  local.get $0
  i32.const 1
  i32.mul
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 43
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  call $~lib/typedarray/Uint8ClampedArray#get:length
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 44
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.get $0
  call $~lib/typedarray/Int16Array#constructor
  local.set $4
  local.get $4
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 47
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  local.get $0
  i32.const 2
  i32.mul
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 48
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  call $~lib/typedarray/Int16Array#get:length
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 49
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.get $0
  call $~lib/typedarray/Uint16Array#constructor
  local.set $5
  local.get $5
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 52
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  local.get $0
  i32.const 2
  i32.mul
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 53
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  call $~lib/typedarray/Uint16Array#get:length
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 54
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.get $0
  call $~lib/typedarray/Int32Array#constructor
  local.set $6
  local.get $6
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 57
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  local.get $0
  i32.const 4
  i32.mul
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 58
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  call $~lib/typedarray/Int32Array#get:length
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 59
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.get $0
  call $~lib/typedarray/Uint32Array#constructor
  local.set $7
  local.get $7
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 62
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  local.get $0
  i32.const 4
  i32.mul
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 63
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  call $~lib/typedarray/Uint32Array#get:length
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 64
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.get $0
  call $~lib/typedarray/Int64Array#constructor
  local.set $8
  local.get $8
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 67
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $8
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  local.get $0
  i32.const 8
  i32.mul
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 68
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $8
  call $~lib/typedarray/Int64Array#get:length
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 69
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.get $0
  call $~lib/typedarray/Uint64Array#constructor
  local.set $9
  local.get $9
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 72
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $9
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  local.get $0
  i32.const 8
  i32.mul
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 73
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $9
  call $~lib/typedarray/Uint64Array#get:length
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 74
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.get $0
  call $~lib/typedarray/Float32Array#constructor
  local.set $10
  local.get $10
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 77
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $10
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  local.get $0
  i32.const 4
  i32.mul
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 78
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $10
  call $~lib/typedarray/Float32Array#get:length
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 79
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.get $0
  call $~lib/typedarray/Float64Array#constructor
  local.set $11
  local.get $11
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 82
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $11
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  local.get $0
  i32.const 8
  i32.mul
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 83
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $11
  call $~lib/typedarray/Float64Array#get:length
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
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
 (func $~lib/typedarray/Int32Array#__set (; 53 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 280
   i32.const 432
   i32.const 618
   i32.const 63
   call $~lib/builtins/abort
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
 (func $~lib/typedarray/Int32Array#__get (; 54 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 280
   i32.const 432
   i32.const 607
   i32.const 63
   call $~lib/builtins/abort
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
 (func $~lib/typedarray/Int32Array#subarray (; 55 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $1
  local.set $4
  local.get $2
  local.set $3
  local.get $5
  call $~lib/typedarray/Int32Array#get:length
  local.set $6
  local.get $4
  i32.const 0
  i32.lt_s
  if (result i32)
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
  else   
   local.get $4
   local.tee $7
   local.get $6
   local.tee $8
   local.get $7
   local.get $8
   i32.lt_s
   select
  end
  local.set $4
  local.get $3
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $6
   local.get $3
   i32.add
   local.tee $7
   i32.const 0
   local.tee $8
   local.get $7
   local.get $8
   i32.gt_s
   select
  else   
   local.get $3
   local.tee $7
   local.get $6
   local.tee $8
   local.get $7
   local.get $8
   i32.lt_s
   select
  end
  local.set $3
  local.get $3
  local.tee $7
  local.get $4
  local.tee $8
  local.get $7
  local.get $8
  i32.gt_s
  select
  local.set $3
  i32.const 12
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.set $7
  local.get $7
  local.tee $8
  local.get $5
  i32.load
  local.tee $9
  local.get $8
  i32.load
  local.tee $8
  i32.ne
  if
   local.get $9
   call $~lib/rt/pure/__retain
   drop
   local.get $8
   call $~lib/rt/pure/__release
  end
  local.get $9
  i32.store
  local.get $7
  local.get $5
  i32.load offset=4
  local.get $4
  i32.const 2
  i32.shl
  i32.add
  i32.store offset=4
  local.get $7
  local.get $3
  local.get $4
  i32.sub
  i32.const 2
  i32.shl
  i32.store offset=8
  local.get $7
  local.set $9
  local.get $5
  call $~lib/rt/pure/__release
  local.get $9
 )
 (func $~lib/typedarray/Float64Array#__set (; 56 ;) (type $FUNCSIG$viid) (param $0 i32) (param $1 i32) (param $2 f64)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 280
   i32.const 432
   i32.const 1198
   i32.const 63
   call $~lib/builtins/abort
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
 (func $~lib/typedarray/Float64Array#subarray (; 57 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $1
  local.set $4
  local.get $2
  local.set $3
  local.get $5
  call $~lib/typedarray/Float64Array#get:length
  local.set $6
  local.get $4
  i32.const 0
  i32.lt_s
  if (result i32)
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
  else   
   local.get $4
   local.tee $7
   local.get $6
   local.tee $8
   local.get $7
   local.get $8
   i32.lt_s
   select
  end
  local.set $4
  local.get $3
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $6
   local.get $3
   i32.add
   local.tee $7
   i32.const 0
   local.tee $8
   local.get $7
   local.get $8
   i32.gt_s
   select
  else   
   local.get $3
   local.tee $7
   local.get $6
   local.tee $8
   local.get $7
   local.get $8
   i32.lt_s
   select
  end
  local.set $3
  local.get $3
  local.tee $7
  local.get $4
  local.tee $8
  local.get $7
  local.get $8
  i32.gt_s
  select
  local.set $3
  i32.const 12
  i32.const 13
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.set $7
  local.get $7
  local.tee $8
  local.get $5
  i32.load
  local.tee $9
  local.get $8
  i32.load
  local.tee $8
  i32.ne
  if
   local.get $9
   call $~lib/rt/pure/__retain
   drop
   local.get $8
   call $~lib/rt/pure/__release
  end
  local.get $9
  i32.store
  local.get $7
  local.get $5
  i32.load offset=4
  local.get $4
  i32.const 3
  i32.shl
  i32.add
  i32.store offset=4
  local.get $7
  local.get $3
  local.get $4
  i32.sub
  i32.const 3
  i32.shl
  i32.store offset=8
  local.get $7
  local.set $9
  local.get $5
  call $~lib/rt/pure/__release
  local.get $9
 )
 (func $~lib/util/sort/insertionSort<f64> (; 58 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 i32)
  (local $6 f64)
  (local $7 i32)
  block $break|0
   i32.const 0
   local.set $3
   loop $loop|0
    local.get $3
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $3
    i32.const 3
    i32.shl
    i32.add
    f64.load
    local.set $4
    local.get $3
    i32.const 1
    i32.sub
    local.set $5
    block $break|1
     loop $continue|1
      local.get $5
      i32.const 0
      i32.ge_s
      i32.eqz
      br_if $break|1
      local.get $0
      local.get $5
      i32.const 3
      i32.shl
      i32.add
      f64.load
      local.set $6
      i32.const 2
      global.set $~lib/argc
      local.get $4
      local.get $6
      local.get $2
      call_indirect (type $FUNCSIG$idd)
      i32.const 0
      i32.lt_s
      if
       local.get $0
       local.get $5
       local.tee $7
       i32.const 1
       i32.sub
       local.set $5
       local.get $7
       i32.const 1
       i32.add
       i32.const 3
       i32.shl
       i32.add
       local.get $6
       f64.store
      else       
       br $break|1
      end
      br $continue|1
     end
     unreachable
    end
    local.get $0
    local.get $5
    i32.const 1
    i32.add
    i32.const 3
    i32.shl
    i32.add
    local.get $4
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
 (func $~lib/util/sort/weakHeapSort<f64> (; 59 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 f64)
  (local $9 f64)
  (local $10 f64)
  local.get $1
  i32.const 31
  i32.add
  i32.const 5
  i32.shr_s
  i32.const 2
  i32.shl
  local.set $3
  local.get $3
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $4
  local.get $4
  i32.const 0
  local.get $3
  call $~lib/memory/memory.fill
  block $break|0
   local.get $1
   i32.const 1
   i32.sub
   local.set $5
   loop $loop|0
    local.get $5
    i32.const 0
    i32.gt_s
    i32.eqz
    br_if $break|0
    local.get $5
    local.set $6
    block $break|1
     loop $continue|1
      local.get $6
      i32.const 1
      i32.and
      local.get $4
      local.get $6
      i32.const 6
      i32.shr_s
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.get $6
      i32.const 1
      i32.shr_s
      i32.const 31
      i32.and
      i32.shr_u
      i32.const 1
      i32.and
      i32.eq
      i32.eqz
      br_if $break|1
      local.get $6
      i32.const 1
      i32.shr_s
      local.set $6
      br $continue|1
     end
     unreachable
    end
    local.get $6
    i32.const 1
    i32.shr_s
    local.set $7
    local.get $0
    local.get $7
    i32.const 3
    i32.shl
    i32.add
    f64.load
    local.set $8
    local.get $0
    local.get $5
    i32.const 3
    i32.shl
    i32.add
    f64.load
    local.set $9
    i32.const 2
    global.set $~lib/argc
    local.get $8
    local.get $9
    local.get $2
    call_indirect (type $FUNCSIG$idd)
    i32.const 0
    i32.lt_s
    if
     local.get $4
     local.get $5
     i32.const 5
     i32.shr_s
     i32.const 2
     i32.shl
     i32.add
     local.get $4
     local.get $5
     i32.const 5
     i32.shr_s
     i32.const 2
     i32.shl
     i32.add
     i32.load
     i32.const 1
     local.get $5
     i32.const 31
     i32.and
     i32.shl
     i32.xor
     i32.store
     local.get $0
     local.get $5
     i32.const 3
     i32.shl
     i32.add
     local.get $8
     f64.store
     local.get $0
     local.get $7
     i32.const 3
     i32.shl
     i32.add
     local.get $9
     f64.store
    end
    local.get $5
    i32.const 1
    i32.sub
    local.set $5
    br $loop|0
   end
   unreachable
  end
  block $break|2
   local.get $1
   i32.const 1
   i32.sub
   local.set $7
   loop $loop|2
    local.get $7
    i32.const 2
    i32.ge_s
    i32.eqz
    br_if $break|2
    local.get $0
    f64.load
    local.set $9
    local.get $0
    local.get $0
    local.get $7
    i32.const 3
    i32.shl
    i32.add
    f64.load
    f64.store
    local.get $0
    local.get $7
    i32.const 3
    i32.shl
    i32.add
    local.get $9
    f64.store
    i32.const 1
    local.set $6
    block $break|3
     loop $continue|3
      local.get $6
      i32.const 1
      i32.shl
      local.get $4
      local.get $6
      i32.const 5
      i32.shr_s
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.get $6
      i32.const 31
      i32.and
      i32.shr_u
      i32.const 1
      i32.and
      i32.add
      local.tee $5
      local.get $7
      i32.lt_s
      i32.eqz
      br_if $break|3
      local.get $5
      local.set $6
      br $continue|3
     end
     unreachable
    end
    block $break|4
     loop $continue|4
      local.get $6
      i32.const 0
      i32.gt_s
      i32.eqz
      br_if $break|4
      local.get $0
      f64.load
      local.set $9
      local.get $0
      local.get $6
      i32.const 3
      i32.shl
      i32.add
      f64.load
      local.set $8
      i32.const 2
      global.set $~lib/argc
      local.get $9
      local.get $8
      local.get $2
      call_indirect (type $FUNCSIG$idd)
      i32.const 0
      i32.lt_s
      if
       local.get $4
       local.get $6
       i32.const 5
       i32.shr_s
       i32.const 2
       i32.shl
       i32.add
       local.get $4
       local.get $6
       i32.const 5
       i32.shr_s
       i32.const 2
       i32.shl
       i32.add
       i32.load
       i32.const 1
       local.get $6
       i32.const 31
       i32.and
       i32.shl
       i32.xor
       i32.store
       local.get $0
       local.get $6
       i32.const 3
       i32.shl
       i32.add
       local.get $9
       f64.store
       local.get $0
       local.get $8
       f64.store
      end
      local.get $6
      i32.const 1
      i32.shr_s
      local.set $6
      br $continue|4
     end
     unreachable
    end
    local.get $7
    i32.const 1
    i32.sub
    local.set $7
    br $loop|2
   end
   unreachable
  end
  local.get $4
  call $~lib/rt/tlsf/__free
  local.get $0
  f64.load offset=8
  local.set $10
  local.get $0
  local.get $0
  f64.load
  f64.store offset=8
  local.get $0
  local.get $10
  f64.store
 )
 (func $~lib/typedarray/Float64Array#sort (; 60 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 f64)
  (local $7 f64)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  block $~lib/typedarray/SORT<~lib/typedarray/Float64Array,f64>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   local.set $2
   local.get $3
   call $~lib/typedarray/Float64Array#get:length
   local.set $4
   local.get $4
   i32.const 1
   i32.le_s
   if
    local.get $3
    local.set $5
    local.get $3
    call $~lib/rt/pure/__release
    local.get $5
    br $~lib/typedarray/SORT<~lib/typedarray/Float64Array,f64>|inlined.0
   end
   local.get $3
   i32.load offset=4
   local.set $5
   local.get $4
   i32.const 2
   i32.eq
   if
    local.get $5
    f64.load offset=8
    local.set $6
    local.get $5
    f64.load
    local.set $7
    i32.const 2
    global.set $~lib/argc
    local.get $6
    local.get $7
    local.get $2
    call_indirect (type $FUNCSIG$idd)
    i32.const 0
    i32.lt_s
    if
     local.get $5
     local.get $7
     f64.store offset=8
     local.get $5
     local.get $6
     f64.store
    end
    local.get $3
    local.set $8
    local.get $3
    call $~lib/rt/pure/__release
    local.get $8
    br $~lib/typedarray/SORT<~lib/typedarray/Float64Array,f64>|inlined.0
   end
   local.get $5
   local.set $10
   local.get $4
   local.set $9
   local.get $2
   local.set $8
   local.get $9
   i32.const 256
   i32.lt_s
   if
    local.get $10
    local.get $9
    local.get $8
    call $~lib/util/sort/insertionSort<f64>
   else    
    local.get $10
    local.get $9
    local.get $8
    call $~lib/util/sort/weakHeapSort<f64>
   end
   local.get $3
  end
 )
 (func $~lib/util/sort/COMPARATOR<f64>~anonymous|0 (; 61 ;) (type $FUNCSIG$idd) (param $0 f64) (param $1 f64) (result i32)
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
 (func $~lib/typedarray/Float64Array#sort|trampoline (; 62 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~lib/argc
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   block $~lib/util/sort/COMPARATOR<f64>|inlined.0 (result i32)
    i32.const 1
    br $~lib/util/sort/COMPARATOR<f64>|inlined.0
   end
   local.set $1
  end
  local.get $0
  local.get $1
  call $~lib/typedarray/Float64Array#sort
 )
 (func $~lib/typedarray/Float64Array#__get (; 63 ;) (type $FUNCSIG$dii) (param $0 i32) (param $1 i32) (result f64)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 280
   i32.const 432
   i32.const 1187
   i32.const 63
   call $~lib/builtins/abort
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
 (func $~lib/typedarray/Uint8ClampedArray#__set (; 64 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 280
   i32.const 432
   i32.const 270
   i32.const 44
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  local.get $2
  i32.const 31
  i32.shr_s
  i32.const -1
  i32.xor
  i32.const 255
  local.get $2
  i32.sub
  i32.const 31
  i32.shr_s
  local.get $2
  i32.or
  i32.and
  i32.store8
 )
 (func $~lib/typedarray/Uint8ClampedArray#__get (; 65 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 280
   i32.const 432
   i32.const 259
   i32.const 44
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i32.load8_u
 )
 (func $~lib/typedarray/Int8Array#__set (; 66 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 280
   i32.const 432
   i32.const 38
   i32.const 44
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  local.get $2
  i32.store8
 )
 (func $~lib/typedarray/Int8Array#fill (; 67 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $7
  local.get $1
  local.set $6
  local.get $2
  local.set $5
  local.get $3
  local.set $4
  local.get $7
  i32.load offset=4
  local.set $8
  local.get $7
  call $~lib/typedarray/Int8Array#get:length
  local.set $9
  local.get $5
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $9
   local.get $5
   i32.add
   local.tee $10
   i32.const 0
   local.tee $11
   local.get $10
   local.get $11
   i32.gt_s
   select
  else   
   local.get $5
   local.tee $10
   local.get $9
   local.tee $11
   local.get $10
   local.get $11
   i32.lt_s
   select
  end
  local.set $5
  local.get $4
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $9
   local.get $4
   i32.add
   local.tee $10
   i32.const 0
   local.tee $11
   local.get $10
   local.get $11
   i32.gt_s
   select
  else   
   local.get $4
   local.tee $10
   local.get $9
   local.tee $11
   local.get $10
   local.get $11
   i32.lt_s
   select
  end
  local.set $4
  local.get $5
  local.get $4
  i32.lt_s
  if
   local.get $8
   local.get $5
   i32.add
   local.get $6
   local.get $4
   local.get $5
   i32.sub
   call $~lib/memory/memory.fill
  end
  local.get $7
 )
 (func $~lib/rt/__allocArray (; 68 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  i32.const 16
  local.get $2
  call $~lib/rt/tlsf/__alloc
  local.set $4
  local.get $0
  local.get $1
  i32.shl
  local.set $5
  local.get $5
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $6
  local.get $4
  local.get $6
  call $~lib/rt/pure/__retain
  i32.store
  local.get $4
  local.get $6
  i32.store offset=4
  local.get $4
  local.get $5
  i32.store offset=8
  local.get $4
  local.get $0
  i32.store offset=12
  local.get $3
  if
   local.get $6
   local.get $3
   local.get $5
   call $~lib/memory/memory.copy
  end
  local.get $4
 )
 (func $~lib/array/Array<i8>#get:length (; 69 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/typedarray/Int8Array#__get (; 70 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 280
   i32.const 432
   i32.const 27
   i32.const 44
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i32.load8_s
 )
 (func $~lib/array/Array<i8>#__unchecked_get (; 71 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 0
  i32.shl
  i32.add
  i32.load8_s
 )
 (func $~lib/array/Array<i8>#__get (; 72 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 0
  i32.shr_u
  i32.ge_u
  if
   i32.const 280
   i32.const 512
   i32.const 109
   i32.const 61
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<i8>#__unchecked_get
 )
 (func $std/typedarray/isInt8ArrayEqual (; 73 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  call $~lib/typedarray/Int8Array#get:length
  local.get $1
  call $~lib/array/Array<i8>#get:length
  i32.ne
  if
   i32.const 0
   local.set $2
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   return
  end
  block $break|0
   i32.const 0
   local.set $2
   local.get $0
   call $~lib/typedarray/Int8Array#get:length
   local.set $3
   loop $loop|0
    local.get $2
    local.get $3
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $2
    call $~lib/typedarray/Int8Array#__get
    local.get $1
    local.get $2
    call $~lib/array/Array<i8>#__get
    i32.ne
    if
     i32.const 0
     local.set $4
     local.get $0
     call $~lib/rt/pure/__release
     local.get $1
     call $~lib/rt/pure/__release
     local.get $4
     return
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $loop|0
   end
   unreachable
  end
  i32.const 1
  local.set $3
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/typedarray/Int8Array#subarray (; 74 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $1
  local.set $4
  local.get $2
  local.set $3
  local.get $5
  call $~lib/typedarray/Int8Array#get:length
  local.set $6
  local.get $4
  i32.const 0
  i32.lt_s
  if (result i32)
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
  else   
   local.get $4
   local.tee $7
   local.get $6
   local.tee $8
   local.get $7
   local.get $8
   i32.lt_s
   select
  end
  local.set $4
  local.get $3
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $6
   local.get $3
   i32.add
   local.tee $7
   i32.const 0
   local.tee $8
   local.get $7
   local.get $8
   i32.gt_s
   select
  else   
   local.get $3
   local.tee $7
   local.get $6
   local.tee $8
   local.get $7
   local.get $8
   i32.lt_s
   select
  end
  local.set $3
  local.get $3
  local.tee $7
  local.get $4
  local.tee $8
  local.get $7
  local.get $8
  i32.gt_s
  select
  local.set $3
  i32.const 12
  i32.const 3
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.set $7
  local.get $7
  local.tee $8
  local.get $5
  i32.load
  local.tee $9
  local.get $8
  i32.load
  local.tee $8
  i32.ne
  if
   local.get $9
   call $~lib/rt/pure/__retain
   drop
   local.get $8
   call $~lib/rt/pure/__release
  end
  local.get $9
  i32.store
  local.get $7
  local.get $5
  i32.load offset=4
  local.get $4
  i32.const 0
  i32.shl
  i32.add
  i32.store offset=4
  local.get $7
  local.get $3
  local.get $4
  i32.sub
  i32.const 0
  i32.shl
  i32.store offset=8
  local.get $7
  local.set $9
  local.get $5
  call $~lib/rt/pure/__release
  local.get $9
 )
 (func $~lib/typedarray/Int32Array#fill (; 75 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $7
  local.get $1
  local.set $6
  local.get $2
  local.set $5
  local.get $3
  local.set $4
  local.get $7
  i32.load offset=4
  local.set $8
  local.get $7
  call $~lib/typedarray/Int32Array#get:length
  local.set $9
  local.get $5
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $9
   local.get $5
   i32.add
   local.tee $10
   i32.const 0
   local.tee $11
   local.get $10
   local.get $11
   i32.gt_s
   select
  else   
   local.get $5
   local.tee $10
   local.get $9
   local.tee $11
   local.get $10
   local.get $11
   i32.lt_s
   select
  end
  local.set $5
  local.get $4
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $9
   local.get $4
   i32.add
   local.tee $10
   i32.const 0
   local.tee $11
   local.get $10
   local.get $11
   i32.gt_s
   select
  else   
   local.get $4
   local.tee $10
   local.get $9
   local.tee $11
   local.get $10
   local.get $11
   i32.lt_s
   select
  end
  local.set $4
  block $break|0
   loop $loop|0
    local.get $5
    local.get $4
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $8
    local.get $5
    i32.const 2
    i32.shl
    i32.add
    local.get $6
    i32.store
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $loop|0
   end
   unreachable
  end
  local.get $7
 )
 (func $~lib/array/Array<i32>#get:length (; 76 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<i32>#__unchecked_get (; 77 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $~lib/array/Array<i32>#__get (; 78 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 280
   i32.const 512
   i32.const 109
   i32.const 61
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#__unchecked_get
 )
 (func $std/typedarray/isInt32ArrayEqual (; 79 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $1
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  call $~lib/typedarray/Int32Array#get:length
  local.get $1
  call $~lib/array/Array<i32>#get:length
  i32.ne
  if
   i32.const 0
   local.set $2
   local.get $0
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $2
   return
  end
  block $break|0
   i32.const 0
   local.set $2
   local.get $0
   call $~lib/typedarray/Int32Array#get:length
   local.set $3
   loop $loop|0
    local.get $2
    local.get $3
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $0
    local.get $2
    call $~lib/typedarray/Int32Array#__get
    local.get $1
    local.get $2
    call $~lib/array/Array<i32>#__get
    i32.ne
    if
     i32.const 0
     local.set $4
     local.get $0
     call $~lib/rt/pure/__release
     local.get $1
     call $~lib/rt/pure/__release
     local.get $4
     return
    end
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $loop|0
   end
   unreachable
  end
  i32.const 1
  local.set $3
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/typedarray/Int32Array#slice (; 80 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $1
  local.set $4
  local.get $2
  local.set $3
  local.get $5
  call $~lib/typedarray/Int32Array#get:length
  local.set $6
  local.get $4
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $4
   local.get $6
   i32.add
   local.tee $7
   i32.const 0
   local.tee $8
   local.get $7
   local.get $8
   i32.gt_s
   select
  else   
   local.get $4
   local.tee $7
   local.get $6
   local.tee $8
   local.get $7
   local.get $8
   i32.lt_s
   select
  end
  local.set $4
  local.get $3
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $3
   local.get $6
   i32.add
   local.tee $7
   i32.const 0
   local.tee $8
   local.get $7
   local.get $8
   i32.gt_s
   select
  else   
   local.get $3
   local.tee $7
   local.get $6
   local.tee $8
   local.get $7
   local.get $8
   i32.lt_s
   select
  end
  local.set $3
  local.get $3
  local.get $4
  i32.sub
  local.tee $7
  i32.const 0
  local.tee $8
  local.get $7
  local.get $8
  i32.gt_s
  select
  local.set $6
  i32.const 0
  local.get $6
  call $~lib/typedarray/Int32Array#constructor
  local.tee $7
  call $~lib/rt/pure/__retain
  local.set $8
  local.get $8
  i32.load offset=4
  local.get $5
  i32.load offset=4
  local.get $4
  i32.const 2
  i32.shl
  i32.add
  local.get $6
  i32.const 2
  i32.shl
  call $~lib/memory/memory.copy
  local.get $8
  local.set $9
  local.get $5
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $9
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 (; 81 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $3
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  i32.add
  local.set $4
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $~lib/typedarray/Int8Array#reduce<i8> (; 82 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $1
  local.set $4
  local.get $2
  local.set $3
  local.get $5
  i32.load offset=4
  local.set $6
  block $break|0
   i32.const 0
   local.set $7
   local.get $5
   call $~lib/typedarray/Int8Array#get:length
   local.set $8
   loop $loop|0
    local.get $7
    local.get $8
    i32.lt_s
    i32.eqz
    br_if $break|0
    i32.const 4
    global.set $~lib/argc
    local.get $3
    local.get $6
    local.get $7
    i32.const 0
    i32.shl
    i32.add
    i32.load8_s
    local.get $7
    local.get $5
    local.get $4
    call_indirect (type $FUNCSIG$iiiii)
    local.set $3
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $loop|0
   end
   unreachable
  end
  local.get $3
  local.set $8
  local.get $5
  call $~lib/rt/pure/__release
  local.get $8
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8> (; 83 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int8Array#__set
  local.get $1
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int8Array#__set
  local.get $1
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int8Array#__set
  local.get $1
  i32.const 2
  i32.const 0
  call $~lib/typedarray/Int8Array#reduce<i8>
  local.set $2
  local.get $2
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 290
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint8Array#__set (; 84 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 280
   i32.const 432
   i32.const 154
   i32.const 44
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  local.get $2
  i32.store8
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Uint8Array,u8>~anonymous|0 (; 85 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $3
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  i32.add
  local.set $4
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $~lib/typedarray/Uint8Array#reduce<u8> (; 86 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $1
  local.set $4
  local.get $2
  local.set $3
  local.get $5
  i32.load offset=4
  local.set $6
  block $break|0
   i32.const 0
   local.set $7
   local.get $5
   call $~lib/typedarray/Uint8Array#get:length
   local.set $8
   loop $loop|0
    local.get $7
    local.get $8
    i32.lt_s
    i32.eqz
    br_if $break|0
    i32.const 4
    global.set $~lib/argc
    local.get $3
    local.get $6
    local.get $7
    i32.const 0
    i32.shl
    i32.add
    i32.load8_u
    local.get $7
    local.get $5
    local.get $4
    call_indirect (type $FUNCSIG$iiiii)
    local.set $3
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $loop|0
   end
   unreachable
  end
  local.get $3
  local.set $8
  local.get $5
  call $~lib/rt/pure/__release
  local.get $8
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Uint8Array,u8> (; 87 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 3
  i32.const 0
  call $~lib/typedarray/Uint8Array#reduce<u8>
  local.set $2
  local.get $2
  i32.const 255
  i32.and
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 290
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Uint8ClampedArray,u8>~anonymous|0 (; 88 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $3
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  i32.add
  local.set $4
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $~lib/typedarray/Uint8ClampedArray#reduce<u8> (; 89 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $1
  local.set $4
  local.get $2
  local.set $3
  local.get $5
  i32.load offset=4
  local.set $6
  block $break|0
   i32.const 0
   local.set $7
   local.get $5
   call $~lib/typedarray/Uint8ClampedArray#get:length
   local.set $8
   loop $loop|0
    local.get $7
    local.get $8
    i32.lt_s
    i32.eqz
    br_if $break|0
    i32.const 4
    global.set $~lib/argc
    local.get $3
    local.get $6
    local.get $7
    i32.const 0
    i32.shl
    i32.add
    i32.load8_u
    local.get $7
    local.get $5
    local.get $4
    call_indirect (type $FUNCSIG$iiiii)
    local.set $3
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $loop|0
   end
   unreachable
  end
  local.get $3
  local.set $8
  local.get $5
  call $~lib/rt/pure/__release
  local.get $8
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Uint8ClampedArray,u8> (; 90 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $1
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $1
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $1
  i32.const 4
  i32.const 0
  call $~lib/typedarray/Uint8ClampedArray#reduce<u8>
  local.set $2
  local.get $2
  i32.const 255
  i32.and
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 290
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int16Array#__set (; 91 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  i32.ge_u
  if
   i32.const 280
   i32.const 432
   i32.const 386
   i32.const 63
   call $~lib/builtins/abort
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
 (func $std/typedarray/testReduce<~lib/typedarray/Int16Array,i16>~anonymous|0 (; 92 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $3
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  i32.add
  local.set $4
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $~lib/typedarray/Int16Array#reduce<i16> (; 93 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $1
  local.set $4
  local.get $2
  local.set $3
  local.get $5
  i32.load offset=4
  local.set $6
  block $break|0
   i32.const 0
   local.set $7
   local.get $5
   call $~lib/typedarray/Int16Array#get:length
   local.set $8
   loop $loop|0
    local.get $7
    local.get $8
    i32.lt_s
    i32.eqz
    br_if $break|0
    i32.const 4
    global.set $~lib/argc
    local.get $3
    local.get $6
    local.get $7
    i32.const 1
    i32.shl
    i32.add
    i32.load16_s
    local.get $7
    local.get $5
    local.get $4
    call_indirect (type $FUNCSIG$iiiii)
    local.set $3
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $loop|0
   end
   unreachable
  end
  local.get $3
  local.set $8
  local.get $5
  call $~lib/rt/pure/__release
  local.get $8
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Int16Array,i16> (; 94 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int16Array#__set
  local.get $1
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int16Array#__set
  local.get $1
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int16Array#__set
  local.get $1
  i32.const 5
  i32.const 0
  call $~lib/typedarray/Int16Array#reduce<i16>
  local.set $2
  local.get $2
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 290
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint16Array#__set (; 95 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  i32.ge_u
  if
   i32.const 280
   i32.const 432
   i32.const 502
   i32.const 63
   call $~lib/builtins/abort
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
 (func $std/typedarray/testReduce<~lib/typedarray/Uint16Array,u16>~anonymous|0 (; 96 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $3
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  i32.add
  local.set $4
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $~lib/typedarray/Uint16Array#reduce<u16> (; 97 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $1
  local.set $4
  local.get $2
  local.set $3
  local.get $5
  i32.load offset=4
  local.set $6
  block $break|0
   i32.const 0
   local.set $7
   local.get $5
   call $~lib/typedarray/Uint16Array#get:length
   local.set $8
   loop $loop|0
    local.get $7
    local.get $8
    i32.lt_s
    i32.eqz
    br_if $break|0
    i32.const 4
    global.set $~lib/argc
    local.get $3
    local.get $6
    local.get $7
    i32.const 1
    i32.shl
    i32.add
    i32.load16_u
    local.get $7
    local.get $5
    local.get $4
    call_indirect (type $FUNCSIG$iiiii)
    local.set $3
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $loop|0
   end
   unreachable
  end
  local.get $3
  local.set $8
  local.get $5
  call $~lib/rt/pure/__release
  local.get $8
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Uint16Array,u16> (; 98 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint16Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint16Array#__set
  local.get $1
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint16Array#__set
  local.get $1
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint16Array#__set
  local.get $1
  i32.const 6
  i32.const 0
  call $~lib/typedarray/Uint16Array#reduce<u16>
  local.set $2
  local.get $2
  i32.const 65535
  i32.and
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 290
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Int32Array,i32>~anonymous|0 (; 99 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $3
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  i32.add
  local.set $4
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $~lib/typedarray/Int32Array#reduce<i32> (; 100 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $1
  local.set $4
  local.get $2
  local.set $3
  local.get $5
  i32.load offset=4
  local.set $6
  block $break|0
   i32.const 0
   local.set $7
   local.get $5
   call $~lib/typedarray/Int32Array#get:length
   local.set $8
   loop $loop|0
    local.get $7
    local.get $8
    i32.lt_s
    i32.eqz
    br_if $break|0
    i32.const 4
    global.set $~lib/argc
    local.get $3
    local.get $6
    local.get $7
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.get $7
    local.get $5
    local.get $4
    call_indirect (type $FUNCSIG$iiiii)
    local.set $3
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $loop|0
   end
   unreachable
  end
  local.get $3
  local.set $8
  local.get $5
  call $~lib/rt/pure/__release
  local.get $8
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Int32Array,i32> (; 101 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int32Array#__set
  local.get $1
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int32Array#__set
  local.get $1
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int32Array#__set
  local.get $1
  i32.const 7
  i32.const 0
  call $~lib/typedarray/Int32Array#reduce<i32>
  local.set $2
  local.get $2
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 290
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint32Array#__set (; 102 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 280
   i32.const 432
   i32.const 734
   i32.const 63
   call $~lib/builtins/abort
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
 (func $std/typedarray/testReduce<~lib/typedarray/Uint32Array,u32>~anonymous|0 (; 103 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $3
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  i32.add
  local.set $4
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $~lib/typedarray/Uint32Array#reduce<u32> (; 104 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $1
  local.set $4
  local.get $2
  local.set $3
  local.get $5
  i32.load offset=4
  local.set $6
  block $break|0
   i32.const 0
   local.set $7
   local.get $5
   call $~lib/typedarray/Uint32Array#get:length
   local.set $8
   loop $loop|0
    local.get $7
    local.get $8
    i32.lt_s
    i32.eqz
    br_if $break|0
    i32.const 4
    global.set $~lib/argc
    local.get $3
    local.get $6
    local.get $7
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.get $7
    local.get $5
    local.get $4
    call_indirect (type $FUNCSIG$iiiii)
    local.set $3
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $loop|0
   end
   unreachable
  end
  local.get $3
  local.set $8
  local.get $5
  call $~lib/rt/pure/__release
  local.get $8
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Uint32Array,u32> (; 105 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint32Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint32Array#__set
  local.get $1
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint32Array#__set
  local.get $1
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint32Array#__set
  local.get $1
  i32.const 8
  i32.const 0
  call $~lib/typedarray/Uint32Array#reduce<u32>
  local.set $2
  local.get $2
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 290
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int64Array#__set (; 106 ;) (type $FUNCSIG$viij) (param $0 i32) (param $1 i32) (param $2 i64)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 280
   i32.const 432
   i32.const 850
   i32.const 63
   call $~lib/builtins/abort
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
 (func $std/typedarray/testReduce<~lib/typedarray/Int64Array,i64>~anonymous|0 (; 107 ;) (type $FUNCSIG$jjjii) (param $0 i64) (param $1 i64) (param $2 i32) (param $3 i32) (result i64)
  (local $4 i64)
  local.get $3
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  i64.add
  local.set $4
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $~lib/typedarray/Int64Array#reduce<i64> (; 108 ;) (type $FUNCSIG$jiij) (param $0 i32) (param $1 i32) (param $2 i64) (result i64)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $1
  local.set $4
  local.get $2
  local.set $3
  local.get $5
  i32.load offset=4
  local.set $6
  block $break|0
   i32.const 0
   local.set $7
   local.get $5
   call $~lib/typedarray/Int64Array#get:length
   local.set $8
   loop $loop|0
    local.get $7
    local.get $8
    i32.lt_s
    i32.eqz
    br_if $break|0
    i32.const 4
    global.set $~lib/argc
    local.get $3
    local.get $6
    local.get $7
    i32.const 3
    i32.shl
    i32.add
    i64.load
    local.get $7
    local.get $5
    local.get $4
    call_indirect (type $FUNCSIG$jjjii)
    local.set $3
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $loop|0
   end
   unreachable
  end
  local.get $3
  local.set $9
  local.get $5
  call $~lib/rt/pure/__release
  local.get $9
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Int64Array,i64> (; 109 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i64)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i64.const 1
  call $~lib/typedarray/Int64Array#__set
  local.get $1
  i32.const 1
  i64.const 2
  call $~lib/typedarray/Int64Array#__set
  local.get $1
  i32.const 2
  i64.const 3
  call $~lib/typedarray/Int64Array#__set
  local.get $1
  i32.const 9
  i64.const 0
  call $~lib/typedarray/Int64Array#reduce<i64>
  local.set $2
  local.get $2
  i64.const 6
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 290
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint64Array#__set (; 110 ;) (type $FUNCSIG$viij) (param $0 i32) (param $1 i32) (param $2 i64)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 280
   i32.const 432
   i32.const 966
   i32.const 63
   call $~lib/builtins/abort
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
 (func $std/typedarray/testReduce<~lib/typedarray/Uint64Array,u64>~anonymous|0 (; 111 ;) (type $FUNCSIG$jjjii) (param $0 i64) (param $1 i64) (param $2 i32) (param $3 i32) (result i64)
  (local $4 i64)
  local.get $3
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  i64.add
  local.set $4
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $~lib/typedarray/Uint64Array#reduce<u64> (; 112 ;) (type $FUNCSIG$jiij) (param $0 i32) (param $1 i32) (param $2 i64) (result i64)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $1
  local.set $4
  local.get $2
  local.set $3
  local.get $5
  i32.load offset=4
  local.set $6
  block $break|0
   i32.const 0
   local.set $7
   local.get $5
   call $~lib/typedarray/Uint64Array#get:length
   local.set $8
   loop $loop|0
    local.get $7
    local.get $8
    i32.lt_s
    i32.eqz
    br_if $break|0
    i32.const 4
    global.set $~lib/argc
    local.get $3
    local.get $6
    local.get $7
    i32.const 3
    i32.shl
    i32.add
    i64.load
    local.get $7
    local.get $5
    local.get $4
    call_indirect (type $FUNCSIG$jjjii)
    local.set $3
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $loop|0
   end
   unreachable
  end
  local.get $3
  local.set $9
  local.get $5
  call $~lib/rt/pure/__release
  local.get $9
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Uint64Array,u64> (; 113 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i64)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint64Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i64.const 1
  call $~lib/typedarray/Uint64Array#__set
  local.get $1
  i32.const 1
  i64.const 2
  call $~lib/typedarray/Uint64Array#__set
  local.get $1
  i32.const 2
  i64.const 3
  call $~lib/typedarray/Uint64Array#__set
  local.get $1
  i32.const 10
  i64.const 0
  call $~lib/typedarray/Uint64Array#reduce<u64>
  local.set $2
  local.get $2
  i64.const 6
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 290
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Float32Array#__set (; 114 ;) (type $FUNCSIG$viif) (param $0 i32) (param $1 i32) (param $2 f32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 280
   i32.const 432
   i32.const 1082
   i32.const 63
   call $~lib/builtins/abort
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
 (func $std/typedarray/testReduce<~lib/typedarray/Float32Array,f32>~anonymous|0 (; 115 ;) (type $FUNCSIG$fffii) (param $0 f32) (param $1 f32) (param $2 i32) (param $3 i32) (result f32)
  (local $4 f32)
  local.get $3
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  f32.add
  local.set $4
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $~lib/typedarray/Float32Array#reduce<f32> (; 116 ;) (type $FUNCSIG$fiif) (param $0 i32) (param $1 i32) (param $2 f32) (result f32)
  (local $3 f32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 f32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $1
  local.set $4
  local.get $2
  local.set $3
  local.get $5
  i32.load offset=4
  local.set $6
  block $break|0
   i32.const 0
   local.set $7
   local.get $5
   call $~lib/typedarray/Float32Array#get:length
   local.set $8
   loop $loop|0
    local.get $7
    local.get $8
    i32.lt_s
    i32.eqz
    br_if $break|0
    i32.const 4
    global.set $~lib/argc
    local.get $3
    local.get $6
    local.get $7
    i32.const 2
    i32.shl
    i32.add
    f32.load
    local.get $7
    local.get $5
    local.get $4
    call_indirect (type $FUNCSIG$fffii)
    local.set $3
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $loop|0
   end
   unreachable
  end
  local.get $3
  local.set $9
  local.get $5
  call $~lib/rt/pure/__release
  local.get $9
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Float32Array,f32> (; 117 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 f32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Float32Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  f32.const 1
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 1
  f32.const 2
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 2
  f32.const 3
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 11
  f32.const 0
  call $~lib/typedarray/Float32Array#reduce<f32>
  local.set $2
  local.get $2
  f32.const 6
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 290
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Float64Array,f64>~anonymous|0 (; 118 ;) (type $FUNCSIG$dddii) (param $0 f64) (param $1 f64) (param $2 i32) (param $3 i32) (result f64)
  (local $4 f64)
  local.get $3
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  f64.add
  local.set $4
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $~lib/typedarray/Float64Array#reduce<f64> (; 119 ;) (type $FUNCSIG$diid) (param $0 i32) (param $1 i32) (param $2 f64) (result f64)
  (local $3 f64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 f64)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $1
  local.set $4
  local.get $2
  local.set $3
  local.get $5
  i32.load offset=4
  local.set $6
  block $break|0
   i32.const 0
   local.set $7
   local.get $5
   call $~lib/typedarray/Float64Array#get:length
   local.set $8
   loop $loop|0
    local.get $7
    local.get $8
    i32.lt_s
    i32.eqz
    br_if $break|0
    i32.const 4
    global.set $~lib/argc
    local.get $3
    local.get $6
    local.get $7
    i32.const 3
    i32.shl
    i32.add
    f64.load
    local.get $7
    local.get $5
    local.get $4
    call_indirect (type $FUNCSIG$dddii)
    local.set $3
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $loop|0
   end
   unreachable
  end
  local.get $3
  local.set $9
  local.get $5
  call $~lib/rt/pure/__release
  local.get $9
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Float64Array,f64> (; 120 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 f64)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Float64Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  f64.const 1
  call $~lib/typedarray/Float64Array#__set
  local.get $1
  i32.const 1
  f64.const 2
  call $~lib/typedarray/Float64Array#__set
  local.get $1
  i32.const 2
  f64.const 3
  call $~lib/typedarray/Float64Array#__set
  local.get $1
  i32.const 12
  f64.const 0
  call $~lib/typedarray/Float64Array#reduce<f64>
  local.set $2
  local.get $2
  f64.const 6
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 290
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Int8Array,i8>~anonymous|0 (; 121 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $3
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  i32.add
  local.set $4
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $~lib/typedarray/Int8Array#reduceRight<i8> (; 122 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $1
  local.set $4
  local.get $2
  local.set $3
  local.get $5
  i32.load offset=4
  local.set $6
  block $break|0
   local.get $5
   call $~lib/typedarray/Int8Array#get:length
   i32.const 1
   i32.sub
   local.set $7
   loop $loop|0
    local.get $7
    i32.const 0
    i32.ge_s
    i32.eqz
    br_if $break|0
    i32.const 4
    global.set $~lib/argc
    local.get $3
    local.get $6
    local.get $7
    i32.const 0
    i32.shl
    i32.add
    i32.load8_s
    local.get $7
    local.get $5
    local.get $4
    call_indirect (type $FUNCSIG$iiiii)
    local.set $3
    local.get $7
    i32.const 1
    i32.sub
    local.set $7
    br $loop|0
   end
   unreachable
  end
  local.get $3
  local.set $7
  local.get $5
  call $~lib/rt/pure/__release
  local.get $7
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Int8Array,i8> (; 123 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int8Array#__set
  local.get $1
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int8Array#__set
  local.get $1
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int8Array#__set
  local.get $1
  i32.const 13
  i32.const 0
  call $~lib/typedarray/Int8Array#reduceRight<i8>
  local.set $2
  local.get $2
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 311
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Uint8Array,u8>~anonymous|0 (; 124 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $3
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  i32.add
  local.set $4
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $~lib/typedarray/Uint8Array#reduceRight<u8> (; 125 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $1
  local.set $4
  local.get $2
  local.set $3
  local.get $5
  i32.load offset=4
  local.set $6
  block $break|0
   local.get $5
   call $~lib/typedarray/Uint8Array#get:length
   i32.const 1
   i32.sub
   local.set $7
   loop $loop|0
    local.get $7
    i32.const 0
    i32.ge_s
    i32.eqz
    br_if $break|0
    i32.const 4
    global.set $~lib/argc
    local.get $3
    local.get $6
    local.get $7
    i32.const 0
    i32.shl
    i32.add
    i32.load8_u
    local.get $7
    local.get $5
    local.get $4
    call_indirect (type $FUNCSIG$iiiii)
    local.set $3
    local.get $7
    i32.const 1
    i32.sub
    local.set $7
    br $loop|0
   end
   unreachable
  end
  local.get $3
  local.set $7
  local.get $5
  call $~lib/rt/pure/__release
  local.get $7
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Uint8Array,u8> (; 126 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 14
  i32.const 0
  call $~lib/typedarray/Uint8Array#reduceRight<u8>
  local.set $2
  local.get $2
  i32.const 255
  i32.and
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 311
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Uint8ClampedArray,u8>~anonymous|0 (; 127 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $3
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  i32.add
  local.set $4
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $~lib/typedarray/Uint8ClampedArray#reduceRight<u8> (; 128 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $1
  local.set $4
  local.get $2
  local.set $3
  local.get $5
  i32.load offset=4
  local.set $6
  block $break|0
   local.get $5
   call $~lib/typedarray/Uint8ClampedArray#get:length
   i32.const 1
   i32.sub
   local.set $7
   loop $loop|0
    local.get $7
    i32.const 0
    i32.ge_s
    i32.eqz
    br_if $break|0
    i32.const 4
    global.set $~lib/argc
    local.get $3
    local.get $6
    local.get $7
    i32.const 0
    i32.shl
    i32.add
    i32.load8_u
    local.get $7
    local.get $5
    local.get $4
    call_indirect (type $FUNCSIG$iiiii)
    local.set $3
    local.get $7
    i32.const 1
    i32.sub
    local.set $7
    br $loop|0
   end
   unreachable
  end
  local.get $3
  local.set $7
  local.get $5
  call $~lib/rt/pure/__release
  local.get $7
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Uint8ClampedArray,u8> (; 129 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $1
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $1
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $1
  i32.const 15
  i32.const 0
  call $~lib/typedarray/Uint8ClampedArray#reduceRight<u8>
  local.set $2
  local.get $2
  i32.const 255
  i32.and
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 311
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Int16Array,i16>~anonymous|0 (; 130 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $3
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  i32.add
  local.set $4
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $~lib/typedarray/Int16Array#reduceRight<i16> (; 131 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $1
  local.set $4
  local.get $2
  local.set $3
  local.get $5
  i32.load offset=4
  local.set $6
  block $break|0
   local.get $5
   call $~lib/typedarray/Int16Array#get:length
   i32.const 1
   i32.sub
   local.set $7
   loop $loop|0
    local.get $7
    i32.const 0
    i32.ge_s
    i32.eqz
    br_if $break|0
    i32.const 4
    global.set $~lib/argc
    local.get $3
    local.get $6
    local.get $7
    i32.const 1
    i32.shl
    i32.add
    i32.load16_s
    local.get $7
    local.get $5
    local.get $4
    call_indirect (type $FUNCSIG$iiiii)
    local.set $3
    local.get $7
    i32.const 1
    i32.sub
    local.set $7
    br $loop|0
   end
   unreachable
  end
  local.get $3
  local.set $7
  local.get $5
  call $~lib/rt/pure/__release
  local.get $7
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Int16Array,i16> (; 132 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int16Array#__set
  local.get $1
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int16Array#__set
  local.get $1
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int16Array#__set
  local.get $1
  i32.const 16
  i32.const 0
  call $~lib/typedarray/Int16Array#reduceRight<i16>
  local.set $2
  local.get $2
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 311
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Uint16Array,u16>~anonymous|0 (; 133 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $3
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  i32.add
  local.set $4
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $~lib/typedarray/Uint16Array#reduceRight<u16> (; 134 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $1
  local.set $4
  local.get $2
  local.set $3
  local.get $5
  i32.load offset=4
  local.set $6
  block $break|0
   local.get $5
   call $~lib/typedarray/Uint16Array#get:length
   i32.const 1
   i32.sub
   local.set $7
   loop $loop|0
    local.get $7
    i32.const 0
    i32.ge_s
    i32.eqz
    br_if $break|0
    i32.const 4
    global.set $~lib/argc
    local.get $3
    local.get $6
    local.get $7
    i32.const 1
    i32.shl
    i32.add
    i32.load16_u
    local.get $7
    local.get $5
    local.get $4
    call_indirect (type $FUNCSIG$iiiii)
    local.set $3
    local.get $7
    i32.const 1
    i32.sub
    local.set $7
    br $loop|0
   end
   unreachable
  end
  local.get $3
  local.set $7
  local.get $5
  call $~lib/rt/pure/__release
  local.get $7
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Uint16Array,u16> (; 135 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint16Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint16Array#__set
  local.get $1
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint16Array#__set
  local.get $1
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint16Array#__set
  local.get $1
  i32.const 17
  i32.const 0
  call $~lib/typedarray/Uint16Array#reduceRight<u16>
  local.set $2
  local.get $2
  i32.const 65535
  i32.and
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 311
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Int32Array,i32>~anonymous|0 (; 136 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $3
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  i32.add
  local.set $4
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $~lib/typedarray/Int32Array#reduceRight<i32> (; 137 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $1
  local.set $4
  local.get $2
  local.set $3
  local.get $5
  i32.load offset=4
  local.set $6
  block $break|0
   local.get $5
   call $~lib/typedarray/Int32Array#get:length
   i32.const 1
   i32.sub
   local.set $7
   loop $loop|0
    local.get $7
    i32.const 0
    i32.ge_s
    i32.eqz
    br_if $break|0
    i32.const 4
    global.set $~lib/argc
    local.get $3
    local.get $6
    local.get $7
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.get $7
    local.get $5
    local.get $4
    call_indirect (type $FUNCSIG$iiiii)
    local.set $3
    local.get $7
    i32.const 1
    i32.sub
    local.set $7
    br $loop|0
   end
   unreachable
  end
  local.get $3
  local.set $7
  local.get $5
  call $~lib/rt/pure/__release
  local.get $7
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Int32Array,i32> (; 138 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int32Array#__set
  local.get $1
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int32Array#__set
  local.get $1
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int32Array#__set
  local.get $1
  i32.const 18
  i32.const 0
  call $~lib/typedarray/Int32Array#reduceRight<i32>
  local.set $2
  local.get $2
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 311
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Uint32Array,u32>~anonymous|0 (; 139 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  local.get $3
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  i32.add
  local.set $4
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $~lib/typedarray/Uint32Array#reduceRight<u32> (; 140 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $1
  local.set $4
  local.get $2
  local.set $3
  local.get $5
  i32.load offset=4
  local.set $6
  block $break|0
   local.get $5
   call $~lib/typedarray/Uint32Array#get:length
   i32.const 1
   i32.sub
   local.set $7
   loop $loop|0
    local.get $7
    i32.const 0
    i32.ge_s
    i32.eqz
    br_if $break|0
    i32.const 4
    global.set $~lib/argc
    local.get $3
    local.get $6
    local.get $7
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.get $7
    local.get $5
    local.get $4
    call_indirect (type $FUNCSIG$iiiii)
    local.set $3
    local.get $7
    i32.const 1
    i32.sub
    local.set $7
    br $loop|0
   end
   unreachable
  end
  local.get $3
  local.set $7
  local.get $5
  call $~lib/rt/pure/__release
  local.get $7
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Uint32Array,u32> (; 141 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint32Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint32Array#__set
  local.get $1
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint32Array#__set
  local.get $1
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint32Array#__set
  local.get $1
  i32.const 19
  i32.const 0
  call $~lib/typedarray/Uint32Array#reduceRight<u32>
  local.set $2
  local.get $2
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 311
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Int64Array,i64>~anonymous|0 (; 142 ;) (type $FUNCSIG$jjjii) (param $0 i64) (param $1 i64) (param $2 i32) (param $3 i32) (result i64)
  (local $4 i64)
  local.get $3
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  i64.add
  local.set $4
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $~lib/typedarray/Int64Array#reduceRight<i64> (; 143 ;) (type $FUNCSIG$jiij) (param $0 i32) (param $1 i32) (param $2 i64) (result i64)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $1
  local.set $4
  local.get $2
  local.set $3
  local.get $5
  i32.load offset=4
  local.set $6
  block $break|0
   local.get $5
   call $~lib/typedarray/Int64Array#get:length
   i32.const 1
   i32.sub
   local.set $7
   loop $loop|0
    local.get $7
    i32.const 0
    i32.ge_s
    i32.eqz
    br_if $break|0
    i32.const 4
    global.set $~lib/argc
    local.get $3
    local.get $6
    local.get $7
    i32.const 3
    i32.shl
    i32.add
    i64.load
    local.get $7
    local.get $5
    local.get $4
    call_indirect (type $FUNCSIG$jjjii)
    local.set $3
    local.get $7
    i32.const 1
    i32.sub
    local.set $7
    br $loop|0
   end
   unreachable
  end
  local.get $3
  local.set $8
  local.get $5
  call $~lib/rt/pure/__release
  local.get $8
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Int64Array,i64> (; 144 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i64)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i64.const 1
  call $~lib/typedarray/Int64Array#__set
  local.get $1
  i32.const 1
  i64.const 2
  call $~lib/typedarray/Int64Array#__set
  local.get $1
  i32.const 2
  i64.const 3
  call $~lib/typedarray/Int64Array#__set
  local.get $1
  i32.const 20
  i64.const 0
  call $~lib/typedarray/Int64Array#reduceRight<i64>
  local.set $2
  local.get $2
  i64.const 6
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 311
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Uint64Array,u64>~anonymous|0 (; 145 ;) (type $FUNCSIG$jjjii) (param $0 i64) (param $1 i64) (param $2 i32) (param $3 i32) (result i64)
  (local $4 i64)
  local.get $3
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  i64.add
  local.set $4
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $~lib/typedarray/Uint64Array#reduceRight<u64> (; 146 ;) (type $FUNCSIG$jiij) (param $0 i32) (param $1 i32) (param $2 i64) (result i64)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $1
  local.set $4
  local.get $2
  local.set $3
  local.get $5
  i32.load offset=4
  local.set $6
  block $break|0
   local.get $5
   call $~lib/typedarray/Uint64Array#get:length
   i32.const 1
   i32.sub
   local.set $7
   loop $loop|0
    local.get $7
    i32.const 0
    i32.ge_s
    i32.eqz
    br_if $break|0
    i32.const 4
    global.set $~lib/argc
    local.get $3
    local.get $6
    local.get $7
    i32.const 3
    i32.shl
    i32.add
    i64.load
    local.get $7
    local.get $5
    local.get $4
    call_indirect (type $FUNCSIG$jjjii)
    local.set $3
    local.get $7
    i32.const 1
    i32.sub
    local.set $7
    br $loop|0
   end
   unreachable
  end
  local.get $3
  local.set $8
  local.get $5
  call $~lib/rt/pure/__release
  local.get $8
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Uint64Array,u64> (; 147 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i64)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint64Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i64.const 1
  call $~lib/typedarray/Uint64Array#__set
  local.get $1
  i32.const 1
  i64.const 2
  call $~lib/typedarray/Uint64Array#__set
  local.get $1
  i32.const 2
  i64.const 3
  call $~lib/typedarray/Uint64Array#__set
  local.get $1
  i32.const 21
  i64.const 0
  call $~lib/typedarray/Uint64Array#reduceRight<u64>
  local.set $2
  local.get $2
  i64.const 6
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 311
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Float32Array,f32>~anonymous|0 (; 148 ;) (type $FUNCSIG$fffii) (param $0 f32) (param $1 f32) (param $2 i32) (param $3 i32) (result f32)
  (local $4 f32)
  local.get $3
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  f32.add
  local.set $4
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $~lib/typedarray/Float32Array#reduceRight<f32> (; 149 ;) (type $FUNCSIG$fiif) (param $0 i32) (param $1 i32) (param $2 f32) (result f32)
  (local $3 f32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 f32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $1
  local.set $4
  local.get $2
  local.set $3
  local.get $5
  i32.load offset=4
  local.set $6
  block $break|0
   local.get $5
   call $~lib/typedarray/Float32Array#get:length
   i32.const 1
   i32.sub
   local.set $7
   loop $loop|0
    local.get $7
    i32.const 0
    i32.ge_s
    i32.eqz
    br_if $break|0
    i32.const 4
    global.set $~lib/argc
    local.get $3
    local.get $6
    local.get $7
    i32.const 2
    i32.shl
    i32.add
    f32.load
    local.get $7
    local.get $5
    local.get $4
    call_indirect (type $FUNCSIG$fffii)
    local.set $3
    local.get $7
    i32.const 1
    i32.sub
    local.set $7
    br $loop|0
   end
   unreachable
  end
  local.get $3
  local.set $8
  local.get $5
  call $~lib/rt/pure/__release
  local.get $8
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Float32Array,f32> (; 150 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 f32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Float32Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  f32.const 1
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 1
  f32.const 2
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 2
  f32.const 3
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 22
  f32.const 0
  call $~lib/typedarray/Float32Array#reduceRight<f32>
  local.set $2
  local.get $2
  f32.const 6
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 311
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Float64Array,f64>~anonymous|0 (; 151 ;) (type $FUNCSIG$dddii) (param $0 f64) (param $1 f64) (param $2 i32) (param $3 i32) (result f64)
  (local $4 f64)
  local.get $3
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $1
  f64.add
  local.set $4
  local.get $3
  call $~lib/rt/pure/__release
  local.get $4
 )
 (func $~lib/typedarray/Float64Array#reduceRight<f64> (; 152 ;) (type $FUNCSIG$diid) (param $0 i32) (param $1 i32) (param $2 f64) (result f64)
  (local $3 f64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 f64)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $1
  local.set $4
  local.get $2
  local.set $3
  local.get $5
  i32.load offset=4
  local.set $6
  block $break|0
   local.get $5
   call $~lib/typedarray/Float64Array#get:length
   i32.const 1
   i32.sub
   local.set $7
   loop $loop|0
    local.get $7
    i32.const 0
    i32.ge_s
    i32.eqz
    br_if $break|0
    i32.const 4
    global.set $~lib/argc
    local.get $3
    local.get $6
    local.get $7
    i32.const 3
    i32.shl
    i32.add
    f64.load
    local.get $7
    local.get $5
    local.get $4
    call_indirect (type $FUNCSIG$dddii)
    local.set $3
    local.get $7
    i32.const 1
    i32.sub
    local.set $7
    br $loop|0
   end
   unreachable
  end
  local.get $3
  local.set $8
  local.get $5
  call $~lib/rt/pure/__release
  local.get $8
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Float64Array,f64> (; 153 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 f64)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Float64Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  f64.const 1
  call $~lib/typedarray/Float64Array#__set
  local.get $1
  i32.const 1
  f64.const 2
  call $~lib/typedarray/Float64Array#__set
  local.get $1
  i32.const 2
  f64.const 3
  call $~lib/typedarray/Float64Array#__set
  local.get $1
  i32.const 23
  f64.const 0
  call $~lib/typedarray/Float64Array#reduceRight<f64>
  local.set $2
  local.get $2
  f64.const 6
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 311
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>~anonymous|0 (; 154 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $0
  i32.mul
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/typedarray/Int8Array#map (; 155 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $1
  local.set $2
  local.get $3
  call $~lib/typedarray/Int8Array#get:length
  local.set $4
  local.get $3
  i32.load offset=4
  local.set $5
  i32.const 0
  local.get $4
  call $~lib/typedarray/Int8Array#constructor
  local.tee $6
  call $~lib/rt/pure/__retain
  local.set $7
  local.get $7
  i32.load offset=4
  local.set $8
  block $break|0
   i32.const 0
   local.set $9
   loop $loop|0
    local.get $9
    local.get $4
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $8
    local.get $9
    i32.const 0
    i32.shl
    i32.add
    i32.const 3
    global.set $~lib/argc
    local.get $5
    local.get $9
    i32.const 0
    i32.shl
    i32.add
    i32.load8_s
    local.get $9
    local.get $3
    local.get $2
    call_indirect (type $FUNCSIG$iiii)
    i32.store8
    local.get $9
    i32.const 1
    i32.add
    local.set $9
    br $loop|0
   end
   unreachable
  end
  local.get $7
  local.set $9
  local.get $3
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $9
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8> (; 156 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int8Array#__set
  local.get $1
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int8Array#__set
  local.get $1
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int8Array#__set
  local.get $1
  i32.const 24
  call $~lib/typedarray/Int8Array#map
  local.set $2
  local.get $2
  i32.const 0
  call $~lib/typedarray/Int8Array#__get
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 332
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 1
  call $~lib/typedarray/Int8Array#__get
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 333
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 2
  call $~lib/typedarray/Int8Array#__get
  i32.const 9
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 334
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
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Uint8Array,u8>~anonymous|0 (; 157 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $0
  i32.mul
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/typedarray/Uint8Array#map (; 158 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $1
  local.set $2
  local.get $3
  call $~lib/typedarray/Uint8Array#get:length
  local.set $4
  local.get $3
  i32.load offset=4
  local.set $5
  i32.const 0
  local.get $4
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $6
  call $~lib/rt/pure/__retain
  local.set $7
  local.get $7
  i32.load offset=4
  local.set $8
  block $break|0
   i32.const 0
   local.set $9
   loop $loop|0
    local.get $9
    local.get $4
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $8
    local.get $9
    i32.const 0
    i32.shl
    i32.add
    i32.const 3
    global.set $~lib/argc
    local.get $5
    local.get $9
    i32.const 0
    i32.shl
    i32.add
    i32.load8_u
    local.get $9
    local.get $3
    local.get $2
    call_indirect (type $FUNCSIG$iiii)
    i32.store8
    local.get $9
    i32.const 1
    i32.add
    local.set $9
    br $loop|0
   end
   unreachable
  end
  local.get $7
  local.set $9
  local.get $3
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $9
 )
 (func $~lib/typedarray/Uint8Array#__get (; 159 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 280
   i32.const 432
   i32.const 143
   i32.const 44
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.load offset=4
  local.get $1
  i32.add
  i32.load8_u
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Uint8Array,u8> (; 160 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 25
  call $~lib/typedarray/Uint8Array#map
  local.set $2
  local.get $2
  i32.const 0
  call $~lib/typedarray/Uint8Array#__get
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 332
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 1
  call $~lib/typedarray/Uint8Array#__get
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 333
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 2
  call $~lib/typedarray/Uint8Array#__get
  i32.const 9
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 334
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
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Uint8ClampedArray,u8>~anonymous|0 (; 161 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $0
  i32.mul
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/typedarray/Uint8ClampedArray#map (; 162 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $1
  local.set $2
  local.get $3
  call $~lib/typedarray/Uint8ClampedArray#get:length
  local.set $4
  local.get $3
  i32.load offset=4
  local.set $5
  i32.const 0
  local.get $4
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.tee $6
  call $~lib/rt/pure/__retain
  local.set $7
  local.get $7
  i32.load offset=4
  local.set $8
  block $break|0
   i32.const 0
   local.set $9
   loop $loop|0
    local.get $9
    local.get $4
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $8
    local.get $9
    i32.const 0
    i32.shl
    i32.add
    i32.const 3
    global.set $~lib/argc
    local.get $5
    local.get $9
    i32.const 0
    i32.shl
    i32.add
    i32.load8_u
    local.get $9
    local.get $3
    local.get $2
    call_indirect (type $FUNCSIG$iiii)
    i32.store8
    local.get $9
    i32.const 1
    i32.add
    local.set $9
    br $loop|0
   end
   unreachable
  end
  local.get $7
  local.set $9
  local.get $3
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $9
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Uint8ClampedArray,u8> (; 163 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $1
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $1
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $1
  i32.const 26
  call $~lib/typedarray/Uint8ClampedArray#map
  local.set $2
  local.get $2
  i32.const 0
  call $~lib/typedarray/Uint8ClampedArray#__get
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 332
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 1
  call $~lib/typedarray/Uint8ClampedArray#__get
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 333
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 2
  call $~lib/typedarray/Uint8ClampedArray#__get
  i32.const 9
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 334
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
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Int16Array,i16>~anonymous|0 (; 164 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $0
  i32.mul
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/typedarray/Int16Array#map (; 165 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $1
  local.set $2
  local.get $3
  call $~lib/typedarray/Int16Array#get:length
  local.set $4
  local.get $3
  i32.load offset=4
  local.set $5
  i32.const 0
  local.get $4
  call $~lib/typedarray/Int16Array#constructor
  local.tee $6
  call $~lib/rt/pure/__retain
  local.set $7
  local.get $7
  i32.load offset=4
  local.set $8
  block $break|0
   i32.const 0
   local.set $9
   loop $loop|0
    local.get $9
    local.get $4
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $8
    local.get $9
    i32.const 1
    i32.shl
    i32.add
    i32.const 3
    global.set $~lib/argc
    local.get $5
    local.get $9
    i32.const 1
    i32.shl
    i32.add
    i32.load16_s
    local.get $9
    local.get $3
    local.get $2
    call_indirect (type $FUNCSIG$iiii)
    i32.store16
    local.get $9
    i32.const 1
    i32.add
    local.set $9
    br $loop|0
   end
   unreachable
  end
  local.get $7
  local.set $9
  local.get $3
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $9
 )
 (func $~lib/typedarray/Int16Array#__get (; 166 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  i32.ge_u
  if
   i32.const 280
   i32.const 432
   i32.const 375
   i32.const 63
   call $~lib/builtins/abort
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
 (func $std/typedarray/testArrayMap<~lib/typedarray/Int16Array,i16> (; 167 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int16Array#__set
  local.get $1
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int16Array#__set
  local.get $1
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int16Array#__set
  local.get $1
  i32.const 27
  call $~lib/typedarray/Int16Array#map
  local.set $2
  local.get $2
  i32.const 0
  call $~lib/typedarray/Int16Array#__get
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 332
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 1
  call $~lib/typedarray/Int16Array#__get
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 333
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 2
  call $~lib/typedarray/Int16Array#__get
  i32.const 9
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 334
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
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Uint16Array,u16>~anonymous|0 (; 168 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $0
  i32.mul
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/typedarray/Uint16Array#map (; 169 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $1
  local.set $2
  local.get $3
  call $~lib/typedarray/Uint16Array#get:length
  local.set $4
  local.get $3
  i32.load offset=4
  local.set $5
  i32.const 0
  local.get $4
  call $~lib/typedarray/Uint16Array#constructor
  local.tee $6
  call $~lib/rt/pure/__retain
  local.set $7
  local.get $7
  i32.load offset=4
  local.set $8
  block $break|0
   i32.const 0
   local.set $9
   loop $loop|0
    local.get $9
    local.get $4
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $8
    local.get $9
    i32.const 1
    i32.shl
    i32.add
    i32.const 3
    global.set $~lib/argc
    local.get $5
    local.get $9
    i32.const 1
    i32.shl
    i32.add
    i32.load16_u
    local.get $9
    local.get $3
    local.get $2
    call_indirect (type $FUNCSIG$iiii)
    i32.store16
    local.get $9
    i32.const 1
    i32.add
    local.set $9
    br $loop|0
   end
   unreachable
  end
  local.get $7
  local.set $9
  local.get $3
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $9
 )
 (func $~lib/typedarray/Uint16Array#__get (; 170 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  i32.ge_u
  if
   i32.const 280
   i32.const 432
   i32.const 491
   i32.const 63
   call $~lib/builtins/abort
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
 (func $std/typedarray/testArrayMap<~lib/typedarray/Uint16Array,u16> (; 171 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint16Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint16Array#__set
  local.get $1
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint16Array#__set
  local.get $1
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint16Array#__set
  local.get $1
  i32.const 28
  call $~lib/typedarray/Uint16Array#map
  local.set $2
  local.get $2
  i32.const 0
  call $~lib/typedarray/Uint16Array#__get
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 332
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 1
  call $~lib/typedarray/Uint16Array#__get
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 333
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 2
  call $~lib/typedarray/Uint16Array#__get
  i32.const 9
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 334
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
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Int32Array,i32>~anonymous|0 (; 172 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $0
  i32.mul
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/typedarray/Int32Array#map (; 173 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $1
  local.set $2
  local.get $3
  call $~lib/typedarray/Int32Array#get:length
  local.set $4
  local.get $3
  i32.load offset=4
  local.set $5
  i32.const 0
  local.get $4
  call $~lib/typedarray/Int32Array#constructor
  local.tee $6
  call $~lib/rt/pure/__retain
  local.set $7
  local.get $7
  i32.load offset=4
  local.set $8
  block $break|0
   i32.const 0
   local.set $9
   loop $loop|0
    local.get $9
    local.get $4
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $8
    local.get $9
    i32.const 2
    i32.shl
    i32.add
    i32.const 3
    global.set $~lib/argc
    local.get $5
    local.get $9
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.get $9
    local.get $3
    local.get $2
    call_indirect (type $FUNCSIG$iiii)
    i32.store
    local.get $9
    i32.const 1
    i32.add
    local.set $9
    br $loop|0
   end
   unreachable
  end
  local.get $7
  local.set $9
  local.get $3
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $9
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Int32Array,i32> (; 174 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int32Array#__set
  local.get $1
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int32Array#__set
  local.get $1
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int32Array#__set
  local.get $1
  i32.const 29
  call $~lib/typedarray/Int32Array#map
  local.set $2
  local.get $2
  i32.const 0
  call $~lib/typedarray/Int32Array#__get
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 332
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 1
  call $~lib/typedarray/Int32Array#__get
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 333
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 2
  call $~lib/typedarray/Int32Array#__get
  i32.const 9
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 334
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
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Uint32Array,u32>~anonymous|0 (; 175 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $0
  i32.mul
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/typedarray/Uint32Array#map (; 176 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $1
  local.set $2
  local.get $3
  call $~lib/typedarray/Uint32Array#get:length
  local.set $4
  local.get $3
  i32.load offset=4
  local.set $5
  i32.const 0
  local.get $4
  call $~lib/typedarray/Uint32Array#constructor
  local.tee $6
  call $~lib/rt/pure/__retain
  local.set $7
  local.get $7
  i32.load offset=4
  local.set $8
  block $break|0
   i32.const 0
   local.set $9
   loop $loop|0
    local.get $9
    local.get $4
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $8
    local.get $9
    i32.const 2
    i32.shl
    i32.add
    i32.const 3
    global.set $~lib/argc
    local.get $5
    local.get $9
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.get $9
    local.get $3
    local.get $2
    call_indirect (type $FUNCSIG$iiii)
    i32.store
    local.get $9
    i32.const 1
    i32.add
    local.set $9
    br $loop|0
   end
   unreachable
  end
  local.get $7
  local.set $9
  local.get $3
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $9
 )
 (func $~lib/typedarray/Uint32Array#__get (; 177 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 280
   i32.const 432
   i32.const 723
   i32.const 63
   call $~lib/builtins/abort
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
 (func $std/typedarray/testArrayMap<~lib/typedarray/Uint32Array,u32> (; 178 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint32Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint32Array#__set
  local.get $1
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint32Array#__set
  local.get $1
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint32Array#__set
  local.get $1
  i32.const 30
  call $~lib/typedarray/Uint32Array#map
  local.set $2
  local.get $2
  i32.const 0
  call $~lib/typedarray/Uint32Array#__get
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 332
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 1
  call $~lib/typedarray/Uint32Array#__get
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 333
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 2
  call $~lib/typedarray/Uint32Array#__get
  i32.const 9
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 334
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
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Int64Array,i64>~anonymous|0 (; 179 ;) (type $FUNCSIG$jjii) (param $0 i64) (param $1 i32) (param $2 i32) (result i64)
  (local $3 i64)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $0
  i64.mul
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/typedarray/Int64Array#map (; 180 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $1
  local.set $2
  local.get $3
  call $~lib/typedarray/Int64Array#get:length
  local.set $4
  local.get $3
  i32.load offset=4
  local.set $5
  i32.const 0
  local.get $4
  call $~lib/typedarray/Int64Array#constructor
  local.tee $6
  call $~lib/rt/pure/__retain
  local.set $7
  local.get $7
  i32.load offset=4
  local.set $8
  block $break|0
   i32.const 0
   local.set $9
   loop $loop|0
    local.get $9
    local.get $4
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $8
    local.get $9
    i32.const 3
    i32.shl
    i32.add
    i32.const 3
    global.set $~lib/argc
    local.get $5
    local.get $9
    i32.const 3
    i32.shl
    i32.add
    i64.load
    local.get $9
    local.get $3
    local.get $2
    call_indirect (type $FUNCSIG$jjii)
    i64.store
    local.get $9
    i32.const 1
    i32.add
    local.set $9
    br $loop|0
   end
   unreachable
  end
  local.get $7
  local.set $9
  local.get $3
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $9
 )
 (func $~lib/typedarray/Int64Array#__get (; 181 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 280
   i32.const 432
   i32.const 839
   i32.const 63
   call $~lib/builtins/abort
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
 (func $std/typedarray/testArrayMap<~lib/typedarray/Int64Array,i64> (; 182 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i64.const 1
  call $~lib/typedarray/Int64Array#__set
  local.get $1
  i32.const 1
  i64.const 2
  call $~lib/typedarray/Int64Array#__set
  local.get $1
  i32.const 2
  i64.const 3
  call $~lib/typedarray/Int64Array#__set
  local.get $1
  i32.const 31
  call $~lib/typedarray/Int64Array#map
  local.set $2
  local.get $2
  i32.const 0
  call $~lib/typedarray/Int64Array#__get
  i64.const 1
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 332
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 1
  call $~lib/typedarray/Int64Array#__get
  i64.const 4
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 333
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 2
  call $~lib/typedarray/Int64Array#__get
  i64.const 9
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 334
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
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Uint64Array,u64>~anonymous|0 (; 183 ;) (type $FUNCSIG$jjii) (param $0 i64) (param $1 i32) (param $2 i32) (result i64)
  (local $3 i64)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $0
  i64.mul
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/typedarray/Uint64Array#map (; 184 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $1
  local.set $2
  local.get $3
  call $~lib/typedarray/Uint64Array#get:length
  local.set $4
  local.get $3
  i32.load offset=4
  local.set $5
  i32.const 0
  local.get $4
  call $~lib/typedarray/Uint64Array#constructor
  local.tee $6
  call $~lib/rt/pure/__retain
  local.set $7
  local.get $7
  i32.load offset=4
  local.set $8
  block $break|0
   i32.const 0
   local.set $9
   loop $loop|0
    local.get $9
    local.get $4
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $8
    local.get $9
    i32.const 3
    i32.shl
    i32.add
    i32.const 3
    global.set $~lib/argc
    local.get $5
    local.get $9
    i32.const 3
    i32.shl
    i32.add
    i64.load
    local.get $9
    local.get $3
    local.get $2
    call_indirect (type $FUNCSIG$jjii)
    i64.store
    local.get $9
    i32.const 1
    i32.add
    local.set $9
    br $loop|0
   end
   unreachable
  end
  local.get $7
  local.set $9
  local.get $3
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $9
 )
 (func $~lib/typedarray/Uint64Array#__get (; 185 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 280
   i32.const 432
   i32.const 955
   i32.const 63
   call $~lib/builtins/abort
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
 (func $std/typedarray/testArrayMap<~lib/typedarray/Uint64Array,u64> (; 186 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint64Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i64.const 1
  call $~lib/typedarray/Uint64Array#__set
  local.get $1
  i32.const 1
  i64.const 2
  call $~lib/typedarray/Uint64Array#__set
  local.get $1
  i32.const 2
  i64.const 3
  call $~lib/typedarray/Uint64Array#__set
  local.get $1
  i32.const 32
  call $~lib/typedarray/Uint64Array#map
  local.set $2
  local.get $2
  i32.const 0
  call $~lib/typedarray/Uint64Array#__get
  i64.const 1
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 332
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 1
  call $~lib/typedarray/Uint64Array#__get
  i64.const 4
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 333
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 2
  call $~lib/typedarray/Uint64Array#__get
  i64.const 9
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 334
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
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Float32Array,f32>~anonymous|0 (; 187 ;) (type $FUNCSIG$ffii) (param $0 f32) (param $1 i32) (param $2 i32) (result f32)
  (local $3 f32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $0
  f32.mul
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/typedarray/Float32Array#map (; 188 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $1
  local.set $2
  local.get $3
  call $~lib/typedarray/Float32Array#get:length
  local.set $4
  local.get $3
  i32.load offset=4
  local.set $5
  i32.const 0
  local.get $4
  call $~lib/typedarray/Float32Array#constructor
  local.tee $6
  call $~lib/rt/pure/__retain
  local.set $7
  local.get $7
  i32.load offset=4
  local.set $8
  block $break|0
   i32.const 0
   local.set $9
   loop $loop|0
    local.get $9
    local.get $4
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $8
    local.get $9
    i32.const 2
    i32.shl
    i32.add
    i32.const 3
    global.set $~lib/argc
    local.get $5
    local.get $9
    i32.const 2
    i32.shl
    i32.add
    f32.load
    local.get $9
    local.get $3
    local.get $2
    call_indirect (type $FUNCSIG$ffii)
    f32.store
    local.get $9
    i32.const 1
    i32.add
    local.set $9
    br $loop|0
   end
   unreachable
  end
  local.get $7
  local.set $9
  local.get $3
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $9
 )
 (func $~lib/typedarray/Float32Array#__get (; 189 ;) (type $FUNCSIG$fii) (param $0 i32) (param $1 i32) (result f32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 280
   i32.const 432
   i32.const 1071
   i32.const 63
   call $~lib/builtins/abort
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
 (func $std/typedarray/testArrayMap<~lib/typedarray/Float32Array,f32> (; 190 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Float32Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  f32.const 1
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 1
  f32.const 2
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 2
  f32.const 3
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 33
  call $~lib/typedarray/Float32Array#map
  local.set $2
  local.get $2
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  f32.const 1
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 332
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  f32.const 4
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 333
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 2
  call $~lib/typedarray/Float32Array#__get
  f32.const 9
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 334
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
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Float64Array,f64>~anonymous|0 (; 191 ;) (type $FUNCSIG$ddii) (param $0 f64) (param $1 i32) (param $2 i32) (result f64)
  (local $3 f64)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  local.get $0
  f64.mul
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/typedarray/Float64Array#map (; 192 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $1
  local.set $2
  local.get $3
  call $~lib/typedarray/Float64Array#get:length
  local.set $4
  local.get $3
  i32.load offset=4
  local.set $5
  i32.const 0
  local.get $4
  call $~lib/typedarray/Float64Array#constructor
  local.tee $6
  call $~lib/rt/pure/__retain
  local.set $7
  local.get $7
  i32.load offset=4
  local.set $8
  block $break|0
   i32.const 0
   local.set $9
   loop $loop|0
    local.get $9
    local.get $4
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $8
    local.get $9
    i32.const 3
    i32.shl
    i32.add
    i32.const 3
    global.set $~lib/argc
    local.get $5
    local.get $9
    i32.const 3
    i32.shl
    i32.add
    f64.load
    local.get $9
    local.get $3
    local.get $2
    call_indirect (type $FUNCSIG$ddii)
    f64.store
    local.get $9
    i32.const 1
    i32.add
    local.set $9
    br $loop|0
   end
   unreachable
  end
  local.get $7
  local.set $9
  local.get $3
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $9
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Float64Array,f64> (; 193 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Float64Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  f64.const 1
  call $~lib/typedarray/Float64Array#__set
  local.get $1
  i32.const 1
  f64.const 2
  call $~lib/typedarray/Float64Array#__set
  local.get $1
  i32.const 2
  f64.const 3
  call $~lib/typedarray/Float64Array#__set
  local.get $1
  i32.const 34
  call $~lib/typedarray/Float64Array#map
  local.set $2
  local.get $2
  i32.const 0
  call $~lib/typedarray/Float64Array#__get
  f64.const 1
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 332
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 1
  call $~lib/typedarray/Float64Array#__get
  f64.const 4
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 333
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 2
  call $~lib/typedarray/Float64Array#__get
  f64.const 9
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 334
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
 )
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Int8Array,i8>~anonymous|0 (; 194 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 2
  i32.gt_s
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/rt/tlsf/reallocateBlock (; 195 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  local.get $2
  call $~lib/rt/tlsf/prepareSize
  local.set $3
  local.get $1
  i32.load
  local.set $4
  local.get $4
  i32.const 1
  i32.and
  i32.eqz
  if (result i32)
   local.get $1
   i32.load offset=4
   i32.const -268435456
   i32.and
   i32.eqz
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 504
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  local.get $4
  i32.const -4
  i32.and
  i32.le_u
  if
   local.get $0
   local.get $1
   local.get $3
   call $~lib/rt/tlsf/prepareBlock
   local.get $1
   local.get $2
   i32.store offset=12
   local.get $1
   return
  end
  local.get $1
  local.set $5
  local.get $5
  i32.const 16
  i32.add
  local.get $5
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  i32.add
  local.set $6
  local.get $6
  i32.load
  local.set $7
  local.get $7
  i32.const 1
  i32.and
  if
   local.get $4
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.const 16
   i32.add
   local.get $7
   i32.const 3
   i32.const -1
   i32.xor
   i32.and
   i32.add
   local.set $5
   local.get $5
   local.get $3
   i32.ge_u
   if
    local.get $0
    local.get $6
    call $~lib/rt/tlsf/removeBlock
    local.get $1
    local.get $4
    i32.const 3
    i32.and
    local.get $5
    i32.or
    i32.store
    local.get $1
    local.get $2
    i32.store offset=12
    local.get $0
    local.get $1
    local.get $3
    call $~lib/rt/tlsf/prepareBlock
    local.get $1
    return
   end
  end
  local.get $0
  local.get $2
  call $~lib/rt/tlsf/allocateBlock
  local.set $8
  local.get $8
  local.get $1
  i32.load offset=8
  i32.store offset=8
  local.get $8
  i32.const 16
  i32.add
  local.get $1
  i32.const 16
  i32.add
  local.get $2
  call $~lib/memory/memory.copy
  local.get $1
  local.get $4
  i32.const 1
  i32.or
  i32.store
  local.get $0
  local.get $1
  call $~lib/rt/tlsf/insertBlock
  local.get $1
  call $~lib/rt/rtrace/onfree
  local.get $8
 )
 (func $~lib/rt/tlsf/__realloc (; 196 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  global.get $~lib/rt/tlsf/ROOT
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 568
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  i32.ne
  if (result i32)
   local.get $0
   i32.const 15
   i32.and
   i32.eqz
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 569
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  global.get $~lib/rt/tlsf/ROOT
  local.get $0
  i32.const 16
  i32.sub
  local.get $1
  call $~lib/rt/tlsf/reallocateBlock
  i32.const 16
  i32.add
 )
 (func $~lib/typedarray/Int8Array#filter (; 197 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $1
  local.set $2
  local.get $3
  call $~lib/typedarray/Int8Array#get:length
  local.set $4
  i32.const 12
  i32.const 3
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $4
  i32.const 0
  i32.shl
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $6
  local.get $3
  i32.load offset=4
  local.set $7
  i32.const 0
  local.set $8
  block $break|0
   i32.const 0
   local.set $9
   loop $loop|0
    local.get $9
    local.get $4
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $7
    local.get $9
    i32.const 0
    i32.shl
    i32.add
    i32.load8_s
    local.set $10
    i32.const 3
    global.set $~lib/argc
    local.get $10
    local.get $9
    local.get $3
    local.get $2
    call_indirect (type $FUNCSIG$iiii)
    if
     local.get $6
     local.get $8
     local.tee $11
     i32.const 1
     i32.add
     local.set $8
     local.get $11
     i32.const 0
     i32.shl
     i32.add
     local.get $10
     i32.store8
    end
    local.get $9
    i32.const 1
    i32.add
    local.set $9
    br $loop|0
   end
   unreachable
  end
  local.get $8
  i32.const 0
  i32.shl
  local.set $10
  local.get $6
  local.get $10
  call $~lib/rt/tlsf/__realloc
  local.set $9
  local.get $5
  local.tee $11
  local.get $9
  local.tee $12
  local.get $11
  i32.load
  local.tee $11
  i32.ne
  if
   local.get $12
   call $~lib/rt/pure/__retain
   drop
   local.get $11
   call $~lib/rt/pure/__release
  end
  local.get $12
  i32.store
  local.get $5
  local.get $9
  i32.store offset=4
  local.get $5
  local.get $10
  i32.store offset=8
  local.get $5
  local.set $12
  local.get $3
  call $~lib/rt/pure/__release
  local.get $12
 )
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Int8Array,i8> (; 198 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 6
  call $~lib/typedarray/Int8Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int8Array#__set
  local.get $1
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int8Array#__set
  local.get $1
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int8Array#__set
  local.get $1
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int8Array#__set
  local.get $1
  i32.const 5
  i32.const 5
  call $~lib/typedarray/Int8Array#__set
  local.get $1
  i32.const 35
  call $~lib/typedarray/Int8Array#filter
  local.set $2
  local.get $2
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 357
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/typedarray/Int8Array#get:length
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 358
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 0
  call $~lib/typedarray/Int8Array#__get
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 359
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 1
  call $~lib/typedarray/Int8Array#__get
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 360
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 2
  call $~lib/typedarray/Int8Array#__get
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 361
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
 )
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Uint8Array,u8>~anonymous|0 (; 199 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 255
  i32.and
  i32.const 2
  i32.gt_u
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/typedarray/Uint8Array#filter (; 200 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $1
  local.set $2
  local.get $3
  call $~lib/typedarray/Uint8Array#get:length
  local.set $4
  i32.const 12
  i32.const 4
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $4
  i32.const 0
  i32.shl
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $6
  local.get $3
  i32.load offset=4
  local.set $7
  i32.const 0
  local.set $8
  block $break|0
   i32.const 0
   local.set $9
   loop $loop|0
    local.get $9
    local.get $4
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $7
    local.get $9
    i32.const 0
    i32.shl
    i32.add
    i32.load8_u
    local.set $10
    i32.const 3
    global.set $~lib/argc
    local.get $10
    local.get $9
    local.get $3
    local.get $2
    call_indirect (type $FUNCSIG$iiii)
    if
     local.get $6
     local.get $8
     local.tee $11
     i32.const 1
     i32.add
     local.set $8
     local.get $11
     i32.const 0
     i32.shl
     i32.add
     local.get $10
     i32.store8
    end
    local.get $9
    i32.const 1
    i32.add
    local.set $9
    br $loop|0
   end
   unreachable
  end
  local.get $8
  i32.const 0
  i32.shl
  local.set $10
  local.get $6
  local.get $10
  call $~lib/rt/tlsf/__realloc
  local.set $9
  local.get $5
  local.tee $11
  local.get $9
  local.tee $12
  local.get $11
  i32.load
  local.tee $11
  i32.ne
  if
   local.get $12
   call $~lib/rt/pure/__retain
   drop
   local.get $11
   call $~lib/rt/pure/__release
  end
  local.get $12
  i32.store
  local.get $5
  local.get $9
  i32.store offset=4
  local.get $5
  local.get $10
  i32.store offset=8
  local.get $5
  local.set $12
  local.get $3
  call $~lib/rt/pure/__release
  local.get $12
 )
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Uint8Array,u8> (; 201 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 6
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 5
  i32.const 5
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 36
  call $~lib/typedarray/Uint8Array#filter
  local.set $2
  local.get $2
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 357
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/typedarray/Uint8Array#get:length
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 358
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 0
  call $~lib/typedarray/Uint8Array#__get
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 359
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 1
  call $~lib/typedarray/Uint8Array#__get
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 360
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 2
  call $~lib/typedarray/Uint8Array#__get
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 361
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
 )
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Uint8ClampedArray,u8>~anonymous|0 (; 202 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 255
  i32.and
  i32.const 2
  i32.gt_u
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/typedarray/Uint8ClampedArray#filter (; 203 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $1
  local.set $2
  local.get $3
  call $~lib/typedarray/Uint8ClampedArray#get:length
  local.set $4
  i32.const 12
  i32.const 5
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $4
  i32.const 0
  i32.shl
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $6
  local.get $3
  i32.load offset=4
  local.set $7
  i32.const 0
  local.set $8
  block $break|0
   i32.const 0
   local.set $9
   loop $loop|0
    local.get $9
    local.get $4
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $7
    local.get $9
    i32.const 0
    i32.shl
    i32.add
    i32.load8_u
    local.set $10
    i32.const 3
    global.set $~lib/argc
    local.get $10
    local.get $9
    local.get $3
    local.get $2
    call_indirect (type $FUNCSIG$iiii)
    if
     local.get $6
     local.get $8
     local.tee $11
     i32.const 1
     i32.add
     local.set $8
     local.get $11
     i32.const 0
     i32.shl
     i32.add
     local.get $10
     i32.store8
    end
    local.get $9
    i32.const 1
    i32.add
    local.set $9
    br $loop|0
   end
   unreachable
  end
  local.get $8
  i32.const 0
  i32.shl
  local.set $10
  local.get $6
  local.get $10
  call $~lib/rt/tlsf/__realloc
  local.set $9
  local.get $5
  local.tee $11
  local.get $9
  local.tee $12
  local.get $11
  i32.load
  local.tee $11
  i32.ne
  if
   local.get $12
   call $~lib/rt/pure/__retain
   drop
   local.get $11
   call $~lib/rt/pure/__release
  end
  local.get $12
  i32.store
  local.get $5
  local.get $9
  i32.store offset=4
  local.get $5
  local.get $10
  i32.store offset=8
  local.get $5
  local.set $12
  local.get $3
  call $~lib/rt/pure/__release
  local.get $12
 )
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Uint8ClampedArray,u8> (; 204 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 6
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $1
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $1
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $1
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $1
  i32.const 5
  i32.const 5
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $1
  i32.const 37
  call $~lib/typedarray/Uint8ClampedArray#filter
  local.set $2
  local.get $2
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 357
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/typedarray/Uint8ClampedArray#get:length
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 358
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 0
  call $~lib/typedarray/Uint8ClampedArray#__get
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 359
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 1
  call $~lib/typedarray/Uint8ClampedArray#__get
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 360
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 2
  call $~lib/typedarray/Uint8ClampedArray#__get
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 361
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
 )
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Int16Array,i16>~anonymous|0 (; 205 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 2
  i32.gt_s
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/typedarray/Int16Array#filter (; 206 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $1
  local.set $2
  local.get $3
  call $~lib/typedarray/Int16Array#get:length
  local.set $4
  i32.const 12
  i32.const 6
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $4
  i32.const 1
  i32.shl
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $6
  local.get $3
  i32.load offset=4
  local.set $7
  i32.const 0
  local.set $8
  block $break|0
   i32.const 0
   local.set $9
   loop $loop|0
    local.get $9
    local.get $4
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $7
    local.get $9
    i32.const 1
    i32.shl
    i32.add
    i32.load16_s
    local.set $10
    i32.const 3
    global.set $~lib/argc
    local.get $10
    local.get $9
    local.get $3
    local.get $2
    call_indirect (type $FUNCSIG$iiii)
    if
     local.get $6
     local.get $8
     local.tee $11
     i32.const 1
     i32.add
     local.set $8
     local.get $11
     i32.const 1
     i32.shl
     i32.add
     local.get $10
     i32.store16
    end
    local.get $9
    i32.const 1
    i32.add
    local.set $9
    br $loop|0
   end
   unreachable
  end
  local.get $8
  i32.const 1
  i32.shl
  local.set $10
  local.get $6
  local.get $10
  call $~lib/rt/tlsf/__realloc
  local.set $9
  local.get $5
  local.tee $11
  local.get $9
  local.tee $12
  local.get $11
  i32.load
  local.tee $11
  i32.ne
  if
   local.get $12
   call $~lib/rt/pure/__retain
   drop
   local.get $11
   call $~lib/rt/pure/__release
  end
  local.get $12
  i32.store
  local.get $5
  local.get $9
  i32.store offset=4
  local.get $5
  local.get $10
  i32.store offset=8
  local.get $5
  local.set $12
  local.get $3
  call $~lib/rt/pure/__release
  local.get $12
 )
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Int16Array,i16> (; 207 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 6
  call $~lib/typedarray/Int16Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int16Array#__set
  local.get $1
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int16Array#__set
  local.get $1
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int16Array#__set
  local.get $1
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int16Array#__set
  local.get $1
  i32.const 5
  i32.const 5
  call $~lib/typedarray/Int16Array#__set
  local.get $1
  i32.const 38
  call $~lib/typedarray/Int16Array#filter
  local.set $2
  local.get $2
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 357
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/typedarray/Int16Array#get:length
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 358
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 0
  call $~lib/typedarray/Int16Array#__get
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 359
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 1
  call $~lib/typedarray/Int16Array#__get
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 360
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 2
  call $~lib/typedarray/Int16Array#__get
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 361
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
 )
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Uint16Array,u16>~anonymous|0 (; 208 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 65535
  i32.and
  i32.const 2
  i32.gt_u
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/typedarray/Uint16Array#filter (; 209 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $1
  local.set $2
  local.get $3
  call $~lib/typedarray/Uint16Array#get:length
  local.set $4
  i32.const 12
  i32.const 7
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $4
  i32.const 1
  i32.shl
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $6
  local.get $3
  i32.load offset=4
  local.set $7
  i32.const 0
  local.set $8
  block $break|0
   i32.const 0
   local.set $9
   loop $loop|0
    local.get $9
    local.get $4
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $7
    local.get $9
    i32.const 1
    i32.shl
    i32.add
    i32.load16_u
    local.set $10
    i32.const 3
    global.set $~lib/argc
    local.get $10
    local.get $9
    local.get $3
    local.get $2
    call_indirect (type $FUNCSIG$iiii)
    if
     local.get $6
     local.get $8
     local.tee $11
     i32.const 1
     i32.add
     local.set $8
     local.get $11
     i32.const 1
     i32.shl
     i32.add
     local.get $10
     i32.store16
    end
    local.get $9
    i32.const 1
    i32.add
    local.set $9
    br $loop|0
   end
   unreachable
  end
  local.get $8
  i32.const 1
  i32.shl
  local.set $10
  local.get $6
  local.get $10
  call $~lib/rt/tlsf/__realloc
  local.set $9
  local.get $5
  local.tee $11
  local.get $9
  local.tee $12
  local.get $11
  i32.load
  local.tee $11
  i32.ne
  if
   local.get $12
   call $~lib/rt/pure/__retain
   drop
   local.get $11
   call $~lib/rt/pure/__release
  end
  local.get $12
  i32.store
  local.get $5
  local.get $9
  i32.store offset=4
  local.get $5
  local.get $10
  i32.store offset=8
  local.get $5
  local.set $12
  local.get $3
  call $~lib/rt/pure/__release
  local.get $12
 )
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Uint16Array,u16> (; 210 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 6
  call $~lib/typedarray/Uint16Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint16Array#__set
  local.get $1
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint16Array#__set
  local.get $1
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint16Array#__set
  local.get $1
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Uint16Array#__set
  local.get $1
  i32.const 5
  i32.const 5
  call $~lib/typedarray/Uint16Array#__set
  local.get $1
  i32.const 39
  call $~lib/typedarray/Uint16Array#filter
  local.set $2
  local.get $2
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 357
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/typedarray/Uint16Array#get:length
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 358
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 0
  call $~lib/typedarray/Uint16Array#__get
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 359
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 1
  call $~lib/typedarray/Uint16Array#__get
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 360
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 2
  call $~lib/typedarray/Uint16Array#__get
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 361
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
 )
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Int32Array,i32>~anonymous|0 (; 211 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 2
  i32.gt_s
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/typedarray/Int32Array#filter (; 212 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $1
  local.set $2
  local.get $3
  call $~lib/typedarray/Int32Array#get:length
  local.set $4
  i32.const 12
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $4
  i32.const 2
  i32.shl
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $6
  local.get $3
  i32.load offset=4
  local.set $7
  i32.const 0
  local.set $8
  block $break|0
   i32.const 0
   local.set $9
   loop $loop|0
    local.get $9
    local.get $4
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $7
    local.get $9
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set $10
    i32.const 3
    global.set $~lib/argc
    local.get $10
    local.get $9
    local.get $3
    local.get $2
    call_indirect (type $FUNCSIG$iiii)
    if
     local.get $6
     local.get $8
     local.tee $11
     i32.const 1
     i32.add
     local.set $8
     local.get $11
     i32.const 2
     i32.shl
     i32.add
     local.get $10
     i32.store
    end
    local.get $9
    i32.const 1
    i32.add
    local.set $9
    br $loop|0
   end
   unreachable
  end
  local.get $8
  i32.const 2
  i32.shl
  local.set $10
  local.get $6
  local.get $10
  call $~lib/rt/tlsf/__realloc
  local.set $9
  local.get $5
  local.tee $11
  local.get $9
  local.tee $12
  local.get $11
  i32.load
  local.tee $11
  i32.ne
  if
   local.get $12
   call $~lib/rt/pure/__retain
   drop
   local.get $11
   call $~lib/rt/pure/__release
  end
  local.get $12
  i32.store
  local.get $5
  local.get $9
  i32.store offset=4
  local.get $5
  local.get $10
  i32.store offset=8
  local.get $5
  local.set $12
  local.get $3
  call $~lib/rt/pure/__release
  local.get $12
 )
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Int32Array,i32> (; 213 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 6
  call $~lib/typedarray/Int32Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int32Array#__set
  local.get $1
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int32Array#__set
  local.get $1
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int32Array#__set
  local.get $1
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int32Array#__set
  local.get $1
  i32.const 5
  i32.const 5
  call $~lib/typedarray/Int32Array#__set
  local.get $1
  i32.const 40
  call $~lib/typedarray/Int32Array#filter
  local.set $2
  local.get $2
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 357
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/typedarray/Int32Array#get:length
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 358
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 0
  call $~lib/typedarray/Int32Array#__get
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 359
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 1
  call $~lib/typedarray/Int32Array#__get
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 360
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 2
  call $~lib/typedarray/Int32Array#__get
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 361
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
 )
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Uint32Array,u32>~anonymous|0 (; 214 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 2
  i32.gt_u
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/typedarray/Uint32Array#filter (; 215 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $1
  local.set $2
  local.get $3
  call $~lib/typedarray/Uint32Array#get:length
  local.set $4
  i32.const 12
  i32.const 9
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $4
  i32.const 2
  i32.shl
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $6
  local.get $3
  i32.load offset=4
  local.set $7
  i32.const 0
  local.set $8
  block $break|0
   i32.const 0
   local.set $9
   loop $loop|0
    local.get $9
    local.get $4
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $7
    local.get $9
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.set $10
    i32.const 3
    global.set $~lib/argc
    local.get $10
    local.get $9
    local.get $3
    local.get $2
    call_indirect (type $FUNCSIG$iiii)
    if
     local.get $6
     local.get $8
     local.tee $11
     i32.const 1
     i32.add
     local.set $8
     local.get $11
     i32.const 2
     i32.shl
     i32.add
     local.get $10
     i32.store
    end
    local.get $9
    i32.const 1
    i32.add
    local.set $9
    br $loop|0
   end
   unreachable
  end
  local.get $8
  i32.const 2
  i32.shl
  local.set $10
  local.get $6
  local.get $10
  call $~lib/rt/tlsf/__realloc
  local.set $9
  local.get $5
  local.tee $11
  local.get $9
  local.tee $12
  local.get $11
  i32.load
  local.tee $11
  i32.ne
  if
   local.get $12
   call $~lib/rt/pure/__retain
   drop
   local.get $11
   call $~lib/rt/pure/__release
  end
  local.get $12
  i32.store
  local.get $5
  local.get $9
  i32.store offset=4
  local.get $5
  local.get $10
  i32.store offset=8
  local.get $5
  local.set $12
  local.get $3
  call $~lib/rt/pure/__release
  local.get $12
 )
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Uint32Array,u32> (; 216 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 6
  call $~lib/typedarray/Uint32Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint32Array#__set
  local.get $1
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint32Array#__set
  local.get $1
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint32Array#__set
  local.get $1
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Uint32Array#__set
  local.get $1
  i32.const 5
  i32.const 5
  call $~lib/typedarray/Uint32Array#__set
  local.get $1
  i32.const 41
  call $~lib/typedarray/Uint32Array#filter
  local.set $2
  local.get $2
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 357
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/typedarray/Uint32Array#get:length
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 358
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 0
  call $~lib/typedarray/Uint32Array#__get
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 359
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 1
  call $~lib/typedarray/Uint32Array#__get
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 360
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 2
  call $~lib/typedarray/Uint32Array#__get
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 361
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
 )
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Int64Array,i64>~anonymous|0 (; 217 ;) (type $FUNCSIG$ijii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i64.const 2
  i64.gt_s
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/typedarray/Int64Array#filter (; 218 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i64)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $1
  local.set $2
  local.get $3
  call $~lib/typedarray/Int64Array#get:length
  local.set $4
  i32.const 12
  i32.const 10
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $4
  i32.const 3
  i32.shl
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $6
  local.get $3
  i32.load offset=4
  local.set $7
  i32.const 0
  local.set $8
  block $break|0
   i32.const 0
   local.set $9
   loop $loop|0
    local.get $9
    local.get $4
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $7
    local.get $9
    i32.const 3
    i32.shl
    i32.add
    i64.load
    local.set $10
    i32.const 3
    global.set $~lib/argc
    local.get $10
    local.get $9
    local.get $3
    local.get $2
    call_indirect (type $FUNCSIG$ijii)
    if
     local.get $6
     local.get $8
     local.tee $11
     i32.const 1
     i32.add
     local.set $8
     local.get $11
     i32.const 3
     i32.shl
     i32.add
     local.get $10
     i64.store
    end
    local.get $9
    i32.const 1
    i32.add
    local.set $9
    br $loop|0
   end
   unreachable
  end
  local.get $8
  i32.const 3
  i32.shl
  local.set $9
  local.get $6
  local.get $9
  call $~lib/rt/tlsf/__realloc
  local.set $11
  local.get $5
  local.tee $12
  local.get $11
  local.tee $13
  local.get $12
  i32.load
  local.tee $12
  i32.ne
  if
   local.get $13
   call $~lib/rt/pure/__retain
   drop
   local.get $12
   call $~lib/rt/pure/__release
  end
  local.get $13
  i32.store
  local.get $5
  local.get $11
  i32.store offset=4
  local.get $5
  local.get $9
  i32.store offset=8
  local.get $5
  local.set $13
  local.get $3
  call $~lib/rt/pure/__release
  local.get $13
 )
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Int64Array,i64> (; 219 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 6
  call $~lib/typedarray/Int64Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i64.const 1
  call $~lib/typedarray/Int64Array#__set
  local.get $1
  i32.const 1
  i64.const 2
  call $~lib/typedarray/Int64Array#__set
  local.get $1
  i32.const 2
  i64.const 3
  call $~lib/typedarray/Int64Array#__set
  local.get $1
  i32.const 3
  i64.const 4
  call $~lib/typedarray/Int64Array#__set
  local.get $1
  i32.const 5
  i64.const 5
  call $~lib/typedarray/Int64Array#__set
  local.get $1
  i32.const 42
  call $~lib/typedarray/Int64Array#filter
  local.set $2
  local.get $2
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 357
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/typedarray/Int64Array#get:length
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 358
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 0
  call $~lib/typedarray/Int64Array#__get
  i64.const 3
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 359
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 1
  call $~lib/typedarray/Int64Array#__get
  i64.const 4
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 360
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 2
  call $~lib/typedarray/Int64Array#__get
  i64.const 5
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 361
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
 )
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Uint64Array,u64>~anonymous|0 (; 220 ;) (type $FUNCSIG$ijii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i64.const 2
  i64.gt_u
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/typedarray/Uint64Array#filter (; 221 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i64)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $1
  local.set $2
  local.get $3
  call $~lib/typedarray/Uint64Array#get:length
  local.set $4
  i32.const 12
  i32.const 11
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $4
  i32.const 3
  i32.shl
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $6
  local.get $3
  i32.load offset=4
  local.set $7
  i32.const 0
  local.set $8
  block $break|0
   i32.const 0
   local.set $9
   loop $loop|0
    local.get $9
    local.get $4
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $7
    local.get $9
    i32.const 3
    i32.shl
    i32.add
    i64.load
    local.set $10
    i32.const 3
    global.set $~lib/argc
    local.get $10
    local.get $9
    local.get $3
    local.get $2
    call_indirect (type $FUNCSIG$ijii)
    if
     local.get $6
     local.get $8
     local.tee $11
     i32.const 1
     i32.add
     local.set $8
     local.get $11
     i32.const 3
     i32.shl
     i32.add
     local.get $10
     i64.store
    end
    local.get $9
    i32.const 1
    i32.add
    local.set $9
    br $loop|0
   end
   unreachable
  end
  local.get $8
  i32.const 3
  i32.shl
  local.set $9
  local.get $6
  local.get $9
  call $~lib/rt/tlsf/__realloc
  local.set $11
  local.get $5
  local.tee $12
  local.get $11
  local.tee $13
  local.get $12
  i32.load
  local.tee $12
  i32.ne
  if
   local.get $13
   call $~lib/rt/pure/__retain
   drop
   local.get $12
   call $~lib/rt/pure/__release
  end
  local.get $13
  i32.store
  local.get $5
  local.get $11
  i32.store offset=4
  local.get $5
  local.get $9
  i32.store offset=8
  local.get $5
  local.set $13
  local.get $3
  call $~lib/rt/pure/__release
  local.get $13
 )
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Uint64Array,u64> (; 222 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 6
  call $~lib/typedarray/Uint64Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i64.const 1
  call $~lib/typedarray/Uint64Array#__set
  local.get $1
  i32.const 1
  i64.const 2
  call $~lib/typedarray/Uint64Array#__set
  local.get $1
  i32.const 2
  i64.const 3
  call $~lib/typedarray/Uint64Array#__set
  local.get $1
  i32.const 3
  i64.const 4
  call $~lib/typedarray/Uint64Array#__set
  local.get $1
  i32.const 5
  i64.const 5
  call $~lib/typedarray/Uint64Array#__set
  local.get $1
  i32.const 43
  call $~lib/typedarray/Uint64Array#filter
  local.set $2
  local.get $2
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 357
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/typedarray/Uint64Array#get:length
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 358
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 0
  call $~lib/typedarray/Uint64Array#__get
  i64.const 3
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 359
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 1
  call $~lib/typedarray/Uint64Array#__get
  i64.const 4
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 360
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 2
  call $~lib/typedarray/Uint64Array#__get
  i64.const 5
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 361
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
 )
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Float32Array,f32>~anonymous|0 (; 223 ;) (type $FUNCSIG$ifii) (param $0 f32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  f32.const 2
  f32.gt
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/typedarray/Float32Array#filter (; 224 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 f32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $1
  local.set $2
  local.get $3
  call $~lib/typedarray/Float32Array#get:length
  local.set $4
  i32.const 12
  i32.const 12
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $4
  i32.const 2
  i32.shl
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $6
  local.get $3
  i32.load offset=4
  local.set $7
  i32.const 0
  local.set $8
  block $break|0
   i32.const 0
   local.set $9
   loop $loop|0
    local.get $9
    local.get $4
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $7
    local.get $9
    i32.const 2
    i32.shl
    i32.add
    f32.load
    local.set $10
    i32.const 3
    global.set $~lib/argc
    local.get $10
    local.get $9
    local.get $3
    local.get $2
    call_indirect (type $FUNCSIG$ifii)
    if
     local.get $6
     local.get $8
     local.tee $11
     i32.const 1
     i32.add
     local.set $8
     local.get $11
     i32.const 2
     i32.shl
     i32.add
     local.get $10
     f32.store
    end
    local.get $9
    i32.const 1
    i32.add
    local.set $9
    br $loop|0
   end
   unreachable
  end
  local.get $8
  i32.const 2
  i32.shl
  local.set $9
  local.get $6
  local.get $9
  call $~lib/rt/tlsf/__realloc
  local.set $11
  local.get $5
  local.tee $12
  local.get $11
  local.tee $13
  local.get $12
  i32.load
  local.tee $12
  i32.ne
  if
   local.get $13
   call $~lib/rt/pure/__retain
   drop
   local.get $12
   call $~lib/rt/pure/__release
  end
  local.get $13
  i32.store
  local.get $5
  local.get $11
  i32.store offset=4
  local.get $5
  local.get $9
  i32.store offset=8
  local.get $5
  local.set $13
  local.get $3
  call $~lib/rt/pure/__release
  local.get $13
 )
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Float32Array,f32> (; 225 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 6
  call $~lib/typedarray/Float32Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  f32.const 1
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 1
  f32.const 2
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 2
  f32.const 3
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 3
  f32.const 4
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 5
  f32.const 5
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 44
  call $~lib/typedarray/Float32Array#filter
  local.set $2
  local.get $2
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 357
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/typedarray/Float32Array#get:length
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 358
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  f32.const 3
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 359
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  f32.const 4
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 360
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 2
  call $~lib/typedarray/Float32Array#__get
  f32.const 5
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 361
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
 )
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Float64Array,f64>~anonymous|0 (; 226 ;) (type $FUNCSIG$idii) (param $0 f64) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  f64.const 2
  f64.gt
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/typedarray/Float64Array#filter (; 227 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 f64)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $1
  local.set $2
  local.get $3
  call $~lib/typedarray/Float64Array#get:length
  local.set $4
  i32.const 12
  i32.const 13
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $4
  i32.const 3
  i32.shl
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $6
  local.get $3
  i32.load offset=4
  local.set $7
  i32.const 0
  local.set $8
  block $break|0
   i32.const 0
   local.set $9
   loop $loop|0
    local.get $9
    local.get $4
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $7
    local.get $9
    i32.const 3
    i32.shl
    i32.add
    f64.load
    local.set $10
    i32.const 3
    global.set $~lib/argc
    local.get $10
    local.get $9
    local.get $3
    local.get $2
    call_indirect (type $FUNCSIG$idii)
    if
     local.get $6
     local.get $8
     local.tee $11
     i32.const 1
     i32.add
     local.set $8
     local.get $11
     i32.const 3
     i32.shl
     i32.add
     local.get $10
     f64.store
    end
    local.get $9
    i32.const 1
    i32.add
    local.set $9
    br $loop|0
   end
   unreachable
  end
  local.get $8
  i32.const 3
  i32.shl
  local.set $9
  local.get $6
  local.get $9
  call $~lib/rt/tlsf/__realloc
  local.set $11
  local.get $5
  local.tee $12
  local.get $11
  local.tee $13
  local.get $12
  i32.load
  local.tee $12
  i32.ne
  if
   local.get $13
   call $~lib/rt/pure/__retain
   drop
   local.get $12
   call $~lib/rt/pure/__release
  end
  local.get $13
  i32.store
  local.get $5
  local.get $11
  i32.store offset=4
  local.get $5
  local.get $9
  i32.store offset=8
  local.get $5
  local.set $13
  local.get $3
  call $~lib/rt/pure/__release
  local.get $13
 )
 (func $std/typedarray/testArrayFilter<~lib/typedarray/Float64Array,f64> (; 228 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 6
  call $~lib/typedarray/Float64Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  f64.const 1
  call $~lib/typedarray/Float64Array#__set
  local.get $1
  i32.const 1
  f64.const 2
  call $~lib/typedarray/Float64Array#__set
  local.get $1
  i32.const 2
  f64.const 3
  call $~lib/typedarray/Float64Array#__set
  local.get $1
  i32.const 3
  f64.const 4
  call $~lib/typedarray/Float64Array#__set
  local.get $1
  i32.const 5
  f64.const 5
  call $~lib/typedarray/Float64Array#__set
  local.get $1
  i32.const 45
  call $~lib/typedarray/Float64Array#filter
  local.set $2
  local.get $2
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 357
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/typedarray/Float64Array#get:length
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 358
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 0
  call $~lib/typedarray/Float64Array#__get
  f64.const 3
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 359
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 1
  call $~lib/typedarray/Float64Array#__get
  f64.const 4
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 360
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  i32.const 2
  call $~lib/typedarray/Float64Array#__get
  f64.const 5
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 361
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
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|0 (; 229 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 2
  i32.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/typedarray/Int8Array#some (; 230 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/typedarray/SOME<~lib/typedarray/Int8Array,i8>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   local.set $2
   local.get $3
   i32.load offset=4
   local.set $4
   block $break|0
    i32.const 0
    local.set $5
    local.get $3
    call $~lib/typedarray/Int8Array#get:length
    local.set $6
    loop $loop|0
     local.get $5
     local.get $6
     i32.lt_s
     i32.eqz
     br_if $break|0
     i32.const 3
     global.set $~lib/argc
     local.get $4
     local.get $5
     i32.const 0
     i32.shl
     i32.add
     i32.load8_s
     local.get $5
     local.get $3
     local.get $2
     call_indirect (type $FUNCSIG$iiii)
     if
      i32.const 1
      local.set $7
      local.get $3
      call $~lib/rt/pure/__release
      local.get $7
      br $~lib/typedarray/SOME<~lib/typedarray/Int8Array,i8>|inlined.0
     end
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     br $loop|0
    end
    unreachable
   end
   i32.const 0
   local.set $6
   local.get $3
   call $~lib/rt/pure/__release
   local.get $6
  end
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|1 (; 231 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 0
  i32.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8> (; 232 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Int8Array#__set
  local.get $1
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Int8Array#__set
  local.get $1
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Int8Array#__set
  local.get $1
  i32.const 46
  call $~lib/typedarray/Int8Array#some
  local.set $2
  local.get $2
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 382
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 47
  call $~lib/typedarray/Int8Array#some
  local.set $3
  local.get $3
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 384
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Uint8Array,u8>~anonymous|0 (; 233 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 255
  i32.and
  i32.const 2
  i32.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/typedarray/Uint8Array#some (; 234 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/typedarray/SOME<~lib/typedarray/Uint8Array,u8>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   local.set $2
   local.get $3
   i32.load offset=4
   local.set $4
   block $break|0
    i32.const 0
    local.set $5
    local.get $3
    call $~lib/typedarray/Uint8Array#get:length
    local.set $6
    loop $loop|0
     local.get $5
     local.get $6
     i32.lt_s
     i32.eqz
     br_if $break|0
     i32.const 3
     global.set $~lib/argc
     local.get $4
     local.get $5
     i32.const 0
     i32.shl
     i32.add
     i32.load8_u
     local.get $5
     local.get $3
     local.get $2
     call_indirect (type $FUNCSIG$iiii)
     if
      i32.const 1
      local.set $7
      local.get $3
      call $~lib/rt/pure/__release
      local.get $7
      br $~lib/typedarray/SOME<~lib/typedarray/Uint8Array,u8>|inlined.0
     end
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     br $loop|0
    end
    unreachable
   end
   i32.const 0
   local.set $6
   local.get $3
   call $~lib/rt/pure/__release
   local.get $6
  end
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Uint8Array,u8>~anonymous|1 (; 235 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 255
  i32.and
  i32.const 0
  i32.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Uint8Array,u8> (; 236 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 48
  call $~lib/typedarray/Uint8Array#some
  local.set $2
  local.get $2
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 382
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 49
  call $~lib/typedarray/Uint8Array#some
  local.set $3
  local.get $3
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 384
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Uint8ClampedArray,u8>~anonymous|0 (; 237 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 255
  i32.and
  i32.const 2
  i32.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/typedarray/Uint8ClampedArray#some (; 238 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/typedarray/SOME<~lib/typedarray/Uint8ClampedArray,u8>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   local.set $2
   local.get $3
   i32.load offset=4
   local.set $4
   block $break|0
    i32.const 0
    local.set $5
    local.get $3
    call $~lib/typedarray/Uint8ClampedArray#get:length
    local.set $6
    loop $loop|0
     local.get $5
     local.get $6
     i32.lt_s
     i32.eqz
     br_if $break|0
     i32.const 3
     global.set $~lib/argc
     local.get $4
     local.get $5
     i32.const 0
     i32.shl
     i32.add
     i32.load8_u
     local.get $5
     local.get $3
     local.get $2
     call_indirect (type $FUNCSIG$iiii)
     if
      i32.const 1
      local.set $7
      local.get $3
      call $~lib/rt/pure/__release
      local.get $7
      br $~lib/typedarray/SOME<~lib/typedarray/Uint8ClampedArray,u8>|inlined.0
     end
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     br $loop|0
    end
    unreachable
   end
   i32.const 0
   local.set $6
   local.get $3
   call $~lib/rt/pure/__release
   local.get $6
  end
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Uint8ClampedArray,u8>~anonymous|1 (; 239 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 255
  i32.and
  i32.const 0
  i32.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Uint8ClampedArray,u8> (; 240 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $1
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $1
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $1
  i32.const 50
  call $~lib/typedarray/Uint8ClampedArray#some
  local.set $2
  local.get $2
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 382
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 51
  call $~lib/typedarray/Uint8ClampedArray#some
  local.set $3
  local.get $3
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 384
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|0 (; 241 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 2
  i32.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/typedarray/Int16Array#some (; 242 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/typedarray/SOME<~lib/typedarray/Int16Array,i16>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   local.set $2
   local.get $3
   i32.load offset=4
   local.set $4
   block $break|0
    i32.const 0
    local.set $5
    local.get $3
    call $~lib/typedarray/Int16Array#get:length
    local.set $6
    loop $loop|0
     local.get $5
     local.get $6
     i32.lt_s
     i32.eqz
     br_if $break|0
     i32.const 3
     global.set $~lib/argc
     local.get $4
     local.get $5
     i32.const 1
     i32.shl
     i32.add
     i32.load16_s
     local.get $5
     local.get $3
     local.get $2
     call_indirect (type $FUNCSIG$iiii)
     if
      i32.const 1
      local.set $7
      local.get $3
      call $~lib/rt/pure/__release
      local.get $7
      br $~lib/typedarray/SOME<~lib/typedarray/Int16Array,i16>|inlined.0
     end
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     br $loop|0
    end
    unreachable
   end
   i32.const 0
   local.set $6
   local.get $3
   call $~lib/rt/pure/__release
   local.get $6
  end
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|1 (; 243 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 0
  i32.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16> (; 244 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Int16Array#__set
  local.get $1
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Int16Array#__set
  local.get $1
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Int16Array#__set
  local.get $1
  i32.const 52
  call $~lib/typedarray/Int16Array#some
  local.set $2
  local.get $2
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 382
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 53
  call $~lib/typedarray/Int16Array#some
  local.set $3
  local.get $3
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 384
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Uint16Array,u16>~anonymous|0 (; 245 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 65535
  i32.and
  i32.const 2
  i32.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/typedarray/Uint16Array#some (; 246 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/typedarray/SOME<~lib/typedarray/Uint16Array,u16>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   local.set $2
   local.get $3
   i32.load offset=4
   local.set $4
   block $break|0
    i32.const 0
    local.set $5
    local.get $3
    call $~lib/typedarray/Uint16Array#get:length
    local.set $6
    loop $loop|0
     local.get $5
     local.get $6
     i32.lt_s
     i32.eqz
     br_if $break|0
     i32.const 3
     global.set $~lib/argc
     local.get $4
     local.get $5
     i32.const 1
     i32.shl
     i32.add
     i32.load16_u
     local.get $5
     local.get $3
     local.get $2
     call_indirect (type $FUNCSIG$iiii)
     if
      i32.const 1
      local.set $7
      local.get $3
      call $~lib/rt/pure/__release
      local.get $7
      br $~lib/typedarray/SOME<~lib/typedarray/Uint16Array,u16>|inlined.0
     end
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     br $loop|0
    end
    unreachable
   end
   i32.const 0
   local.set $6
   local.get $3
   call $~lib/rt/pure/__release
   local.get $6
  end
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Uint16Array,u16>~anonymous|1 (; 247 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 65535
  i32.and
  i32.const 0
  i32.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Uint16Array,u16> (; 248 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint16Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Uint16Array#__set
  local.get $1
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Uint16Array#__set
  local.get $1
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Uint16Array#__set
  local.get $1
  i32.const 54
  call $~lib/typedarray/Uint16Array#some
  local.set $2
  local.get $2
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 382
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 55
  call $~lib/typedarray/Uint16Array#some
  local.set $3
  local.get $3
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 384
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|0 (; 249 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 2
  i32.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/typedarray/Int32Array#some (; 250 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/typedarray/SOME<~lib/typedarray/Int32Array,i32>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   local.set $2
   local.get $3
   i32.load offset=4
   local.set $4
   block $break|0
    i32.const 0
    local.set $5
    local.get $3
    call $~lib/typedarray/Int32Array#get:length
    local.set $6
    loop $loop|0
     local.get $5
     local.get $6
     i32.lt_s
     i32.eqz
     br_if $break|0
     i32.const 3
     global.set $~lib/argc
     local.get $4
     local.get $5
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.get $5
     local.get $3
     local.get $2
     call_indirect (type $FUNCSIG$iiii)
     if
      i32.const 1
      local.set $7
      local.get $3
      call $~lib/rt/pure/__release
      local.get $7
      br $~lib/typedarray/SOME<~lib/typedarray/Int32Array,i32>|inlined.0
     end
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     br $loop|0
    end
    unreachable
   end
   i32.const 0
   local.set $6
   local.get $3
   call $~lib/rt/pure/__release
   local.get $6
  end
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|1 (; 251 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 0
  i32.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32> (; 252 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Int32Array#__set
  local.get $1
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Int32Array#__set
  local.get $1
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Int32Array#__set
  local.get $1
  i32.const 56
  call $~lib/typedarray/Int32Array#some
  local.set $2
  local.get $2
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 382
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 57
  call $~lib/typedarray/Int32Array#some
  local.set $3
  local.get $3
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 384
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Uint32Array,u32>~anonymous|0 (; 253 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 2
  i32.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/typedarray/Uint32Array#some (; 254 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/typedarray/SOME<~lib/typedarray/Uint32Array,u32>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   local.set $2
   local.get $3
   i32.load offset=4
   local.set $4
   block $break|0
    i32.const 0
    local.set $5
    local.get $3
    call $~lib/typedarray/Uint32Array#get:length
    local.set $6
    loop $loop|0
     local.get $5
     local.get $6
     i32.lt_s
     i32.eqz
     br_if $break|0
     i32.const 3
     global.set $~lib/argc
     local.get $4
     local.get $5
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.get $5
     local.get $3
     local.get $2
     call_indirect (type $FUNCSIG$iiii)
     if
      i32.const 1
      local.set $7
      local.get $3
      call $~lib/rt/pure/__release
      local.get $7
      br $~lib/typedarray/SOME<~lib/typedarray/Uint32Array,u32>|inlined.0
     end
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     br $loop|0
    end
    unreachable
   end
   i32.const 0
   local.set $6
   local.get $3
   call $~lib/rt/pure/__release
   local.get $6
  end
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Uint32Array,u32>~anonymous|1 (; 255 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 0
  i32.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Uint32Array,u32> (; 256 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint32Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Uint32Array#__set
  local.get $1
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Uint32Array#__set
  local.get $1
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Uint32Array#__set
  local.get $1
  i32.const 58
  call $~lib/typedarray/Uint32Array#some
  local.set $2
  local.get $2
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 382
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 59
  call $~lib/typedarray/Uint32Array#some
  local.set $3
  local.get $3
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 384
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|0 (; 257 ;) (type $FUNCSIG$ijii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i64.const 2
  i64.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/typedarray/Int64Array#some (; 258 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/typedarray/SOME<~lib/typedarray/Int64Array,i64>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   local.set $2
   local.get $3
   i32.load offset=4
   local.set $4
   block $break|0
    i32.const 0
    local.set $5
    local.get $3
    call $~lib/typedarray/Int64Array#get:length
    local.set $6
    loop $loop|0
     local.get $5
     local.get $6
     i32.lt_s
     i32.eqz
     br_if $break|0
     i32.const 3
     global.set $~lib/argc
     local.get $4
     local.get $5
     i32.const 3
     i32.shl
     i32.add
     i64.load
     local.get $5
     local.get $3
     local.get $2
     call_indirect (type $FUNCSIG$ijii)
     if
      i32.const 1
      local.set $7
      local.get $3
      call $~lib/rt/pure/__release
      local.get $7
      br $~lib/typedarray/SOME<~lib/typedarray/Int64Array,i64>|inlined.0
     end
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     br $loop|0
    end
    unreachable
   end
   i32.const 0
   local.set $6
   local.get $3
   call $~lib/rt/pure/__release
   local.get $6
  end
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|1 (; 259 ;) (type $FUNCSIG$ijii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i64.const 0
  i64.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64> (; 260 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i64.const 2
  call $~lib/typedarray/Int64Array#__set
  local.get $1
  i32.const 1
  i64.const 4
  call $~lib/typedarray/Int64Array#__set
  local.get $1
  i32.const 2
  i64.const 6
  call $~lib/typedarray/Int64Array#__set
  local.get $1
  i32.const 60
  call $~lib/typedarray/Int64Array#some
  local.set $2
  local.get $2
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 382
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 61
  call $~lib/typedarray/Int64Array#some
  local.set $3
  local.get $3
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 384
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Uint64Array,u64>~anonymous|0 (; 261 ;) (type $FUNCSIG$ijii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i64.const 2
  i64.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/typedarray/Uint64Array#some (; 262 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/typedarray/SOME<~lib/typedarray/Uint64Array,u64>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   local.set $2
   local.get $3
   i32.load offset=4
   local.set $4
   block $break|0
    i32.const 0
    local.set $5
    local.get $3
    call $~lib/typedarray/Uint64Array#get:length
    local.set $6
    loop $loop|0
     local.get $5
     local.get $6
     i32.lt_s
     i32.eqz
     br_if $break|0
     i32.const 3
     global.set $~lib/argc
     local.get $4
     local.get $5
     i32.const 3
     i32.shl
     i32.add
     i64.load
     local.get $5
     local.get $3
     local.get $2
     call_indirect (type $FUNCSIG$ijii)
     if
      i32.const 1
      local.set $7
      local.get $3
      call $~lib/rt/pure/__release
      local.get $7
      br $~lib/typedarray/SOME<~lib/typedarray/Uint64Array,u64>|inlined.0
     end
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     br $loop|0
    end
    unreachable
   end
   i32.const 0
   local.set $6
   local.get $3
   call $~lib/rt/pure/__release
   local.get $6
  end
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Uint64Array,u64>~anonymous|1 (; 263 ;) (type $FUNCSIG$ijii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i64.const 0
  i64.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Uint64Array,u64> (; 264 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint64Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i64.const 2
  call $~lib/typedarray/Uint64Array#__set
  local.get $1
  i32.const 1
  i64.const 4
  call $~lib/typedarray/Uint64Array#__set
  local.get $1
  i32.const 2
  i64.const 6
  call $~lib/typedarray/Uint64Array#__set
  local.get $1
  i32.const 62
  call $~lib/typedarray/Uint64Array#some
  local.set $2
  local.get $2
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 382
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 63
  call $~lib/typedarray/Uint64Array#some
  local.set $3
  local.get $3
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 384
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Float32Array,f32>~anonymous|0 (; 265 ;) (type $FUNCSIG$ifii) (param $0 f32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  f32.const 2
  f32.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/typedarray/Float32Array#some (; 266 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/typedarray/SOME<~lib/typedarray/Float32Array,f32>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   local.set $2
   local.get $3
   i32.load offset=4
   local.set $4
   block $break|0
    i32.const 0
    local.set $5
    local.get $3
    call $~lib/typedarray/Float32Array#get:length
    local.set $6
    loop $loop|0
     local.get $5
     local.get $6
     i32.lt_s
     i32.eqz
     br_if $break|0
     i32.const 3
     global.set $~lib/argc
     local.get $4
     local.get $5
     i32.const 2
     i32.shl
     i32.add
     f32.load
     local.get $5
     local.get $3
     local.get $2
     call_indirect (type $FUNCSIG$ifii)
     if
      i32.const 1
      local.set $7
      local.get $3
      call $~lib/rt/pure/__release
      local.get $7
      br $~lib/typedarray/SOME<~lib/typedarray/Float32Array,f32>|inlined.0
     end
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     br $loop|0
    end
    unreachable
   end
   i32.const 0
   local.set $6
   local.get $3
   call $~lib/rt/pure/__release
   local.get $6
  end
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Float32Array,f32>~anonymous|1 (; 267 ;) (type $FUNCSIG$ifii) (param $0 f32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  f32.const 0
  f32.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Float32Array,f32> (; 268 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Float32Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  f32.const 2
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 1
  f32.const 4
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 2
  f32.const 6
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 64
  call $~lib/typedarray/Float32Array#some
  local.set $2
  local.get $2
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 382
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 65
  call $~lib/typedarray/Float32Array#some
  local.set $3
  local.get $3
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 384
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Float64Array,f64>~anonymous|0 (; 269 ;) (type $FUNCSIG$idii) (param $0 f64) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  f64.const 2
  f64.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/typedarray/Float64Array#some (; 270 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/typedarray/SOME<~lib/typedarray/Float64Array,f64>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   local.set $2
   local.get $3
   i32.load offset=4
   local.set $4
   block $break|0
    i32.const 0
    local.set $5
    local.get $3
    call $~lib/typedarray/Float64Array#get:length
    local.set $6
    loop $loop|0
     local.get $5
     local.get $6
     i32.lt_s
     i32.eqz
     br_if $break|0
     i32.const 3
     global.set $~lib/argc
     local.get $4
     local.get $5
     i32.const 3
     i32.shl
     i32.add
     f64.load
     local.get $5
     local.get $3
     local.get $2
     call_indirect (type $FUNCSIG$idii)
     if
      i32.const 1
      local.set $7
      local.get $3
      call $~lib/rt/pure/__release
      local.get $7
      br $~lib/typedarray/SOME<~lib/typedarray/Float64Array,f64>|inlined.0
     end
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     br $loop|0
    end
    unreachable
   end
   i32.const 0
   local.set $6
   local.get $3
   call $~lib/rt/pure/__release
   local.get $6
  end
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Float64Array,f64>~anonymous|1 (; 271 ;) (type $FUNCSIG$idii) (param $0 f64) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  f64.const 0
  f64.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Float64Array,f64> (; 272 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Float64Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  f64.const 2
  call $~lib/typedarray/Float64Array#__set
  local.get $1
  i32.const 1
  f64.const 4
  call $~lib/typedarray/Float64Array#__set
  local.get $1
  i32.const 2
  f64.const 6
  call $~lib/typedarray/Float64Array#__set
  local.get $1
  i32.const 66
  call $~lib/typedarray/Float64Array#some
  local.set $2
  local.get $2
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 382
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 67
  call $~lib/typedarray/Float64Array#some
  local.set $3
  local.get $3
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 384
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int8Array,i8>~anonymous|0 (; 273 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 2
  i32.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/typedarray/Int8Array#findIndex (; 274 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/typedarray/FIND_INDEX<~lib/typedarray/Int8Array,i8>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   local.set $2
   local.get $3
   i32.load offset=4
   local.set $4
   block $break|0
    i32.const 0
    local.set $5
    local.get $3
    call $~lib/typedarray/Int8Array#get:length
    local.set $6
    loop $loop|0
     local.get $5
     local.get $6
     i32.lt_s
     i32.eqz
     br_if $break|0
     i32.const 3
     global.set $~lib/argc
     local.get $4
     local.get $5
     i32.const 0
     i32.shl
     i32.add
     i32.load8_s
     local.get $5
     local.get $3
     local.get $2
     call_indirect (type $FUNCSIG$iiii)
     if
      local.get $5
      local.set $7
      local.get $3
      call $~lib/rt/pure/__release
      local.get $7
      br $~lib/typedarray/FIND_INDEX<~lib/typedarray/Int8Array,i8>|inlined.0
     end
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     br $loop|0
    end
    unreachable
   end
   i32.const -1
   local.set $6
   local.get $3
   call $~lib/rt/pure/__release
   local.get $6
  end
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int8Array,i8>~anonymous|1 (; 275 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 4
  i32.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int8Array,i8> (; 276 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int8Array#__set
  local.get $1
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int8Array#__set
  local.get $1
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int8Array#__set
  local.get $1
  i32.const 68
  call $~lib/typedarray/Int8Array#findIndex
  local.set $2
  local.get $2
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 405
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 69
  call $~lib/typedarray/Int8Array#findIndex
  local.set $3
  local.get $3
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 407
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint8Array,u8>~anonymous|0 (; 277 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 255
  i32.and
  i32.const 2
  i32.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/typedarray/Uint8Array#findIndex (; 278 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/typedarray/FIND_INDEX<~lib/typedarray/Uint8Array,u8>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   local.set $2
   local.get $3
   i32.load offset=4
   local.set $4
   block $break|0
    i32.const 0
    local.set $5
    local.get $3
    call $~lib/typedarray/Uint8Array#get:length
    local.set $6
    loop $loop|0
     local.get $5
     local.get $6
     i32.lt_s
     i32.eqz
     br_if $break|0
     i32.const 3
     global.set $~lib/argc
     local.get $4
     local.get $5
     i32.const 0
     i32.shl
     i32.add
     i32.load8_u
     local.get $5
     local.get $3
     local.get $2
     call_indirect (type $FUNCSIG$iiii)
     if
      local.get $5
      local.set $7
      local.get $3
      call $~lib/rt/pure/__release
      local.get $7
      br $~lib/typedarray/FIND_INDEX<~lib/typedarray/Uint8Array,u8>|inlined.0
     end
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     br $loop|0
    end
    unreachable
   end
   i32.const -1
   local.set $6
   local.get $3
   call $~lib/rt/pure/__release
   local.get $6
  end
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint8Array,u8>~anonymous|1 (; 279 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 255
  i32.and
  i32.const 4
  i32.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint8Array,u8> (; 280 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 70
  call $~lib/typedarray/Uint8Array#findIndex
  local.set $2
  local.get $2
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 405
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 71
  call $~lib/typedarray/Uint8Array#findIndex
  local.set $3
  local.get $3
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 407
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint8ClampedArray,u8>~anonymous|0 (; 281 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 255
  i32.and
  i32.const 2
  i32.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/typedarray/Uint8ClampedArray#findIndex (; 282 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/typedarray/FIND_INDEX<~lib/typedarray/Uint8ClampedArray,u8>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   local.set $2
   local.get $3
   i32.load offset=4
   local.set $4
   block $break|0
    i32.const 0
    local.set $5
    local.get $3
    call $~lib/typedarray/Uint8ClampedArray#get:length
    local.set $6
    loop $loop|0
     local.get $5
     local.get $6
     i32.lt_s
     i32.eqz
     br_if $break|0
     i32.const 3
     global.set $~lib/argc
     local.get $4
     local.get $5
     i32.const 0
     i32.shl
     i32.add
     i32.load8_u
     local.get $5
     local.get $3
     local.get $2
     call_indirect (type $FUNCSIG$iiii)
     if
      local.get $5
      local.set $7
      local.get $3
      call $~lib/rt/pure/__release
      local.get $7
      br $~lib/typedarray/FIND_INDEX<~lib/typedarray/Uint8ClampedArray,u8>|inlined.0
     end
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     br $loop|0
    end
    unreachable
   end
   i32.const -1
   local.set $6
   local.get $3
   call $~lib/rt/pure/__release
   local.get $6
  end
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint8ClampedArray,u8>~anonymous|1 (; 283 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 255
  i32.and
  i32.const 4
  i32.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint8ClampedArray,u8> (; 284 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $1
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $1
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $1
  i32.const 72
  call $~lib/typedarray/Uint8ClampedArray#findIndex
  local.set $2
  local.get $2
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 405
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 73
  call $~lib/typedarray/Uint8ClampedArray#findIndex
  local.set $3
  local.get $3
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 407
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int16Array,i16>~anonymous|0 (; 285 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 2
  i32.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/typedarray/Int16Array#findIndex (; 286 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/typedarray/FIND_INDEX<~lib/typedarray/Int16Array,i16>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   local.set $2
   local.get $3
   i32.load offset=4
   local.set $4
   block $break|0
    i32.const 0
    local.set $5
    local.get $3
    call $~lib/typedarray/Int16Array#get:length
    local.set $6
    loop $loop|0
     local.get $5
     local.get $6
     i32.lt_s
     i32.eqz
     br_if $break|0
     i32.const 3
     global.set $~lib/argc
     local.get $4
     local.get $5
     i32.const 1
     i32.shl
     i32.add
     i32.load16_s
     local.get $5
     local.get $3
     local.get $2
     call_indirect (type $FUNCSIG$iiii)
     if
      local.get $5
      local.set $7
      local.get $3
      call $~lib/rt/pure/__release
      local.get $7
      br $~lib/typedarray/FIND_INDEX<~lib/typedarray/Int16Array,i16>|inlined.0
     end
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     br $loop|0
    end
    unreachable
   end
   i32.const -1
   local.set $6
   local.get $3
   call $~lib/rt/pure/__release
   local.get $6
  end
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int16Array,i16>~anonymous|1 (; 287 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 4
  i32.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int16Array,i16> (; 288 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int16Array#__set
  local.get $1
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int16Array#__set
  local.get $1
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int16Array#__set
  local.get $1
  i32.const 74
  call $~lib/typedarray/Int16Array#findIndex
  local.set $2
  local.get $2
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 405
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 75
  call $~lib/typedarray/Int16Array#findIndex
  local.set $3
  local.get $3
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 407
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint16Array,u16>~anonymous|0 (; 289 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 65535
  i32.and
  i32.const 2
  i32.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/typedarray/Uint16Array#findIndex (; 290 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/typedarray/FIND_INDEX<~lib/typedarray/Uint16Array,u16>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   local.set $2
   local.get $3
   i32.load offset=4
   local.set $4
   block $break|0
    i32.const 0
    local.set $5
    local.get $3
    call $~lib/typedarray/Uint16Array#get:length
    local.set $6
    loop $loop|0
     local.get $5
     local.get $6
     i32.lt_s
     i32.eqz
     br_if $break|0
     i32.const 3
     global.set $~lib/argc
     local.get $4
     local.get $5
     i32.const 1
     i32.shl
     i32.add
     i32.load16_u
     local.get $5
     local.get $3
     local.get $2
     call_indirect (type $FUNCSIG$iiii)
     if
      local.get $5
      local.set $7
      local.get $3
      call $~lib/rt/pure/__release
      local.get $7
      br $~lib/typedarray/FIND_INDEX<~lib/typedarray/Uint16Array,u16>|inlined.0
     end
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     br $loop|0
    end
    unreachable
   end
   i32.const -1
   local.set $6
   local.get $3
   call $~lib/rt/pure/__release
   local.get $6
  end
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint16Array,u16>~anonymous|1 (; 291 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 65535
  i32.and
  i32.const 4
  i32.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint16Array,u16> (; 292 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint16Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint16Array#__set
  local.get $1
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint16Array#__set
  local.get $1
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint16Array#__set
  local.get $1
  i32.const 76
  call $~lib/typedarray/Uint16Array#findIndex
  local.set $2
  local.get $2
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 405
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 77
  call $~lib/typedarray/Uint16Array#findIndex
  local.set $3
  local.get $3
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 407
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int32Array,i32>~anonymous|0 (; 293 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 2
  i32.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/typedarray/Int32Array#findIndex (; 294 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/typedarray/FIND_INDEX<~lib/typedarray/Int32Array,i32>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   local.set $2
   local.get $3
   i32.load offset=4
   local.set $4
   block $break|0
    i32.const 0
    local.set $5
    local.get $3
    call $~lib/typedarray/Int32Array#get:length
    local.set $6
    loop $loop|0
     local.get $5
     local.get $6
     i32.lt_s
     i32.eqz
     br_if $break|0
     i32.const 3
     global.set $~lib/argc
     local.get $4
     local.get $5
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.get $5
     local.get $3
     local.get $2
     call_indirect (type $FUNCSIG$iiii)
     if
      local.get $5
      local.set $7
      local.get $3
      call $~lib/rt/pure/__release
      local.get $7
      br $~lib/typedarray/FIND_INDEX<~lib/typedarray/Int32Array,i32>|inlined.0
     end
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     br $loop|0
    end
    unreachable
   end
   i32.const -1
   local.set $6
   local.get $3
   call $~lib/rt/pure/__release
   local.get $6
  end
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int32Array,i32>~anonymous|1 (; 295 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 4
  i32.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int32Array,i32> (; 296 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int32Array#__set
  local.get $1
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int32Array#__set
  local.get $1
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int32Array#__set
  local.get $1
  i32.const 78
  call $~lib/typedarray/Int32Array#findIndex
  local.set $2
  local.get $2
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 405
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 79
  call $~lib/typedarray/Int32Array#findIndex
  local.set $3
  local.get $3
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 407
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint32Array,u32>~anonymous|0 (; 297 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 2
  i32.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/typedarray/Uint32Array#findIndex (; 298 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/typedarray/FIND_INDEX<~lib/typedarray/Uint32Array,u32>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   local.set $2
   local.get $3
   i32.load offset=4
   local.set $4
   block $break|0
    i32.const 0
    local.set $5
    local.get $3
    call $~lib/typedarray/Uint32Array#get:length
    local.set $6
    loop $loop|0
     local.get $5
     local.get $6
     i32.lt_s
     i32.eqz
     br_if $break|0
     i32.const 3
     global.set $~lib/argc
     local.get $4
     local.get $5
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.get $5
     local.get $3
     local.get $2
     call_indirect (type $FUNCSIG$iiii)
     if
      local.get $5
      local.set $7
      local.get $3
      call $~lib/rt/pure/__release
      local.get $7
      br $~lib/typedarray/FIND_INDEX<~lib/typedarray/Uint32Array,u32>|inlined.0
     end
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     br $loop|0
    end
    unreachable
   end
   i32.const -1
   local.set $6
   local.get $3
   call $~lib/rt/pure/__release
   local.get $6
  end
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint32Array,u32>~anonymous|1 (; 299 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 4
  i32.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint32Array,u32> (; 300 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint32Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint32Array#__set
  local.get $1
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint32Array#__set
  local.get $1
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint32Array#__set
  local.get $1
  i32.const 80
  call $~lib/typedarray/Uint32Array#findIndex
  local.set $2
  local.get $2
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 405
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 81
  call $~lib/typedarray/Uint32Array#findIndex
  local.set $3
  local.get $3
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 407
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int64Array,i64>~anonymous|0 (; 301 ;) (type $FUNCSIG$ijii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i64.const 2
  i64.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/typedarray/Int64Array#findIndex (; 302 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/typedarray/FIND_INDEX<~lib/typedarray/Int64Array,i64>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   local.set $2
   local.get $3
   i32.load offset=4
   local.set $4
   block $break|0
    i32.const 0
    local.set $5
    local.get $3
    call $~lib/typedarray/Int64Array#get:length
    local.set $6
    loop $loop|0
     local.get $5
     local.get $6
     i32.lt_s
     i32.eqz
     br_if $break|0
     i32.const 3
     global.set $~lib/argc
     local.get $4
     local.get $5
     i32.const 3
     i32.shl
     i32.add
     i64.load
     local.get $5
     local.get $3
     local.get $2
     call_indirect (type $FUNCSIG$ijii)
     if
      local.get $5
      local.set $7
      local.get $3
      call $~lib/rt/pure/__release
      local.get $7
      br $~lib/typedarray/FIND_INDEX<~lib/typedarray/Int64Array,i64>|inlined.0
     end
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     br $loop|0
    end
    unreachable
   end
   i32.const -1
   local.set $6
   local.get $3
   call $~lib/rt/pure/__release
   local.get $6
  end
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int64Array,i64>~anonymous|1 (; 303 ;) (type $FUNCSIG$ijii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i64.const 4
  i64.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int64Array,i64> (; 304 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i64.const 1
  call $~lib/typedarray/Int64Array#__set
  local.get $1
  i32.const 1
  i64.const 2
  call $~lib/typedarray/Int64Array#__set
  local.get $1
  i32.const 2
  i64.const 3
  call $~lib/typedarray/Int64Array#__set
  local.get $1
  i32.const 82
  call $~lib/typedarray/Int64Array#findIndex
  local.set $2
  local.get $2
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 405
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 83
  call $~lib/typedarray/Int64Array#findIndex
  local.set $3
  local.get $3
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 407
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint64Array,u64>~anonymous|0 (; 305 ;) (type $FUNCSIG$ijii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i64.const 2
  i64.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/typedarray/Uint64Array#findIndex (; 306 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/typedarray/FIND_INDEX<~lib/typedarray/Uint64Array,u64>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   local.set $2
   local.get $3
   i32.load offset=4
   local.set $4
   block $break|0
    i32.const 0
    local.set $5
    local.get $3
    call $~lib/typedarray/Uint64Array#get:length
    local.set $6
    loop $loop|0
     local.get $5
     local.get $6
     i32.lt_s
     i32.eqz
     br_if $break|0
     i32.const 3
     global.set $~lib/argc
     local.get $4
     local.get $5
     i32.const 3
     i32.shl
     i32.add
     i64.load
     local.get $5
     local.get $3
     local.get $2
     call_indirect (type $FUNCSIG$ijii)
     if
      local.get $5
      local.set $7
      local.get $3
      call $~lib/rt/pure/__release
      local.get $7
      br $~lib/typedarray/FIND_INDEX<~lib/typedarray/Uint64Array,u64>|inlined.0
     end
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     br $loop|0
    end
    unreachable
   end
   i32.const -1
   local.set $6
   local.get $3
   call $~lib/rt/pure/__release
   local.get $6
  end
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint64Array,u64>~anonymous|1 (; 307 ;) (type $FUNCSIG$ijii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i64.const 4
  i64.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint64Array,u64> (; 308 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint64Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i64.const 1
  call $~lib/typedarray/Uint64Array#__set
  local.get $1
  i32.const 1
  i64.const 2
  call $~lib/typedarray/Uint64Array#__set
  local.get $1
  i32.const 2
  i64.const 3
  call $~lib/typedarray/Uint64Array#__set
  local.get $1
  i32.const 84
  call $~lib/typedarray/Uint64Array#findIndex
  local.set $2
  local.get $2
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 405
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 85
  call $~lib/typedarray/Uint64Array#findIndex
  local.set $3
  local.get $3
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 407
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Float32Array,f32>~anonymous|0 (; 309 ;) (type $FUNCSIG$ifii) (param $0 f32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  f32.const 2
  f32.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/typedarray/Float32Array#findIndex (; 310 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/typedarray/FIND_INDEX<~lib/typedarray/Float32Array,f32>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   local.set $2
   local.get $3
   i32.load offset=4
   local.set $4
   block $break|0
    i32.const 0
    local.set $5
    local.get $3
    call $~lib/typedarray/Float32Array#get:length
    local.set $6
    loop $loop|0
     local.get $5
     local.get $6
     i32.lt_s
     i32.eqz
     br_if $break|0
     i32.const 3
     global.set $~lib/argc
     local.get $4
     local.get $5
     i32.const 2
     i32.shl
     i32.add
     f32.load
     local.get $5
     local.get $3
     local.get $2
     call_indirect (type $FUNCSIG$ifii)
     if
      local.get $5
      local.set $7
      local.get $3
      call $~lib/rt/pure/__release
      local.get $7
      br $~lib/typedarray/FIND_INDEX<~lib/typedarray/Float32Array,f32>|inlined.0
     end
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     br $loop|0
    end
    unreachable
   end
   i32.const -1
   local.set $6
   local.get $3
   call $~lib/rt/pure/__release
   local.get $6
  end
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Float32Array,f32>~anonymous|1 (; 311 ;) (type $FUNCSIG$ifii) (param $0 f32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  f32.const 4
  f32.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Float32Array,f32> (; 312 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Float32Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  f32.const 1
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 1
  f32.const 2
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 2
  f32.const 3
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 86
  call $~lib/typedarray/Float32Array#findIndex
  local.set $2
  local.get $2
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 405
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 87
  call $~lib/typedarray/Float32Array#findIndex
  local.set $3
  local.get $3
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 407
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Float64Array,f64>~anonymous|0 (; 313 ;) (type $FUNCSIG$idii) (param $0 f64) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  f64.const 2
  f64.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/typedarray/Float64Array#findIndex (; 314 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/typedarray/FIND_INDEX<~lib/typedarray/Float64Array,f64>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   local.set $2
   local.get $3
   i32.load offset=4
   local.set $4
   block $break|0
    i32.const 0
    local.set $5
    local.get $3
    call $~lib/typedarray/Float64Array#get:length
    local.set $6
    loop $loop|0
     local.get $5
     local.get $6
     i32.lt_s
     i32.eqz
     br_if $break|0
     i32.const 3
     global.set $~lib/argc
     local.get $4
     local.get $5
     i32.const 3
     i32.shl
     i32.add
     f64.load
     local.get $5
     local.get $3
     local.get $2
     call_indirect (type $FUNCSIG$idii)
     if
      local.get $5
      local.set $7
      local.get $3
      call $~lib/rt/pure/__release
      local.get $7
      br $~lib/typedarray/FIND_INDEX<~lib/typedarray/Float64Array,f64>|inlined.0
     end
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     br $loop|0
    end
    unreachable
   end
   i32.const -1
   local.set $6
   local.get $3
   call $~lib/rt/pure/__release
   local.get $6
  end
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Float64Array,f64>~anonymous|1 (; 315 ;) (type $FUNCSIG$idii) (param $0 f64) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  f64.const 4
  f64.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Float64Array,f64> (; 316 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Float64Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  f64.const 1
  call $~lib/typedarray/Float64Array#__set
  local.get $1
  i32.const 1
  f64.const 2
  call $~lib/typedarray/Float64Array#__set
  local.get $1
  i32.const 2
  f64.const 3
  call $~lib/typedarray/Float64Array#__set
  local.get $1
  i32.const 88
  call $~lib/typedarray/Float64Array#findIndex
  local.set $2
  local.get $2
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 405
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 89
  call $~lib/typedarray/Float64Array#findIndex
  local.set $3
  local.get $3
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 407
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int8Array,i8>~anonymous|0 (; 317 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
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
  i32.const 0
  i32.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/typedarray/Int8Array#every (; 318 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/typedarray/EVERY<~lib/typedarray/Int8Array,i8>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   local.set $2
   local.get $3
   i32.load offset=4
   local.set $4
   block $break|0
    i32.const 0
    local.set $5
    local.get $3
    call $~lib/typedarray/Int8Array#get:length
    local.set $6
    loop $loop|0
     local.get $5
     local.get $6
     i32.lt_s
     i32.eqz
     br_if $break|0
     block $continue|0
      i32.const 3
      global.set $~lib/argc
      local.get $4
      local.get $5
      i32.const 0
      i32.shl
      i32.add
      i32.load8_s
      local.get $5
      local.get $3
      local.get $2
      call_indirect (type $FUNCSIG$iiii)
      if
       br $continue|0
      end
      i32.const 0
      local.set $7
      local.get $3
      call $~lib/rt/pure/__release
      local.get $7
      br $~lib/typedarray/EVERY<~lib/typedarray/Int8Array,i8>|inlined.0
     end
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     br $loop|0
    end
    unreachable
   end
   i32.const 1
   local.set $6
   local.get $3
   call $~lib/rt/pure/__release
   local.get $6
  end
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int8Array,i8>~anonymous|1 (; 319 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 2
  i32.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int8Array,i8> (; 320 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Int8Array#__set
  local.get $1
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Int8Array#__set
  local.get $1
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Int8Array#__set
  local.get $1
  i32.const 90
  call $~lib/typedarray/Int8Array#every
  local.set $2
  local.get $2
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 428
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 91
  call $~lib/typedarray/Int8Array#every
  local.set $3
  local.get $3
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 430
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint8Array,u8>~anonymous|0 (; 321 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 255
  i32.and
  i32.const 2
  i32.rem_u
  i32.const 0
  i32.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/typedarray/Uint8Array#every (; 322 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/typedarray/EVERY<~lib/typedarray/Uint8Array,u8>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   local.set $2
   local.get $3
   i32.load offset=4
   local.set $4
   block $break|0
    i32.const 0
    local.set $5
    local.get $3
    call $~lib/typedarray/Uint8Array#get:length
    local.set $6
    loop $loop|0
     local.get $5
     local.get $6
     i32.lt_s
     i32.eqz
     br_if $break|0
     block $continue|0
      i32.const 3
      global.set $~lib/argc
      local.get $4
      local.get $5
      i32.const 0
      i32.shl
      i32.add
      i32.load8_u
      local.get $5
      local.get $3
      local.get $2
      call_indirect (type $FUNCSIG$iiii)
      if
       br $continue|0
      end
      i32.const 0
      local.set $7
      local.get $3
      call $~lib/rt/pure/__release
      local.get $7
      br $~lib/typedarray/EVERY<~lib/typedarray/Uint8Array,u8>|inlined.0
     end
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     br $loop|0
    end
    unreachable
   end
   i32.const 1
   local.set $6
   local.get $3
   call $~lib/rt/pure/__release
   local.get $6
  end
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint8Array,u8>~anonymous|1 (; 323 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 255
  i32.and
  i32.const 2
  i32.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint8Array,u8> (; 324 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 92
  call $~lib/typedarray/Uint8Array#every
  local.set $2
  local.get $2
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 428
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 93
  call $~lib/typedarray/Uint8Array#every
  local.set $3
  local.get $3
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 430
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint8ClampedArray,u8>~anonymous|0 (; 325 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 255
  i32.and
  i32.const 2
  i32.rem_u
  i32.const 0
  i32.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/typedarray/Uint8ClampedArray#every (; 326 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/typedarray/EVERY<~lib/typedarray/Uint8ClampedArray,u8>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   local.set $2
   local.get $3
   i32.load offset=4
   local.set $4
   block $break|0
    i32.const 0
    local.set $5
    local.get $3
    call $~lib/typedarray/Uint8ClampedArray#get:length
    local.set $6
    loop $loop|0
     local.get $5
     local.get $6
     i32.lt_s
     i32.eqz
     br_if $break|0
     block $continue|0
      i32.const 3
      global.set $~lib/argc
      local.get $4
      local.get $5
      i32.const 0
      i32.shl
      i32.add
      i32.load8_u
      local.get $5
      local.get $3
      local.get $2
      call_indirect (type $FUNCSIG$iiii)
      if
       br $continue|0
      end
      i32.const 0
      local.set $7
      local.get $3
      call $~lib/rt/pure/__release
      local.get $7
      br $~lib/typedarray/EVERY<~lib/typedarray/Uint8ClampedArray,u8>|inlined.0
     end
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     br $loop|0
    end
    unreachable
   end
   i32.const 1
   local.set $6
   local.get $3
   call $~lib/rt/pure/__release
   local.get $6
  end
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint8ClampedArray,u8>~anonymous|1 (; 327 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 255
  i32.and
  i32.const 2
  i32.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint8ClampedArray,u8> (; 328 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $1
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $1
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $1
  i32.const 94
  call $~lib/typedarray/Uint8ClampedArray#every
  local.set $2
  local.get $2
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 428
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 95
  call $~lib/typedarray/Uint8ClampedArray#every
  local.set $3
  local.get $3
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 430
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int16Array,i16>~anonymous|0 (; 329 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
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
  i32.const 0
  i32.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/typedarray/Int16Array#every (; 330 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/typedarray/EVERY<~lib/typedarray/Int16Array,i16>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   local.set $2
   local.get $3
   i32.load offset=4
   local.set $4
   block $break|0
    i32.const 0
    local.set $5
    local.get $3
    call $~lib/typedarray/Int16Array#get:length
    local.set $6
    loop $loop|0
     local.get $5
     local.get $6
     i32.lt_s
     i32.eqz
     br_if $break|0
     block $continue|0
      i32.const 3
      global.set $~lib/argc
      local.get $4
      local.get $5
      i32.const 1
      i32.shl
      i32.add
      i32.load16_s
      local.get $5
      local.get $3
      local.get $2
      call_indirect (type $FUNCSIG$iiii)
      if
       br $continue|0
      end
      i32.const 0
      local.set $7
      local.get $3
      call $~lib/rt/pure/__release
      local.get $7
      br $~lib/typedarray/EVERY<~lib/typedarray/Int16Array,i16>|inlined.0
     end
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     br $loop|0
    end
    unreachable
   end
   i32.const 1
   local.set $6
   local.get $3
   call $~lib/rt/pure/__release
   local.get $6
  end
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int16Array,i16>~anonymous|1 (; 331 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 2
  i32.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int16Array,i16> (; 332 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Int16Array#__set
  local.get $1
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Int16Array#__set
  local.get $1
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Int16Array#__set
  local.get $1
  i32.const 96
  call $~lib/typedarray/Int16Array#every
  local.set $2
  local.get $2
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 428
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 97
  call $~lib/typedarray/Int16Array#every
  local.set $3
  local.get $3
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 430
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint16Array,u16>~anonymous|0 (; 333 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 65535
  i32.and
  i32.const 2
  i32.rem_u
  i32.const 0
  i32.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/typedarray/Uint16Array#every (; 334 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/typedarray/EVERY<~lib/typedarray/Uint16Array,u16>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   local.set $2
   local.get $3
   i32.load offset=4
   local.set $4
   block $break|0
    i32.const 0
    local.set $5
    local.get $3
    call $~lib/typedarray/Uint16Array#get:length
    local.set $6
    loop $loop|0
     local.get $5
     local.get $6
     i32.lt_s
     i32.eqz
     br_if $break|0
     block $continue|0
      i32.const 3
      global.set $~lib/argc
      local.get $4
      local.get $5
      i32.const 1
      i32.shl
      i32.add
      i32.load16_u
      local.get $5
      local.get $3
      local.get $2
      call_indirect (type $FUNCSIG$iiii)
      if
       br $continue|0
      end
      i32.const 0
      local.set $7
      local.get $3
      call $~lib/rt/pure/__release
      local.get $7
      br $~lib/typedarray/EVERY<~lib/typedarray/Uint16Array,u16>|inlined.0
     end
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     br $loop|0
    end
    unreachable
   end
   i32.const 1
   local.set $6
   local.get $3
   call $~lib/rt/pure/__release
   local.get $6
  end
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint16Array,u16>~anonymous|1 (; 335 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 65535
  i32.and
  i32.const 2
  i32.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint16Array,u16> (; 336 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint16Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Uint16Array#__set
  local.get $1
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Uint16Array#__set
  local.get $1
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Uint16Array#__set
  local.get $1
  i32.const 98
  call $~lib/typedarray/Uint16Array#every
  local.set $2
  local.get $2
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 428
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 99
  call $~lib/typedarray/Uint16Array#every
  local.set $3
  local.get $3
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 430
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int32Array,i32>~anonymous|0 (; 337 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 2
  i32.rem_s
  i32.const 0
  i32.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/typedarray/Int32Array#every (; 338 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/typedarray/EVERY<~lib/typedarray/Int32Array,i32>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   local.set $2
   local.get $3
   i32.load offset=4
   local.set $4
   block $break|0
    i32.const 0
    local.set $5
    local.get $3
    call $~lib/typedarray/Int32Array#get:length
    local.set $6
    loop $loop|0
     local.get $5
     local.get $6
     i32.lt_s
     i32.eqz
     br_if $break|0
     block $continue|0
      i32.const 3
      global.set $~lib/argc
      local.get $4
      local.get $5
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.get $5
      local.get $3
      local.get $2
      call_indirect (type $FUNCSIG$iiii)
      if
       br $continue|0
      end
      i32.const 0
      local.set $7
      local.get $3
      call $~lib/rt/pure/__release
      local.get $7
      br $~lib/typedarray/EVERY<~lib/typedarray/Int32Array,i32>|inlined.0
     end
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     br $loop|0
    end
    unreachable
   end
   i32.const 1
   local.set $6
   local.get $3
   call $~lib/rt/pure/__release
   local.get $6
  end
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int32Array,i32>~anonymous|1 (; 339 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 2
  i32.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int32Array,i32> (; 340 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Int32Array#__set
  local.get $1
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Int32Array#__set
  local.get $1
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Int32Array#__set
  local.get $1
  i32.const 100
  call $~lib/typedarray/Int32Array#every
  local.set $2
  local.get $2
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 428
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 101
  call $~lib/typedarray/Int32Array#every
  local.set $3
  local.get $3
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 430
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint32Array,u32>~anonymous|0 (; 341 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 2
  i32.rem_u
  i32.const 0
  i32.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/typedarray/Uint32Array#every (; 342 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/typedarray/EVERY<~lib/typedarray/Uint32Array,u32>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   local.set $2
   local.get $3
   i32.load offset=4
   local.set $4
   block $break|0
    i32.const 0
    local.set $5
    local.get $3
    call $~lib/typedarray/Uint32Array#get:length
    local.set $6
    loop $loop|0
     local.get $5
     local.get $6
     i32.lt_s
     i32.eqz
     br_if $break|0
     block $continue|0
      i32.const 3
      global.set $~lib/argc
      local.get $4
      local.get $5
      i32.const 2
      i32.shl
      i32.add
      i32.load
      local.get $5
      local.get $3
      local.get $2
      call_indirect (type $FUNCSIG$iiii)
      if
       br $continue|0
      end
      i32.const 0
      local.set $7
      local.get $3
      call $~lib/rt/pure/__release
      local.get $7
      br $~lib/typedarray/EVERY<~lib/typedarray/Uint32Array,u32>|inlined.0
     end
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     br $loop|0
    end
    unreachable
   end
   i32.const 1
   local.set $6
   local.get $3
   call $~lib/rt/pure/__release
   local.get $6
  end
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint32Array,u32>~anonymous|1 (; 343 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i32.const 2
  i32.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint32Array,u32> (; 344 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint32Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Uint32Array#__set
  local.get $1
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Uint32Array#__set
  local.get $1
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Uint32Array#__set
  local.get $1
  i32.const 102
  call $~lib/typedarray/Uint32Array#every
  local.set $2
  local.get $2
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 428
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 103
  call $~lib/typedarray/Uint32Array#every
  local.set $3
  local.get $3
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 430
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int64Array,i64>~anonymous|0 (; 345 ;) (type $FUNCSIG$ijii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i64.const 2
  i64.rem_s
  i64.const 0
  i64.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/typedarray/Int64Array#every (; 346 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/typedarray/EVERY<~lib/typedarray/Int64Array,i64>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   local.set $2
   local.get $3
   i32.load offset=4
   local.set $4
   block $break|0
    i32.const 0
    local.set $5
    local.get $3
    call $~lib/typedarray/Int64Array#get:length
    local.set $6
    loop $loop|0
     local.get $5
     local.get $6
     i32.lt_s
     i32.eqz
     br_if $break|0
     block $continue|0
      i32.const 3
      global.set $~lib/argc
      local.get $4
      local.get $5
      i32.const 3
      i32.shl
      i32.add
      i64.load
      local.get $5
      local.get $3
      local.get $2
      call_indirect (type $FUNCSIG$ijii)
      if
       br $continue|0
      end
      i32.const 0
      local.set $7
      local.get $3
      call $~lib/rt/pure/__release
      local.get $7
      br $~lib/typedarray/EVERY<~lib/typedarray/Int64Array,i64>|inlined.0
     end
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     br $loop|0
    end
    unreachable
   end
   i32.const 1
   local.set $6
   local.get $3
   call $~lib/rt/pure/__release
   local.get $6
  end
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int64Array,i64>~anonymous|1 (; 347 ;) (type $FUNCSIG$ijii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i64.const 2
  i64.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int64Array,i64> (; 348 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i64.const 2
  call $~lib/typedarray/Int64Array#__set
  local.get $1
  i32.const 1
  i64.const 4
  call $~lib/typedarray/Int64Array#__set
  local.get $1
  i32.const 2
  i64.const 6
  call $~lib/typedarray/Int64Array#__set
  local.get $1
  i32.const 104
  call $~lib/typedarray/Int64Array#every
  local.set $2
  local.get $2
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 428
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 105
  call $~lib/typedarray/Int64Array#every
  local.set $3
  local.get $3
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 430
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint64Array,u64>~anonymous|0 (; 349 ;) (type $FUNCSIG$ijii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i64.const 2
  i64.rem_u
  i64.const 0
  i64.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/typedarray/Uint64Array#every (; 350 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/typedarray/EVERY<~lib/typedarray/Uint64Array,u64>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   local.set $2
   local.get $3
   i32.load offset=4
   local.set $4
   block $break|0
    i32.const 0
    local.set $5
    local.get $3
    call $~lib/typedarray/Uint64Array#get:length
    local.set $6
    loop $loop|0
     local.get $5
     local.get $6
     i32.lt_s
     i32.eqz
     br_if $break|0
     block $continue|0
      i32.const 3
      global.set $~lib/argc
      local.get $4
      local.get $5
      i32.const 3
      i32.shl
      i32.add
      i64.load
      local.get $5
      local.get $3
      local.get $2
      call_indirect (type $FUNCSIG$ijii)
      if
       br $continue|0
      end
      i32.const 0
      local.set $7
      local.get $3
      call $~lib/rt/pure/__release
      local.get $7
      br $~lib/typedarray/EVERY<~lib/typedarray/Uint64Array,u64>|inlined.0
     end
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     br $loop|0
    end
    unreachable
   end
   i32.const 1
   local.set $6
   local.get $3
   call $~lib/rt/pure/__release
   local.get $6
  end
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint64Array,u64>~anonymous|1 (; 351 ;) (type $FUNCSIG$ijii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  i64.const 2
  i64.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint64Array,u64> (; 352 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint64Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i64.const 2
  call $~lib/typedarray/Uint64Array#__set
  local.get $1
  i32.const 1
  i64.const 4
  call $~lib/typedarray/Uint64Array#__set
  local.get $1
  i32.const 2
  i64.const 6
  call $~lib/typedarray/Uint64Array#__set
  local.get $1
  i32.const 106
  call $~lib/typedarray/Uint64Array#every
  local.set $2
  local.get $2
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 428
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 107
  call $~lib/typedarray/Uint64Array#every
  local.set $3
  local.get $3
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 430
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/number/isNaN<f32> (; 353 ;) (type $FUNCSIG$if) (param $0 f32) (result i32)
  local.get $0
  local.get $0
  f32.ne
 )
 (func $~lib/math/NativeMathf.mod (; 354 ;) (type $FUNCSIG$fff) (param $0 f32) (param $1 f32) (result f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 f32)
  (local $9 i32)
  (local $10 i32)
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
  if (result i32)
   i32.const 1
  else   
   local.get $4
   i32.const 255
   i32.eq
  end
  if (result i32)
   i32.const 1
  else   
   local.get $1
   call $~lib/number/isNaN<f32>
  end
  if
   local.get $0
   local.get $1
   f32.mul
   local.set $8
   local.get $8
   local.get $8
   f32.div
   return
  end
  local.get $2
  i32.const 1
  i32.shl
  local.set $9
  local.get $9
  local.get $7
  i32.le_u
  if
   local.get $9
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
    i32.eqz
    br_if $break|0
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
    br $continue|0
   end
   unreachable
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
  local.set $10
  local.get $4
  local.get $10
  i32.sub
  local.set $4
  local.get $2
  local.get $10
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
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Float32Array,f32>~anonymous|0 (; 355 ;) (type $FUNCSIG$ifii) (param $0 f32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  f32.const 2
  call $~lib/math/NativeMathf.mod
  f32.const 0
  f32.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/typedarray/Float32Array#every (; 356 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/typedarray/EVERY<~lib/typedarray/Float32Array,f32>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   local.set $2
   local.get $3
   i32.load offset=4
   local.set $4
   block $break|0
    i32.const 0
    local.set $5
    local.get $3
    call $~lib/typedarray/Float32Array#get:length
    local.set $6
    loop $loop|0
     local.get $5
     local.get $6
     i32.lt_s
     i32.eqz
     br_if $break|0
     block $continue|0
      i32.const 3
      global.set $~lib/argc
      local.get $4
      local.get $5
      i32.const 2
      i32.shl
      i32.add
      f32.load
      local.get $5
      local.get $3
      local.get $2
      call_indirect (type $FUNCSIG$ifii)
      if
       br $continue|0
      end
      i32.const 0
      local.set $7
      local.get $3
      call $~lib/rt/pure/__release
      local.get $7
      br $~lib/typedarray/EVERY<~lib/typedarray/Float32Array,f32>|inlined.0
     end
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     br $loop|0
    end
    unreachable
   end
   i32.const 1
   local.set $6
   local.get $3
   call $~lib/rt/pure/__release
   local.get $6
  end
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Float32Array,f32>~anonymous|1 (; 357 ;) (type $FUNCSIG$ifii) (param $0 f32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  f32.const 2
  f32.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Float32Array,f32> (; 358 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Float32Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  f32.const 2
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 1
  f32.const 4
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 2
  f32.const 6
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 108
  call $~lib/typedarray/Float32Array#every
  local.set $2
  local.get $2
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 428
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 109
  call $~lib/typedarray/Float32Array#every
  local.set $3
  local.get $3
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 430
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/number/isNaN<f64> (; 359 ;) (type $FUNCSIG$id) (param $0 f64) (result i32)
  local.get $0
  local.get $0
  f64.ne
 )
 (func $~lib/math/NativeMath.mod (; 360 ;) (type $FUNCSIG$ddd) (param $0 f64) (param $1 f64) (result f64)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (local $5 i64)
  (local $6 i64)
  (local $7 i64)
  (local $8 f64)
  (local $9 i64)
  (local $10 i64)
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
  if (result i32)
   i32.const 1
  else   
   local.get $4
   i64.const 2047
   i64.eq
  end
  if (result i32)
   i32.const 1
  else   
   local.get $1
   call $~lib/number/isNaN<f64>
  end
  if
   local.get $0
   local.get $1
   f64.mul
   local.set $8
   local.get $8
   local.get $8
   f64.div
   return
  end
  local.get $2
  i64.const 1
  i64.shl
  local.set $9
  local.get $9
  local.get $7
  i64.le_u
  if
   local.get $9
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
    i32.eqz
    br_if $break|0
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
    br $continue|0
   end
   unreachable
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
  local.set $10
  local.get $4
  local.get $10
  i64.sub
  local.set $4
  local.get $2
  local.get $10
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
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Float64Array,f64>~anonymous|0 (; 361 ;) (type $FUNCSIG$idii) (param $0 f64) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  f64.const 2
  call $~lib/math/NativeMath.mod
  f64.const 0
  f64.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $~lib/typedarray/Float64Array#every (; 362 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  block $~lib/typedarray/EVERY<~lib/typedarray/Float64Array,f64>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $3
   local.get $1
   local.set $2
   local.get $3
   i32.load offset=4
   local.set $4
   block $break|0
    i32.const 0
    local.set $5
    local.get $3
    call $~lib/typedarray/Float64Array#get:length
    local.set $6
    loop $loop|0
     local.get $5
     local.get $6
     i32.lt_s
     i32.eqz
     br_if $break|0
     block $continue|0
      i32.const 3
      global.set $~lib/argc
      local.get $4
      local.get $5
      i32.const 3
      i32.shl
      i32.add
      f64.load
      local.get $5
      local.get $3
      local.get $2
      call_indirect (type $FUNCSIG$idii)
      if
       br $continue|0
      end
      i32.const 0
      local.set $7
      local.get $3
      call $~lib/rt/pure/__release
      local.get $7
      br $~lib/typedarray/EVERY<~lib/typedarray/Float64Array,f64>|inlined.0
     end
     local.get $5
     i32.const 1
     i32.add
     local.set $5
     br $loop|0
    end
    unreachable
   end
   i32.const 1
   local.set $6
   local.get $3
   call $~lib/rt/pure/__release
   local.get $6
  end
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Float64Array,f64>~anonymous|1 (; 363 ;) (type $FUNCSIG$idii) (param $0 f64) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  f64.const 2
  f64.eq
  local.set $3
  local.get $2
  call $~lib/rt/pure/__release
  local.get $3
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Float64Array,f64> (; 364 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Float64Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  f64.const 2
  call $~lib/typedarray/Float64Array#__set
  local.get $1
  i32.const 1
  f64.const 4
  call $~lib/typedarray/Float64Array#__set
  local.get $1
  i32.const 2
  f64.const 6
  call $~lib/typedarray/Float64Array#__set
  local.get $1
  i32.const 110
  call $~lib/typedarray/Float64Array#every
  local.set $2
  local.get $2
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 428
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 111
  call $~lib/typedarray/Float64Array#every
  local.set $3
  local.get $3
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 430
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Int8Array,i8>~anonymous|0 (; 365 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  global.get $std/typedarray/forEachValues
  local.get $1
  call $~lib/array/Array<i32>#__get
  local.set $3
  local.get $0
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  local.get $3
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 457
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  global.get $std/typedarray/forEachCallCount
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 458
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/typedarray/forEachSelf
  local.get $2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 459
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
 (func $~lib/typedarray/Int8Array#forEach (; 366 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $1
  local.set $2
  local.get $3
  i32.load offset=4
  local.set $4
  block $break|0
   i32.const 0
   local.set $5
   local.get $3
   call $~lib/typedarray/Int8Array#get:length
   local.set $6
   loop $loop|0
    local.get $5
    local.get $6
    i32.lt_s
    i32.eqz
    br_if $break|0
    i32.const 3
    global.set $~lib/argc
    local.get $4
    local.get $5
    i32.const 0
    i32.shl
    i32.add
    i32.load8_s
    local.get $5
    local.get $3
    local.get $2
    call_indirect (type $FUNCSIG$viii)
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $loop|0
   end
   unreachable
  end
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Int8Array,i8> (; 367 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  global.set $std/typedarray/forEachCallCount
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  global.set $std/typedarray/forEachSelf
  local.get $1
  i32.const 0
  global.get $std/typedarray/forEachValues
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  call $~lib/typedarray/Int8Array#__set
  local.get $1
  i32.const 1
  global.get $std/typedarray/forEachValues
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  call $~lib/typedarray/Int8Array#__set
  local.get $1
  i32.const 2
  global.get $std/typedarray/forEachValues
  i32.const 2
  call $~lib/array/Array<i32>#__get
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  call $~lib/typedarray/Int8Array#__set
  local.get $1
  i32.const 112
  call $~lib/typedarray/Int8Array#forEach
  global.get $std/typedarray/forEachCallCount
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 462
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Uint8Array,u8>~anonymous|0 (; 368 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  global.get $std/typedarray/forEachValues
  local.get $1
  call $~lib/array/Array<i32>#__get
  local.set $3
  local.get $0
  i32.const 255
  i32.and
  local.get $3
  i32.const 255
  i32.and
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 457
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  global.get $std/typedarray/forEachCallCount
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 458
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/typedarray/forEachSelf
  local.get $2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 459
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
 (func $~lib/typedarray/Uint8Array#forEach (; 369 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $1
  local.set $2
  local.get $3
  i32.load offset=4
  local.set $4
  block $break|0
   i32.const 0
   local.set $5
   local.get $3
   call $~lib/typedarray/Uint8Array#get:length
   local.set $6
   loop $loop|0
    local.get $5
    local.get $6
    i32.lt_s
    i32.eqz
    br_if $break|0
    i32.const 3
    global.set $~lib/argc
    local.get $4
    local.get $5
    i32.const 0
    i32.shl
    i32.add
    i32.load8_u
    local.get $5
    local.get $3
    local.get $2
    call_indirect (type $FUNCSIG$viii)
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $loop|0
   end
   unreachable
  end
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Uint8Array,u8> (; 370 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  global.set $std/typedarray/forEachCallCount
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  global.set $std/typedarray/forEachSelf
  local.get $1
  i32.const 0
  global.get $std/typedarray/forEachValues
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 255
  i32.and
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 1
  global.get $std/typedarray/forEachValues
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i32.const 255
  i32.and
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 2
  global.get $std/typedarray/forEachValues
  i32.const 2
  call $~lib/array/Array<i32>#__get
  i32.const 255
  i32.and
  call $~lib/typedarray/Uint8Array#__set
  local.get $1
  i32.const 113
  call $~lib/typedarray/Uint8Array#forEach
  global.get $std/typedarray/forEachCallCount
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 462
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Uint8ClampedArray,u8>~anonymous|0 (; 371 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  global.get $std/typedarray/forEachValues
  local.get $1
  call $~lib/array/Array<i32>#__get
  local.set $3
  local.get $0
  i32.const 255
  i32.and
  local.get $3
  i32.const 255
  i32.and
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 457
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  global.get $std/typedarray/forEachCallCount
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 458
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/typedarray/forEachSelf
  local.get $2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 459
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
 (func $~lib/typedarray/Uint8ClampedArray#forEach (; 372 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $1
  local.set $2
  local.get $3
  i32.load offset=4
  local.set $4
  block $break|0
   i32.const 0
   local.set $5
   local.get $3
   call $~lib/typedarray/Uint8ClampedArray#get:length
   local.set $6
   loop $loop|0
    local.get $5
    local.get $6
    i32.lt_s
    i32.eqz
    br_if $break|0
    i32.const 3
    global.set $~lib/argc
    local.get $4
    local.get $5
    i32.const 0
    i32.shl
    i32.add
    i32.load8_u
    local.get $5
    local.get $3
    local.get $2
    call_indirect (type $FUNCSIG$viii)
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $loop|0
   end
   unreachable
  end
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Uint8ClampedArray,u8> (; 373 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  global.set $std/typedarray/forEachCallCount
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  global.set $std/typedarray/forEachSelf
  local.get $1
  i32.const 0
  global.get $std/typedarray/forEachValues
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 255
  i32.and
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $1
  i32.const 1
  global.get $std/typedarray/forEachValues
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i32.const 255
  i32.and
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $1
  i32.const 2
  global.get $std/typedarray/forEachValues
  i32.const 2
  call $~lib/array/Array<i32>#__get
  i32.const 255
  i32.and
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $1
  i32.const 114
  call $~lib/typedarray/Uint8ClampedArray#forEach
  global.get $std/typedarray/forEachCallCount
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 462
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Int16Array,i16>~anonymous|0 (; 374 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  global.get $std/typedarray/forEachValues
  local.get $1
  call $~lib/array/Array<i32>#__get
  local.set $3
  local.get $0
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  local.get $3
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 457
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  global.get $std/typedarray/forEachCallCount
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 458
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/typedarray/forEachSelf
  local.get $2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 459
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
 (func $~lib/typedarray/Int16Array#forEach (; 375 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $1
  local.set $2
  local.get $3
  i32.load offset=4
  local.set $4
  block $break|0
   i32.const 0
   local.set $5
   local.get $3
   call $~lib/typedarray/Int16Array#get:length
   local.set $6
   loop $loop|0
    local.get $5
    local.get $6
    i32.lt_s
    i32.eqz
    br_if $break|0
    i32.const 3
    global.set $~lib/argc
    local.get $4
    local.get $5
    i32.const 1
    i32.shl
    i32.add
    i32.load16_s
    local.get $5
    local.get $3
    local.get $2
    call_indirect (type $FUNCSIG$viii)
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $loop|0
   end
   unreachable
  end
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Int16Array,i16> (; 376 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  global.set $std/typedarray/forEachCallCount
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  global.set $std/typedarray/forEachSelf
  local.get $1
  i32.const 0
  global.get $std/typedarray/forEachValues
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  call $~lib/typedarray/Int16Array#__set
  local.get $1
  i32.const 1
  global.get $std/typedarray/forEachValues
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  call $~lib/typedarray/Int16Array#__set
  local.get $1
  i32.const 2
  global.get $std/typedarray/forEachValues
  i32.const 2
  call $~lib/array/Array<i32>#__get
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  call $~lib/typedarray/Int16Array#__set
  local.get $1
  i32.const 115
  call $~lib/typedarray/Int16Array#forEach
  global.get $std/typedarray/forEachCallCount
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 462
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Uint16Array,u16>~anonymous|0 (; 377 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  global.get $std/typedarray/forEachValues
  local.get $1
  call $~lib/array/Array<i32>#__get
  local.set $3
  local.get $0
  i32.const 65535
  i32.and
  local.get $3
  i32.const 65535
  i32.and
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 457
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  global.get $std/typedarray/forEachCallCount
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 458
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/typedarray/forEachSelf
  local.get $2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 459
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
 (func $~lib/typedarray/Uint16Array#forEach (; 378 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $1
  local.set $2
  local.get $3
  i32.load offset=4
  local.set $4
  block $break|0
   i32.const 0
   local.set $5
   local.get $3
   call $~lib/typedarray/Uint16Array#get:length
   local.set $6
   loop $loop|0
    local.get $5
    local.get $6
    i32.lt_s
    i32.eqz
    br_if $break|0
    i32.const 3
    global.set $~lib/argc
    local.get $4
    local.get $5
    i32.const 1
    i32.shl
    i32.add
    i32.load16_u
    local.get $5
    local.get $3
    local.get $2
    call_indirect (type $FUNCSIG$viii)
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $loop|0
   end
   unreachable
  end
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Uint16Array,u16> (; 379 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  global.set $std/typedarray/forEachCallCount
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint16Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  global.set $std/typedarray/forEachSelf
  local.get $1
  i32.const 0
  global.get $std/typedarray/forEachValues
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i32.const 65535
  i32.and
  call $~lib/typedarray/Uint16Array#__set
  local.get $1
  i32.const 1
  global.get $std/typedarray/forEachValues
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i32.const 65535
  i32.and
  call $~lib/typedarray/Uint16Array#__set
  local.get $1
  i32.const 2
  global.get $std/typedarray/forEachValues
  i32.const 2
  call $~lib/array/Array<i32>#__get
  i32.const 65535
  i32.and
  call $~lib/typedarray/Uint16Array#__set
  local.get $1
  i32.const 116
  call $~lib/typedarray/Uint16Array#forEach
  global.get $std/typedarray/forEachCallCount
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 462
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Int32Array,i32>~anonymous|0 (; 380 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  global.get $std/typedarray/forEachValues
  local.get $1
  call $~lib/array/Array<i32>#__get
  local.set $3
  local.get $0
  local.get $3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 457
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  global.get $std/typedarray/forEachCallCount
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 458
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/typedarray/forEachSelf
  local.get $2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 459
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
 (func $~lib/typedarray/Int32Array#forEach (; 381 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $1
  local.set $2
  local.get $3
  i32.load offset=4
  local.set $4
  block $break|0
   i32.const 0
   local.set $5
   local.get $3
   call $~lib/typedarray/Int32Array#get:length
   local.set $6
   loop $loop|0
    local.get $5
    local.get $6
    i32.lt_s
    i32.eqz
    br_if $break|0
    i32.const 3
    global.set $~lib/argc
    local.get $4
    local.get $5
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.get $5
    local.get $3
    local.get $2
    call_indirect (type $FUNCSIG$viii)
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $loop|0
   end
   unreachable
  end
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Int32Array,i32> (; 382 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  global.set $std/typedarray/forEachCallCount
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  global.set $std/typedarray/forEachSelf
  local.get $1
  i32.const 0
  global.get $std/typedarray/forEachValues
  i32.const 0
  call $~lib/array/Array<i32>#__get
  call $~lib/typedarray/Int32Array#__set
  local.get $1
  i32.const 1
  global.get $std/typedarray/forEachValues
  i32.const 1
  call $~lib/array/Array<i32>#__get
  call $~lib/typedarray/Int32Array#__set
  local.get $1
  i32.const 2
  global.get $std/typedarray/forEachValues
  i32.const 2
  call $~lib/array/Array<i32>#__get
  call $~lib/typedarray/Int32Array#__set
  local.get $1
  i32.const 117
  call $~lib/typedarray/Int32Array#forEach
  global.get $std/typedarray/forEachCallCount
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 462
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Uint32Array,u32>~anonymous|0 (; 383 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  global.get $std/typedarray/forEachValues
  local.get $1
  call $~lib/array/Array<i32>#__get
  local.set $3
  local.get $0
  local.get $3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 457
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  global.get $std/typedarray/forEachCallCount
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 458
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/typedarray/forEachSelf
  local.get $2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 459
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
 (func $~lib/typedarray/Uint32Array#forEach (; 384 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $1
  local.set $2
  local.get $3
  i32.load offset=4
  local.set $4
  block $break|0
   i32.const 0
   local.set $5
   local.get $3
   call $~lib/typedarray/Uint32Array#get:length
   local.set $6
   loop $loop|0
    local.get $5
    local.get $6
    i32.lt_s
    i32.eqz
    br_if $break|0
    i32.const 3
    global.set $~lib/argc
    local.get $4
    local.get $5
    i32.const 2
    i32.shl
    i32.add
    i32.load
    local.get $5
    local.get $3
    local.get $2
    call_indirect (type $FUNCSIG$viii)
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $loop|0
   end
   unreachable
  end
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Uint32Array,u32> (; 385 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  global.set $std/typedarray/forEachCallCount
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint32Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  global.set $std/typedarray/forEachSelf
  local.get $1
  i32.const 0
  global.get $std/typedarray/forEachValues
  i32.const 0
  call $~lib/array/Array<i32>#__get
  call $~lib/typedarray/Uint32Array#__set
  local.get $1
  i32.const 1
  global.get $std/typedarray/forEachValues
  i32.const 1
  call $~lib/array/Array<i32>#__get
  call $~lib/typedarray/Uint32Array#__set
  local.get $1
  i32.const 2
  global.get $std/typedarray/forEachValues
  i32.const 2
  call $~lib/array/Array<i32>#__get
  call $~lib/typedarray/Uint32Array#__set
  local.get $1
  i32.const 118
  call $~lib/typedarray/Uint32Array#forEach
  global.get $std/typedarray/forEachCallCount
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 462
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Int64Array,i64>~anonymous|0 (; 386 ;) (type $FUNCSIG$vjii) (param $0 i64) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  global.get $std/typedarray/forEachValues
  local.get $1
  call $~lib/array/Array<i32>#__get
  local.set $3
  local.get $0
  local.get $3
  i64.extend_i32_s
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 457
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  global.get $std/typedarray/forEachCallCount
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 458
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/typedarray/forEachSelf
  local.get $2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 459
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
 (func $~lib/typedarray/Int64Array#forEach (; 387 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $1
  local.set $2
  local.get $3
  i32.load offset=4
  local.set $4
  block $break|0
   i32.const 0
   local.set $5
   local.get $3
   call $~lib/typedarray/Int64Array#get:length
   local.set $6
   loop $loop|0
    local.get $5
    local.get $6
    i32.lt_s
    i32.eqz
    br_if $break|0
    i32.const 3
    global.set $~lib/argc
    local.get $4
    local.get $5
    i32.const 3
    i32.shl
    i32.add
    i64.load
    local.get $5
    local.get $3
    local.get $2
    call_indirect (type $FUNCSIG$vjii)
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $loop|0
   end
   unreachable
  end
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Int64Array,i64> (; 388 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  global.set $std/typedarray/forEachCallCount
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  global.set $std/typedarray/forEachSelf
  local.get $1
  i32.const 0
  global.get $std/typedarray/forEachValues
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i64.extend_i32_s
  call $~lib/typedarray/Int64Array#__set
  local.get $1
  i32.const 1
  global.get $std/typedarray/forEachValues
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i64.extend_i32_s
  call $~lib/typedarray/Int64Array#__set
  local.get $1
  i32.const 2
  global.get $std/typedarray/forEachValues
  i32.const 2
  call $~lib/array/Array<i32>#__get
  i64.extend_i32_s
  call $~lib/typedarray/Int64Array#__set
  local.get $1
  i32.const 119
  call $~lib/typedarray/Int64Array#forEach
  global.get $std/typedarray/forEachCallCount
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 462
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Uint64Array,u64>~anonymous|0 (; 389 ;) (type $FUNCSIG$vjii) (param $0 i64) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  global.get $std/typedarray/forEachValues
  local.get $1
  call $~lib/array/Array<i32>#__get
  local.set $3
  local.get $0
  local.get $3
  i64.extend_i32_s
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 457
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  global.get $std/typedarray/forEachCallCount
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 458
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/typedarray/forEachSelf
  local.get $2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 459
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
 (func $~lib/typedarray/Uint64Array#forEach (; 390 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $1
  local.set $2
  local.get $3
  i32.load offset=4
  local.set $4
  block $break|0
   i32.const 0
   local.set $5
   local.get $3
   call $~lib/typedarray/Uint64Array#get:length
   local.set $6
   loop $loop|0
    local.get $5
    local.get $6
    i32.lt_s
    i32.eqz
    br_if $break|0
    i32.const 3
    global.set $~lib/argc
    local.get $4
    local.get $5
    i32.const 3
    i32.shl
    i32.add
    i64.load
    local.get $5
    local.get $3
    local.get $2
    call_indirect (type $FUNCSIG$vjii)
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $loop|0
   end
   unreachable
  end
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Uint64Array,u64> (; 391 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  global.set $std/typedarray/forEachCallCount
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint64Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  global.set $std/typedarray/forEachSelf
  local.get $1
  i32.const 0
  global.get $std/typedarray/forEachValues
  i32.const 0
  call $~lib/array/Array<i32>#__get
  i64.extend_i32_s
  call $~lib/typedarray/Uint64Array#__set
  local.get $1
  i32.const 1
  global.get $std/typedarray/forEachValues
  i32.const 1
  call $~lib/array/Array<i32>#__get
  i64.extend_i32_s
  call $~lib/typedarray/Uint64Array#__set
  local.get $1
  i32.const 2
  global.get $std/typedarray/forEachValues
  i32.const 2
  call $~lib/array/Array<i32>#__get
  i64.extend_i32_s
  call $~lib/typedarray/Uint64Array#__set
  local.get $1
  i32.const 120
  call $~lib/typedarray/Uint64Array#forEach
  global.get $std/typedarray/forEachCallCount
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 462
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Float32Array,f32>~anonymous|0 (; 392 ;) (type $FUNCSIG$vfii) (param $0 f32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  global.get $std/typedarray/forEachValues
  local.get $1
  call $~lib/array/Array<i32>#__get
  local.set $3
  local.get $0
  local.get $3
  f32.convert_i32_s
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 457
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  global.get $std/typedarray/forEachCallCount
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 458
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/typedarray/forEachSelf
  local.get $2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 459
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
 (func $~lib/typedarray/Float32Array#forEach (; 393 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $1
  local.set $2
  local.get $3
  i32.load offset=4
  local.set $4
  block $break|0
   i32.const 0
   local.set $5
   local.get $3
   call $~lib/typedarray/Float32Array#get:length
   local.set $6
   loop $loop|0
    local.get $5
    local.get $6
    i32.lt_s
    i32.eqz
    br_if $break|0
    i32.const 3
    global.set $~lib/argc
    local.get $4
    local.get $5
    i32.const 2
    i32.shl
    i32.add
    f32.load
    local.get $5
    local.get $3
    local.get $2
    call_indirect (type $FUNCSIG$vfii)
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $loop|0
   end
   unreachable
  end
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Float32Array,f32> (; 394 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  global.set $std/typedarray/forEachCallCount
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Float32Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  global.set $std/typedarray/forEachSelf
  local.get $1
  i32.const 0
  global.get $std/typedarray/forEachValues
  i32.const 0
  call $~lib/array/Array<i32>#__get
  f32.convert_i32_s
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 1
  global.get $std/typedarray/forEachValues
  i32.const 1
  call $~lib/array/Array<i32>#__get
  f32.convert_i32_s
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 2
  global.get $std/typedarray/forEachValues
  i32.const 2
  call $~lib/array/Array<i32>#__get
  f32.convert_i32_s
  call $~lib/typedarray/Float32Array#__set
  local.get $1
  i32.const 121
  call $~lib/typedarray/Float32Array#forEach
  global.get $std/typedarray/forEachCallCount
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 462
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Float64Array,f64>~anonymous|0 (; 395 ;) (type $FUNCSIG$vdii) (param $0 f64) (param $1 i32) (param $2 i32)
  (local $3 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  global.get $std/typedarray/forEachValues
  local.get $1
  call $~lib/array/Array<i32>#__get
  local.set $3
  local.get $0
  local.get $3
  f64.convert_i32_s
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 457
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  global.get $std/typedarray/forEachCallCount
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 458
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/typedarray/forEachSelf
  local.get $2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 459
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
 (func $~lib/typedarray/Float64Array#forEach (; 396 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $3
  local.get $1
  local.set $2
  local.get $3
  i32.load offset=4
  local.set $4
  block $break|0
   i32.const 0
   local.set $5
   local.get $3
   call $~lib/typedarray/Float64Array#get:length
   local.set $6
   loop $loop|0
    local.get $5
    local.get $6
    i32.lt_s
    i32.eqz
    br_if $break|0
    i32.const 3
    global.set $~lib/argc
    local.get $4
    local.get $5
    i32.const 3
    i32.shl
    i32.add
    f64.load
    local.get $5
    local.get $3
    local.get $2
    call_indirect (type $FUNCSIG$vdii)
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $loop|0
   end
   unreachable
  end
  local.get $3
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Float64Array,f64> (; 397 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  i32.const 0
  global.set $std/typedarray/forEachCallCount
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Float64Array#constructor
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  global.set $std/typedarray/forEachSelf
  local.get $1
  i32.const 0
  global.get $std/typedarray/forEachValues
  i32.const 0
  call $~lib/array/Array<i32>#__get
  f64.convert_i32_s
  call $~lib/typedarray/Float64Array#__set
  local.get $1
  i32.const 1
  global.get $std/typedarray/forEachValues
  i32.const 1
  call $~lib/array/Array<i32>#__get
  f64.convert_i32_s
  call $~lib/typedarray/Float64Array#__set
  local.get $1
  i32.const 2
  global.get $std/typedarray/forEachValues
  i32.const 2
  call $~lib/array/Array<i32>#__get
  f64.convert_i32_s
  call $~lib/typedarray/Float64Array#__set
  local.get $1
  i32.const 122
  call $~lib/typedarray/Float64Array#forEach
  global.get $std/typedarray/forEachCallCount
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 462
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int8Array#reverse (; 398 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.load offset=4
  local.set $2
  block $break|0
   i32.const 0
   local.set $3
   local.get $1
   call $~lib/typedarray/Int8Array#get:length
   i32.const 1
   i32.sub
   local.set $4
   loop $loop|0
    local.get $3
    local.get $4
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $2
    local.get $3
    i32.const 0
    i32.shl
    i32.add
    local.set $5
    local.get $2
    local.get $4
    i32.const 0
    i32.shl
    i32.add
    local.set $6
    local.get $5
    i32.load8_s
    local.set $7
    local.get $5
    local.get $6
    i32.load8_s
    i32.store8
    local.get $6
    local.get $7
    i32.store8
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    local.get $4
    i32.const 1
    i32.sub
    local.set $4
    br $loop|0
   end
   unreachable
  end
  local.get $1
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Int8Array,i8> (; 399 ;) (type $FUNCSIG$v)
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
  local.set $0
  local.get $0
  call $~lib/array/Array<i32>#get:length
  local.set $1
  i32.const 0
  local.get $1
  call $~lib/typedarray/Int8Array#constructor
  local.tee $2
  call $~lib/rt/pure/__retain
  local.set $3
  i32.const 0
  local.get $1
  call $~lib/typedarray/Int8Array#constructor
  local.tee $4
  call $~lib/rt/pure/__retain
  local.set $5
  block $break|0
   i32.const 0
   local.set $6
   loop $loop|0
    local.get $6
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $3
    local.get $6
    local.get $0
    local.get $6
    call $~lib/array/Array<i32>#__get
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    call $~lib/typedarray/Int8Array#__set
    local.get $5
    local.get $6
    local.get $0
    local.get $6
    call $~lib/array/Array<i32>#__get
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    call $~lib/typedarray/Int8Array#__set
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $loop|0
   end
   unreachable
  end
  local.get $3
  call $~lib/typedarray/Int8Array#reverse
  call $~lib/rt/pure/__release
  block $break|1
   i32.const 0
   local.set $6
   loop $loop|1
    local.get $6
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|1
    local.get $3
    local.get $6
    call $~lib/typedarray/Int8Array#__get
    local.get $0
    local.get $1
    i32.const 1
    i32.sub
    local.get $6
    i32.sub
    call $~lib/array/Array<i32>#__get
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 491
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $loop|1
   end
   unreachable
  end
  local.get $5
  i32.const 4
  i32.const 8
  call $~lib/typedarray/Int8Array#subarray
  local.tee $6
  call $~lib/typedarray/Int8Array#reverse
  local.set $7
  local.get $7
  i32.const 0
  call $~lib/typedarray/Int8Array#__get
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 496
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.const 1
  call $~lib/typedarray/Int8Array#__get
  i32.const 7
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 497
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.const 2
  call $~lib/typedarray/Int8Array#__get
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 498
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.const 3
  call $~lib/typedarray/Int8Array#__get
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 499
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint8Array#reverse (; 400 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.load offset=4
  local.set $2
  block $break|0
   i32.const 0
   local.set $3
   local.get $1
   call $~lib/typedarray/Uint8Array#get:length
   i32.const 1
   i32.sub
   local.set $4
   loop $loop|0
    local.get $3
    local.get $4
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $2
    local.get $3
    i32.const 0
    i32.shl
    i32.add
    local.set $5
    local.get $2
    local.get $4
    i32.const 0
    i32.shl
    i32.add
    local.set $6
    local.get $5
    i32.load8_u
    local.set $7
    local.get $5
    local.get $6
    i32.load8_u
    i32.store8
    local.get $6
    local.get $7
    i32.store8
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    local.get $4
    i32.const 1
    i32.sub
    local.set $4
    br $loop|0
   end
   unreachable
  end
  local.get $1
 )
 (func $~lib/typedarray/Uint8Array#subarray (; 401 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $1
  local.set $4
  local.get $2
  local.set $3
  local.get $5
  call $~lib/typedarray/Uint8Array#get:length
  local.set $6
  local.get $4
  i32.const 0
  i32.lt_s
  if (result i32)
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
  else   
   local.get $4
   local.tee $7
   local.get $6
   local.tee $8
   local.get $7
   local.get $8
   i32.lt_s
   select
  end
  local.set $4
  local.get $3
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $6
   local.get $3
   i32.add
   local.tee $7
   i32.const 0
   local.tee $8
   local.get $7
   local.get $8
   i32.gt_s
   select
  else   
   local.get $3
   local.tee $7
   local.get $6
   local.tee $8
   local.get $7
   local.get $8
   i32.lt_s
   select
  end
  local.set $3
  local.get $3
  local.tee $7
  local.get $4
  local.tee $8
  local.get $7
  local.get $8
  i32.gt_s
  select
  local.set $3
  i32.const 12
  i32.const 4
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.set $7
  local.get $7
  local.tee $8
  local.get $5
  i32.load
  local.tee $9
  local.get $8
  i32.load
  local.tee $8
  i32.ne
  if
   local.get $9
   call $~lib/rt/pure/__retain
   drop
   local.get $8
   call $~lib/rt/pure/__release
  end
  local.get $9
  i32.store
  local.get $7
  local.get $5
  i32.load offset=4
  local.get $4
  i32.const 0
  i32.shl
  i32.add
  i32.store offset=4
  local.get $7
  local.get $3
  local.get $4
  i32.sub
  i32.const 0
  i32.shl
  i32.store offset=8
  local.get $7
  local.set $9
  local.get $5
  call $~lib/rt/pure/__release
  local.get $9
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Uint8Array,u8> (; 402 ;) (type $FUNCSIG$v)
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
  local.set $0
  local.get $0
  call $~lib/array/Array<i32>#get:length
  local.set $1
  i32.const 0
  local.get $1
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $2
  call $~lib/rt/pure/__retain
  local.set $3
  i32.const 0
  local.get $1
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $4
  call $~lib/rt/pure/__retain
  local.set $5
  block $break|0
   i32.const 0
   local.set $6
   loop $loop|0
    local.get $6
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $3
    local.get $6
    local.get $0
    local.get $6
    call $~lib/array/Array<i32>#__get
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__set
    local.get $5
    local.get $6
    local.get $0
    local.get $6
    call $~lib/array/Array<i32>#__get
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__set
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $loop|0
   end
   unreachable
  end
  local.get $3
  call $~lib/typedarray/Uint8Array#reverse
  call $~lib/rt/pure/__release
  block $break|1
   i32.const 0
   local.set $6
   loop $loop|1
    local.get $6
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|1
    local.get $3
    local.get $6
    call $~lib/typedarray/Uint8Array#__get
    local.get $0
    local.get $1
    i32.const 1
    i32.sub
    local.get $6
    i32.sub
    call $~lib/array/Array<i32>#__get
    i32.const 255
    i32.and
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 491
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $loop|1
   end
   unreachable
  end
  local.get $5
  i32.const 4
  i32.const 8
  call $~lib/typedarray/Uint8Array#subarray
  local.tee $6
  call $~lib/typedarray/Uint8Array#reverse
  local.set $7
  local.get $7
  i32.const 0
  call $~lib/typedarray/Uint8Array#__get
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 496
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.const 1
  call $~lib/typedarray/Uint8Array#__get
  i32.const 7
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 497
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.const 2
  call $~lib/typedarray/Uint8Array#__get
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 498
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.const 3
  call $~lib/typedarray/Uint8Array#__get
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 499
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint8ClampedArray#reverse (; 403 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.load offset=4
  local.set $2
  block $break|0
   i32.const 0
   local.set $3
   local.get $1
   call $~lib/typedarray/Uint8ClampedArray#get:length
   i32.const 1
   i32.sub
   local.set $4
   loop $loop|0
    local.get $3
    local.get $4
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $2
    local.get $3
    i32.const 0
    i32.shl
    i32.add
    local.set $5
    local.get $2
    local.get $4
    i32.const 0
    i32.shl
    i32.add
    local.set $6
    local.get $5
    i32.load8_u
    local.set $7
    local.get $5
    local.get $6
    i32.load8_u
    i32.store8
    local.get $6
    local.get $7
    i32.store8
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    local.get $4
    i32.const 1
    i32.sub
    local.set $4
    br $loop|0
   end
   unreachable
  end
  local.get $1
 )
 (func $~lib/typedarray/Uint8ClampedArray#subarray (; 404 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $1
  local.set $4
  local.get $2
  local.set $3
  local.get $5
  call $~lib/typedarray/Uint8ClampedArray#get:length
  local.set $6
  local.get $4
  i32.const 0
  i32.lt_s
  if (result i32)
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
  else   
   local.get $4
   local.tee $7
   local.get $6
   local.tee $8
   local.get $7
   local.get $8
   i32.lt_s
   select
  end
  local.set $4
  local.get $3
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $6
   local.get $3
   i32.add
   local.tee $7
   i32.const 0
   local.tee $8
   local.get $7
   local.get $8
   i32.gt_s
   select
  else   
   local.get $3
   local.tee $7
   local.get $6
   local.tee $8
   local.get $7
   local.get $8
   i32.lt_s
   select
  end
  local.set $3
  local.get $3
  local.tee $7
  local.get $4
  local.tee $8
  local.get $7
  local.get $8
  i32.gt_s
  select
  local.set $3
  i32.const 12
  i32.const 5
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.set $7
  local.get $7
  local.tee $8
  local.get $5
  i32.load
  local.tee $9
  local.get $8
  i32.load
  local.tee $8
  i32.ne
  if
   local.get $9
   call $~lib/rt/pure/__retain
   drop
   local.get $8
   call $~lib/rt/pure/__release
  end
  local.get $9
  i32.store
  local.get $7
  local.get $5
  i32.load offset=4
  local.get $4
  i32.const 0
  i32.shl
  i32.add
  i32.store offset=4
  local.get $7
  local.get $3
  local.get $4
  i32.sub
  i32.const 0
  i32.shl
  i32.store offset=8
  local.get $7
  local.set $9
  local.get $5
  call $~lib/rt/pure/__release
  local.get $9
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Uint8ClampedArray,u8> (; 405 ;) (type $FUNCSIG$v)
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
  local.set $0
  local.get $0
  call $~lib/array/Array<i32>#get:length
  local.set $1
  i32.const 0
  local.get $1
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.tee $2
  call $~lib/rt/pure/__retain
  local.set $3
  i32.const 0
  local.get $1
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.tee $4
  call $~lib/rt/pure/__retain
  local.set $5
  block $break|0
   i32.const 0
   local.set $6
   loop $loop|0
    local.get $6
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $3
    local.get $6
    local.get $0
    local.get $6
    call $~lib/array/Array<i32>#__get
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8ClampedArray#__set
    local.get $5
    local.get $6
    local.get $0
    local.get $6
    call $~lib/array/Array<i32>#__get
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8ClampedArray#__set
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $loop|0
   end
   unreachable
  end
  local.get $3
  call $~lib/typedarray/Uint8ClampedArray#reverse
  call $~lib/rt/pure/__release
  block $break|1
   i32.const 0
   local.set $6
   loop $loop|1
    local.get $6
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|1
    local.get $3
    local.get $6
    call $~lib/typedarray/Uint8ClampedArray#__get
    local.get $0
    local.get $1
    i32.const 1
    i32.sub
    local.get $6
    i32.sub
    call $~lib/array/Array<i32>#__get
    i32.const 255
    i32.and
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 491
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $loop|1
   end
   unreachable
  end
  local.get $5
  i32.const 4
  i32.const 8
  call $~lib/typedarray/Uint8ClampedArray#subarray
  local.tee $6
  call $~lib/typedarray/Uint8ClampedArray#reverse
  local.set $7
  local.get $7
  i32.const 0
  call $~lib/typedarray/Uint8ClampedArray#__get
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 496
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.const 1
  call $~lib/typedarray/Uint8ClampedArray#__get
  i32.const 7
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 497
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.const 2
  call $~lib/typedarray/Uint8ClampedArray#__get
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 498
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#__get
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 499
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int16Array#reverse (; 406 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.load offset=4
  local.set $2
  block $break|0
   i32.const 0
   local.set $3
   local.get $1
   call $~lib/typedarray/Int16Array#get:length
   i32.const 1
   i32.sub
   local.set $4
   loop $loop|0
    local.get $3
    local.get $4
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $2
    local.get $3
    i32.const 1
    i32.shl
    i32.add
    local.set $5
    local.get $2
    local.get $4
    i32.const 1
    i32.shl
    i32.add
    local.set $6
    local.get $5
    i32.load16_s
    local.set $7
    local.get $5
    local.get $6
    i32.load16_s
    i32.store16
    local.get $6
    local.get $7
    i32.store16
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    local.get $4
    i32.const 1
    i32.sub
    local.set $4
    br $loop|0
   end
   unreachable
  end
  local.get $1
 )
 (func $~lib/typedarray/Int16Array#subarray (; 407 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $1
  local.set $4
  local.get $2
  local.set $3
  local.get $5
  call $~lib/typedarray/Int16Array#get:length
  local.set $6
  local.get $4
  i32.const 0
  i32.lt_s
  if (result i32)
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
  else   
   local.get $4
   local.tee $7
   local.get $6
   local.tee $8
   local.get $7
   local.get $8
   i32.lt_s
   select
  end
  local.set $4
  local.get $3
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $6
   local.get $3
   i32.add
   local.tee $7
   i32.const 0
   local.tee $8
   local.get $7
   local.get $8
   i32.gt_s
   select
  else   
   local.get $3
   local.tee $7
   local.get $6
   local.tee $8
   local.get $7
   local.get $8
   i32.lt_s
   select
  end
  local.set $3
  local.get $3
  local.tee $7
  local.get $4
  local.tee $8
  local.get $7
  local.get $8
  i32.gt_s
  select
  local.set $3
  i32.const 12
  i32.const 6
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.set $7
  local.get $7
  local.tee $8
  local.get $5
  i32.load
  local.tee $9
  local.get $8
  i32.load
  local.tee $8
  i32.ne
  if
   local.get $9
   call $~lib/rt/pure/__retain
   drop
   local.get $8
   call $~lib/rt/pure/__release
  end
  local.get $9
  i32.store
  local.get $7
  local.get $5
  i32.load offset=4
  local.get $4
  i32.const 1
  i32.shl
  i32.add
  i32.store offset=4
  local.get $7
  local.get $3
  local.get $4
  i32.sub
  i32.const 1
  i32.shl
  i32.store offset=8
  local.get $7
  local.set $9
  local.get $5
  call $~lib/rt/pure/__release
  local.get $9
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Int16Array,i16> (; 408 ;) (type $FUNCSIG$v)
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
  local.set $0
  local.get $0
  call $~lib/array/Array<i32>#get:length
  local.set $1
  i32.const 0
  local.get $1
  call $~lib/typedarray/Int16Array#constructor
  local.tee $2
  call $~lib/rt/pure/__retain
  local.set $3
  i32.const 0
  local.get $1
  call $~lib/typedarray/Int16Array#constructor
  local.tee $4
  call $~lib/rt/pure/__retain
  local.set $5
  block $break|0
   i32.const 0
   local.set $6
   loop $loop|0
    local.get $6
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $3
    local.get $6
    local.get $0
    local.get $6
    call $~lib/array/Array<i32>#__get
    i32.const 16
    i32.shl
    i32.const 16
    i32.shr_s
    call $~lib/typedarray/Int16Array#__set
    local.get $5
    local.get $6
    local.get $0
    local.get $6
    call $~lib/array/Array<i32>#__get
    i32.const 16
    i32.shl
    i32.const 16
    i32.shr_s
    call $~lib/typedarray/Int16Array#__set
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $loop|0
   end
   unreachable
  end
  local.get $3
  call $~lib/typedarray/Int16Array#reverse
  call $~lib/rt/pure/__release
  block $break|1
   i32.const 0
   local.set $6
   loop $loop|1
    local.get $6
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|1
    local.get $3
    local.get $6
    call $~lib/typedarray/Int16Array#__get
    local.get $0
    local.get $1
    i32.const 1
    i32.sub
    local.get $6
    i32.sub
    call $~lib/array/Array<i32>#__get
    i32.const 16
    i32.shl
    i32.const 16
    i32.shr_s
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 491
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $loop|1
   end
   unreachable
  end
  local.get $5
  i32.const 4
  i32.const 8
  call $~lib/typedarray/Int16Array#subarray
  local.tee $6
  call $~lib/typedarray/Int16Array#reverse
  local.set $7
  local.get $7
  i32.const 0
  call $~lib/typedarray/Int16Array#__get
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 496
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.const 1
  call $~lib/typedarray/Int16Array#__get
  i32.const 7
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 497
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.const 2
  call $~lib/typedarray/Int16Array#__get
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 498
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.const 3
  call $~lib/typedarray/Int16Array#__get
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 499
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint16Array#reverse (; 409 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.load offset=4
  local.set $2
  block $break|0
   i32.const 0
   local.set $3
   local.get $1
   call $~lib/typedarray/Uint16Array#get:length
   i32.const 1
   i32.sub
   local.set $4
   loop $loop|0
    local.get $3
    local.get $4
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $2
    local.get $3
    i32.const 1
    i32.shl
    i32.add
    local.set $5
    local.get $2
    local.get $4
    i32.const 1
    i32.shl
    i32.add
    local.set $6
    local.get $5
    i32.load16_u
    local.set $7
    local.get $5
    local.get $6
    i32.load16_u
    i32.store16
    local.get $6
    local.get $7
    i32.store16
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    local.get $4
    i32.const 1
    i32.sub
    local.set $4
    br $loop|0
   end
   unreachable
  end
  local.get $1
 )
 (func $~lib/typedarray/Uint16Array#subarray (; 410 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $1
  local.set $4
  local.get $2
  local.set $3
  local.get $5
  call $~lib/typedarray/Uint16Array#get:length
  local.set $6
  local.get $4
  i32.const 0
  i32.lt_s
  if (result i32)
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
  else   
   local.get $4
   local.tee $7
   local.get $6
   local.tee $8
   local.get $7
   local.get $8
   i32.lt_s
   select
  end
  local.set $4
  local.get $3
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $6
   local.get $3
   i32.add
   local.tee $7
   i32.const 0
   local.tee $8
   local.get $7
   local.get $8
   i32.gt_s
   select
  else   
   local.get $3
   local.tee $7
   local.get $6
   local.tee $8
   local.get $7
   local.get $8
   i32.lt_s
   select
  end
  local.set $3
  local.get $3
  local.tee $7
  local.get $4
  local.tee $8
  local.get $7
  local.get $8
  i32.gt_s
  select
  local.set $3
  i32.const 12
  i32.const 7
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.set $7
  local.get $7
  local.tee $8
  local.get $5
  i32.load
  local.tee $9
  local.get $8
  i32.load
  local.tee $8
  i32.ne
  if
   local.get $9
   call $~lib/rt/pure/__retain
   drop
   local.get $8
   call $~lib/rt/pure/__release
  end
  local.get $9
  i32.store
  local.get $7
  local.get $5
  i32.load offset=4
  local.get $4
  i32.const 1
  i32.shl
  i32.add
  i32.store offset=4
  local.get $7
  local.get $3
  local.get $4
  i32.sub
  i32.const 1
  i32.shl
  i32.store offset=8
  local.get $7
  local.set $9
  local.get $5
  call $~lib/rt/pure/__release
  local.get $9
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Uint16Array,u16> (; 411 ;) (type $FUNCSIG$v)
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
  local.set $0
  local.get $0
  call $~lib/array/Array<i32>#get:length
  local.set $1
  i32.const 0
  local.get $1
  call $~lib/typedarray/Uint16Array#constructor
  local.tee $2
  call $~lib/rt/pure/__retain
  local.set $3
  i32.const 0
  local.get $1
  call $~lib/typedarray/Uint16Array#constructor
  local.tee $4
  call $~lib/rt/pure/__retain
  local.set $5
  block $break|0
   i32.const 0
   local.set $6
   loop $loop|0
    local.get $6
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $3
    local.get $6
    local.get $0
    local.get $6
    call $~lib/array/Array<i32>#__get
    i32.const 65535
    i32.and
    call $~lib/typedarray/Uint16Array#__set
    local.get $5
    local.get $6
    local.get $0
    local.get $6
    call $~lib/array/Array<i32>#__get
    i32.const 65535
    i32.and
    call $~lib/typedarray/Uint16Array#__set
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $loop|0
   end
   unreachable
  end
  local.get $3
  call $~lib/typedarray/Uint16Array#reverse
  call $~lib/rt/pure/__release
  block $break|1
   i32.const 0
   local.set $6
   loop $loop|1
    local.get $6
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|1
    local.get $3
    local.get $6
    call $~lib/typedarray/Uint16Array#__get
    local.get $0
    local.get $1
    i32.const 1
    i32.sub
    local.get $6
    i32.sub
    call $~lib/array/Array<i32>#__get
    i32.const 65535
    i32.and
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 491
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $loop|1
   end
   unreachable
  end
  local.get $5
  i32.const 4
  i32.const 8
  call $~lib/typedarray/Uint16Array#subarray
  local.tee $6
  call $~lib/typedarray/Uint16Array#reverse
  local.set $7
  local.get $7
  i32.const 0
  call $~lib/typedarray/Uint16Array#__get
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 496
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.const 1
  call $~lib/typedarray/Uint16Array#__get
  i32.const 7
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 497
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.const 2
  call $~lib/typedarray/Uint16Array#__get
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 498
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.const 3
  call $~lib/typedarray/Uint16Array#__get
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 499
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int32Array#reverse (; 412 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.load offset=4
  local.set $2
  block $break|0
   i32.const 0
   local.set $3
   local.get $1
   call $~lib/typedarray/Int32Array#get:length
   i32.const 1
   i32.sub
   local.set $4
   loop $loop|0
    local.get $3
    local.get $4
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $2
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    local.set $5
    local.get $2
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    local.set $6
    local.get $5
    i32.load
    local.set $7
    local.get $5
    local.get $6
    i32.load
    i32.store
    local.get $6
    local.get $7
    i32.store
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    local.get $4
    i32.const 1
    i32.sub
    local.set $4
    br $loop|0
   end
   unreachable
  end
  local.get $1
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Int32Array,i32> (; 413 ;) (type $FUNCSIG$v)
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
  local.set $0
  local.get $0
  call $~lib/array/Array<i32>#get:length
  local.set $1
  i32.const 0
  local.get $1
  call $~lib/typedarray/Int32Array#constructor
  local.tee $2
  call $~lib/rt/pure/__retain
  local.set $3
  i32.const 0
  local.get $1
  call $~lib/typedarray/Int32Array#constructor
  local.tee $4
  call $~lib/rt/pure/__retain
  local.set $5
  block $break|0
   i32.const 0
   local.set $6
   loop $loop|0
    local.get $6
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $3
    local.get $6
    local.get $0
    local.get $6
    call $~lib/array/Array<i32>#__get
    call $~lib/typedarray/Int32Array#__set
    local.get $5
    local.get $6
    local.get $0
    local.get $6
    call $~lib/array/Array<i32>#__get
    call $~lib/typedarray/Int32Array#__set
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $loop|0
   end
   unreachable
  end
  local.get $3
  call $~lib/typedarray/Int32Array#reverse
  call $~lib/rt/pure/__release
  block $break|1
   i32.const 0
   local.set $6
   loop $loop|1
    local.get $6
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|1
    local.get $3
    local.get $6
    call $~lib/typedarray/Int32Array#__get
    local.get $0
    local.get $1
    i32.const 1
    i32.sub
    local.get $6
    i32.sub
    call $~lib/array/Array<i32>#__get
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 491
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $loop|1
   end
   unreachable
  end
  local.get $5
  i32.const 4
  i32.const 8
  call $~lib/typedarray/Int32Array#subarray
  local.tee $6
  call $~lib/typedarray/Int32Array#reverse
  local.set $7
  local.get $7
  i32.const 0
  call $~lib/typedarray/Int32Array#__get
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 496
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.const 1
  call $~lib/typedarray/Int32Array#__get
  i32.const 7
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 497
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.const 2
  call $~lib/typedarray/Int32Array#__get
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 498
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.const 3
  call $~lib/typedarray/Int32Array#__get
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 499
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint32Array#reverse (; 414 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.load offset=4
  local.set $2
  block $break|0
   i32.const 0
   local.set $3
   local.get $1
   call $~lib/typedarray/Uint32Array#get:length
   i32.const 1
   i32.sub
   local.set $4
   loop $loop|0
    local.get $3
    local.get $4
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $2
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    local.set $5
    local.get $2
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    local.set $6
    local.get $5
    i32.load
    local.set $7
    local.get $5
    local.get $6
    i32.load
    i32.store
    local.get $6
    local.get $7
    i32.store
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    local.get $4
    i32.const 1
    i32.sub
    local.set $4
    br $loop|0
   end
   unreachable
  end
  local.get $1
 )
 (func $~lib/typedarray/Uint32Array#subarray (; 415 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $1
  local.set $4
  local.get $2
  local.set $3
  local.get $5
  call $~lib/typedarray/Uint32Array#get:length
  local.set $6
  local.get $4
  i32.const 0
  i32.lt_s
  if (result i32)
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
  else   
   local.get $4
   local.tee $7
   local.get $6
   local.tee $8
   local.get $7
   local.get $8
   i32.lt_s
   select
  end
  local.set $4
  local.get $3
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $6
   local.get $3
   i32.add
   local.tee $7
   i32.const 0
   local.tee $8
   local.get $7
   local.get $8
   i32.gt_s
   select
  else   
   local.get $3
   local.tee $7
   local.get $6
   local.tee $8
   local.get $7
   local.get $8
   i32.lt_s
   select
  end
  local.set $3
  local.get $3
  local.tee $7
  local.get $4
  local.tee $8
  local.get $7
  local.get $8
  i32.gt_s
  select
  local.set $3
  i32.const 12
  i32.const 9
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.set $7
  local.get $7
  local.tee $8
  local.get $5
  i32.load
  local.tee $9
  local.get $8
  i32.load
  local.tee $8
  i32.ne
  if
   local.get $9
   call $~lib/rt/pure/__retain
   drop
   local.get $8
   call $~lib/rt/pure/__release
  end
  local.get $9
  i32.store
  local.get $7
  local.get $5
  i32.load offset=4
  local.get $4
  i32.const 2
  i32.shl
  i32.add
  i32.store offset=4
  local.get $7
  local.get $3
  local.get $4
  i32.sub
  i32.const 2
  i32.shl
  i32.store offset=8
  local.get $7
  local.set $9
  local.get $5
  call $~lib/rt/pure/__release
  local.get $9
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Uint32Array,u32> (; 416 ;) (type $FUNCSIG$v)
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
  local.set $0
  local.get $0
  call $~lib/array/Array<i32>#get:length
  local.set $1
  i32.const 0
  local.get $1
  call $~lib/typedarray/Uint32Array#constructor
  local.tee $2
  call $~lib/rt/pure/__retain
  local.set $3
  i32.const 0
  local.get $1
  call $~lib/typedarray/Uint32Array#constructor
  local.tee $4
  call $~lib/rt/pure/__retain
  local.set $5
  block $break|0
   i32.const 0
   local.set $6
   loop $loop|0
    local.get $6
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $3
    local.get $6
    local.get $0
    local.get $6
    call $~lib/array/Array<i32>#__get
    call $~lib/typedarray/Uint32Array#__set
    local.get $5
    local.get $6
    local.get $0
    local.get $6
    call $~lib/array/Array<i32>#__get
    call $~lib/typedarray/Uint32Array#__set
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $loop|0
   end
   unreachable
  end
  local.get $3
  call $~lib/typedarray/Uint32Array#reverse
  call $~lib/rt/pure/__release
  block $break|1
   i32.const 0
   local.set $6
   loop $loop|1
    local.get $6
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|1
    local.get $3
    local.get $6
    call $~lib/typedarray/Uint32Array#__get
    local.get $0
    local.get $1
    i32.const 1
    i32.sub
    local.get $6
    i32.sub
    call $~lib/array/Array<i32>#__get
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 491
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $loop|1
   end
   unreachable
  end
  local.get $5
  i32.const 4
  i32.const 8
  call $~lib/typedarray/Uint32Array#subarray
  local.tee $6
  call $~lib/typedarray/Uint32Array#reverse
  local.set $7
  local.get $7
  i32.const 0
  call $~lib/typedarray/Uint32Array#__get
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 496
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.const 1
  call $~lib/typedarray/Uint32Array#__get
  i32.const 7
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 497
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.const 2
  call $~lib/typedarray/Uint32Array#__get
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 498
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.const 3
  call $~lib/typedarray/Uint32Array#__get
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 499
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int64Array#reverse (; 417 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.load offset=4
  local.set $2
  block $break|0
   i32.const 0
   local.set $3
   local.get $1
   call $~lib/typedarray/Int64Array#get:length
   i32.const 1
   i32.sub
   local.set $4
   loop $loop|0
    local.get $3
    local.get $4
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $2
    local.get $3
    i32.const 3
    i32.shl
    i32.add
    local.set $5
    local.get $2
    local.get $4
    i32.const 3
    i32.shl
    i32.add
    local.set $6
    local.get $5
    i64.load
    local.set $7
    local.get $5
    local.get $6
    i64.load
    i64.store
    local.get $6
    local.get $7
    i64.store
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    local.get $4
    i32.const 1
    i32.sub
    local.set $4
    br $loop|0
   end
   unreachable
  end
  local.get $1
 )
 (func $~lib/typedarray/Int64Array#subarray (; 418 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $1
  local.set $4
  local.get $2
  local.set $3
  local.get $5
  call $~lib/typedarray/Int64Array#get:length
  local.set $6
  local.get $4
  i32.const 0
  i32.lt_s
  if (result i32)
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
  else   
   local.get $4
   local.tee $7
   local.get $6
   local.tee $8
   local.get $7
   local.get $8
   i32.lt_s
   select
  end
  local.set $4
  local.get $3
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $6
   local.get $3
   i32.add
   local.tee $7
   i32.const 0
   local.tee $8
   local.get $7
   local.get $8
   i32.gt_s
   select
  else   
   local.get $3
   local.tee $7
   local.get $6
   local.tee $8
   local.get $7
   local.get $8
   i32.lt_s
   select
  end
  local.set $3
  local.get $3
  local.tee $7
  local.get $4
  local.tee $8
  local.get $7
  local.get $8
  i32.gt_s
  select
  local.set $3
  i32.const 12
  i32.const 10
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.set $7
  local.get $7
  local.tee $8
  local.get $5
  i32.load
  local.tee $9
  local.get $8
  i32.load
  local.tee $8
  i32.ne
  if
   local.get $9
   call $~lib/rt/pure/__retain
   drop
   local.get $8
   call $~lib/rt/pure/__release
  end
  local.get $9
  i32.store
  local.get $7
  local.get $5
  i32.load offset=4
  local.get $4
  i32.const 3
  i32.shl
  i32.add
  i32.store offset=4
  local.get $7
  local.get $3
  local.get $4
  i32.sub
  i32.const 3
  i32.shl
  i32.store offset=8
  local.get $7
  local.set $9
  local.get $5
  call $~lib/rt/pure/__release
  local.get $9
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Int64Array,i64> (; 419 ;) (type $FUNCSIG$v)
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
  local.set $0
  local.get $0
  call $~lib/array/Array<i32>#get:length
  local.set $1
  i32.const 0
  local.get $1
  call $~lib/typedarray/Int64Array#constructor
  local.tee $2
  call $~lib/rt/pure/__retain
  local.set $3
  i32.const 0
  local.get $1
  call $~lib/typedarray/Int64Array#constructor
  local.tee $4
  call $~lib/rt/pure/__retain
  local.set $5
  block $break|0
   i32.const 0
   local.set $6
   loop $loop|0
    local.get $6
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $3
    local.get $6
    local.get $0
    local.get $6
    call $~lib/array/Array<i32>#__get
    i64.extend_i32_s
    call $~lib/typedarray/Int64Array#__set
    local.get $5
    local.get $6
    local.get $0
    local.get $6
    call $~lib/array/Array<i32>#__get
    i64.extend_i32_s
    call $~lib/typedarray/Int64Array#__set
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $loop|0
   end
   unreachable
  end
  local.get $3
  call $~lib/typedarray/Int64Array#reverse
  call $~lib/rt/pure/__release
  block $break|1
   i32.const 0
   local.set $6
   loop $loop|1
    local.get $6
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|1
    local.get $3
    local.get $6
    call $~lib/typedarray/Int64Array#__get
    local.get $0
    local.get $1
    i32.const 1
    i32.sub
    local.get $6
    i32.sub
    call $~lib/array/Array<i32>#__get
    i64.extend_i32_s
    i64.eq
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 491
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $loop|1
   end
   unreachable
  end
  local.get $5
  i32.const 4
  i32.const 8
  call $~lib/typedarray/Int64Array#subarray
  local.tee $6
  call $~lib/typedarray/Int64Array#reverse
  local.set $7
  local.get $7
  i32.const 0
  call $~lib/typedarray/Int64Array#__get
  i64.const 8
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 496
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.const 1
  call $~lib/typedarray/Int64Array#__get
  i64.const 7
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 497
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.const 2
  call $~lib/typedarray/Int64Array#__get
  i64.const 6
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 498
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.const 3
  call $~lib/typedarray/Int64Array#__get
  i64.const 5
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 499
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint64Array#reverse (; 420 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.load offset=4
  local.set $2
  block $break|0
   i32.const 0
   local.set $3
   local.get $1
   call $~lib/typedarray/Uint64Array#get:length
   i32.const 1
   i32.sub
   local.set $4
   loop $loop|0
    local.get $3
    local.get $4
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $2
    local.get $3
    i32.const 3
    i32.shl
    i32.add
    local.set $5
    local.get $2
    local.get $4
    i32.const 3
    i32.shl
    i32.add
    local.set $6
    local.get $5
    i64.load
    local.set $7
    local.get $5
    local.get $6
    i64.load
    i64.store
    local.get $6
    local.get $7
    i64.store
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    local.get $4
    i32.const 1
    i32.sub
    local.set $4
    br $loop|0
   end
   unreachable
  end
  local.get $1
 )
 (func $~lib/typedarray/Uint64Array#subarray (; 421 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $1
  local.set $4
  local.get $2
  local.set $3
  local.get $5
  call $~lib/typedarray/Uint64Array#get:length
  local.set $6
  local.get $4
  i32.const 0
  i32.lt_s
  if (result i32)
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
  else   
   local.get $4
   local.tee $7
   local.get $6
   local.tee $8
   local.get $7
   local.get $8
   i32.lt_s
   select
  end
  local.set $4
  local.get $3
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $6
   local.get $3
   i32.add
   local.tee $7
   i32.const 0
   local.tee $8
   local.get $7
   local.get $8
   i32.gt_s
   select
  else   
   local.get $3
   local.tee $7
   local.get $6
   local.tee $8
   local.get $7
   local.get $8
   i32.lt_s
   select
  end
  local.set $3
  local.get $3
  local.tee $7
  local.get $4
  local.tee $8
  local.get $7
  local.get $8
  i32.gt_s
  select
  local.set $3
  i32.const 12
  i32.const 11
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.set $7
  local.get $7
  local.tee $8
  local.get $5
  i32.load
  local.tee $9
  local.get $8
  i32.load
  local.tee $8
  i32.ne
  if
   local.get $9
   call $~lib/rt/pure/__retain
   drop
   local.get $8
   call $~lib/rt/pure/__release
  end
  local.get $9
  i32.store
  local.get $7
  local.get $5
  i32.load offset=4
  local.get $4
  i32.const 3
  i32.shl
  i32.add
  i32.store offset=4
  local.get $7
  local.get $3
  local.get $4
  i32.sub
  i32.const 3
  i32.shl
  i32.store offset=8
  local.get $7
  local.set $9
  local.get $5
  call $~lib/rt/pure/__release
  local.get $9
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Uint64Array,u64> (; 422 ;) (type $FUNCSIG$v)
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
  local.set $0
  local.get $0
  call $~lib/array/Array<i32>#get:length
  local.set $1
  i32.const 0
  local.get $1
  call $~lib/typedarray/Uint64Array#constructor
  local.tee $2
  call $~lib/rt/pure/__retain
  local.set $3
  i32.const 0
  local.get $1
  call $~lib/typedarray/Uint64Array#constructor
  local.tee $4
  call $~lib/rt/pure/__retain
  local.set $5
  block $break|0
   i32.const 0
   local.set $6
   loop $loop|0
    local.get $6
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $3
    local.get $6
    local.get $0
    local.get $6
    call $~lib/array/Array<i32>#__get
    i64.extend_i32_s
    call $~lib/typedarray/Uint64Array#__set
    local.get $5
    local.get $6
    local.get $0
    local.get $6
    call $~lib/array/Array<i32>#__get
    i64.extend_i32_s
    call $~lib/typedarray/Uint64Array#__set
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $loop|0
   end
   unreachable
  end
  local.get $3
  call $~lib/typedarray/Uint64Array#reverse
  call $~lib/rt/pure/__release
  block $break|1
   i32.const 0
   local.set $6
   loop $loop|1
    local.get $6
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|1
    local.get $3
    local.get $6
    call $~lib/typedarray/Uint64Array#__get
    local.get $0
    local.get $1
    i32.const 1
    i32.sub
    local.get $6
    i32.sub
    call $~lib/array/Array<i32>#__get
    i64.extend_i32_s
    i64.eq
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 491
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $loop|1
   end
   unreachable
  end
  local.get $5
  i32.const 4
  i32.const 8
  call $~lib/typedarray/Uint64Array#subarray
  local.tee $6
  call $~lib/typedarray/Uint64Array#reverse
  local.set $7
  local.get $7
  i32.const 0
  call $~lib/typedarray/Uint64Array#__get
  i64.const 8
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 496
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.const 1
  call $~lib/typedarray/Uint64Array#__get
  i64.const 7
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 497
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.const 2
  call $~lib/typedarray/Uint64Array#__get
  i64.const 6
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 498
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.const 3
  call $~lib/typedarray/Uint64Array#__get
  i64.const 5
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 499
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Float32Array#reverse (; 423 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 f32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.load offset=4
  local.set $2
  block $break|0
   i32.const 0
   local.set $3
   local.get $1
   call $~lib/typedarray/Float32Array#get:length
   i32.const 1
   i32.sub
   local.set $4
   loop $loop|0
    local.get $3
    local.get $4
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $2
    local.get $3
    i32.const 2
    i32.shl
    i32.add
    local.set $5
    local.get $2
    local.get $4
    i32.const 2
    i32.shl
    i32.add
    local.set $6
    local.get $5
    f32.load
    local.set $7
    local.get $5
    local.get $6
    f32.load
    f32.store
    local.get $6
    local.get $7
    f32.store
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    local.get $4
    i32.const 1
    i32.sub
    local.set $4
    br $loop|0
   end
   unreachable
  end
  local.get $1
 )
 (func $~lib/typedarray/Float32Array#subarray (; 424 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $1
  local.set $4
  local.get $2
  local.set $3
  local.get $5
  call $~lib/typedarray/Float32Array#get:length
  local.set $6
  local.get $4
  i32.const 0
  i32.lt_s
  if (result i32)
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
  else   
   local.get $4
   local.tee $7
   local.get $6
   local.tee $8
   local.get $7
   local.get $8
   i32.lt_s
   select
  end
  local.set $4
  local.get $3
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $6
   local.get $3
   i32.add
   local.tee $7
   i32.const 0
   local.tee $8
   local.get $7
   local.get $8
   i32.gt_s
   select
  else   
   local.get $3
   local.tee $7
   local.get $6
   local.tee $8
   local.get $7
   local.get $8
   i32.lt_s
   select
  end
  local.set $3
  local.get $3
  local.tee $7
  local.get $4
  local.tee $8
  local.get $7
  local.get $8
  i32.gt_s
  select
  local.set $3
  i32.const 12
  i32.const 12
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.set $7
  local.get $7
  local.tee $8
  local.get $5
  i32.load
  local.tee $9
  local.get $8
  i32.load
  local.tee $8
  i32.ne
  if
   local.get $9
   call $~lib/rt/pure/__retain
   drop
   local.get $8
   call $~lib/rt/pure/__release
  end
  local.get $9
  i32.store
  local.get $7
  local.get $5
  i32.load offset=4
  local.get $4
  i32.const 2
  i32.shl
  i32.add
  i32.store offset=4
  local.get $7
  local.get $3
  local.get $4
  i32.sub
  i32.const 2
  i32.shl
  i32.store offset=8
  local.get $7
  local.set $9
  local.get $5
  call $~lib/rt/pure/__release
  local.get $9
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Float32Array,f32> (; 425 ;) (type $FUNCSIG$v)
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
  local.set $0
  local.get $0
  call $~lib/array/Array<i32>#get:length
  local.set $1
  i32.const 0
  local.get $1
  call $~lib/typedarray/Float32Array#constructor
  local.tee $2
  call $~lib/rt/pure/__retain
  local.set $3
  i32.const 0
  local.get $1
  call $~lib/typedarray/Float32Array#constructor
  local.tee $4
  call $~lib/rt/pure/__retain
  local.set $5
  block $break|0
   i32.const 0
   local.set $6
   loop $loop|0
    local.get $6
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $3
    local.get $6
    local.get $0
    local.get $6
    call $~lib/array/Array<i32>#__get
    f32.convert_i32_s
    call $~lib/typedarray/Float32Array#__set
    local.get $5
    local.get $6
    local.get $0
    local.get $6
    call $~lib/array/Array<i32>#__get
    f32.convert_i32_s
    call $~lib/typedarray/Float32Array#__set
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $loop|0
   end
   unreachable
  end
  local.get $3
  call $~lib/typedarray/Float32Array#reverse
  call $~lib/rt/pure/__release
  block $break|1
   i32.const 0
   local.set $6
   loop $loop|1
    local.get $6
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|1
    local.get $3
    local.get $6
    call $~lib/typedarray/Float32Array#__get
    local.get $0
    local.get $1
    i32.const 1
    i32.sub
    local.get $6
    i32.sub
    call $~lib/array/Array<i32>#__get
    f32.convert_i32_s
    f32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 491
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $loop|1
   end
   unreachable
  end
  local.get $5
  i32.const 4
  i32.const 8
  call $~lib/typedarray/Float32Array#subarray
  local.tee $6
  call $~lib/typedarray/Float32Array#reverse
  local.set $7
  local.get $7
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  f32.const 8
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 496
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  f32.const 7
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 497
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.const 2
  call $~lib/typedarray/Float32Array#__get
  f32.const 6
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 498
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.const 3
  call $~lib/typedarray/Float32Array#__get
  f32.const 5
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 499
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Float64Array#reverse (; 426 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 f64)
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.load offset=4
  local.set $2
  block $break|0
   i32.const 0
   local.set $3
   local.get $1
   call $~lib/typedarray/Float64Array#get:length
   i32.const 1
   i32.sub
   local.set $4
   loop $loop|0
    local.get $3
    local.get $4
    i32.lt_u
    i32.eqz
    br_if $break|0
    local.get $2
    local.get $3
    i32.const 3
    i32.shl
    i32.add
    local.set $5
    local.get $2
    local.get $4
    i32.const 3
    i32.shl
    i32.add
    local.set $6
    local.get $5
    f64.load
    local.set $7
    local.get $5
    local.get $6
    f64.load
    f64.store
    local.get $6
    local.get $7
    f64.store
    local.get $3
    i32.const 1
    i32.add
    local.set $3
    local.get $4
    i32.const 1
    i32.sub
    local.set $4
    br $loop|0
   end
   unreachable
  end
  local.get $1
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Float64Array,f64> (; 427 ;) (type $FUNCSIG$v)
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
  local.set $0
  local.get $0
  call $~lib/array/Array<i32>#get:length
  local.set $1
  i32.const 0
  local.get $1
  call $~lib/typedarray/Float64Array#constructor
  local.tee $2
  call $~lib/rt/pure/__retain
  local.set $3
  i32.const 0
  local.get $1
  call $~lib/typedarray/Float64Array#constructor
  local.tee $4
  call $~lib/rt/pure/__retain
  local.set $5
  block $break|0
   i32.const 0
   local.set $6
   loop $loop|0
    local.get $6
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $3
    local.get $6
    local.get $0
    local.get $6
    call $~lib/array/Array<i32>#__get
    f64.convert_i32_s
    call $~lib/typedarray/Float64Array#__set
    local.get $5
    local.get $6
    local.get $0
    local.get $6
    call $~lib/array/Array<i32>#__get
    f64.convert_i32_s
    call $~lib/typedarray/Float64Array#__set
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $loop|0
   end
   unreachable
  end
  local.get $3
  call $~lib/typedarray/Float64Array#reverse
  call $~lib/rt/pure/__release
  block $break|1
   i32.const 0
   local.set $6
   loop $loop|1
    local.get $6
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|1
    local.get $3
    local.get $6
    call $~lib/typedarray/Float64Array#__get
    local.get $0
    local.get $1
    i32.const 1
    i32.sub
    local.get $6
    i32.sub
    call $~lib/array/Array<i32>#__get
    f64.convert_i32_s
    f64.eq
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 491
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $6
    i32.const 1
    i32.add
    local.set $6
    br $loop|1
   end
   unreachable
  end
  local.get $5
  i32.const 4
  i32.const 8
  call $~lib/typedarray/Float64Array#subarray
  local.tee $6
  call $~lib/typedarray/Float64Array#reverse
  local.set $7
  local.get $7
  i32.const 0
  call $~lib/typedarray/Float64Array#__get
  f64.const 8
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 496
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.const 1
  call $~lib/typedarray/Float64Array#__get
  f64.const 7
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 497
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.const 2
  call $~lib/typedarray/Float64Array#__get
  f64.const 6
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 498
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.const 3
  call $~lib/typedarray/Float64Array#__get
  f64.const 5
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 499
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int8Array#indexOf (; 428 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  block $~lib/typedarray/INDEX_OF<~lib/typedarray/Int8Array,i8>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   local.get $3
   local.set $6
   local.get $5
   call $~lib/typedarray/Int8Array#get:length
   local.set $7
   local.get $7
   i32.const 0
   i32.eq
   if (result i32)
    i32.const 1
   else    
    local.get $6
    local.get $7
    i32.ge_s
   end
   if
    i32.const -1
    local.set $8
    local.get $5
    call $~lib/rt/pure/__release
    local.get $8
    br $~lib/typedarray/INDEX_OF<~lib/typedarray/Int8Array,i8>|inlined.0
   end
   local.get $6
   i32.const 0
   i32.lt_s
   if
    local.get $7
    local.get $6
    i32.add
    local.tee $8
    i32.const 0
    local.tee $9
    local.get $8
    local.get $9
    i32.gt_s
    select
    local.set $6
   end
   local.get $5
   i32.load offset=4
   local.set $8
   block $break|0
    loop $continue|0
     local.get $6
     local.get $7
     i32.lt_s
     i32.eqz
     br_if $break|0
     local.get $8
     local.get $6
     i32.const 0
     i32.shl
     i32.add
     i32.load8_s
     local.get $4
     i32.const 24
     i32.shl
     i32.const 24
     i32.shr_s
     i32.eq
     if
      local.get $6
      local.set $9
      local.get $5
      call $~lib/rt/pure/__release
      local.get $9
      br $~lib/typedarray/INDEX_OF<~lib/typedarray/Int8Array,i8>|inlined.0
     end
     local.get $6
     i32.const 1
     i32.add
     local.set $6
     br $continue|0
    end
    unreachable
   end
   i32.const -1
   local.set $9
   local.get $5
   call $~lib/rt/pure/__release
   local.get $9
  end
 )
 (func $~lib/typedarray/Int8Array#lastIndexOf (; 429 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  block $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Int8Array,i8>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   local.get $3
   local.set $6
   local.get $5
   call $~lib/typedarray/Int8Array#get:length
   local.set $7
   local.get $7
   i32.const 0
   i32.eq
   if
    i32.const -1
    local.set $8
    local.get $5
    call $~lib/rt/pure/__release
    local.get $8
    br $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Int8Array,i8>|inlined.0
   end
   local.get $6
   i32.const 0
   i32.lt_s
   if
    local.get $7
    local.get $6
    i32.add
    local.set $6
   else    
    local.get $6
    local.get $7
    i32.ge_s
    if
     local.get $7
     i32.const 1
     i32.sub
     local.set $6
    end
   end
   local.get $5
   i32.load offset=4
   local.set $8
   block $break|0
    loop $continue|0
     local.get $6
     i32.const 0
     i32.ge_s
     i32.eqz
     br_if $break|0
     local.get $8
     local.get $6
     i32.const 0
     i32.shl
     i32.add
     i32.load8_s
     local.get $4
     i32.const 24
     i32.shl
     i32.const 24
     i32.shr_s
     i32.eq
     if
      local.get $6
      local.set $9
      local.get $5
      call $~lib/rt/pure/__release
      local.get $9
      br $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Int8Array,i8>|inlined.0
     end
     local.get $6
     i32.const 1
     i32.sub
     local.set $6
     br $continue|0
    end
    unreachable
   end
   i32.const -1
   local.set $9
   local.get $5
   call $~lib/rt/pure/__release
   local.get $9
  end
 )
 (func $~lib/typedarray/Int8Array#lastIndexOf|trampoline (; 430 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~lib/argc
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   local.get $0
   call $~lib/typedarray/Int8Array#get:length
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/typedarray/Int8Array#lastIndexOf
 )
 (func $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Int8Array,i8> (; 431 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $std/typedarray/testArrayIndexOfAndLastIndexOfValues
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $0
  call $~lib/array/Array<i32>#get:length
  local.set $1
  i32.const 0
  local.get $1
  call $~lib/typedarray/Int8Array#constructor
  local.tee $2
  call $~lib/rt/pure/__retain
  local.set $3
  block $break|0
   i32.const 0
   local.set $4
   loop $loop|0
    local.get $4
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $3
    local.get $4
    local.get $0
    local.get $4
    call $~lib/array/Array<i32>#__get
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    call $~lib/typedarray/Int8Array#__set
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $loop|0
   end
   unreachable
  end
  local.get $3
  i32.const 0
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 524
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 11
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 525
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const -1
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 526
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 527
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const 2
  call $~lib/typedarray/Int8Array#indexOf
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 528
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const 3
  call $~lib/typedarray/Int8Array#indexOf
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 529
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int8Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 530
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 1
  i32.const 10
  call $~lib/typedarray/Int8Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 531
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 1
  i32.const -100
  call $~lib/typedarray/Int8Array#indexOf
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 532
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $3
  i32.const 0
  i32.const 0
  call $~lib/typedarray/Int8Array#lastIndexOf|trampoline
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 534
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $3
  i32.const 11
  i32.const 0
  call $~lib/typedarray/Int8Array#lastIndexOf|trampoline
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 535
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $3
  i32.const -1
  i32.const 0
  call $~lib/typedarray/Int8Array#lastIndexOf|trampoline
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 536
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $3
  i32.const 3
  i32.const 0
  call $~lib/typedarray/Int8Array#lastIndexOf|trampoline
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 537
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int8Array#lastIndexOf
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 538
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const 3
  call $~lib/typedarray/Int8Array#lastIndexOf
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 539
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const 2
  call $~lib/typedarray/Int8Array#lastIndexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 540
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 1
  i32.const 100
  call $~lib/typedarray/Int8Array#lastIndexOf
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 541
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 1
  i32.const -10
  call $~lib/typedarray/Int8Array#lastIndexOf
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 542
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 1
  i32.const -11
  call $~lib/typedarray/Int8Array#lastIndexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 543
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 4
  i32.const 9
  call $~lib/typedarray/Int8Array#subarray
  local.set $5
  local.get $5
  i32.const 3
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 547
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.const 4
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 548
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.const 5
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 549
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.const 9
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 550
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.const 10
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 551
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.const 11
  i32.const 0
  call $~lib/typedarray/Int8Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 552
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.const 5
  i32.const 1
  call $~lib/typedarray/Int8Array#indexOf
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 553
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.const 5
  i32.const 2
  call $~lib/typedarray/Int8Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 554
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint8Array#indexOf (; 432 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  block $~lib/typedarray/INDEX_OF<~lib/typedarray/Uint8Array,u8>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   local.get $3
   local.set $6
   local.get $5
   call $~lib/typedarray/Uint8Array#get:length
   local.set $7
   local.get $7
   i32.const 0
   i32.eq
   if (result i32)
    i32.const 1
   else    
    local.get $6
    local.get $7
    i32.ge_s
   end
   if
    i32.const -1
    local.set $8
    local.get $5
    call $~lib/rt/pure/__release
    local.get $8
    br $~lib/typedarray/INDEX_OF<~lib/typedarray/Uint8Array,u8>|inlined.0
   end
   local.get $6
   i32.const 0
   i32.lt_s
   if
    local.get $7
    local.get $6
    i32.add
    local.tee $8
    i32.const 0
    local.tee $9
    local.get $8
    local.get $9
    i32.gt_s
    select
    local.set $6
   end
   local.get $5
   i32.load offset=4
   local.set $8
   block $break|0
    loop $continue|0
     local.get $6
     local.get $7
     i32.lt_s
     i32.eqz
     br_if $break|0
     local.get $8
     local.get $6
     i32.const 0
     i32.shl
     i32.add
     i32.load8_u
     local.get $4
     i32.const 255
     i32.and
     i32.eq
     if
      local.get $6
      local.set $9
      local.get $5
      call $~lib/rt/pure/__release
      local.get $9
      br $~lib/typedarray/INDEX_OF<~lib/typedarray/Uint8Array,u8>|inlined.0
     end
     local.get $6
     i32.const 1
     i32.add
     local.set $6
     br $continue|0
    end
    unreachable
   end
   i32.const -1
   local.set $9
   local.get $5
   call $~lib/rt/pure/__release
   local.get $9
  end
 )
 (func $~lib/typedarray/Uint8Array#lastIndexOf (; 433 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  block $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Uint8Array,u8>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   local.get $3
   local.set $6
   local.get $5
   call $~lib/typedarray/Uint8Array#get:length
   local.set $7
   local.get $7
   i32.const 0
   i32.eq
   if
    i32.const -1
    local.set $8
    local.get $5
    call $~lib/rt/pure/__release
    local.get $8
    br $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Uint8Array,u8>|inlined.0
   end
   local.get $6
   i32.const 0
   i32.lt_s
   if
    local.get $7
    local.get $6
    i32.add
    local.set $6
   else    
    local.get $6
    local.get $7
    i32.ge_s
    if
     local.get $7
     i32.const 1
     i32.sub
     local.set $6
    end
   end
   local.get $5
   i32.load offset=4
   local.set $8
   block $break|0
    loop $continue|0
     local.get $6
     i32.const 0
     i32.ge_s
     i32.eqz
     br_if $break|0
     local.get $8
     local.get $6
     i32.const 0
     i32.shl
     i32.add
     i32.load8_u
     local.get $4
     i32.const 255
     i32.and
     i32.eq
     if
      local.get $6
      local.set $9
      local.get $5
      call $~lib/rt/pure/__release
      local.get $9
      br $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Uint8Array,u8>|inlined.0
     end
     local.get $6
     i32.const 1
     i32.sub
     local.set $6
     br $continue|0
    end
    unreachable
   end
   i32.const -1
   local.set $9
   local.get $5
   call $~lib/rt/pure/__release
   local.get $9
  end
 )
 (func $~lib/typedarray/Uint8Array#lastIndexOf|trampoline (; 434 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~lib/argc
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   local.get $0
   call $~lib/typedarray/Uint8Array#get:length
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/typedarray/Uint8Array#lastIndexOf
 )
 (func $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Uint8Array,u8> (; 435 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $std/typedarray/testArrayIndexOfAndLastIndexOfValues
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $0
  call $~lib/array/Array<i32>#get:length
  local.set $1
  i32.const 0
  local.get $1
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $2
  call $~lib/rt/pure/__retain
  local.set $3
  block $break|0
   i32.const 0
   local.set $4
   loop $loop|0
    local.get $4
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $3
    local.get $4
    local.get $0
    local.get $4
    call $~lib/array/Array<i32>#__get
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__set
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $loop|0
   end
   unreachable
  end
  local.get $3
  i32.const 0
  i32.const 0
  call $~lib/typedarray/Uint8Array#indexOf
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 524
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 11
  i32.const 0
  call $~lib/typedarray/Uint8Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 525
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const -1
  i32.const 0
  call $~lib/typedarray/Uint8Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 526
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const 0
  call $~lib/typedarray/Uint8Array#indexOf
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 527
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const 2
  call $~lib/typedarray/Uint8Array#indexOf
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 528
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const 3
  call $~lib/typedarray/Uint8Array#indexOf
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 529
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Uint8Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 530
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 1
  i32.const 10
  call $~lib/typedarray/Uint8Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 531
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 1
  i32.const -100
  call $~lib/typedarray/Uint8Array#indexOf
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 532
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $3
  i32.const 0
  i32.const 0
  call $~lib/typedarray/Uint8Array#lastIndexOf|trampoline
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 534
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $3
  i32.const 11
  i32.const 0
  call $~lib/typedarray/Uint8Array#lastIndexOf|trampoline
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 535
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $3
  i32.const -1
  i32.const 0
  call $~lib/typedarray/Uint8Array#lastIndexOf|trampoline
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 536
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $3
  i32.const 3
  i32.const 0
  call $~lib/typedarray/Uint8Array#lastIndexOf|trampoline
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 537
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Uint8Array#lastIndexOf
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 538
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const 3
  call $~lib/typedarray/Uint8Array#lastIndexOf
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 539
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const 2
  call $~lib/typedarray/Uint8Array#lastIndexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 540
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 1
  i32.const 100
  call $~lib/typedarray/Uint8Array#lastIndexOf
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 541
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 1
  i32.const -10
  call $~lib/typedarray/Uint8Array#lastIndexOf
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 542
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 1
  i32.const -11
  call $~lib/typedarray/Uint8Array#lastIndexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 543
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 4
  i32.const 9
  call $~lib/typedarray/Uint8Array#subarray
  local.set $5
  local.get $5
  i32.const 3
  i32.const 0
  call $~lib/typedarray/Uint8Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 547
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.const 4
  i32.const 0
  call $~lib/typedarray/Uint8Array#indexOf
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 548
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.const 5
  i32.const 0
  call $~lib/typedarray/Uint8Array#indexOf
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 549
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.const 9
  i32.const 0
  call $~lib/typedarray/Uint8Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 550
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.const 10
  i32.const 0
  call $~lib/typedarray/Uint8Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 551
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.const 11
  i32.const 0
  call $~lib/typedarray/Uint8Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 552
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.const 5
  i32.const 1
  call $~lib/typedarray/Uint8Array#indexOf
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 553
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.const 5
  i32.const 2
  call $~lib/typedarray/Uint8Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 554
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint8ClampedArray#indexOf (; 436 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  block $~lib/typedarray/INDEX_OF<~lib/typedarray/Uint8ClampedArray,u8>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   local.get $3
   local.set $6
   local.get $5
   call $~lib/typedarray/Uint8ClampedArray#get:length
   local.set $7
   local.get $7
   i32.const 0
   i32.eq
   if (result i32)
    i32.const 1
   else    
    local.get $6
    local.get $7
    i32.ge_s
   end
   if
    i32.const -1
    local.set $8
    local.get $5
    call $~lib/rt/pure/__release
    local.get $8
    br $~lib/typedarray/INDEX_OF<~lib/typedarray/Uint8ClampedArray,u8>|inlined.0
   end
   local.get $6
   i32.const 0
   i32.lt_s
   if
    local.get $7
    local.get $6
    i32.add
    local.tee $8
    i32.const 0
    local.tee $9
    local.get $8
    local.get $9
    i32.gt_s
    select
    local.set $6
   end
   local.get $5
   i32.load offset=4
   local.set $8
   block $break|0
    loop $continue|0
     local.get $6
     local.get $7
     i32.lt_s
     i32.eqz
     br_if $break|0
     local.get $8
     local.get $6
     i32.const 0
     i32.shl
     i32.add
     i32.load8_u
     local.get $4
     i32.const 255
     i32.and
     i32.eq
     if
      local.get $6
      local.set $9
      local.get $5
      call $~lib/rt/pure/__release
      local.get $9
      br $~lib/typedarray/INDEX_OF<~lib/typedarray/Uint8ClampedArray,u8>|inlined.0
     end
     local.get $6
     i32.const 1
     i32.add
     local.set $6
     br $continue|0
    end
    unreachable
   end
   i32.const -1
   local.set $9
   local.get $5
   call $~lib/rt/pure/__release
   local.get $9
  end
 )
 (func $~lib/typedarray/Uint8ClampedArray#lastIndexOf (; 437 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  block $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Uint8ClampedArray,u8>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   local.get $3
   local.set $6
   local.get $5
   call $~lib/typedarray/Uint8ClampedArray#get:length
   local.set $7
   local.get $7
   i32.const 0
   i32.eq
   if
    i32.const -1
    local.set $8
    local.get $5
    call $~lib/rt/pure/__release
    local.get $8
    br $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Uint8ClampedArray,u8>|inlined.0
   end
   local.get $6
   i32.const 0
   i32.lt_s
   if
    local.get $7
    local.get $6
    i32.add
    local.set $6
   else    
    local.get $6
    local.get $7
    i32.ge_s
    if
     local.get $7
     i32.const 1
     i32.sub
     local.set $6
    end
   end
   local.get $5
   i32.load offset=4
   local.set $8
   block $break|0
    loop $continue|0
     local.get $6
     i32.const 0
     i32.ge_s
     i32.eqz
     br_if $break|0
     local.get $8
     local.get $6
     i32.const 0
     i32.shl
     i32.add
     i32.load8_u
     local.get $4
     i32.const 255
     i32.and
     i32.eq
     if
      local.get $6
      local.set $9
      local.get $5
      call $~lib/rt/pure/__release
      local.get $9
      br $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Uint8ClampedArray,u8>|inlined.0
     end
     local.get $6
     i32.const 1
     i32.sub
     local.set $6
     br $continue|0
    end
    unreachable
   end
   i32.const -1
   local.set $9
   local.get $5
   call $~lib/rt/pure/__release
   local.get $9
  end
 )
 (func $~lib/typedarray/Uint8ClampedArray#lastIndexOf|trampoline (; 438 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~lib/argc
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   local.get $0
   call $~lib/typedarray/Uint8ClampedArray#get:length
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/typedarray/Uint8ClampedArray#lastIndexOf
 )
 (func $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Uint8ClampedArray,u8> (; 439 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $std/typedarray/testArrayIndexOfAndLastIndexOfValues
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $0
  call $~lib/array/Array<i32>#get:length
  local.set $1
  i32.const 0
  local.get $1
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.tee $2
  call $~lib/rt/pure/__retain
  local.set $3
  block $break|0
   i32.const 0
   local.set $4
   loop $loop|0
    local.get $4
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $3
    local.get $4
    local.get $0
    local.get $4
    call $~lib/array/Array<i32>#__get
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8ClampedArray#__set
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $loop|0
   end
   unreachable
  end
  local.get $3
  i32.const 0
  i32.const 0
  call $~lib/typedarray/Uint8ClampedArray#indexOf
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 524
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 11
  i32.const 0
  call $~lib/typedarray/Uint8ClampedArray#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 525
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const -1
  i32.const 0
  call $~lib/typedarray/Uint8ClampedArray#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 526
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const 0
  call $~lib/typedarray/Uint8ClampedArray#indexOf
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 527
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const 2
  call $~lib/typedarray/Uint8ClampedArray#indexOf
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 528
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#indexOf
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 529
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Uint8ClampedArray#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 530
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 1
  i32.const 10
  call $~lib/typedarray/Uint8ClampedArray#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 531
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 1
  i32.const -100
  call $~lib/typedarray/Uint8ClampedArray#indexOf
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 532
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $3
  i32.const 0
  i32.const 0
  call $~lib/typedarray/Uint8ClampedArray#lastIndexOf|trampoline
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 534
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $3
  i32.const 11
  i32.const 0
  call $~lib/typedarray/Uint8ClampedArray#lastIndexOf|trampoline
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 535
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $3
  i32.const -1
  i32.const 0
  call $~lib/typedarray/Uint8ClampedArray#lastIndexOf|trampoline
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 536
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $3
  i32.const 3
  i32.const 0
  call $~lib/typedarray/Uint8ClampedArray#lastIndexOf|trampoline
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 537
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Uint8ClampedArray#lastIndexOf
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 538
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#lastIndexOf
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 539
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const 2
  call $~lib/typedarray/Uint8ClampedArray#lastIndexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 540
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 1
  i32.const 100
  call $~lib/typedarray/Uint8ClampedArray#lastIndexOf
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 541
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 1
  i32.const -10
  call $~lib/typedarray/Uint8ClampedArray#lastIndexOf
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 542
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 1
  i32.const -11
  call $~lib/typedarray/Uint8ClampedArray#lastIndexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 543
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 4
  i32.const 9
  call $~lib/typedarray/Uint8ClampedArray#subarray
  local.set $5
  local.get $5
  i32.const 3
  i32.const 0
  call $~lib/typedarray/Uint8ClampedArray#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 547
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.const 4
  i32.const 0
  call $~lib/typedarray/Uint8ClampedArray#indexOf
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 548
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.const 5
  i32.const 0
  call $~lib/typedarray/Uint8ClampedArray#indexOf
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 549
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.const 9
  i32.const 0
  call $~lib/typedarray/Uint8ClampedArray#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 550
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.const 10
  i32.const 0
  call $~lib/typedarray/Uint8ClampedArray#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 551
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.const 11
  i32.const 0
  call $~lib/typedarray/Uint8ClampedArray#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 552
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.const 5
  i32.const 1
  call $~lib/typedarray/Uint8ClampedArray#indexOf
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 553
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.const 5
  i32.const 2
  call $~lib/typedarray/Uint8ClampedArray#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 554
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int16Array#indexOf (; 440 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  block $~lib/typedarray/INDEX_OF<~lib/typedarray/Int16Array,i16>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   local.get $3
   local.set $6
   local.get $5
   call $~lib/typedarray/Int16Array#get:length
   local.set $7
   local.get $7
   i32.const 0
   i32.eq
   if (result i32)
    i32.const 1
   else    
    local.get $6
    local.get $7
    i32.ge_s
   end
   if
    i32.const -1
    local.set $8
    local.get $5
    call $~lib/rt/pure/__release
    local.get $8
    br $~lib/typedarray/INDEX_OF<~lib/typedarray/Int16Array,i16>|inlined.0
   end
   local.get $6
   i32.const 0
   i32.lt_s
   if
    local.get $7
    local.get $6
    i32.add
    local.tee $8
    i32.const 0
    local.tee $9
    local.get $8
    local.get $9
    i32.gt_s
    select
    local.set $6
   end
   local.get $5
   i32.load offset=4
   local.set $8
   block $break|0
    loop $continue|0
     local.get $6
     local.get $7
     i32.lt_s
     i32.eqz
     br_if $break|0
     local.get $8
     local.get $6
     i32.const 1
     i32.shl
     i32.add
     i32.load16_s
     local.get $4
     i32.const 16
     i32.shl
     i32.const 16
     i32.shr_s
     i32.eq
     if
      local.get $6
      local.set $9
      local.get $5
      call $~lib/rt/pure/__release
      local.get $9
      br $~lib/typedarray/INDEX_OF<~lib/typedarray/Int16Array,i16>|inlined.0
     end
     local.get $6
     i32.const 1
     i32.add
     local.set $6
     br $continue|0
    end
    unreachable
   end
   i32.const -1
   local.set $9
   local.get $5
   call $~lib/rt/pure/__release
   local.get $9
  end
 )
 (func $~lib/typedarray/Int16Array#lastIndexOf (; 441 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  block $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Int16Array,i16>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   local.get $3
   local.set $6
   local.get $5
   call $~lib/typedarray/Int16Array#get:length
   local.set $7
   local.get $7
   i32.const 0
   i32.eq
   if
    i32.const -1
    local.set $8
    local.get $5
    call $~lib/rt/pure/__release
    local.get $8
    br $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Int16Array,i16>|inlined.0
   end
   local.get $6
   i32.const 0
   i32.lt_s
   if
    local.get $7
    local.get $6
    i32.add
    local.set $6
   else    
    local.get $6
    local.get $7
    i32.ge_s
    if
     local.get $7
     i32.const 1
     i32.sub
     local.set $6
    end
   end
   local.get $5
   i32.load offset=4
   local.set $8
   block $break|0
    loop $continue|0
     local.get $6
     i32.const 0
     i32.ge_s
     i32.eqz
     br_if $break|0
     local.get $8
     local.get $6
     i32.const 1
     i32.shl
     i32.add
     i32.load16_s
     local.get $4
     i32.const 16
     i32.shl
     i32.const 16
     i32.shr_s
     i32.eq
     if
      local.get $6
      local.set $9
      local.get $5
      call $~lib/rt/pure/__release
      local.get $9
      br $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Int16Array,i16>|inlined.0
     end
     local.get $6
     i32.const 1
     i32.sub
     local.set $6
     br $continue|0
    end
    unreachable
   end
   i32.const -1
   local.set $9
   local.get $5
   call $~lib/rt/pure/__release
   local.get $9
  end
 )
 (func $~lib/typedarray/Int16Array#lastIndexOf|trampoline (; 442 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~lib/argc
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   local.get $0
   call $~lib/typedarray/Int16Array#get:length
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/typedarray/Int16Array#lastIndexOf
 )
 (func $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Int16Array,i16> (; 443 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $std/typedarray/testArrayIndexOfAndLastIndexOfValues
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $0
  call $~lib/array/Array<i32>#get:length
  local.set $1
  i32.const 0
  local.get $1
  call $~lib/typedarray/Int16Array#constructor
  local.tee $2
  call $~lib/rt/pure/__retain
  local.set $3
  block $break|0
   i32.const 0
   local.set $4
   loop $loop|0
    local.get $4
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $3
    local.get $4
    local.get $0
    local.get $4
    call $~lib/array/Array<i32>#__get
    i32.const 16
    i32.shl
    i32.const 16
    i32.shr_s
    call $~lib/typedarray/Int16Array#__set
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $loop|0
   end
   unreachable
  end
  local.get $3
  i32.const 0
  i32.const 0
  call $~lib/typedarray/Int16Array#indexOf
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 524
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 11
  i32.const 0
  call $~lib/typedarray/Int16Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 525
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const -1
  i32.const 0
  call $~lib/typedarray/Int16Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 526
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const 0
  call $~lib/typedarray/Int16Array#indexOf
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 527
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const 2
  call $~lib/typedarray/Int16Array#indexOf
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 528
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const 3
  call $~lib/typedarray/Int16Array#indexOf
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 529
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int16Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 530
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 1
  i32.const 10
  call $~lib/typedarray/Int16Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 531
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 1
  i32.const -100
  call $~lib/typedarray/Int16Array#indexOf
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 532
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $3
  i32.const 0
  i32.const 0
  call $~lib/typedarray/Int16Array#lastIndexOf|trampoline
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 534
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $3
  i32.const 11
  i32.const 0
  call $~lib/typedarray/Int16Array#lastIndexOf|trampoline
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 535
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $3
  i32.const -1
  i32.const 0
  call $~lib/typedarray/Int16Array#lastIndexOf|trampoline
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 536
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $3
  i32.const 3
  i32.const 0
  call $~lib/typedarray/Int16Array#lastIndexOf|trampoline
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 537
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int16Array#lastIndexOf
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 538
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const 3
  call $~lib/typedarray/Int16Array#lastIndexOf
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 539
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const 2
  call $~lib/typedarray/Int16Array#lastIndexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 540
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 1
  i32.const 100
  call $~lib/typedarray/Int16Array#lastIndexOf
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 541
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 1
  i32.const -10
  call $~lib/typedarray/Int16Array#lastIndexOf
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 542
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 1
  i32.const -11
  call $~lib/typedarray/Int16Array#lastIndexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 543
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 4
  i32.const 9
  call $~lib/typedarray/Int16Array#subarray
  local.set $5
  local.get $5
  i32.const 3
  i32.const 0
  call $~lib/typedarray/Int16Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 547
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.const 4
  i32.const 0
  call $~lib/typedarray/Int16Array#indexOf
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 548
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.const 5
  i32.const 0
  call $~lib/typedarray/Int16Array#indexOf
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 549
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.const 9
  i32.const 0
  call $~lib/typedarray/Int16Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 550
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.const 10
  i32.const 0
  call $~lib/typedarray/Int16Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 551
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.const 11
  i32.const 0
  call $~lib/typedarray/Int16Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 552
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.const 5
  i32.const 1
  call $~lib/typedarray/Int16Array#indexOf
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 553
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.const 5
  i32.const 2
  call $~lib/typedarray/Int16Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 554
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint16Array#indexOf (; 444 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  block $~lib/typedarray/INDEX_OF<~lib/typedarray/Uint16Array,u16>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   local.get $3
   local.set $6
   local.get $5
   call $~lib/typedarray/Uint16Array#get:length
   local.set $7
   local.get $7
   i32.const 0
   i32.eq
   if (result i32)
    i32.const 1
   else    
    local.get $6
    local.get $7
    i32.ge_s
   end
   if
    i32.const -1
    local.set $8
    local.get $5
    call $~lib/rt/pure/__release
    local.get $8
    br $~lib/typedarray/INDEX_OF<~lib/typedarray/Uint16Array,u16>|inlined.0
   end
   local.get $6
   i32.const 0
   i32.lt_s
   if
    local.get $7
    local.get $6
    i32.add
    local.tee $8
    i32.const 0
    local.tee $9
    local.get $8
    local.get $9
    i32.gt_s
    select
    local.set $6
   end
   local.get $5
   i32.load offset=4
   local.set $8
   block $break|0
    loop $continue|0
     local.get $6
     local.get $7
     i32.lt_s
     i32.eqz
     br_if $break|0
     local.get $8
     local.get $6
     i32.const 1
     i32.shl
     i32.add
     i32.load16_u
     local.get $4
     i32.const 65535
     i32.and
     i32.eq
     if
      local.get $6
      local.set $9
      local.get $5
      call $~lib/rt/pure/__release
      local.get $9
      br $~lib/typedarray/INDEX_OF<~lib/typedarray/Uint16Array,u16>|inlined.0
     end
     local.get $6
     i32.const 1
     i32.add
     local.set $6
     br $continue|0
    end
    unreachable
   end
   i32.const -1
   local.set $9
   local.get $5
   call $~lib/rt/pure/__release
   local.get $9
  end
 )
 (func $~lib/typedarray/Uint16Array#lastIndexOf (; 445 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  block $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Uint16Array,u16>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   local.get $3
   local.set $6
   local.get $5
   call $~lib/typedarray/Uint16Array#get:length
   local.set $7
   local.get $7
   i32.const 0
   i32.eq
   if
    i32.const -1
    local.set $8
    local.get $5
    call $~lib/rt/pure/__release
    local.get $8
    br $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Uint16Array,u16>|inlined.0
   end
   local.get $6
   i32.const 0
   i32.lt_s
   if
    local.get $7
    local.get $6
    i32.add
    local.set $6
   else    
    local.get $6
    local.get $7
    i32.ge_s
    if
     local.get $7
     i32.const 1
     i32.sub
     local.set $6
    end
   end
   local.get $5
   i32.load offset=4
   local.set $8
   block $break|0
    loop $continue|0
     local.get $6
     i32.const 0
     i32.ge_s
     i32.eqz
     br_if $break|0
     local.get $8
     local.get $6
     i32.const 1
     i32.shl
     i32.add
     i32.load16_u
     local.get $4
     i32.const 65535
     i32.and
     i32.eq
     if
      local.get $6
      local.set $9
      local.get $5
      call $~lib/rt/pure/__release
      local.get $9
      br $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Uint16Array,u16>|inlined.0
     end
     local.get $6
     i32.const 1
     i32.sub
     local.set $6
     br $continue|0
    end
    unreachable
   end
   i32.const -1
   local.set $9
   local.get $5
   call $~lib/rt/pure/__release
   local.get $9
  end
 )
 (func $~lib/typedarray/Uint16Array#lastIndexOf|trampoline (; 446 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~lib/argc
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   local.get $0
   call $~lib/typedarray/Uint16Array#get:length
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/typedarray/Uint16Array#lastIndexOf
 )
 (func $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Uint16Array,u16> (; 447 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $std/typedarray/testArrayIndexOfAndLastIndexOfValues
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $0
  call $~lib/array/Array<i32>#get:length
  local.set $1
  i32.const 0
  local.get $1
  call $~lib/typedarray/Uint16Array#constructor
  local.tee $2
  call $~lib/rt/pure/__retain
  local.set $3
  block $break|0
   i32.const 0
   local.set $4
   loop $loop|0
    local.get $4
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $3
    local.get $4
    local.get $0
    local.get $4
    call $~lib/array/Array<i32>#__get
    i32.const 65535
    i32.and
    call $~lib/typedarray/Uint16Array#__set
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $loop|0
   end
   unreachable
  end
  local.get $3
  i32.const 0
  i32.const 0
  call $~lib/typedarray/Uint16Array#indexOf
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 524
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 11
  i32.const 0
  call $~lib/typedarray/Uint16Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 525
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const -1
  i32.const 0
  call $~lib/typedarray/Uint16Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 526
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const 0
  call $~lib/typedarray/Uint16Array#indexOf
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 527
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const 2
  call $~lib/typedarray/Uint16Array#indexOf
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 528
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const 3
  call $~lib/typedarray/Uint16Array#indexOf
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 529
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Uint16Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 530
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 1
  i32.const 10
  call $~lib/typedarray/Uint16Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 531
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 1
  i32.const -100
  call $~lib/typedarray/Uint16Array#indexOf
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 532
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $3
  i32.const 0
  i32.const 0
  call $~lib/typedarray/Uint16Array#lastIndexOf|trampoline
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 534
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $3
  i32.const 11
  i32.const 0
  call $~lib/typedarray/Uint16Array#lastIndexOf|trampoline
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 535
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $3
  i32.const -1
  i32.const 0
  call $~lib/typedarray/Uint16Array#lastIndexOf|trampoline
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 536
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $3
  i32.const 3
  i32.const 0
  call $~lib/typedarray/Uint16Array#lastIndexOf|trampoline
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 537
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Uint16Array#lastIndexOf
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 538
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const 3
  call $~lib/typedarray/Uint16Array#lastIndexOf
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 539
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const 2
  call $~lib/typedarray/Uint16Array#lastIndexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 540
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 1
  i32.const 100
  call $~lib/typedarray/Uint16Array#lastIndexOf
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 541
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 1
  i32.const -10
  call $~lib/typedarray/Uint16Array#lastIndexOf
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 542
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 1
  i32.const -11
  call $~lib/typedarray/Uint16Array#lastIndexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 543
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 4
  i32.const 9
  call $~lib/typedarray/Uint16Array#subarray
  local.set $5
  local.get $5
  i32.const 3
  i32.const 0
  call $~lib/typedarray/Uint16Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 547
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.const 4
  i32.const 0
  call $~lib/typedarray/Uint16Array#indexOf
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 548
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.const 5
  i32.const 0
  call $~lib/typedarray/Uint16Array#indexOf
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 549
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.const 9
  i32.const 0
  call $~lib/typedarray/Uint16Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 550
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.const 10
  i32.const 0
  call $~lib/typedarray/Uint16Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 551
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.const 11
  i32.const 0
  call $~lib/typedarray/Uint16Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 552
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.const 5
  i32.const 1
  call $~lib/typedarray/Uint16Array#indexOf
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 553
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.const 5
  i32.const 2
  call $~lib/typedarray/Uint16Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 554
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int32Array#indexOf (; 448 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  block $~lib/typedarray/INDEX_OF<~lib/typedarray/Int32Array,i32>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   local.get $3
   local.set $6
   local.get $5
   call $~lib/typedarray/Int32Array#get:length
   local.set $7
   local.get $7
   i32.const 0
   i32.eq
   if (result i32)
    i32.const 1
   else    
    local.get $6
    local.get $7
    i32.ge_s
   end
   if
    i32.const -1
    local.set $8
    local.get $5
    call $~lib/rt/pure/__release
    local.get $8
    br $~lib/typedarray/INDEX_OF<~lib/typedarray/Int32Array,i32>|inlined.0
   end
   local.get $6
   i32.const 0
   i32.lt_s
   if
    local.get $7
    local.get $6
    i32.add
    local.tee $8
    i32.const 0
    local.tee $9
    local.get $8
    local.get $9
    i32.gt_s
    select
    local.set $6
   end
   local.get $5
   i32.load offset=4
   local.set $8
   block $break|0
    loop $continue|0
     local.get $6
     local.get $7
     i32.lt_s
     i32.eqz
     br_if $break|0
     local.get $8
     local.get $6
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.get $4
     i32.eq
     if
      local.get $6
      local.set $9
      local.get $5
      call $~lib/rt/pure/__release
      local.get $9
      br $~lib/typedarray/INDEX_OF<~lib/typedarray/Int32Array,i32>|inlined.0
     end
     local.get $6
     i32.const 1
     i32.add
     local.set $6
     br $continue|0
    end
    unreachable
   end
   i32.const -1
   local.set $9
   local.get $5
   call $~lib/rt/pure/__release
   local.get $9
  end
 )
 (func $~lib/typedarray/Int32Array#lastIndexOf (; 449 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  block $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Int32Array,i32>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   local.get $3
   local.set $6
   local.get $5
   call $~lib/typedarray/Int32Array#get:length
   local.set $7
   local.get $7
   i32.const 0
   i32.eq
   if
    i32.const -1
    local.set $8
    local.get $5
    call $~lib/rt/pure/__release
    local.get $8
    br $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Int32Array,i32>|inlined.0
   end
   local.get $6
   i32.const 0
   i32.lt_s
   if
    local.get $7
    local.get $6
    i32.add
    local.set $6
   else    
    local.get $6
    local.get $7
    i32.ge_s
    if
     local.get $7
     i32.const 1
     i32.sub
     local.set $6
    end
   end
   local.get $5
   i32.load offset=4
   local.set $8
   block $break|0
    loop $continue|0
     local.get $6
     i32.const 0
     i32.ge_s
     i32.eqz
     br_if $break|0
     local.get $8
     local.get $6
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.get $4
     i32.eq
     if
      local.get $6
      local.set $9
      local.get $5
      call $~lib/rt/pure/__release
      local.get $9
      br $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Int32Array,i32>|inlined.0
     end
     local.get $6
     i32.const 1
     i32.sub
     local.set $6
     br $continue|0
    end
    unreachable
   end
   i32.const -1
   local.set $9
   local.get $5
   call $~lib/rt/pure/__release
   local.get $9
  end
 )
 (func $~lib/typedarray/Int32Array#lastIndexOf|trampoline (; 450 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~lib/argc
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   local.get $0
   call $~lib/typedarray/Int32Array#get:length
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/typedarray/Int32Array#lastIndexOf
 )
 (func $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Int32Array,i32> (; 451 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $std/typedarray/testArrayIndexOfAndLastIndexOfValues
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $0
  call $~lib/array/Array<i32>#get:length
  local.set $1
  i32.const 0
  local.get $1
  call $~lib/typedarray/Int32Array#constructor
  local.tee $2
  call $~lib/rt/pure/__retain
  local.set $3
  block $break|0
   i32.const 0
   local.set $4
   loop $loop|0
    local.get $4
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $3
    local.get $4
    local.get $0
    local.get $4
    call $~lib/array/Array<i32>#__get
    call $~lib/typedarray/Int32Array#__set
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $loop|0
   end
   unreachable
  end
  local.get $3
  i32.const 0
  i32.const 0
  call $~lib/typedarray/Int32Array#indexOf
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 524
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 11
  i32.const 0
  call $~lib/typedarray/Int32Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 525
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const -1
  i32.const 0
  call $~lib/typedarray/Int32Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 526
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const 0
  call $~lib/typedarray/Int32Array#indexOf
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 527
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const 2
  call $~lib/typedarray/Int32Array#indexOf
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 528
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const 3
  call $~lib/typedarray/Int32Array#indexOf
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 529
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int32Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 530
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 1
  i32.const 10
  call $~lib/typedarray/Int32Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 531
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 1
  i32.const -100
  call $~lib/typedarray/Int32Array#indexOf
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 532
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $3
  i32.const 0
  i32.const 0
  call $~lib/typedarray/Int32Array#lastIndexOf|trampoline
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 534
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $3
  i32.const 11
  i32.const 0
  call $~lib/typedarray/Int32Array#lastIndexOf|trampoline
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 535
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $3
  i32.const -1
  i32.const 0
  call $~lib/typedarray/Int32Array#lastIndexOf|trampoline
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 536
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $3
  i32.const 3
  i32.const 0
  call $~lib/typedarray/Int32Array#lastIndexOf|trampoline
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 537
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int32Array#lastIndexOf
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 538
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const 3
  call $~lib/typedarray/Int32Array#lastIndexOf
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 539
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const 2
  call $~lib/typedarray/Int32Array#lastIndexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 540
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 1
  i32.const 100
  call $~lib/typedarray/Int32Array#lastIndexOf
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 541
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 1
  i32.const -10
  call $~lib/typedarray/Int32Array#lastIndexOf
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 542
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 1
  i32.const -11
  call $~lib/typedarray/Int32Array#lastIndexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 543
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 4
  i32.const 9
  call $~lib/typedarray/Int32Array#subarray
  local.set $5
  local.get $5
  i32.const 3
  i32.const 0
  call $~lib/typedarray/Int32Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 547
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.const 4
  i32.const 0
  call $~lib/typedarray/Int32Array#indexOf
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 548
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.const 5
  i32.const 0
  call $~lib/typedarray/Int32Array#indexOf
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 549
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.const 9
  i32.const 0
  call $~lib/typedarray/Int32Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 550
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.const 10
  i32.const 0
  call $~lib/typedarray/Int32Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 551
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.const 11
  i32.const 0
  call $~lib/typedarray/Int32Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 552
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.const 5
  i32.const 1
  call $~lib/typedarray/Int32Array#indexOf
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 553
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.const 5
  i32.const 2
  call $~lib/typedarray/Int32Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 554
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint32Array#indexOf (; 452 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  block $~lib/typedarray/INDEX_OF<~lib/typedarray/Uint32Array,u32>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   local.get $3
   local.set $6
   local.get $5
   call $~lib/typedarray/Uint32Array#get:length
   local.set $7
   local.get $7
   i32.const 0
   i32.eq
   if (result i32)
    i32.const 1
   else    
    local.get $6
    local.get $7
    i32.ge_s
   end
   if
    i32.const -1
    local.set $8
    local.get $5
    call $~lib/rt/pure/__release
    local.get $8
    br $~lib/typedarray/INDEX_OF<~lib/typedarray/Uint32Array,u32>|inlined.0
   end
   local.get $6
   i32.const 0
   i32.lt_s
   if
    local.get $7
    local.get $6
    i32.add
    local.tee $8
    i32.const 0
    local.tee $9
    local.get $8
    local.get $9
    i32.gt_s
    select
    local.set $6
   end
   local.get $5
   i32.load offset=4
   local.set $8
   block $break|0
    loop $continue|0
     local.get $6
     local.get $7
     i32.lt_s
     i32.eqz
     br_if $break|0
     local.get $8
     local.get $6
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.get $4
     i32.eq
     if
      local.get $6
      local.set $9
      local.get $5
      call $~lib/rt/pure/__release
      local.get $9
      br $~lib/typedarray/INDEX_OF<~lib/typedarray/Uint32Array,u32>|inlined.0
     end
     local.get $6
     i32.const 1
     i32.add
     local.set $6
     br $continue|0
    end
    unreachable
   end
   i32.const -1
   local.set $9
   local.get $5
   call $~lib/rt/pure/__release
   local.get $9
  end
 )
 (func $~lib/typedarray/Uint32Array#lastIndexOf (; 453 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  block $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Uint32Array,u32>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   local.get $3
   local.set $6
   local.get $5
   call $~lib/typedarray/Uint32Array#get:length
   local.set $7
   local.get $7
   i32.const 0
   i32.eq
   if
    i32.const -1
    local.set $8
    local.get $5
    call $~lib/rt/pure/__release
    local.get $8
    br $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Uint32Array,u32>|inlined.0
   end
   local.get $6
   i32.const 0
   i32.lt_s
   if
    local.get $7
    local.get $6
    i32.add
    local.set $6
   else    
    local.get $6
    local.get $7
    i32.ge_s
    if
     local.get $7
     i32.const 1
     i32.sub
     local.set $6
    end
   end
   local.get $5
   i32.load offset=4
   local.set $8
   block $break|0
    loop $continue|0
     local.get $6
     i32.const 0
     i32.ge_s
     i32.eqz
     br_if $break|0
     local.get $8
     local.get $6
     i32.const 2
     i32.shl
     i32.add
     i32.load
     local.get $4
     i32.eq
     if
      local.get $6
      local.set $9
      local.get $5
      call $~lib/rt/pure/__release
      local.get $9
      br $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Uint32Array,u32>|inlined.0
     end
     local.get $6
     i32.const 1
     i32.sub
     local.set $6
     br $continue|0
    end
    unreachable
   end
   i32.const -1
   local.set $9
   local.get $5
   call $~lib/rt/pure/__release
   local.get $9
  end
 )
 (func $~lib/typedarray/Uint32Array#lastIndexOf|trampoline (; 454 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~lib/argc
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   local.get $0
   call $~lib/typedarray/Uint32Array#get:length
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/typedarray/Uint32Array#lastIndexOf
 )
 (func $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Uint32Array,u32> (; 455 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $std/typedarray/testArrayIndexOfAndLastIndexOfValues
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $0
  call $~lib/array/Array<i32>#get:length
  local.set $1
  i32.const 0
  local.get $1
  call $~lib/typedarray/Uint32Array#constructor
  local.tee $2
  call $~lib/rt/pure/__retain
  local.set $3
  block $break|0
   i32.const 0
   local.set $4
   loop $loop|0
    local.get $4
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $3
    local.get $4
    local.get $0
    local.get $4
    call $~lib/array/Array<i32>#__get
    call $~lib/typedarray/Uint32Array#__set
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $loop|0
   end
   unreachable
  end
  local.get $3
  i32.const 0
  i32.const 0
  call $~lib/typedarray/Uint32Array#indexOf
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 524
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 11
  i32.const 0
  call $~lib/typedarray/Uint32Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 525
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const -1
  i32.const 0
  call $~lib/typedarray/Uint32Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 526
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const 0
  call $~lib/typedarray/Uint32Array#indexOf
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 527
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const 2
  call $~lib/typedarray/Uint32Array#indexOf
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 528
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const 3
  call $~lib/typedarray/Uint32Array#indexOf
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 529
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Uint32Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 530
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 1
  i32.const 10
  call $~lib/typedarray/Uint32Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 531
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 1
  i32.const -100
  call $~lib/typedarray/Uint32Array#indexOf
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 532
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $3
  i32.const 0
  i32.const 0
  call $~lib/typedarray/Uint32Array#lastIndexOf|trampoline
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 534
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $3
  i32.const 11
  i32.const 0
  call $~lib/typedarray/Uint32Array#lastIndexOf|trampoline
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 535
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $3
  i32.const -1
  i32.const 0
  call $~lib/typedarray/Uint32Array#lastIndexOf|trampoline
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 536
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $3
  i32.const 3
  i32.const 0
  call $~lib/typedarray/Uint32Array#lastIndexOf|trampoline
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 537
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Uint32Array#lastIndexOf
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 538
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const 3
  call $~lib/typedarray/Uint32Array#lastIndexOf
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 539
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 3
  i32.const 2
  call $~lib/typedarray/Uint32Array#lastIndexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 540
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 1
  i32.const 100
  call $~lib/typedarray/Uint32Array#lastIndexOf
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 541
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 1
  i32.const -10
  call $~lib/typedarray/Uint32Array#lastIndexOf
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 542
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 1
  i32.const -11
  call $~lib/typedarray/Uint32Array#lastIndexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 543
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 4
  i32.const 9
  call $~lib/typedarray/Uint32Array#subarray
  local.set $5
  local.get $5
  i32.const 3
  i32.const 0
  call $~lib/typedarray/Uint32Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 547
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.const 4
  i32.const 0
  call $~lib/typedarray/Uint32Array#indexOf
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 548
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.const 5
  i32.const 0
  call $~lib/typedarray/Uint32Array#indexOf
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 549
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.const 9
  i32.const 0
  call $~lib/typedarray/Uint32Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 550
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.const 10
  i32.const 0
  call $~lib/typedarray/Uint32Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 551
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.const 11
  i32.const 0
  call $~lib/typedarray/Uint32Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 552
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.const 5
  i32.const 1
  call $~lib/typedarray/Uint32Array#indexOf
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 553
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i32.const 5
  i32.const 2
  call $~lib/typedarray/Uint32Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 554
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int64Array#indexOf (; 456 ;) (type $FUNCSIG$iiji) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  block $~lib/typedarray/INDEX_OF<~lib/typedarray/Int64Array,i64>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   local.get $3
   local.set $6
   local.get $5
   call $~lib/typedarray/Int64Array#get:length
   local.set $7
   local.get $7
   i32.const 0
   i32.eq
   if (result i32)
    i32.const 1
   else    
    local.get $6
    local.get $7
    i32.ge_s
   end
   if
    i32.const -1
    local.set $8
    local.get $5
    call $~lib/rt/pure/__release
    local.get $8
    br $~lib/typedarray/INDEX_OF<~lib/typedarray/Int64Array,i64>|inlined.0
   end
   local.get $6
   i32.const 0
   i32.lt_s
   if
    local.get $7
    local.get $6
    i32.add
    local.tee $8
    i32.const 0
    local.tee $9
    local.get $8
    local.get $9
    i32.gt_s
    select
    local.set $6
   end
   local.get $5
   i32.load offset=4
   local.set $8
   block $break|0
    loop $continue|0
     local.get $6
     local.get $7
     i32.lt_s
     i32.eqz
     br_if $break|0
     local.get $8
     local.get $6
     i32.const 3
     i32.shl
     i32.add
     i64.load
     local.get $4
     i64.eq
     if
      local.get $6
      local.set $9
      local.get $5
      call $~lib/rt/pure/__release
      local.get $9
      br $~lib/typedarray/INDEX_OF<~lib/typedarray/Int64Array,i64>|inlined.0
     end
     local.get $6
     i32.const 1
     i32.add
     local.set $6
     br $continue|0
    end
    unreachable
   end
   i32.const -1
   local.set $9
   local.get $5
   call $~lib/rt/pure/__release
   local.get $9
  end
 )
 (func $~lib/typedarray/Int64Array#lastIndexOf (; 457 ;) (type $FUNCSIG$iiji) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  block $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Int64Array,i64>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   local.get $3
   local.set $6
   local.get $5
   call $~lib/typedarray/Int64Array#get:length
   local.set $7
   local.get $7
   i32.const 0
   i32.eq
   if
    i32.const -1
    local.set $8
    local.get $5
    call $~lib/rt/pure/__release
    local.get $8
    br $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Int64Array,i64>|inlined.0
   end
   local.get $6
   i32.const 0
   i32.lt_s
   if
    local.get $7
    local.get $6
    i32.add
    local.set $6
   else    
    local.get $6
    local.get $7
    i32.ge_s
    if
     local.get $7
     i32.const 1
     i32.sub
     local.set $6
    end
   end
   local.get $5
   i32.load offset=4
   local.set $8
   block $break|0
    loop $continue|0
     local.get $6
     i32.const 0
     i32.ge_s
     i32.eqz
     br_if $break|0
     local.get $8
     local.get $6
     i32.const 3
     i32.shl
     i32.add
     i64.load
     local.get $4
     i64.eq
     if
      local.get $6
      local.set $9
      local.get $5
      call $~lib/rt/pure/__release
      local.get $9
      br $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Int64Array,i64>|inlined.0
     end
     local.get $6
     i32.const 1
     i32.sub
     local.set $6
     br $continue|0
    end
    unreachable
   end
   i32.const -1
   local.set $9
   local.get $5
   call $~lib/rt/pure/__release
   local.get $9
  end
 )
 (func $~lib/typedarray/Int64Array#lastIndexOf|trampoline (; 458 ;) (type $FUNCSIG$iiji) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~lib/argc
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   local.get $0
   call $~lib/typedarray/Int64Array#get:length
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/typedarray/Int64Array#lastIndexOf
 )
 (func $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Int64Array,i64> (; 459 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $std/typedarray/testArrayIndexOfAndLastIndexOfValues
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $0
  call $~lib/array/Array<i32>#get:length
  local.set $1
  i32.const 0
  local.get $1
  call $~lib/typedarray/Int64Array#constructor
  local.tee $2
  call $~lib/rt/pure/__retain
  local.set $3
  block $break|0
   i32.const 0
   local.set $4
   loop $loop|0
    local.get $4
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $3
    local.get $4
    local.get $0
    local.get $4
    call $~lib/array/Array<i32>#__get
    i64.extend_i32_s
    call $~lib/typedarray/Int64Array#__set
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $loop|0
   end
   unreachable
  end
  local.get $3
  i64.const 0
  i32.const 0
  call $~lib/typedarray/Int64Array#indexOf
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 524
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i64.const 11
  i32.const 0
  call $~lib/typedarray/Int64Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 525
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i64.const -1
  i32.const 0
  call $~lib/typedarray/Int64Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 526
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i64.const 3
  i32.const 0
  call $~lib/typedarray/Int64Array#indexOf
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 527
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i64.const 3
  i32.const 2
  call $~lib/typedarray/Int64Array#indexOf
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 528
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i64.const 3
  i32.const 3
  call $~lib/typedarray/Int64Array#indexOf
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 529
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i64.const 3
  i32.const 4
  call $~lib/typedarray/Int64Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 530
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i64.const 1
  i32.const 10
  call $~lib/typedarray/Int64Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 531
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i64.const 1
  i32.const -100
  call $~lib/typedarray/Int64Array#indexOf
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 532
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $3
  i64.const 0
  i32.const 0
  call $~lib/typedarray/Int64Array#lastIndexOf|trampoline
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 534
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $3
  i64.const 11
  i32.const 0
  call $~lib/typedarray/Int64Array#lastIndexOf|trampoline
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 535
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $3
  i64.const -1
  i32.const 0
  call $~lib/typedarray/Int64Array#lastIndexOf|trampoline
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 536
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $3
  i64.const 3
  i32.const 0
  call $~lib/typedarray/Int64Array#lastIndexOf|trampoline
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 537
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i64.const 3
  i32.const 4
  call $~lib/typedarray/Int64Array#lastIndexOf
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 538
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i64.const 3
  i32.const 3
  call $~lib/typedarray/Int64Array#lastIndexOf
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 539
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i64.const 3
  i32.const 2
  call $~lib/typedarray/Int64Array#lastIndexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 540
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i64.const 1
  i32.const 100
  call $~lib/typedarray/Int64Array#lastIndexOf
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 541
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i64.const 1
  i32.const -10
  call $~lib/typedarray/Int64Array#lastIndexOf
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 542
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i64.const 1
  i32.const -11
  call $~lib/typedarray/Int64Array#lastIndexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 543
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 4
  i32.const 9
  call $~lib/typedarray/Int64Array#subarray
  local.set $5
  local.get $5
  i64.const 3
  i32.const 0
  call $~lib/typedarray/Int64Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 547
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i64.const 4
  i32.const 0
  call $~lib/typedarray/Int64Array#indexOf
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 548
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i64.const 5
  i32.const 0
  call $~lib/typedarray/Int64Array#indexOf
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 549
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i64.const 9
  i32.const 0
  call $~lib/typedarray/Int64Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 550
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i64.const 10
  i32.const 0
  call $~lib/typedarray/Int64Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 551
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i64.const 11
  i32.const 0
  call $~lib/typedarray/Int64Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 552
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i64.const 5
  i32.const 1
  call $~lib/typedarray/Int64Array#indexOf
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 553
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i64.const 5
  i32.const 2
  call $~lib/typedarray/Int64Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 554
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint64Array#indexOf (; 460 ;) (type $FUNCSIG$iiji) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  block $~lib/typedarray/INDEX_OF<~lib/typedarray/Uint64Array,u64>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   local.get $3
   local.set $6
   local.get $5
   call $~lib/typedarray/Uint64Array#get:length
   local.set $7
   local.get $7
   i32.const 0
   i32.eq
   if (result i32)
    i32.const 1
   else    
    local.get $6
    local.get $7
    i32.ge_s
   end
   if
    i32.const -1
    local.set $8
    local.get $5
    call $~lib/rt/pure/__release
    local.get $8
    br $~lib/typedarray/INDEX_OF<~lib/typedarray/Uint64Array,u64>|inlined.0
   end
   local.get $6
   i32.const 0
   i32.lt_s
   if
    local.get $7
    local.get $6
    i32.add
    local.tee $8
    i32.const 0
    local.tee $9
    local.get $8
    local.get $9
    i32.gt_s
    select
    local.set $6
   end
   local.get $5
   i32.load offset=4
   local.set $8
   block $break|0
    loop $continue|0
     local.get $6
     local.get $7
     i32.lt_s
     i32.eqz
     br_if $break|0
     local.get $8
     local.get $6
     i32.const 3
     i32.shl
     i32.add
     i64.load
     local.get $4
     i64.eq
     if
      local.get $6
      local.set $9
      local.get $5
      call $~lib/rt/pure/__release
      local.get $9
      br $~lib/typedarray/INDEX_OF<~lib/typedarray/Uint64Array,u64>|inlined.0
     end
     local.get $6
     i32.const 1
     i32.add
     local.set $6
     br $continue|0
    end
    unreachable
   end
   i32.const -1
   local.set $9
   local.get $5
   call $~lib/rt/pure/__release
   local.get $9
  end
 )
 (func $~lib/typedarray/Uint64Array#lastIndexOf (; 461 ;) (type $FUNCSIG$iiji) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  block $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Uint64Array,u64>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   local.get $3
   local.set $6
   local.get $5
   call $~lib/typedarray/Uint64Array#get:length
   local.set $7
   local.get $7
   i32.const 0
   i32.eq
   if
    i32.const -1
    local.set $8
    local.get $5
    call $~lib/rt/pure/__release
    local.get $8
    br $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Uint64Array,u64>|inlined.0
   end
   local.get $6
   i32.const 0
   i32.lt_s
   if
    local.get $7
    local.get $6
    i32.add
    local.set $6
   else    
    local.get $6
    local.get $7
    i32.ge_s
    if
     local.get $7
     i32.const 1
     i32.sub
     local.set $6
    end
   end
   local.get $5
   i32.load offset=4
   local.set $8
   block $break|0
    loop $continue|0
     local.get $6
     i32.const 0
     i32.ge_s
     i32.eqz
     br_if $break|0
     local.get $8
     local.get $6
     i32.const 3
     i32.shl
     i32.add
     i64.load
     local.get $4
     i64.eq
     if
      local.get $6
      local.set $9
      local.get $5
      call $~lib/rt/pure/__release
      local.get $9
      br $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Uint64Array,u64>|inlined.0
     end
     local.get $6
     i32.const 1
     i32.sub
     local.set $6
     br $continue|0
    end
    unreachable
   end
   i32.const -1
   local.set $9
   local.get $5
   call $~lib/rt/pure/__release
   local.get $9
  end
 )
 (func $~lib/typedarray/Uint64Array#lastIndexOf|trampoline (; 462 ;) (type $FUNCSIG$iiji) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~lib/argc
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   local.get $0
   call $~lib/typedarray/Uint64Array#get:length
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/typedarray/Uint64Array#lastIndexOf
 )
 (func $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Uint64Array,u64> (; 463 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $std/typedarray/testArrayIndexOfAndLastIndexOfValues
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $0
  call $~lib/array/Array<i32>#get:length
  local.set $1
  i32.const 0
  local.get $1
  call $~lib/typedarray/Uint64Array#constructor
  local.tee $2
  call $~lib/rt/pure/__retain
  local.set $3
  block $break|0
   i32.const 0
   local.set $4
   loop $loop|0
    local.get $4
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $3
    local.get $4
    local.get $0
    local.get $4
    call $~lib/array/Array<i32>#__get
    i64.extend_i32_s
    call $~lib/typedarray/Uint64Array#__set
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $loop|0
   end
   unreachable
  end
  local.get $3
  i64.const 0
  i32.const 0
  call $~lib/typedarray/Uint64Array#indexOf
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 524
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i64.const 11
  i32.const 0
  call $~lib/typedarray/Uint64Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 525
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i64.const -1
  i32.const 0
  call $~lib/typedarray/Uint64Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 526
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i64.const 3
  i32.const 0
  call $~lib/typedarray/Uint64Array#indexOf
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 527
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i64.const 3
  i32.const 2
  call $~lib/typedarray/Uint64Array#indexOf
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 528
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i64.const 3
  i32.const 3
  call $~lib/typedarray/Uint64Array#indexOf
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 529
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i64.const 3
  i32.const 4
  call $~lib/typedarray/Uint64Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 530
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i64.const 1
  i32.const 10
  call $~lib/typedarray/Uint64Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 531
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i64.const 1
  i32.const -100
  call $~lib/typedarray/Uint64Array#indexOf
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 532
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $3
  i64.const 0
  i32.const 0
  call $~lib/typedarray/Uint64Array#lastIndexOf|trampoline
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 534
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $3
  i64.const 11
  i32.const 0
  call $~lib/typedarray/Uint64Array#lastIndexOf|trampoline
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 535
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $3
  i64.const -1
  i32.const 0
  call $~lib/typedarray/Uint64Array#lastIndexOf|trampoline
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 536
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $3
  i64.const 3
  i32.const 0
  call $~lib/typedarray/Uint64Array#lastIndexOf|trampoline
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 537
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i64.const 3
  i32.const 4
  call $~lib/typedarray/Uint64Array#lastIndexOf
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 538
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i64.const 3
  i32.const 3
  call $~lib/typedarray/Uint64Array#lastIndexOf
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 539
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i64.const 3
  i32.const 2
  call $~lib/typedarray/Uint64Array#lastIndexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 540
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i64.const 1
  i32.const 100
  call $~lib/typedarray/Uint64Array#lastIndexOf
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 541
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i64.const 1
  i32.const -10
  call $~lib/typedarray/Uint64Array#lastIndexOf
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 542
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i64.const 1
  i32.const -11
  call $~lib/typedarray/Uint64Array#lastIndexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 543
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 4
  i32.const 9
  call $~lib/typedarray/Uint64Array#subarray
  local.set $5
  local.get $5
  i64.const 3
  i32.const 0
  call $~lib/typedarray/Uint64Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 547
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i64.const 4
  i32.const 0
  call $~lib/typedarray/Uint64Array#indexOf
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 548
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i64.const 5
  i32.const 0
  call $~lib/typedarray/Uint64Array#indexOf
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 549
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i64.const 9
  i32.const 0
  call $~lib/typedarray/Uint64Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 550
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i64.const 10
  i32.const 0
  call $~lib/typedarray/Uint64Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 551
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i64.const 11
  i32.const 0
  call $~lib/typedarray/Uint64Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 552
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i64.const 5
  i32.const 1
  call $~lib/typedarray/Uint64Array#indexOf
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 553
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  i64.const 5
  i32.const 2
  call $~lib/typedarray/Uint64Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 554
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Float32Array#indexOf (; 464 ;) (type $FUNCSIG$iifi) (param $0 i32) (param $1 f32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 f32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  block $~lib/typedarray/INDEX_OF<~lib/typedarray/Float32Array,f32>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   local.get $3
   local.set $6
   local.get $5
   call $~lib/typedarray/Float32Array#get:length
   local.set $7
   local.get $7
   i32.const 0
   i32.eq
   if (result i32)
    i32.const 1
   else    
    local.get $6
    local.get $7
    i32.ge_s
   end
   if
    i32.const -1
    local.set $8
    local.get $5
    call $~lib/rt/pure/__release
    local.get $8
    br $~lib/typedarray/INDEX_OF<~lib/typedarray/Float32Array,f32>|inlined.0
   end
   local.get $6
   i32.const 0
   i32.lt_s
   if
    local.get $7
    local.get $6
    i32.add
    local.tee $8
    i32.const 0
    local.tee $9
    local.get $8
    local.get $9
    i32.gt_s
    select
    local.set $6
   end
   local.get $5
   i32.load offset=4
   local.set $8
   block $break|0
    loop $continue|0
     local.get $6
     local.get $7
     i32.lt_s
     i32.eqz
     br_if $break|0
     local.get $8
     local.get $6
     i32.const 2
     i32.shl
     i32.add
     f32.load
     local.get $4
     f32.eq
     if
      local.get $6
      local.set $9
      local.get $5
      call $~lib/rt/pure/__release
      local.get $9
      br $~lib/typedarray/INDEX_OF<~lib/typedarray/Float32Array,f32>|inlined.0
     end
     local.get $6
     i32.const 1
     i32.add
     local.set $6
     br $continue|0
    end
    unreachable
   end
   i32.const -1
   local.set $9
   local.get $5
   call $~lib/rt/pure/__release
   local.get $9
  end
 )
 (func $~lib/typedarray/Float32Array#lastIndexOf (; 465 ;) (type $FUNCSIG$iifi) (param $0 i32) (param $1 f32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 f32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  block $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Float32Array,f32>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   local.get $3
   local.set $6
   local.get $5
   call $~lib/typedarray/Float32Array#get:length
   local.set $7
   local.get $7
   i32.const 0
   i32.eq
   if
    i32.const -1
    local.set $8
    local.get $5
    call $~lib/rt/pure/__release
    local.get $8
    br $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Float32Array,f32>|inlined.0
   end
   local.get $6
   i32.const 0
   i32.lt_s
   if
    local.get $7
    local.get $6
    i32.add
    local.set $6
   else    
    local.get $6
    local.get $7
    i32.ge_s
    if
     local.get $7
     i32.const 1
     i32.sub
     local.set $6
    end
   end
   local.get $5
   i32.load offset=4
   local.set $8
   block $break|0
    loop $continue|0
     local.get $6
     i32.const 0
     i32.ge_s
     i32.eqz
     br_if $break|0
     local.get $8
     local.get $6
     i32.const 2
     i32.shl
     i32.add
     f32.load
     local.get $4
     f32.eq
     if
      local.get $6
      local.set $9
      local.get $5
      call $~lib/rt/pure/__release
      local.get $9
      br $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Float32Array,f32>|inlined.0
     end
     local.get $6
     i32.const 1
     i32.sub
     local.set $6
     br $continue|0
    end
    unreachable
   end
   i32.const -1
   local.set $9
   local.get $5
   call $~lib/rt/pure/__release
   local.get $9
  end
 )
 (func $~lib/typedarray/Float32Array#lastIndexOf|trampoline (; 466 ;) (type $FUNCSIG$iifi) (param $0 i32) (param $1 f32) (param $2 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~lib/argc
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   local.get $0
   call $~lib/typedarray/Float32Array#get:length
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/typedarray/Float32Array#lastIndexOf
 )
 (func $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Float32Array,f32> (; 467 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $std/typedarray/testArrayIndexOfAndLastIndexOfValues
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $0
  call $~lib/array/Array<i32>#get:length
  local.set $1
  i32.const 0
  local.get $1
  call $~lib/typedarray/Float32Array#constructor
  local.tee $2
  call $~lib/rt/pure/__retain
  local.set $3
  block $break|0
   i32.const 0
   local.set $4
   loop $loop|0
    local.get $4
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $3
    local.get $4
    local.get $0
    local.get $4
    call $~lib/array/Array<i32>#__get
    f32.convert_i32_s
    call $~lib/typedarray/Float32Array#__set
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $loop|0
   end
   unreachable
  end
  local.get $3
  f32.const 0
  i32.const 0
  call $~lib/typedarray/Float32Array#indexOf
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 524
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  f32.const 11
  i32.const 0
  call $~lib/typedarray/Float32Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 525
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  f32.const -1
  i32.const 0
  call $~lib/typedarray/Float32Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 526
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  f32.const 3
  i32.const 0
  call $~lib/typedarray/Float32Array#indexOf
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 527
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  f32.const 3
  i32.const 2
  call $~lib/typedarray/Float32Array#indexOf
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 528
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  f32.const 3
  i32.const 3
  call $~lib/typedarray/Float32Array#indexOf
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 529
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  f32.const 3
  i32.const 4
  call $~lib/typedarray/Float32Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 530
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  f32.const 1
  i32.const 10
  call $~lib/typedarray/Float32Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 531
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  f32.const 1
  i32.const -100
  call $~lib/typedarray/Float32Array#indexOf
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 532
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $3
  f32.const 0
  i32.const 0
  call $~lib/typedarray/Float32Array#lastIndexOf|trampoline
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 534
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $3
  f32.const 11
  i32.const 0
  call $~lib/typedarray/Float32Array#lastIndexOf|trampoline
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 535
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $3
  f32.const -1
  i32.const 0
  call $~lib/typedarray/Float32Array#lastIndexOf|trampoline
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 536
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $3
  f32.const 3
  i32.const 0
  call $~lib/typedarray/Float32Array#lastIndexOf|trampoline
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 537
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  f32.const 3
  i32.const 4
  call $~lib/typedarray/Float32Array#lastIndexOf
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 538
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  f32.const 3
  i32.const 3
  call $~lib/typedarray/Float32Array#lastIndexOf
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 539
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  f32.const 3
  i32.const 2
  call $~lib/typedarray/Float32Array#lastIndexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 540
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  f32.const 1
  i32.const 100
  call $~lib/typedarray/Float32Array#lastIndexOf
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 541
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  f32.const 1
  i32.const -10
  call $~lib/typedarray/Float32Array#lastIndexOf
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 542
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  f32.const 1
  i32.const -11
  call $~lib/typedarray/Float32Array#lastIndexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 543
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 4
  i32.const 9
  call $~lib/typedarray/Float32Array#subarray
  local.set $5
  local.get $5
  f32.const 3
  i32.const 0
  call $~lib/typedarray/Float32Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 547
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  f32.const 4
  i32.const 0
  call $~lib/typedarray/Float32Array#indexOf
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 548
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  f32.const 5
  i32.const 0
  call $~lib/typedarray/Float32Array#indexOf
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 549
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  f32.const 9
  i32.const 0
  call $~lib/typedarray/Float32Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 550
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  f32.const 10
  i32.const 0
  call $~lib/typedarray/Float32Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 551
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  f32.const 11
  i32.const 0
  call $~lib/typedarray/Float32Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 552
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  f32.const 5
  i32.const 1
  call $~lib/typedarray/Float32Array#indexOf
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 553
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  f32.const 5
  i32.const 2
  call $~lib/typedarray/Float32Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 554
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Float64Array#indexOf (; 468 ;) (type $FUNCSIG$iidi) (param $0 i32) (param $1 f64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  block $~lib/typedarray/INDEX_OF<~lib/typedarray/Float64Array,f64>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   local.get $3
   local.set $6
   local.get $5
   call $~lib/typedarray/Float64Array#get:length
   local.set $7
   local.get $7
   i32.const 0
   i32.eq
   if (result i32)
    i32.const 1
   else    
    local.get $6
    local.get $7
    i32.ge_s
   end
   if
    i32.const -1
    local.set $8
    local.get $5
    call $~lib/rt/pure/__release
    local.get $8
    br $~lib/typedarray/INDEX_OF<~lib/typedarray/Float64Array,f64>|inlined.0
   end
   local.get $6
   i32.const 0
   i32.lt_s
   if
    local.get $7
    local.get $6
    i32.add
    local.tee $8
    i32.const 0
    local.tee $9
    local.get $8
    local.get $9
    i32.gt_s
    select
    local.set $6
   end
   local.get $5
   i32.load offset=4
   local.set $8
   block $break|0
    loop $continue|0
     local.get $6
     local.get $7
     i32.lt_s
     i32.eqz
     br_if $break|0
     local.get $8
     local.get $6
     i32.const 3
     i32.shl
     i32.add
     f64.load
     local.get $4
     f64.eq
     if
      local.get $6
      local.set $9
      local.get $5
      call $~lib/rt/pure/__release
      local.get $9
      br $~lib/typedarray/INDEX_OF<~lib/typedarray/Float64Array,f64>|inlined.0
     end
     local.get $6
     i32.const 1
     i32.add
     local.set $6
     br $continue|0
    end
    unreachable
   end
   i32.const -1
   local.set $9
   local.get $5
   call $~lib/rt/pure/__release
   local.get $9
  end
 )
 (func $~lib/typedarray/Float64Array#lastIndexOf (; 469 ;) (type $FUNCSIG$iidi) (param $0 i32) (param $1 f64) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  block $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Float64Array,f64>|inlined.0 (result i32)
   local.get $0
   call $~lib/rt/pure/__retain
   local.set $5
   local.get $1
   local.set $4
   local.get $2
   local.set $3
   local.get $3
   local.set $6
   local.get $5
   call $~lib/typedarray/Float64Array#get:length
   local.set $7
   local.get $7
   i32.const 0
   i32.eq
   if
    i32.const -1
    local.set $8
    local.get $5
    call $~lib/rt/pure/__release
    local.get $8
    br $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Float64Array,f64>|inlined.0
   end
   local.get $6
   i32.const 0
   i32.lt_s
   if
    local.get $7
    local.get $6
    i32.add
    local.set $6
   else    
    local.get $6
    local.get $7
    i32.ge_s
    if
     local.get $7
     i32.const 1
     i32.sub
     local.set $6
    end
   end
   local.get $5
   i32.load offset=4
   local.set $8
   block $break|0
    loop $continue|0
     local.get $6
     i32.const 0
     i32.ge_s
     i32.eqz
     br_if $break|0
     local.get $8
     local.get $6
     i32.const 3
     i32.shl
     i32.add
     f64.load
     local.get $4
     f64.eq
     if
      local.get $6
      local.set $9
      local.get $5
      call $~lib/rt/pure/__release
      local.get $9
      br $~lib/typedarray/LAST_INDEX_OF<~lib/typedarray/Float64Array,f64>|inlined.0
     end
     local.get $6
     i32.const 1
     i32.sub
     local.set $6
     br $continue|0
    end
    unreachable
   end
   i32.const -1
   local.set $9
   local.get $5
   call $~lib/rt/pure/__release
   local.get $9
  end
 )
 (func $~lib/typedarray/Float64Array#lastIndexOf|trampoline (; 470 ;) (type $FUNCSIG$iidi) (param $0 i32) (param $1 f64) (param $2 i32) (result i32)
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~lib/argc
     i32.const 1
     i32.sub
     br_table $0of1 $1of1 $outOfRange
    end
    unreachable
   end
   local.get $0
   call $~lib/typedarray/Float64Array#get:length
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/typedarray/Float64Array#lastIndexOf
 )
 (func $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Float64Array,f64> (; 471 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  global.get $std/typedarray/testArrayIndexOfAndLastIndexOfValues
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $0
  call $~lib/array/Array<i32>#get:length
  local.set $1
  i32.const 0
  local.get $1
  call $~lib/typedarray/Float64Array#constructor
  local.tee $2
  call $~lib/rt/pure/__retain
  local.set $3
  block $break|0
   i32.const 0
   local.set $4
   loop $loop|0
    local.get $4
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $3
    local.get $4
    local.get $0
    local.get $4
    call $~lib/array/Array<i32>#__get
    f64.convert_i32_s
    call $~lib/typedarray/Float64Array#__set
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $loop|0
   end
   unreachable
  end
  local.get $3
  f64.const 0
  i32.const 0
  call $~lib/typedarray/Float64Array#indexOf
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 524
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  f64.const 11
  i32.const 0
  call $~lib/typedarray/Float64Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 525
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  f64.const -1
  i32.const 0
  call $~lib/typedarray/Float64Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 526
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  f64.const 3
  i32.const 0
  call $~lib/typedarray/Float64Array#indexOf
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 527
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  f64.const 3
  i32.const 2
  call $~lib/typedarray/Float64Array#indexOf
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 528
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  f64.const 3
  i32.const 3
  call $~lib/typedarray/Float64Array#indexOf
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 529
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  f64.const 3
  i32.const 4
  call $~lib/typedarray/Float64Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 530
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  f64.const 1
  i32.const 10
  call $~lib/typedarray/Float64Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 531
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  f64.const 1
  i32.const -100
  call $~lib/typedarray/Float64Array#indexOf
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 532
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $3
  f64.const 0
  i32.const 0
  call $~lib/typedarray/Float64Array#lastIndexOf|trampoline
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 534
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $3
  f64.const 11
  i32.const 0
  call $~lib/typedarray/Float64Array#lastIndexOf|trampoline
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 535
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $3
  f64.const -1
  i32.const 0
  call $~lib/typedarray/Float64Array#lastIndexOf|trampoline
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 536
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 1
  global.set $~lib/argc
  local.get $3
  f64.const 3
  i32.const 0
  call $~lib/typedarray/Float64Array#lastIndexOf|trampoline
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 537
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  f64.const 3
  i32.const 4
  call $~lib/typedarray/Float64Array#lastIndexOf
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 538
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  f64.const 3
  i32.const 3
  call $~lib/typedarray/Float64Array#lastIndexOf
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 539
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  f64.const 3
  i32.const 2
  call $~lib/typedarray/Float64Array#lastIndexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 540
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  f64.const 1
  i32.const 100
  call $~lib/typedarray/Float64Array#lastIndexOf
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 541
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  f64.const 1
  i32.const -10
  call $~lib/typedarray/Float64Array#lastIndexOf
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 542
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  f64.const 1
  i32.const -11
  call $~lib/typedarray/Float64Array#lastIndexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 543
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 4
  i32.const 9
  call $~lib/typedarray/Float64Array#subarray
  local.set $5
  local.get $5
  f64.const 3
  i32.const 0
  call $~lib/typedarray/Float64Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 547
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  f64.const 4
  i32.const 0
  call $~lib/typedarray/Float64Array#indexOf
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 548
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  f64.const 5
  i32.const 0
  call $~lib/typedarray/Float64Array#indexOf
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 549
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  f64.const 9
  i32.const 0
  call $~lib/typedarray/Float64Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 550
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  f64.const 10
  i32.const 0
  call $~lib/typedarray/Float64Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 551
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  f64.const 11
  i32.const 0
  call $~lib/typedarray/Float64Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 552
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  f64.const 5
  i32.const 1
  call $~lib/typedarray/Float64Array#indexOf
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 553
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  f64.const 5
  i32.const 2
  call $~lib/typedarray/Float64Array#indexOf
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 554
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int8Array#get:buffer (; 472 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/rt/pure/__retain
 )
 (func $~lib/arraybuffer/ArrayBuffer#get:byteLength (; 473 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.const 16
  i32.sub
  i32.load offset=12
 )
 (func $~lib/arraybuffer/ArrayBuffer#slice (; 474 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  local.set $3
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $3
   local.get $1
   i32.add
   local.tee $4
   i32.const 0
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
  else   
   local.get $1
   local.tee $4
   local.get $3
   local.tee $5
   local.get $4
   local.get $5
   i32.lt_s
   select
  end
  local.set $1
  local.get $2
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $3
   local.get $2
   i32.add
   local.tee $4
   i32.const 0
   local.tee $5
   local.get $4
   local.get $5
   i32.gt_s
   select
  else   
   local.get $2
   local.tee $4
   local.get $3
   local.tee $5
   local.get $4
   local.get $5
   i32.lt_s
   select
  end
  local.set $2
  local.get $2
  local.get $1
  i32.sub
  local.tee $4
  i32.const 0
  local.tee $5
  local.get $4
  local.get $5
  i32.gt_s
  select
  local.set $6
  local.get $6
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $7
  local.get $7
  local.get $0
  local.get $1
  i32.add
  local.get $6
  call $~lib/memory/memory.copy
  local.get $7
  call $~lib/rt/pure/__retain
 )
 (func $~lib/typedarray/Int8Array.wrap (; 475 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $1
  local.set $4
  local.get $2
  local.set $3
  local.get $5
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  local.set $6
  local.get $4
  local.get $6
  i32.ge_u
  if
   local.get $5
   call $~lib/rt/pure/__release
   i32.const 280
   i32.const 432
   i32.const 1560
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 0
  i32.lt_s
  if
   local.get $3
   i32.const -1
   i32.eq
   if
    local.get $5
    call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    i32.const -2147483648
    i32.and
    if
     local.get $5
     call $~lib/rt/pure/__release
     i32.const 24
     i32.const 432
     i32.const 1567
     i32.const 8
     call $~lib/builtins/abort
     unreachable
    else     
     local.get $5
     call $~lib/arraybuffer/ArrayBuffer#get:byteLength
     local.set $7
    end
   else    
    local.get $5
    call $~lib/rt/pure/__release
    i32.const 24
    i32.const 432
    i32.const 1572
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  else   
   local.get $3
   i32.const 0
   i32.shl
   local.set $7
  end
  local.get $4
  local.get $7
  i32.add
  local.get $5
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.gt_s
  if
   local.get $5
   call $~lib/rt/pure/__release
   i32.const 24
   i32.const 432
   i32.const 1578
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 12
  i32.const 3
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.set $8
  local.get $8
  local.tee $9
  local.get $5
  local.tee $10
  local.get $9
  i32.load
  local.tee $9
  i32.ne
  if
   local.get $10
   call $~lib/rt/pure/__retain
   drop
   local.get $9
   call $~lib/rt/pure/__release
  end
  local.get $10
  i32.store
  local.get $8
  local.get $7
  i32.store offset=8
  local.get $8
  local.get $5
  local.get $4
  i32.add
  i32.store offset=4
  local.get $8
  local.set $10
  local.get $5
  call $~lib/rt/pure/__release
  local.get $10
  local.set $8
  local.get $0
  call $~lib/rt/pure/__release
  local.get $8
 )
 (func $~lib/typedarray/Int8Array.wrap|trampoline (; 476 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
    local.set $1
   end
   i32.const -1
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/typedarray/Int8Array.wrap
 )
 (func $std/typedarray/testArrayWrap<~lib/typedarray/Int8Array,i8> (; 477 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $std/typedarray/testArrayWrapValues
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $0
  call $~lib/array/Array<i32>#get:length
  local.set $1
  i32.const 0
  local.get $1
  call $~lib/typedarray/Int8Array#constructor
  local.tee $2
  call $~lib/rt/pure/__retain
  local.set $3
  block $break|0
   i32.const 0
   local.set $4
   loop $loop|0
    local.get $4
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $3
    local.get $4
    local.get $0
    local.get $4
    call $~lib/array/Array<i32>#__get
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    call $~lib/typedarray/Int8Array#__set
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $loop|0
   end
   unreachable
  end
  local.get $3
  call $~lib/typedarray/Int8Array#get:buffer
  local.tee $4
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  i32.add
  call $~lib/arraybuffer/ArrayBuffer#slice
  local.set $5
  i32.const 0
  local.set $6
  i32.const 1
  global.set $~lib/argc
  local.get $5
  i32.const 0
  i32.const 0
  call $~lib/typedarray/Int8Array.wrap|trampoline
  local.set $7
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  local.set $6
  block $break|1
   i32.const 0
   local.set $7
   loop $loop|1
    local.get $7
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|1
    local.get $3
    local.get $7
    call $~lib/typedarray/Int8Array#__get
    local.get $6
    local.get $7
    call $~lib/typedarray/Int8Array#__get
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 604
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $loop|1
   end
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint8Array#get:buffer (; 478 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/rt/pure/__retain
 )
 (func $~lib/typedarray/Uint8Array.wrap (; 479 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $1
  local.set $4
  local.get $2
  local.set $3
  local.get $5
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  local.set $6
  local.get $4
  local.get $6
  i32.ge_u
  if
   local.get $5
   call $~lib/rt/pure/__release
   i32.const 280
   i32.const 432
   i32.const 1560
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 0
  i32.lt_s
  if
   local.get $3
   i32.const -1
   i32.eq
   if
    local.get $5
    call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    i32.const -2147483648
    i32.and
    if
     local.get $5
     call $~lib/rt/pure/__release
     i32.const 24
     i32.const 432
     i32.const 1567
     i32.const 8
     call $~lib/builtins/abort
     unreachable
    else     
     local.get $5
     call $~lib/arraybuffer/ArrayBuffer#get:byteLength
     local.set $7
    end
   else    
    local.get $5
    call $~lib/rt/pure/__release
    i32.const 24
    i32.const 432
    i32.const 1572
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  else   
   local.get $3
   i32.const 0
   i32.shl
   local.set $7
  end
  local.get $4
  local.get $7
  i32.add
  local.get $5
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.gt_s
  if
   local.get $5
   call $~lib/rt/pure/__release
   i32.const 24
   i32.const 432
   i32.const 1578
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 12
  i32.const 4
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.set $8
  local.get $8
  local.tee $9
  local.get $5
  local.tee $10
  local.get $9
  i32.load
  local.tee $9
  i32.ne
  if
   local.get $10
   call $~lib/rt/pure/__retain
   drop
   local.get $9
   call $~lib/rt/pure/__release
  end
  local.get $10
  i32.store
  local.get $8
  local.get $7
  i32.store offset=8
  local.get $8
  local.get $5
  local.get $4
  i32.add
  i32.store offset=4
  local.get $8
  local.set $10
  local.get $5
  call $~lib/rt/pure/__release
  local.get $10
  local.set $8
  local.get $0
  call $~lib/rt/pure/__release
  local.get $8
 )
 (func $~lib/typedarray/Uint8Array.wrap|trampoline (; 480 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
    local.set $1
   end
   i32.const -1
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/typedarray/Uint8Array.wrap
 )
 (func $std/typedarray/testArrayWrap<~lib/typedarray/Uint8Array,u8> (; 481 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $std/typedarray/testArrayWrapValues
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $0
  call $~lib/array/Array<i32>#get:length
  local.set $1
  i32.const 0
  local.get $1
  call $~lib/typedarray/Uint8Array#constructor
  local.tee $2
  call $~lib/rt/pure/__retain
  local.set $3
  block $break|0
   i32.const 0
   local.set $4
   loop $loop|0
    local.get $4
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $3
    local.get $4
    local.get $0
    local.get $4
    call $~lib/array/Array<i32>#__get
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__set
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $loop|0
   end
   unreachable
  end
  local.get $3
  call $~lib/typedarray/Uint8Array#get:buffer
  local.tee $4
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  i32.add
  call $~lib/arraybuffer/ArrayBuffer#slice
  local.set $5
  i32.const 0
  local.set $6
  i32.const 1
  global.set $~lib/argc
  local.get $5
  i32.const 0
  i32.const 0
  call $~lib/typedarray/Uint8Array.wrap|trampoline
  local.set $7
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  local.set $6
  block $break|1
   i32.const 0
   local.set $7
   loop $loop|1
    local.get $7
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|1
    local.get $3
    local.get $7
    call $~lib/typedarray/Uint8Array#__get
    local.get $6
    local.get $7
    call $~lib/typedarray/Uint8Array#__get
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 604
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $loop|1
   end
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint8ClampedArray#get:buffer (; 482 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/rt/pure/__retain
 )
 (func $~lib/typedarray/Uint8ClampedArray.wrap (; 483 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $1
  local.set $4
  local.get $2
  local.set $3
  local.get $5
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  local.set $6
  local.get $4
  local.get $6
  i32.ge_u
  if
   local.get $5
   call $~lib/rt/pure/__release
   i32.const 280
   i32.const 432
   i32.const 1560
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 0
  i32.lt_s
  if
   local.get $3
   i32.const -1
   i32.eq
   if
    local.get $5
    call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    i32.const -2147483648
    i32.and
    if
     local.get $5
     call $~lib/rt/pure/__release
     i32.const 24
     i32.const 432
     i32.const 1567
     i32.const 8
     call $~lib/builtins/abort
     unreachable
    else     
     local.get $5
     call $~lib/arraybuffer/ArrayBuffer#get:byteLength
     local.set $7
    end
   else    
    local.get $5
    call $~lib/rt/pure/__release
    i32.const 24
    i32.const 432
    i32.const 1572
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  else   
   local.get $3
   i32.const 0
   i32.shl
   local.set $7
  end
  local.get $4
  local.get $7
  i32.add
  local.get $5
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.gt_s
  if
   local.get $5
   call $~lib/rt/pure/__release
   i32.const 24
   i32.const 432
   i32.const 1578
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 12
  i32.const 5
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.set $8
  local.get $8
  local.tee $9
  local.get $5
  local.tee $10
  local.get $9
  i32.load
  local.tee $9
  i32.ne
  if
   local.get $10
   call $~lib/rt/pure/__retain
   drop
   local.get $9
   call $~lib/rt/pure/__release
  end
  local.get $10
  i32.store
  local.get $8
  local.get $7
  i32.store offset=8
  local.get $8
  local.get $5
  local.get $4
  i32.add
  i32.store offset=4
  local.get $8
  local.set $10
  local.get $5
  call $~lib/rt/pure/__release
  local.get $10
  local.set $8
  local.get $0
  call $~lib/rt/pure/__release
  local.get $8
 )
 (func $~lib/typedarray/Uint8ClampedArray.wrap|trampoline (; 484 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
    local.set $1
   end
   i32.const -1
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/typedarray/Uint8ClampedArray.wrap
 )
 (func $std/typedarray/testArrayWrap<~lib/typedarray/Uint8ClampedArray,u8> (; 485 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $std/typedarray/testArrayWrapValues
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $0
  call $~lib/array/Array<i32>#get:length
  local.set $1
  i32.const 0
  local.get $1
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.tee $2
  call $~lib/rt/pure/__retain
  local.set $3
  block $break|0
   i32.const 0
   local.set $4
   loop $loop|0
    local.get $4
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $3
    local.get $4
    local.get $0
    local.get $4
    call $~lib/array/Array<i32>#__get
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8ClampedArray#__set
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $loop|0
   end
   unreachable
  end
  local.get $3
  call $~lib/typedarray/Uint8ClampedArray#get:buffer
  local.tee $4
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  i32.add
  call $~lib/arraybuffer/ArrayBuffer#slice
  local.set $5
  i32.const 0
  local.set $6
  i32.const 1
  global.set $~lib/argc
  local.get $5
  i32.const 0
  i32.const 0
  call $~lib/typedarray/Uint8ClampedArray.wrap|trampoline
  local.set $7
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  local.set $6
  block $break|1
   i32.const 0
   local.set $7
   loop $loop|1
    local.get $7
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|1
    local.get $3
    local.get $7
    call $~lib/typedarray/Uint8ClampedArray#__get
    local.get $6
    local.get $7
    call $~lib/typedarray/Uint8ClampedArray#__get
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 604
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $loop|1
   end
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int16Array#get:buffer (; 486 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/rt/pure/__retain
 )
 (func $~lib/typedarray/Int16Array.wrap (; 487 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $1
  local.set $4
  local.get $2
  local.set $3
  local.get $5
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  local.set $6
  local.get $4
  local.get $6
  i32.ge_u
  if
   local.get $5
   call $~lib/rt/pure/__release
   i32.const 280
   i32.const 432
   i32.const 1560
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 0
  i32.lt_s
  if
   local.get $3
   i32.const -1
   i32.eq
   if
    local.get $5
    call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    i32.const 1
    i32.and
    if
     local.get $5
     call $~lib/rt/pure/__release
     i32.const 24
     i32.const 432
     i32.const 1567
     i32.const 8
     call $~lib/builtins/abort
     unreachable
    else     
     local.get $5
     call $~lib/arraybuffer/ArrayBuffer#get:byteLength
     local.set $7
    end
   else    
    local.get $5
    call $~lib/rt/pure/__release
    i32.const 24
    i32.const 432
    i32.const 1572
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  else   
   local.get $3
   i32.const 1
   i32.shl
   local.set $7
  end
  local.get $4
  local.get $7
  i32.add
  local.get $5
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.gt_s
  if
   local.get $5
   call $~lib/rt/pure/__release
   i32.const 24
   i32.const 432
   i32.const 1578
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 12
  i32.const 6
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.set $8
  local.get $8
  local.tee $9
  local.get $5
  local.tee $10
  local.get $9
  i32.load
  local.tee $9
  i32.ne
  if
   local.get $10
   call $~lib/rt/pure/__retain
   drop
   local.get $9
   call $~lib/rt/pure/__release
  end
  local.get $10
  i32.store
  local.get $8
  local.get $7
  i32.store offset=8
  local.get $8
  local.get $5
  local.get $4
  i32.add
  i32.store offset=4
  local.get $8
  local.set $10
  local.get $5
  call $~lib/rt/pure/__release
  local.get $10
  local.set $8
  local.get $0
  call $~lib/rt/pure/__release
  local.get $8
 )
 (func $~lib/typedarray/Int16Array.wrap|trampoline (; 488 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
    local.set $1
   end
   i32.const -1
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/typedarray/Int16Array.wrap
 )
 (func $std/typedarray/testArrayWrap<~lib/typedarray/Int16Array,i16> (; 489 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $std/typedarray/testArrayWrapValues
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $0
  call $~lib/array/Array<i32>#get:length
  local.set $1
  i32.const 0
  local.get $1
  call $~lib/typedarray/Int16Array#constructor
  local.tee $2
  call $~lib/rt/pure/__retain
  local.set $3
  block $break|0
   i32.const 0
   local.set $4
   loop $loop|0
    local.get $4
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $3
    local.get $4
    local.get $0
    local.get $4
    call $~lib/array/Array<i32>#__get
    i32.const 16
    i32.shl
    i32.const 16
    i32.shr_s
    call $~lib/typedarray/Int16Array#__set
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $loop|0
   end
   unreachable
  end
  local.get $3
  call $~lib/typedarray/Int16Array#get:buffer
  local.tee $4
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  i32.add
  call $~lib/arraybuffer/ArrayBuffer#slice
  local.set $5
  i32.const 0
  local.set $6
  i32.const 1
  global.set $~lib/argc
  local.get $5
  i32.const 0
  i32.const 0
  call $~lib/typedarray/Int16Array.wrap|trampoline
  local.set $7
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  local.set $6
  block $break|1
   i32.const 0
   local.set $7
   loop $loop|1
    local.get $7
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|1
    local.get $3
    local.get $7
    call $~lib/typedarray/Int16Array#__get
    local.get $6
    local.get $7
    call $~lib/typedarray/Int16Array#__get
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 604
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $loop|1
   end
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint16Array#get:buffer (; 490 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/rt/pure/__retain
 )
 (func $~lib/typedarray/Uint16Array.wrap (; 491 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $1
  local.set $4
  local.get $2
  local.set $3
  local.get $5
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  local.set $6
  local.get $4
  local.get $6
  i32.ge_u
  if
   local.get $5
   call $~lib/rt/pure/__release
   i32.const 280
   i32.const 432
   i32.const 1560
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 0
  i32.lt_s
  if
   local.get $3
   i32.const -1
   i32.eq
   if
    local.get $5
    call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    i32.const 1
    i32.and
    if
     local.get $5
     call $~lib/rt/pure/__release
     i32.const 24
     i32.const 432
     i32.const 1567
     i32.const 8
     call $~lib/builtins/abort
     unreachable
    else     
     local.get $5
     call $~lib/arraybuffer/ArrayBuffer#get:byteLength
     local.set $7
    end
   else    
    local.get $5
    call $~lib/rt/pure/__release
    i32.const 24
    i32.const 432
    i32.const 1572
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  else   
   local.get $3
   i32.const 1
   i32.shl
   local.set $7
  end
  local.get $4
  local.get $7
  i32.add
  local.get $5
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.gt_s
  if
   local.get $5
   call $~lib/rt/pure/__release
   i32.const 24
   i32.const 432
   i32.const 1578
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 12
  i32.const 7
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.set $8
  local.get $8
  local.tee $9
  local.get $5
  local.tee $10
  local.get $9
  i32.load
  local.tee $9
  i32.ne
  if
   local.get $10
   call $~lib/rt/pure/__retain
   drop
   local.get $9
   call $~lib/rt/pure/__release
  end
  local.get $10
  i32.store
  local.get $8
  local.get $7
  i32.store offset=8
  local.get $8
  local.get $5
  local.get $4
  i32.add
  i32.store offset=4
  local.get $8
  local.set $10
  local.get $5
  call $~lib/rt/pure/__release
  local.get $10
  local.set $8
  local.get $0
  call $~lib/rt/pure/__release
  local.get $8
 )
 (func $~lib/typedarray/Uint16Array.wrap|trampoline (; 492 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
    local.set $1
   end
   i32.const -1
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/typedarray/Uint16Array.wrap
 )
 (func $std/typedarray/testArrayWrap<~lib/typedarray/Uint16Array,u16> (; 493 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $std/typedarray/testArrayWrapValues
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $0
  call $~lib/array/Array<i32>#get:length
  local.set $1
  i32.const 0
  local.get $1
  call $~lib/typedarray/Uint16Array#constructor
  local.tee $2
  call $~lib/rt/pure/__retain
  local.set $3
  block $break|0
   i32.const 0
   local.set $4
   loop $loop|0
    local.get $4
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $3
    local.get $4
    local.get $0
    local.get $4
    call $~lib/array/Array<i32>#__get
    i32.const 65535
    i32.and
    call $~lib/typedarray/Uint16Array#__set
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $loop|0
   end
   unreachable
  end
  local.get $3
  call $~lib/typedarray/Uint16Array#get:buffer
  local.tee $4
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  i32.add
  call $~lib/arraybuffer/ArrayBuffer#slice
  local.set $5
  i32.const 0
  local.set $6
  i32.const 1
  global.set $~lib/argc
  local.get $5
  i32.const 0
  i32.const 0
  call $~lib/typedarray/Uint16Array.wrap|trampoline
  local.set $7
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  local.set $6
  block $break|1
   i32.const 0
   local.set $7
   loop $loop|1
    local.get $7
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|1
    local.get $3
    local.get $7
    call $~lib/typedarray/Uint16Array#__get
    local.get $6
    local.get $7
    call $~lib/typedarray/Uint16Array#__get
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 604
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $loop|1
   end
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int32Array#get:buffer (; 494 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/rt/pure/__retain
 )
 (func $~lib/typedarray/Int32Array.wrap (; 495 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $1
  local.set $4
  local.get $2
  local.set $3
  local.get $5
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  local.set $6
  local.get $4
  local.get $6
  i32.ge_u
  if
   local.get $5
   call $~lib/rt/pure/__release
   i32.const 280
   i32.const 432
   i32.const 1560
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 0
  i32.lt_s
  if
   local.get $3
   i32.const -1
   i32.eq
   if
    local.get $5
    call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    i32.const 2
    i32.and
    if
     local.get $5
     call $~lib/rt/pure/__release
     i32.const 24
     i32.const 432
     i32.const 1567
     i32.const 8
     call $~lib/builtins/abort
     unreachable
    else     
     local.get $5
     call $~lib/arraybuffer/ArrayBuffer#get:byteLength
     local.set $7
    end
   else    
    local.get $5
    call $~lib/rt/pure/__release
    i32.const 24
    i32.const 432
    i32.const 1572
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  else   
   local.get $3
   i32.const 2
   i32.shl
   local.set $7
  end
  local.get $4
  local.get $7
  i32.add
  local.get $5
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.gt_s
  if
   local.get $5
   call $~lib/rt/pure/__release
   i32.const 24
   i32.const 432
   i32.const 1578
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 12
  i32.const 8
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.set $8
  local.get $8
  local.tee $9
  local.get $5
  local.tee $10
  local.get $9
  i32.load
  local.tee $9
  i32.ne
  if
   local.get $10
   call $~lib/rt/pure/__retain
   drop
   local.get $9
   call $~lib/rt/pure/__release
  end
  local.get $10
  i32.store
  local.get $8
  local.get $7
  i32.store offset=8
  local.get $8
  local.get $5
  local.get $4
  i32.add
  i32.store offset=4
  local.get $8
  local.set $10
  local.get $5
  call $~lib/rt/pure/__release
  local.get $10
  local.set $8
  local.get $0
  call $~lib/rt/pure/__release
  local.get $8
 )
 (func $~lib/typedarray/Int32Array.wrap|trampoline (; 496 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
    local.set $1
   end
   i32.const -1
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/typedarray/Int32Array.wrap
 )
 (func $std/typedarray/testArrayWrap<~lib/typedarray/Int32Array,i32> (; 497 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $std/typedarray/testArrayWrapValues
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $0
  call $~lib/array/Array<i32>#get:length
  local.set $1
  i32.const 0
  local.get $1
  call $~lib/typedarray/Int32Array#constructor
  local.tee $2
  call $~lib/rt/pure/__retain
  local.set $3
  block $break|0
   i32.const 0
   local.set $4
   loop $loop|0
    local.get $4
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $3
    local.get $4
    local.get $0
    local.get $4
    call $~lib/array/Array<i32>#__get
    call $~lib/typedarray/Int32Array#__set
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $loop|0
   end
   unreachable
  end
  local.get $3
  call $~lib/typedarray/Int32Array#get:buffer
  local.tee $4
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  i32.add
  call $~lib/arraybuffer/ArrayBuffer#slice
  local.set $5
  i32.const 0
  local.set $6
  i32.const 1
  global.set $~lib/argc
  local.get $5
  i32.const 0
  i32.const 0
  call $~lib/typedarray/Int32Array.wrap|trampoline
  local.set $7
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  local.set $6
  block $break|1
   i32.const 0
   local.set $7
   loop $loop|1
    local.get $7
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|1
    local.get $3
    local.get $7
    call $~lib/typedarray/Int32Array#__get
    local.get $6
    local.get $7
    call $~lib/typedarray/Int32Array#__get
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 604
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $loop|1
   end
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint32Array#get:buffer (; 498 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/rt/pure/__retain
 )
 (func $~lib/typedarray/Uint32Array.wrap (; 499 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $1
  local.set $4
  local.get $2
  local.set $3
  local.get $5
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  local.set $6
  local.get $4
  local.get $6
  i32.ge_u
  if
   local.get $5
   call $~lib/rt/pure/__release
   i32.const 280
   i32.const 432
   i32.const 1560
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 0
  i32.lt_s
  if
   local.get $3
   i32.const -1
   i32.eq
   if
    local.get $5
    call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    i32.const 2
    i32.and
    if
     local.get $5
     call $~lib/rt/pure/__release
     i32.const 24
     i32.const 432
     i32.const 1567
     i32.const 8
     call $~lib/builtins/abort
     unreachable
    else     
     local.get $5
     call $~lib/arraybuffer/ArrayBuffer#get:byteLength
     local.set $7
    end
   else    
    local.get $5
    call $~lib/rt/pure/__release
    i32.const 24
    i32.const 432
    i32.const 1572
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  else   
   local.get $3
   i32.const 2
   i32.shl
   local.set $7
  end
  local.get $4
  local.get $7
  i32.add
  local.get $5
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.gt_s
  if
   local.get $5
   call $~lib/rt/pure/__release
   i32.const 24
   i32.const 432
   i32.const 1578
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 12
  i32.const 9
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.set $8
  local.get $8
  local.tee $9
  local.get $5
  local.tee $10
  local.get $9
  i32.load
  local.tee $9
  i32.ne
  if
   local.get $10
   call $~lib/rt/pure/__retain
   drop
   local.get $9
   call $~lib/rt/pure/__release
  end
  local.get $10
  i32.store
  local.get $8
  local.get $7
  i32.store offset=8
  local.get $8
  local.get $5
  local.get $4
  i32.add
  i32.store offset=4
  local.get $8
  local.set $10
  local.get $5
  call $~lib/rt/pure/__release
  local.get $10
  local.set $8
  local.get $0
  call $~lib/rt/pure/__release
  local.get $8
 )
 (func $~lib/typedarray/Uint32Array.wrap|trampoline (; 500 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
    local.set $1
   end
   i32.const -1
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/typedarray/Uint32Array.wrap
 )
 (func $std/typedarray/testArrayWrap<~lib/typedarray/Uint32Array,u32> (; 501 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $std/typedarray/testArrayWrapValues
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $0
  call $~lib/array/Array<i32>#get:length
  local.set $1
  i32.const 0
  local.get $1
  call $~lib/typedarray/Uint32Array#constructor
  local.tee $2
  call $~lib/rt/pure/__retain
  local.set $3
  block $break|0
   i32.const 0
   local.set $4
   loop $loop|0
    local.get $4
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $3
    local.get $4
    local.get $0
    local.get $4
    call $~lib/array/Array<i32>#__get
    call $~lib/typedarray/Uint32Array#__set
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $loop|0
   end
   unreachable
  end
  local.get $3
  call $~lib/typedarray/Uint32Array#get:buffer
  local.tee $4
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  i32.add
  call $~lib/arraybuffer/ArrayBuffer#slice
  local.set $5
  i32.const 0
  local.set $6
  i32.const 1
  global.set $~lib/argc
  local.get $5
  i32.const 0
  i32.const 0
  call $~lib/typedarray/Uint32Array.wrap|trampoline
  local.set $7
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  local.set $6
  block $break|1
   i32.const 0
   local.set $7
   loop $loop|1
    local.get $7
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|1
    local.get $3
    local.get $7
    call $~lib/typedarray/Uint32Array#__get
    local.get $6
    local.get $7
    call $~lib/typedarray/Uint32Array#__get
    i32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 604
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $loop|1
   end
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int64Array#get:buffer (; 502 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/rt/pure/__retain
 )
 (func $~lib/typedarray/Int64Array.wrap (; 503 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $1
  local.set $4
  local.get $2
  local.set $3
  local.get $5
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  local.set $6
  local.get $4
  local.get $6
  i32.ge_u
  if
   local.get $5
   call $~lib/rt/pure/__release
   i32.const 280
   i32.const 432
   i32.const 1560
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 0
  i32.lt_s
  if
   local.get $3
   i32.const -1
   i32.eq
   if
    local.get $5
    call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    i32.const 4
    i32.and
    if
     local.get $5
     call $~lib/rt/pure/__release
     i32.const 24
     i32.const 432
     i32.const 1567
     i32.const 8
     call $~lib/builtins/abort
     unreachable
    else     
     local.get $5
     call $~lib/arraybuffer/ArrayBuffer#get:byteLength
     local.set $7
    end
   else    
    local.get $5
    call $~lib/rt/pure/__release
    i32.const 24
    i32.const 432
    i32.const 1572
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  else   
   local.get $3
   i32.const 3
   i32.shl
   local.set $7
  end
  local.get $4
  local.get $7
  i32.add
  local.get $5
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.gt_s
  if
   local.get $5
   call $~lib/rt/pure/__release
   i32.const 24
   i32.const 432
   i32.const 1578
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 12
  i32.const 10
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.set $8
  local.get $8
  local.tee $9
  local.get $5
  local.tee $10
  local.get $9
  i32.load
  local.tee $9
  i32.ne
  if
   local.get $10
   call $~lib/rt/pure/__retain
   drop
   local.get $9
   call $~lib/rt/pure/__release
  end
  local.get $10
  i32.store
  local.get $8
  local.get $7
  i32.store offset=8
  local.get $8
  local.get $5
  local.get $4
  i32.add
  i32.store offset=4
  local.get $8
  local.set $10
  local.get $5
  call $~lib/rt/pure/__release
  local.get $10
  local.set $8
  local.get $0
  call $~lib/rt/pure/__release
  local.get $8
 )
 (func $~lib/typedarray/Int64Array.wrap|trampoline (; 504 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
    local.set $1
   end
   i32.const -1
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/typedarray/Int64Array.wrap
 )
 (func $std/typedarray/testArrayWrap<~lib/typedarray/Int64Array,i64> (; 505 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $std/typedarray/testArrayWrapValues
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $0
  call $~lib/array/Array<i32>#get:length
  local.set $1
  i32.const 0
  local.get $1
  call $~lib/typedarray/Int64Array#constructor
  local.tee $2
  call $~lib/rt/pure/__retain
  local.set $3
  block $break|0
   i32.const 0
   local.set $4
   loop $loop|0
    local.get $4
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $3
    local.get $4
    local.get $0
    local.get $4
    call $~lib/array/Array<i32>#__get
    i64.extend_i32_s
    call $~lib/typedarray/Int64Array#__set
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $loop|0
   end
   unreachable
  end
  local.get $3
  call $~lib/typedarray/Int64Array#get:buffer
  local.tee $4
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  i32.add
  call $~lib/arraybuffer/ArrayBuffer#slice
  local.set $5
  i32.const 0
  local.set $6
  i32.const 1
  global.set $~lib/argc
  local.get $5
  i32.const 0
  i32.const 0
  call $~lib/typedarray/Int64Array.wrap|trampoline
  local.set $7
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  local.set $6
  block $break|1
   i32.const 0
   local.set $7
   loop $loop|1
    local.get $7
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|1
    local.get $3
    local.get $7
    call $~lib/typedarray/Int64Array#__get
    local.get $6
    local.get $7
    call $~lib/typedarray/Int64Array#__get
    i64.eq
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 604
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $loop|1
   end
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint64Array#get:buffer (; 506 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/rt/pure/__retain
 )
 (func $~lib/typedarray/Uint64Array.wrap (; 507 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $1
  local.set $4
  local.get $2
  local.set $3
  local.get $5
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  local.set $6
  local.get $4
  local.get $6
  i32.ge_u
  if
   local.get $5
   call $~lib/rt/pure/__release
   i32.const 280
   i32.const 432
   i32.const 1560
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 0
  i32.lt_s
  if
   local.get $3
   i32.const -1
   i32.eq
   if
    local.get $5
    call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    i32.const 4
    i32.and
    if
     local.get $5
     call $~lib/rt/pure/__release
     i32.const 24
     i32.const 432
     i32.const 1567
     i32.const 8
     call $~lib/builtins/abort
     unreachable
    else     
     local.get $5
     call $~lib/arraybuffer/ArrayBuffer#get:byteLength
     local.set $7
    end
   else    
    local.get $5
    call $~lib/rt/pure/__release
    i32.const 24
    i32.const 432
    i32.const 1572
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  else   
   local.get $3
   i32.const 3
   i32.shl
   local.set $7
  end
  local.get $4
  local.get $7
  i32.add
  local.get $5
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.gt_s
  if
   local.get $5
   call $~lib/rt/pure/__release
   i32.const 24
   i32.const 432
   i32.const 1578
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 12
  i32.const 11
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.set $8
  local.get $8
  local.tee $9
  local.get $5
  local.tee $10
  local.get $9
  i32.load
  local.tee $9
  i32.ne
  if
   local.get $10
   call $~lib/rt/pure/__retain
   drop
   local.get $9
   call $~lib/rt/pure/__release
  end
  local.get $10
  i32.store
  local.get $8
  local.get $7
  i32.store offset=8
  local.get $8
  local.get $5
  local.get $4
  i32.add
  i32.store offset=4
  local.get $8
  local.set $10
  local.get $5
  call $~lib/rt/pure/__release
  local.get $10
  local.set $8
  local.get $0
  call $~lib/rt/pure/__release
  local.get $8
 )
 (func $~lib/typedarray/Uint64Array.wrap|trampoline (; 508 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
    local.set $1
   end
   i32.const -1
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/typedarray/Uint64Array.wrap
 )
 (func $std/typedarray/testArrayWrap<~lib/typedarray/Uint64Array,u64> (; 509 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $std/typedarray/testArrayWrapValues
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $0
  call $~lib/array/Array<i32>#get:length
  local.set $1
  i32.const 0
  local.get $1
  call $~lib/typedarray/Uint64Array#constructor
  local.tee $2
  call $~lib/rt/pure/__retain
  local.set $3
  block $break|0
   i32.const 0
   local.set $4
   loop $loop|0
    local.get $4
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $3
    local.get $4
    local.get $0
    local.get $4
    call $~lib/array/Array<i32>#__get
    i64.extend_i32_s
    call $~lib/typedarray/Uint64Array#__set
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $loop|0
   end
   unreachable
  end
  local.get $3
  call $~lib/typedarray/Uint64Array#get:buffer
  local.tee $4
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  i32.add
  call $~lib/arraybuffer/ArrayBuffer#slice
  local.set $5
  i32.const 0
  local.set $6
  i32.const 1
  global.set $~lib/argc
  local.get $5
  i32.const 0
  i32.const 0
  call $~lib/typedarray/Uint64Array.wrap|trampoline
  local.set $7
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  local.set $6
  block $break|1
   i32.const 0
   local.set $7
   loop $loop|1
    local.get $7
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|1
    local.get $3
    local.get $7
    call $~lib/typedarray/Uint64Array#__get
    local.get $6
    local.get $7
    call $~lib/typedarray/Uint64Array#__get
    i64.eq
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 604
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $loop|1
   end
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Float32Array#get:buffer (; 510 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/rt/pure/__retain
 )
 (func $~lib/typedarray/Float32Array.wrap (; 511 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $1
  local.set $4
  local.get $2
  local.set $3
  local.get $5
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  local.set $6
  local.get $4
  local.get $6
  i32.ge_u
  if
   local.get $5
   call $~lib/rt/pure/__release
   i32.const 280
   i32.const 432
   i32.const 1560
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 0
  i32.lt_s
  if
   local.get $3
   i32.const -1
   i32.eq
   if
    local.get $5
    call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    i32.const 2
    i32.and
    if
     local.get $5
     call $~lib/rt/pure/__release
     i32.const 24
     i32.const 432
     i32.const 1567
     i32.const 8
     call $~lib/builtins/abort
     unreachable
    else     
     local.get $5
     call $~lib/arraybuffer/ArrayBuffer#get:byteLength
     local.set $7
    end
   else    
    local.get $5
    call $~lib/rt/pure/__release
    i32.const 24
    i32.const 432
    i32.const 1572
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  else   
   local.get $3
   i32.const 2
   i32.shl
   local.set $7
  end
  local.get $4
  local.get $7
  i32.add
  local.get $5
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.gt_s
  if
   local.get $5
   call $~lib/rt/pure/__release
   i32.const 24
   i32.const 432
   i32.const 1578
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 12
  i32.const 12
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.set $8
  local.get $8
  local.tee $9
  local.get $5
  local.tee $10
  local.get $9
  i32.load
  local.tee $9
  i32.ne
  if
   local.get $10
   call $~lib/rt/pure/__retain
   drop
   local.get $9
   call $~lib/rt/pure/__release
  end
  local.get $10
  i32.store
  local.get $8
  local.get $7
  i32.store offset=8
  local.get $8
  local.get $5
  local.get $4
  i32.add
  i32.store offset=4
  local.get $8
  local.set $10
  local.get $5
  call $~lib/rt/pure/__release
  local.get $10
  local.set $8
  local.get $0
  call $~lib/rt/pure/__release
  local.get $8
 )
 (func $~lib/typedarray/Float32Array.wrap|trampoline (; 512 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
    local.set $1
   end
   i32.const -1
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/typedarray/Float32Array.wrap
 )
 (func $std/typedarray/testArrayWrap<~lib/typedarray/Float32Array,f32> (; 513 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $std/typedarray/testArrayWrapValues
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $0
  call $~lib/array/Array<i32>#get:length
  local.set $1
  i32.const 0
  local.get $1
  call $~lib/typedarray/Float32Array#constructor
  local.tee $2
  call $~lib/rt/pure/__retain
  local.set $3
  block $break|0
   i32.const 0
   local.set $4
   loop $loop|0
    local.get $4
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $3
    local.get $4
    local.get $0
    local.get $4
    call $~lib/array/Array<i32>#__get
    f32.convert_i32_s
    call $~lib/typedarray/Float32Array#__set
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $loop|0
   end
   unreachable
  end
  local.get $3
  call $~lib/typedarray/Float32Array#get:buffer
  local.tee $4
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  i32.add
  call $~lib/arraybuffer/ArrayBuffer#slice
  local.set $5
  i32.const 0
  local.set $6
  i32.const 1
  global.set $~lib/argc
  local.get $5
  i32.const 0
  i32.const 0
  call $~lib/typedarray/Float32Array.wrap|trampoline
  local.set $7
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  local.set $6
  block $break|1
   i32.const 0
   local.set $7
   loop $loop|1
    local.get $7
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|1
    local.get $3
    local.get $7
    call $~lib/typedarray/Float32Array#__get
    local.get $6
    local.get $7
    call $~lib/typedarray/Float32Array#__get
    f32.eq
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 604
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $loop|1
   end
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Float64Array#get:buffer (; 514 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load
  call $~lib/rt/pure/__retain
 )
 (func $~lib/typedarray/Float64Array.wrap (; 515 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  local.get $0
  call $~lib/rt/pure/__retain
  drop
  local.get $0
  call $~lib/rt/pure/__retain
  local.set $5
  local.get $1
  local.set $4
  local.get $2
  local.set $3
  local.get $5
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  local.set $6
  local.get $4
  local.get $6
  i32.ge_u
  if
   local.get $5
   call $~lib/rt/pure/__release
   i32.const 280
   i32.const 432
   i32.const 1560
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 0
  i32.lt_s
  if
   local.get $3
   i32.const -1
   i32.eq
   if
    local.get $5
    call $~lib/arraybuffer/ArrayBuffer#get:byteLength
    i32.const 4
    i32.and
    if
     local.get $5
     call $~lib/rt/pure/__release
     i32.const 24
     i32.const 432
     i32.const 1567
     i32.const 8
     call $~lib/builtins/abort
     unreachable
    else     
     local.get $5
     call $~lib/arraybuffer/ArrayBuffer#get:byteLength
     local.set $7
    end
   else    
    local.get $5
    call $~lib/rt/pure/__release
    i32.const 24
    i32.const 432
    i32.const 1572
    i32.const 6
    call $~lib/builtins/abort
    unreachable
   end
  else   
   local.get $3
   i32.const 3
   i32.shl
   local.set $7
  end
  local.get $4
  local.get $7
  i32.add
  local.get $5
  call $~lib/arraybuffer/ArrayBuffer#get:byteLength
  i32.gt_s
  if
   local.get $5
   call $~lib/rt/pure/__release
   i32.const 24
   i32.const 432
   i32.const 1578
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 12
  i32.const 13
  call $~lib/rt/tlsf/__alloc
  call $~lib/rt/pure/__retain
  local.set $8
  local.get $8
  local.tee $9
  local.get $5
  local.tee $10
  local.get $9
  i32.load
  local.tee $9
  i32.ne
  if
   local.get $10
   call $~lib/rt/pure/__retain
   drop
   local.get $9
   call $~lib/rt/pure/__release
  end
  local.get $10
  i32.store
  local.get $8
  local.get $7
  i32.store offset=8
  local.get $8
  local.get $5
  local.get $4
  i32.add
  i32.store offset=4
  local.get $8
  local.set $10
  local.get $5
  call $~lib/rt/pure/__release
  local.get $10
  local.set $8
  local.get $0
  call $~lib/rt/pure/__release
  local.get $8
 )
 (func $~lib/typedarray/Float64Array.wrap|trampoline (; 516 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
    local.set $1
   end
   i32.const -1
   local.set $2
  end
  local.get $0
  local.get $1
  local.get $2
  call $~lib/typedarray/Float64Array.wrap
 )
 (func $std/typedarray/testArrayWrap<~lib/typedarray/Float64Array,f64> (; 517 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  global.get $std/typedarray/testArrayWrapValues
  call $~lib/rt/pure/__retain
  local.set $0
  local.get $0
  call $~lib/array/Array<i32>#get:length
  local.set $1
  i32.const 0
  local.get $1
  call $~lib/typedarray/Float64Array#constructor
  local.tee $2
  call $~lib/rt/pure/__retain
  local.set $3
  block $break|0
   i32.const 0
   local.set $4
   loop $loop|0
    local.get $4
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $3
    local.get $4
    local.get $0
    local.get $4
    call $~lib/array/Array<i32>#__get
    f64.convert_i32_s
    call $~lib/typedarray/Float64Array#__set
    local.get $4
    i32.const 1
    i32.add
    local.set $4
    br $loop|0
   end
   unreachable
  end
  local.get $3
  call $~lib/typedarray/Float64Array#get:buffer
  local.tee $4
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  i32.add
  call $~lib/arraybuffer/ArrayBuffer#slice
  local.set $5
  i32.const 0
  local.set $6
  i32.const 1
  global.set $~lib/argc
  local.get $5
  i32.const 0
  i32.const 0
  call $~lib/typedarray/Float64Array.wrap|trampoline
  local.set $7
  local.get $6
  call $~lib/rt/pure/__release
  local.get $7
  local.set $6
  block $break|1
   i32.const 0
   local.set $7
   loop $loop|1
    local.get $7
    local.get $1
    i32.lt_s
    i32.eqz
    br_if $break|1
    local.get $3
    local.get $7
    call $~lib/typedarray/Float64Array#__get
    local.get $6
    local.get $7
    call $~lib/typedarray/Float64Array#__get
    f64.eq
    i32.eqz
    if
     i32.const 0
     i32.const 376
     i32.const 604
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $7
    i32.const 1
    i32.add
    local.set $7
    br $loop|1
   end
   unreachable
  end
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
 )
 (func $start:std/typedarray (; 518 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  i32.const 0
  call $std/typedarray/testInstantiate
  i32.const 5
  call $std/typedarray/testInstantiate
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.set $0
  local.get $0
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
  call $~lib/typedarray/Int32Array#get:length
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 95
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 96
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  i32.const 12
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 97
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  call $~lib/typedarray/Int32Array#__get
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 98
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Int32Array#__get
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 99
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Int32Array#__get
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 100
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int32Array#subarray
  local.set $1
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  local.set $0
  local.get $0
  call $~lib/typedarray/Int32Array#get:length
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 103
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 104
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 105
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  call $~lib/typedarray/Int32Array#__get
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 106
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  i32.const 0
  i32.const 8
  call $~lib/typedarray/Float64Array#constructor
  local.set $0
  local.get $0
  i32.const 0
  f64.const 1
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  i32.const 1
  f64.const 2
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  i32.const 2
  f64.const 7
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  i32.const 3
  f64.const 6
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  i32.const 4
  f64.const 5
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  i32.const 5
  f64.const 4
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  i32.const 6
  f64.const 3
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  i32.const 7
  f64.const 8
  call $~lib/typedarray/Float64Array#__set
  local.get $0
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Float64Array#subarray
  local.set $1
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  local.set $0
  local.get $0
  call $~lib/typedarray/Float64Array#get:length
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 122
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.const 16
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 123
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  i32.const 32
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 124
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  global.set $~lib/argc
  local.get $0
  i32.const 0
  call $~lib/typedarray/Float64Array#sort|trampoline
  call $~lib/rt/pure/__release
  local.get $0
  i32.const 0
  call $~lib/typedarray/Float64Array#__get
  f64.const 4
  f64.eq
  if (result i32)
   local.get $0
   i32.const 1
   call $~lib/typedarray/Float64Array#__get
   f64.const 5
   f64.eq
  else   
   i32.const 0
  end
  if (result i32)
   local.get $0
   i32.const 2
   call $~lib/typedarray/Float64Array#__get
   f64.const 6
   f64.eq
  else   
   i32.const 0
  end
  if (result i32)
   local.get $0
   i32.const 3
   call $~lib/typedarray/Float64Array#__get
   f64.const 7
   f64.eq
  else   
   i32.const 0
  end
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 126
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.set $0
  local.get $0
  i32.const 0
  i32.const -32
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  i32.const 2
  i32.const 256
  call $~lib/typedarray/Uint8ClampedArray#__set
  local.get $0
  i32.const 0
  call $~lib/typedarray/Uint8ClampedArray#__get
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 135
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Uint8ClampedArray#__get
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 136
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  call $~lib/typedarray/Uint8ClampedArray#__get
  i32.const 255
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 137
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  i32.const 0
  i32.const 5
  call $~lib/typedarray/Int8Array#constructor
  local.set $0
  local.get $0
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
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 4
  i32.const 5
  call $~lib/typedarray/Int8Array#__set
  local.get $0
  i32.const 1
  i32.const 1
  i32.const 3
  call $~lib/typedarray/Int8Array#fill
  call $~lib/rt/pure/__release
  local.get $0
  i32.const 5
  i32.const 0
  i32.const 14
  i32.const 488
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $2
  call $std/typedarray/isInt8ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 149
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 0
  i32.const 0
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/typedarray/Int8Array#fill
  call $~lib/rt/pure/__release
  local.get $0
  i32.const 5
  i32.const 0
  i32.const 14
  i32.const 560
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $3
  call $std/typedarray/isInt8ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 376
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
  local.get $0
  i32.const 5
  i32.const 0
  i32.const 14
  i32.const 584
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  call $std/typedarray/isInt8ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 155
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 2
  i32.const -2
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/typedarray/Int8Array#fill
  call $~lib/rt/pure/__release
  local.get $0
  i32.const 5
  i32.const 0
  i32.const 14
  i32.const 608
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $5
  call $std/typedarray/isInt8ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 376
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
  local.get $0
  i32.const 5
  i32.const 0
  i32.const 14
  i32.const 632
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $6
  call $std/typedarray/isInt8ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 161
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Int8Array#subarray
  local.set $1
  local.get $1
  i32.const 0
  i32.const 0
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/typedarray/Int8Array#fill
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/typedarray/Int8Array#get:length
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 165
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 166
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 167
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 3
  i32.const 0
  i32.const 14
  i32.const 656
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $8
  call $std/typedarray/isInt8ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 168
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 5
  i32.const 0
  i32.const 14
  i32.const 680
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $9
  call $std/typedarray/isInt8ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 169
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
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
  local.get $1
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $9
  call $~lib/rt/pure/__release
  i32.const 0
  i32.const 5
  call $~lib/typedarray/Int32Array#constructor
  local.set $9
  local.get $9
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int32Array#__set
  local.get $9
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int32Array#__set
  local.get $9
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int32Array#__set
  local.get $9
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int32Array#__set
  local.get $9
  i32.const 4
  i32.const 5
  call $~lib/typedarray/Int32Array#__set
  local.get $9
  i32.const 1
  i32.const 1
  i32.const 3
  call $~lib/typedarray/Int32Array#fill
  call $~lib/rt/pure/__release
  local.get $9
  i32.const 5
  i32.const 2
  i32.const 15
  i32.const 704
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $1
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 181
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $9
  i32.const 0
  i32.const 0
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/typedarray/Int32Array#fill
  call $~lib/rt/pure/__release
  local.get $9
  i32.const 5
  i32.const 2
  i32.const 15
  i32.const 744
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $6
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 184
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $9
  i32.const 1
  i32.const 0
  i32.const -3
  call $~lib/typedarray/Int32Array#fill
  call $~lib/rt/pure/__release
  local.get $9
  i32.const 5
  i32.const 2
  i32.const 15
  i32.const 784
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $5
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 187
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $9
  i32.const 2
  i32.const -2
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/typedarray/Int32Array#fill
  call $~lib/rt/pure/__release
  local.get $9
  i32.const 5
  i32.const 2
  i32.const 15
  i32.const 824
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $4
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 190
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $9
  i32.const 0
  i32.const 1
  i32.const 0
  call $~lib/typedarray/Int32Array#fill
  call $~lib/rt/pure/__release
  local.get $9
  i32.const 5
  i32.const 2
  i32.const 15
  i32.const 864
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $3
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 193
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $9
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Int32Array#subarray
  local.set $8
  local.get $8
  i32.const 0
  i32.const 0
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/typedarray/Int32Array#fill
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/typedarray/Int32Array#get:length
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 197
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $8
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 198
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $8
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  i32.const 12
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 199
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $8
  i32.const 3
  i32.const 2
  i32.const 15
  i32.const 904
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $0
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 200
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $9
  i32.const 5
  i32.const 2
  i32.const 15
  i32.const 936
  call $~lib/rt/__allocArray
  call $~lib/rt/pure/__retain
  local.tee $7
  call $std/typedarray/isInt32ArrayEqual
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 201
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $9
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $5
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  i32.const 0
  i32.const 6
  call $~lib/typedarray/Int8Array#constructor
  local.set $7
  local.get $7
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int8Array#__set
  local.get $7
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int8Array#__set
  local.get $7
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int8Array#__set
  local.get $7
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int8Array#__set
  local.get $7
  i32.const 4
  i32.const 5
  call $~lib/typedarray/Int8Array#__set
  local.get $7
  i32.const 5
  i32.const 6
  call $~lib/typedarray/Int8Array#__set
  local.get $7
  i32.const 1
  i32.const 6
  call $~lib/typedarray/Int8Array#subarray
  local.set $0
  local.get $0
  i32.const 0
  call $~lib/typedarray/Int8Array#__get
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 222
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/typedarray/Int8Array#get:length
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 223
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 224
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 225
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  i32.const 5
  call $~lib/typedarray/Int8Array#subarray
  local.set $8
  local.get $8
  i32.const 0
  call $~lib/typedarray/Int8Array#__get
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 228
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $8
  call $~lib/typedarray/Int8Array#get:length
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 229
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $8
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 230
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $8
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 231
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $8
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Int8Array#subarray
  local.set $3
  local.get $3
  i32.const 0
  call $~lib/typedarray/Int8Array#__get
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 234
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  call $~lib/typedarray/Int8Array#get:length
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 235
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 236
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 237
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  i32.const 0
  i32.const 5
  call $~lib/typedarray/Int32Array#constructor
  local.set $3
  local.get $3
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Int32Array#__set
  local.get $3
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int32Array#__set
  local.get $3
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Int32Array#__set
  local.get $3
  i32.const 3
  i32.const 4
  call $~lib/typedarray/Int32Array#__set
  local.get $3
  i32.const 4
  i32.const 5
  call $~lib/typedarray/Int32Array#__set
  local.get $3
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Int32Array#subarray
  local.set $8
  local.get $8
  call $~lib/typedarray/Int32Array#get:length
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 249
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $8
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 250
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $8
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  i32.const 12
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 251
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 1
  i32.const 3
  call $~lib/typedarray/Int32Array#slice
  local.set $0
  local.get $0
  i32.const 0
  call $~lib/typedarray/Int32Array#__get
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 254
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  i32.const 1
  call $~lib/typedarray/Int32Array#__get
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 255
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/typedarray/Int32Array#get:length
  i32.const 2
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 256
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 257
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 258
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $8
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Int32Array#slice
  local.set $7
  local.get $7
  i32.const 0
  call $~lib/typedarray/Int32Array#__get
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 261
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  call $~lib/typedarray/Int32Array#get:length
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 262
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 263
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  i32.const 4
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 264
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  i32.const 0
  global.get $~lib/builtins/i32.MAX_VALUE
  call $~lib/typedarray/Int32Array#slice
  local.set $4
  local.get $4
  local.get $3
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 267
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  call $~lib/typedarray/Int32Array#get:length
  local.get $3
  call $~lib/typedarray/Int32Array#get:length
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 268
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 269
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 376
   i32.const 270
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
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
  call $std/typedarray/testArrayFilter<~lib/typedarray/Int8Array,i8>
  call $std/typedarray/testArrayFilter<~lib/typedarray/Uint8Array,u8>
  call $std/typedarray/testArrayFilter<~lib/typedarray/Uint8ClampedArray,u8>
  call $std/typedarray/testArrayFilter<~lib/typedarray/Int16Array,i16>
  call $std/typedarray/testArrayFilter<~lib/typedarray/Uint16Array,u16>
  call $std/typedarray/testArrayFilter<~lib/typedarray/Int32Array,i32>
  call $std/typedarray/testArrayFilter<~lib/typedarray/Uint32Array,u32>
  call $std/typedarray/testArrayFilter<~lib/typedarray/Int64Array,i64>
  call $std/typedarray/testArrayFilter<~lib/typedarray/Uint64Array,u64>
  call $std/typedarray/testArrayFilter<~lib/typedarray/Float32Array,f32>
  call $std/typedarray/testArrayFilter<~lib/typedarray/Float64Array,f64>
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
  call $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Int8Array,i8>
  call $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Uint8Array,u8>
  call $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Uint8ClampedArray,u8>
  call $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Int16Array,i16>
  call $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Uint16Array,u16>
  call $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Int32Array,i32>
  call $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Uint32Array,u32>
  call $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Int64Array,i64>
  call $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Uint64Array,u64>
  call $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Float32Array,f32>
  call $std/typedarray/testArrayIndexOfAndLastIndexOf<~lib/typedarray/Float64Array,f64>
  call $std/typedarray/testArrayWrap<~lib/typedarray/Int8Array,i8>
  call $std/typedarray/testArrayWrap<~lib/typedarray/Uint8Array,u8>
  call $std/typedarray/testArrayWrap<~lib/typedarray/Uint8ClampedArray,u8>
  call $std/typedarray/testArrayWrap<~lib/typedarray/Int16Array,i16>
  call $std/typedarray/testArrayWrap<~lib/typedarray/Uint16Array,u16>
  call $std/typedarray/testArrayWrap<~lib/typedarray/Int32Array,i32>
  call $std/typedarray/testArrayWrap<~lib/typedarray/Uint32Array,u32>
  call $std/typedarray/testArrayWrap<~lib/typedarray/Int64Array,i64>
  call $std/typedarray/testArrayWrap<~lib/typedarray/Uint64Array,u64>
  call $std/typedarray/testArrayWrap<~lib/typedarray/Float32Array,f32>
  call $std/typedarray/testArrayWrap<~lib/typedarray/Float64Array,f64>
 )
 (func $start (; 519 ;) (type $FUNCSIG$v)
  global.get $~lib/started
  if
   return
  else   
   i32.const 1
   global.set $~lib/started
  end
  call $start:std/typedarray
 )
 (func $~lib/array/Array<i8>#__visit_impl (; 520 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/array/Array<i32>#__visit_impl (; 521 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/rt/pure/markGray (; 522 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  i32.const 1879048192
  i32.and
  i32.const 268435456
  i32.ne
  if
   local.get $0
   local.get $1
   i32.const 1879048192
   i32.const -1
   i32.xor
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
 (func $~lib/rt/pure/scanBlack (; 523 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  local.get $0
  i32.load offset=4
  i32.const 1879048192
  i32.const -1
  i32.xor
  i32.and
  i32.const 0
  i32.or
  i32.store offset=4
  local.get $0
  i32.const 16
  i32.add
  i32.const 4
  call $~lib/rt/__visit_members
 )
 (func $~lib/rt/pure/scan (; 524 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
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
    i32.const 1879048192
    i32.const -1
    i32.xor
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
 (func $~lib/rt/pure/collectWhite (; 525 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
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
   i32.const 1879048192
   i32.const -1
   i32.xor
   i32.and
   i32.const 0
   i32.or
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
 (func $~lib/rt/pure/__visit (; 526 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  local.get $0
  global.get $~lib/heap/__heap_base
  i32.lt_u
  if
   return
  end
  local.get $0
  i32.const 16
  i32.sub
  local.set $2
  block $break|0
   block $case5|0
    block $case4|0
     block $case3|0
      block $case2|0
       block $case1|0
        block $case0|0
         local.get $1
         local.set $3
         local.get $3
         i32.const 1
         i32.eq
         br_if $case0|0
         local.get $3
         i32.const 2
         i32.eq
         br_if $case1|0
         local.get $3
         i32.const 3
         i32.eq
         br_if $case2|0
         local.get $3
         i32.const 4
         i32.eq
         br_if $case3|0
         local.get $3
         i32.const 5
         i32.eq
         br_if $case4|0
         br $case5|0
        end
        local.get $2
        call $~lib/rt/pure/decrement
        br $break|0
       end
       local.get $2
       i32.load offset=4
       i32.const 268435455
       i32.and
       i32.const 0
       i32.gt_u
       i32.eqz
       if
        i32.const 0
        i32.const 232
        i32.const 75
        i32.const 17
        call $~lib/builtins/abort
        unreachable
       end
       local.get $2
       local.get $2
       i32.load offset=4
       i32.const 1
       i32.sub
       i32.store offset=4
       local.get $2
       call $~lib/rt/pure/markGray
       br $break|0
      end
      local.get $2
      call $~lib/rt/pure/scan
      br $break|0
     end
     local.get $2
     i32.load offset=4
     local.set $3
     local.get $3
     i32.const -268435456
     i32.and
     local.get $3
     i32.const 1
     i32.add
     i32.const -268435456
     i32.and
     i32.eq
     i32.eqz
     if
      i32.const 0
      i32.const 232
      i32.const 86
      i32.const 6
      call $~lib/builtins/abort
      unreachable
     end
     local.get $2
     local.get $3
     i32.const 1
     i32.add
     i32.store offset=4
     local.get $3
     i32.const 1879048192
     i32.and
     i32.const 0
     i32.ne
     if
      local.get $2
      call $~lib/rt/pure/scanBlack
     end
     br $break|0
    end
    local.get $2
    call $~lib/rt/pure/collectWhite
    br $break|0
   end
   i32.const 0
   i32.eqz
   if
    i32.const 0
    i32.const 232
    i32.const 97
    i32.const 24
    call $~lib/builtins/abort
    unreachable
   end
  end
 )
 (func $~lib/rt/__visit_members (; 527 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $block$4$break
   block $switch$1$default
    block $switch$1$case$17
     block $switch$1$case$16
      block $switch$1$case$4
       block $switch$1$case$2
        local.get $0
        i32.const 8
        i32.sub
        i32.load
        br_table $switch$1$case$2 $switch$1$case$2 $switch$1$case$4 $switch$1$case$4 $switch$1$case$4 $switch$1$case$4 $switch$1$case$4 $switch$1$case$4 $switch$1$case$4 $switch$1$case$4 $switch$1$case$4 $switch$1$case$4 $switch$1$case$4 $switch$1$case$4 $switch$1$case$16 $switch$1$case$17 $switch$1$default
       end
       return
      end
      br $block$4$break
     end
     local.get $0
     local.get $1
     call $~lib/array/Array<i8>#__visit_impl
     br $block$4$break
    end
    local.get $0
    local.get $1
    call $~lib/array/Array<i32>#__visit_impl
    br $block$4$break
   end
   unreachable
  end
  local.get $0
  i32.load
  local.tee $2
  if
   local.get $2
   local.get $1
   call $~lib/rt/pure/__visit
  end
  return
 )
 (func $null (; 528 ;) (type $FUNCSIG$v)
 )
)
