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
 (import "env" "abort" (func $~lib/builtins/abort (param i32 i32 i32 i32)))
 (import "rtrace" "onincrement" (func $~lib/rt/rtrace/onincrement (param i32)))
 (import "rtrace" "onalloc" (func $~lib/rt/rtrace/onalloc (param i32)))
 (import "rtrace" "ondecrement" (func $~lib/rt/rtrace/ondecrement (param i32)))
 (import "rtrace" "onfree" (func $~lib/rt/rtrace/onfree (param i32)))
 (memory $0 1)
 (data (i32.const 8) "\"\00\00\00\01\00\00\00\01\00\00\00\"\00\00\00s\00t\00d\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 64) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00p\00u\00r\00e\00.\00t\00s\00")
 (data (i32.const 112) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00~\00l\00i\00b\00/\00r\00t\00/\00t\00l\00s\00f\00.\00t\00s\00")
 (data (i32.const 160) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00a\00l\00l\00o\00c\00a\00t\00i\00o\00n\00 \00t\00o\00o\00 \00l\00a\00r\00g\00e\00")
 (data (i32.const 216) "\n\00\00\00\01\00\00\00\01\00\00\00\n\00\00\00E\00r\00r\00o\00r\00")
 (data (i32.const 248) "\00\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00")
 (data (i32.const 264) "$\00\00\00\01\00\00\00\01\00\00\00$\00\00\00I\00n\00d\00e\00x\00 \00o\00u\00t\00 \00o\00f\00 \00r\00a\00n\00g\00e\00")
 (data (i32.const 320) "\14\00\00\00\01\00\00\00\01\00\00\00\14\00\00\00R\00a\00n\00g\00e\00E\00r\00r\00o\00r\00")
 (data (i32.const 360) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00I\00n\00v\00a\00l\00i\00d\00 \00l\00e\00n\00g\00t\00h\00")
 (data (i32.const 408) "\05\00\00\00\01\00\00\00\00\00\00\00\05\00\00\00\01\01\01\04\05")
 (data (i32.const 432) "\05\00\00\00\01\00\00\00\00\00\00\00\05\00\00\00\00\00\00\00\00")
 (data (i32.const 456) "\05\00\00\00\01\00\00\00\00\00\00\00\05\00\00\00\01\01\00\00\00")
 (data (i32.const 480) "\05\00\00\00\01\00\00\00\00\00\00\00\05\00\00\00\01\01\00\02\02")
 (data (i32.const 504) "\05\00\00\00\01\00\00\00\00\00\00\00\05\00\00\00\01\01\00\02\02")
 (data (i32.const 528) "\03\00\00\00\01\00\00\00\00\00\00\00\03\00\00\00\00\00\00")
 (data (i32.const 552) "\05\00\00\00\01\00\00\00\00\00\00\00\05\00\00\00\01\00\00\00\02")
 (data (i32.const 576) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\01\00\00\00\01\00\00\00\04\00\00\00\05\00\00\00")
 (data (i32.const 616) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 656) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 696) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00")
 (data (i32.const 736) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\01\00\00\00\00\00\00\00\02\00\00\00\02\00\00\00")
 (data (i32.const 776) "\0c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 808) "\14\00\00\00\01\00\00\00\00\00\00\00\14\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\00\00")
 (data (i32.const 848) "\1e\00\00\00\01\00\00\00\01\00\00\00\1e\00\00\00r\00e\00s\00u\00l\00t\00 \00m\00i\00s\00m\00a\00t\00c\00h\00")
 (data (i32.const 896) "(\00\00\00\01\00\00\00\01\00\00\00(\00\00\00f\00a\00i\00l\00 \00r\00e\00s\00u\00l\00t\00 \00m\00i\00s\00m\00a\00t\00c\00h\00")
 (data (i32.const 952) "\0c\00\00\00\01\00\00\00\00\00\00\00\0c\00\00\00\n\00\00\00\0c\00\00\00\0e\00\00\00")
 (data (i32.const 984) "\10\00\00\00\01\00\00\00\11\00\00\00\10\00\00\00\c8\03\00\00\c8\03\00\00\0c\00\00\00\03\00\00\00")
 (data (i32.const 1016) ",\00\00\00\01\00\00\00\01\00\00\00,\00\00\00f\00o\00r\00E\00a\00c\00h\00 \00v\00a\00l\00u\00e\00 \00m\00i\00s\00m\00a\00t\00c\00h\00")
 (data (i32.const 1080) ",\00\00\00\01\00\00\00\01\00\00\00,\00\00\00f\00o\00r\00E\00a\00c\00h\00 \00i\00n\00d\00e\00x\00 \00m\00i\00s\00m\00a\00t\00c\00h\00")
 (data (i32.const 1144) ">\00\00\00\01\00\00\00\01\00\00\00>\00\00\00f\00o\00r\00E\00a\00c\00h\00 \00s\00e\00l\00f\00 \00p\00a\00r\00a\00m\00e\00t\00e\00r\00 \00m\00i\00s\00m\00a\00t\00c\00h\00")
 (data (i32.const 1224) "6\00\00\00\01\00\00\00\01\00\00\006\00\00\00f\00o\00r\00E\00a\00c\00h\00 \00c\00a\00l\00l\00 \00c\00o\00u\00n\00t\00 \00m\00i\00s\00m\00a\00t\00c\00h\00")
 (data (i32.const 1296) "$\00\00\00\01\00\00\00\00\00\00\00$\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\04\00\00\00\05\00\00\00\06\00\00\00\07\00\00\00\08\00\00\00\t\00\00\00")
 (data (i32.const 1352) "\10\00\00\00\01\00\00\00\11\00\00\00\10\00\00\00 \05\00\00 \05\00\00$\00\00\00\t\00\00\00")
 (data (i32.const 1384) "B\00\00\00\01\00\00\00\01\00\00\00B\00\00\00T\00y\00p\00e\00d\00A\00r\00r\00a\00y\00 \00r\00e\00v\00e\00r\00s\00e\00 \00v\00a\00l\00u\00e\00 \00m\00i\00s\00m\00a\00t\00c\00h\00")
 (data (i32.const 1472) "V\00\00\00\01\00\00\00\01\00\00\00V\00\00\00T\00y\00p\00e\00d\00A\00r\00r\00a\00y\00 \00r\00e\00v\00e\00r\00s\00e\00 \00w\00i\00t\00h\00 \00b\00y\00t\00e\00O\00f\00f\00s\00e\00t\00 \00m\00i\00s\00m\00a\00t\00c\00h\00")
 (data (i32.const 1576) "\1c\00\00\00\01\00\00\00\01\00\00\00\1c\00\00\00u\00n\00c\00a\00u\00g\00h\00t\00 \00e\00r\00r\00o\00r\00")
 (data (i32.const 1624) "\12\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\00\00\00\001\04\00\00\02\00\00\00\10\00\00\00\00\00\00\00\10\00\00\00\04\00\00\001\00\00\00\02\00\00\001\00\00\00\02\00\00\00Q\04\00\00\02\00\00\00Q\00\00\00\02\00\00\00\91\04\00\00\02\00\00\00\91\00\00\00\02\00\00\00\11\05\00\00\02\00\00\00\11\01\00\00\02\00\00\00\91\0c\00\00\02\00\00\00\11\0d\00\00\02\00\00\003\04\00\00\02\00\00\00\93\04\00\00\02\00\00\00")
 (table $0 112 funcref)
 (elem (i32.const 0) $null $~lib/util/sort/COMPARATOR<f64>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Uint8Array,u8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Uint8ClampedArray,u8>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Uint16Array,u16>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Uint32Array,u32>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Uint64Array,u64>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Float32Array,f32>~anonymous|0 $std/typedarray/testReduce<~lib/typedarray/Float64Array,f64>~anonymous|0 $std/typedarray/testReduceRight<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testReduceRight<~lib/typedarray/Uint8Array,u8>~anonymous|0 $std/typedarray/testReduceRight<~lib/typedarray/Uint8ClampedArray,u8>~anonymous|0 $std/typedarray/testReduceRight<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testReduceRight<~lib/typedarray/Uint16Array,u16>~anonymous|0 $std/typedarray/testReduceRight<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testReduceRight<~lib/typedarray/Uint32Array,u32>~anonymous|0 $std/typedarray/testReduceRight<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testReduceRight<~lib/typedarray/Uint64Array,u64>~anonymous|0 $std/typedarray/testReduceRight<~lib/typedarray/Float32Array,f32>~anonymous|0 $std/typedarray/testReduceRight<~lib/typedarray/Float64Array,f64>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Uint8Array,u8>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Uint8ClampedArray,u8>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Uint16Array,u16>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Uint32Array,u32>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Uint64Array,u64>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Float32Array,f32>~anonymous|0 $std/typedarray/testArrayMap<~lib/typedarray/Float64Array,f64>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Uint8Array,u8>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Uint8Array,u8>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Uint8ClampedArray,u8>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Uint8ClampedArray,u8>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Uint16Array,u16>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Uint16Array,u16>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Uint32Array,u32>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Uint32Array,u32>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Uint64Array,u64>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Uint64Array,u64>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Float32Array,f32>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Float32Array,f32>~anonymous|1 $std/typedarray/testArraySome<~lib/typedarray/Float64Array,f64>~anonymous|0 $std/typedarray/testArraySome<~lib/typedarray/Float64Array,f64>~anonymous|1 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int8Array,i8>~anonymous|1 $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint8Array,u8>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint8Array,u8>~anonymous|1 $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint8ClampedArray,u8>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint8ClampedArray,u8>~anonymous|1 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int16Array,i16>~anonymous|1 $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint16Array,u16>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint16Array,u16>~anonymous|1 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int32Array,i32>~anonymous|1 $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint32Array,u32>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint32Array,u32>~anonymous|1 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Int64Array,i64>~anonymous|1 $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint64Array,u64>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint64Array,u64>~anonymous|1 $std/typedarray/testArrayFindIndex<~lib/typedarray/Float32Array,f32>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Float32Array,f32>~anonymous|1 $std/typedarray/testArrayFindIndex<~lib/typedarray/Float64Array,f64>~anonymous|0 $std/typedarray/testArrayFindIndex<~lib/typedarray/Float64Array,f64>~anonymous|1 $std/typedarray/testArrayEvery<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Int8Array,i8>~anonymous|1 $std/typedarray/testArrayEvery<~lib/typedarray/Uint8Array,u8>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Uint8Array,u8>~anonymous|1 $std/typedarray/testArrayEvery<~lib/typedarray/Uint8ClampedArray,u8>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Uint8ClampedArray,u8>~anonymous|1 $std/typedarray/testArrayEvery<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Int16Array,i16>~anonymous|1 $std/typedarray/testArrayEvery<~lib/typedarray/Uint16Array,u16>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Uint16Array,u16>~anonymous|1 $std/typedarray/testArrayEvery<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Int32Array,i32>~anonymous|1 $std/typedarray/testArrayEvery<~lib/typedarray/Uint32Array,u32>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Uint32Array,u32>~anonymous|1 $std/typedarray/testArrayEvery<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Int64Array,i64>~anonymous|1 $std/typedarray/testArrayEvery<~lib/typedarray/Uint64Array,u64>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Uint64Array,u64>~anonymous|1 $std/typedarray/testArrayEvery<~lib/typedarray/Float32Array,f32>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Float32Array,f32>~anonymous|1 $std/typedarray/testArrayEvery<~lib/typedarray/Float64Array,f64>~anonymous|0 $std/typedarray/testArrayEvery<~lib/typedarray/Float64Array,f64>~anonymous|1 $std/typedarray/testArrayForEach<~lib/typedarray/Int8Array,i8>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Uint8Array,u8>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Uint8ClampedArray,u8>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Int16Array,i16>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Uint16Array,u16>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Int32Array,i32>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Uint32Array,u32>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Int64Array,i64>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Uint64Array,u64>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Float32Array,f32>~anonymous|0 $std/typedarray/testArrayForEach<~lib/typedarray/Float64Array,f64>~anonymous|0)
 (global $~lib/error (mut i32) (i32.const 0))
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
 (global $~lib/rt/pure/CUR (mut i32) (i32.const 0))
 (global $~lib/rt/pure/END (mut i32) (i32.const 0))
 (global $~lib/rt/pure/ROOTS (mut i32) (i32.const 0))
 (global $~lib/ASC_SHRINK_LEVEL i32 (i32.const 0))
 (global $~lib/argc (mut i32) (i32.const 0))
 (global $~lib/builtins/i32.MAX_VALUE i32 (i32.const 2147483647))
 (global $std/typedarray/forEachCallCount (mut i32) (i32.const 0))
 (global $std/typedarray/forEachSelf (mut i32) (i32.const 0))
 (global $std/typedarray/forEachValues (mut i32) (i32.const 1000))
 (global $std/typedarray/testArrayReverseValues (mut i32) (i32.const 1368))
 (global $~lib/started (mut i32) (i32.const 0))
 (global $~lib/rt/__rtti_base i32 (i32.const 1624))
 (global $~lib/heap/__heap_base i32 (i32.const 1772))
 (export "__start" (func $start))
 (export "memory" (memory $0))
 (func $~lib/rt/pure/increment (; 5 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  local.get $0
  i32.load offset=4
  local.set $1
  local.get $1
  i32.const 268435455
  i32.const -1
  i32.xor
  i32.and
  local.get $1
  i32.const 1
  i32.add
  i32.const 268435455
  i32.const -1
  i32.xor
  i32.and
  i32.eq
  i32.eqz
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
  i32.eqz
  i32.eqz
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
 (func $~lib/rt/tlsf/removeBlock (; 7 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
   i32.const 276
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
   i32.const 278
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
   i32.const 291
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
 (func $~lib/rt/tlsf/insertBlock (; 8 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
   i32.const 204
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
   i32.const 206
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
    i32.const 227
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
   i32.const 242
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
   i32.const 259
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
 (func $~lib/rt/tlsf/addMemory (; 9 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   i32.const 385
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
    i32.const 395
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
    i32.const 407
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
  i32.const 2
  i32.const 16
  i32.mul
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
 (func $~lib/rt/tlsf/initializeRoot (; 10 ;) (type $FUNCSIG$v)
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
 (func $~lib/rt/tlsf/prepareSize (; 11 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
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
 (func $~lib/rt/tlsf/searchBlock (; 12 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
   i32.const 337
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
     i32.const 350
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
 (func $~lib/rt/tlsf/growMemory (; 13 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  memory.size
  local.set $2
  local.get $1
  i32.const 65535
  i32.add
  i32.const 65535
  i32.const -1
  i32.xor
  i32.and
  i32.const 16
  i32.shr_u
  local.set $3
  local.get $2
  local.tee $4
  local.get $3
  local.tee $5
  local.get $4
  local.get $5
  i32.gt_s
  select
  local.set $6
  local.get $6
  memory.grow
  i32.const 0
  i32.lt_s
  if
   local.get $3
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
 (func $~lib/rt/tlsf/prepareBlock (; 14 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
   i32.const 364
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
 (func $~lib/rt/tlsf/allocateBlock (; 15 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $1
  call $~lib/rt/tlsf/prepareSize
  local.set $2
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $2
  local.set $3
  local.get $0
  local.get $3
  call $~lib/rt/tlsf/searchBlock
  local.set $4
  local.get $4
  i32.eqz
  if
   local.get $0
   local.get $3
   call $~lib/rt/tlsf/growMemory
   local.get $0
   local.get $3
   call $~lib/rt/tlsf/searchBlock
   local.set $4
   local.get $4
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
  local.get $4
  i32.load
  i32.const 3
  i32.const -1
  i32.xor
  i32.and
  local.get $3
  i32.ge_u
  i32.eqz
  if
   i32.const 0
   i32.const 128
   i32.const 479
   i32.const 13
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  i32.const 0
  i32.store offset=4
  local.get $4
  local.get $1
  i32.store offset=12
  local.get $0
  local.get $4
  call $~lib/rt/tlsf/removeBlock
  local.get $0
  local.get $4
  local.get $3
  call $~lib/rt/tlsf/prepareBlock
  local.get $4
  call $~lib/rt/rtrace/onalloc
  local.get $4
 )
 (func $~lib/rt/tlsf/__alloc (; 16 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
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
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $3
  local.set $4
  local.get $4
  local.get $1
  i32.store offset=8
  local.get $4
  i32.const 16
  i32.add
 )
 (func $~lib/rt/tlsf/freeBlock (; 17 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
  (local $1 i32)
  global.get $~lib/rt/__rtti_base
  local.set $1
  local.get $0
  local.get $1
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
  local.get $1
  i32.const 4
  i32.add
  local.get $0
  i32.const 8
  i32.mul
  i32.add
  i32.load
 )
 (func $~lib/util/memory/memcpy (; 19 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/memory/memory.copy (; 20 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/rt/tlsf/__free (; 21 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $~lib/rt/pure/growRoots (; 22 ;) (type $FUNCSIG$v)
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
  local.set $2
  global.get $~lib/error
  if
   return
  end
  local.get $2
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
 (func $~lib/rt/pure/appendRoot (; 23 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  global.get $~lib/rt/pure/CUR
  local.set $1
  local.get $1
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
 (func $~lib/rt/pure/decrement (; 24 ;) (type $FUNCSIG$vi) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
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
   i32.const 80
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
    i32.const 80
    i32.const 124
    i32.const 15
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.load offset=8
   call $~lib/rt/__typeinfo
   local.set $3
   global.get $~lib/error
   if
    return
   end
   local.get $3
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
     global.get $~lib/error
     if
      return
     end
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
 (func $~lib/rt/pure/__release (; 25 ;) (type $FUNCSIG$vi) (param $0 i32)
  local.get $0
  global.get $~lib/heap/__heap_base
  i32.gt_u
  if
   local.get $0
   i32.const 16
   i32.sub
   call $~lib/rt/pure/decrement
   global.get $~lib/error
   if
    return
   end
  end
 )
 (func $~lib/error/Error#constructor (; 26 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/error/RangeError#constructor (; 27 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  local.get $1
  call $~lib/rt/pure/__retain
  drop
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
  call $~lib/error/Error#constructor
  local.set $0
  local.get $0
  local.tee $2
  i32.const 336
  local.tee $3
  local.get $2
  i32.load
  local.tee $2
  i32.ne
  if
   local.get $3
   call $~lib/rt/pure/__retain
   drop
   local.get $2
   call $~lib/rt/pure/__release
  end
  local.get $3
  i32.store
  local.get $1
  call $~lib/rt/pure/__release
  local.get $0
 )
 (func $~lib/arraybuffer/ArrayBufferView#constructor (; 28 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  local.get $1
  i32.const 1073741808
  local.get $2
  i32.shr_u
  i32.gt_u
  if
   i32.const 0
   i32.const 376
   call $~lib/error/RangeError#constructor
   global.set $~lib/error
   i32.const 0
   return
  end
  local.get $1
  local.get $2
  i32.shl
  local.tee $1
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $3
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $3
  local.set $4
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
  local.tee $3
  local.get $4
  local.tee $5
  local.get $3
  i32.load
  local.tee $3
  i32.ne
  if
   local.get $5
   call $~lib/rt/pure/__retain
   drop
   local.get $3
   call $~lib/rt/pure/__release
  end
  local.get $5
  i32.store
  local.get $0
  local.get $4
  i32.store offset=4
  local.get $0
  local.get $1
  i32.store offset=8
  local.get $0
 )
 (func $~lib/typedarray/Int8Array#constructor (; 29 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
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
  local.set $2
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $2
  local.set $0
  local.get $0
 )
 (func $~lib/arraybuffer/ArrayBufferView#get:byteOffset (; 30 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $0
  i32.load
  i32.sub
 )
 (func $~lib/arraybuffer/ArrayBufferView#get:byteLength (; 31 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=8
 )
 (func $~lib/typedarray/Int8Array#get:length (; 32 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
 )
 (func $~lib/typedarray/Uint8Array#constructor (; 33 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
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
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $2
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $2
  local.set $0
  local.get $0
 )
 (func $~lib/typedarray/Uint8Array#get:length (; 34 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
 )
 (func $~lib/typedarray/Uint8ClampedArray#constructor (; 35 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
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
  i32.const 0
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $2
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $2
  local.set $0
  local.get $0
 )
 (func $~lib/typedarray/Uint8ClampedArray#get:length (; 36 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
 )
 (func $~lib/typedarray/Int16Array#constructor (; 37 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
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
  i32.const 1
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $2
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $2
  local.set $0
  local.get $0
 )
 (func $~lib/typedarray/Int16Array#get:length (; 38 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  i32.const 1
  i32.shr_u
 )
 (func $~lib/typedarray/Uint16Array#constructor (; 39 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
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
  i32.const 1
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $2
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $2
  local.set $0
  local.get $0
 )
 (func $~lib/typedarray/Uint16Array#get:length (; 40 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  i32.const 1
  i32.shr_u
 )
 (func $~lib/typedarray/Int32Array#constructor (; 41 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
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
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $2
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $2
  local.set $0
  local.get $0
 )
 (func $~lib/typedarray/Int32Array#get:length (; 42 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  i32.const 2
  i32.shr_u
 )
 (func $~lib/typedarray/Uint32Array#constructor (; 43 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
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
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $2
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $2
  local.set $0
  local.get $0
 )
 (func $~lib/typedarray/Uint32Array#get:length (; 44 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  i32.const 2
  i32.shr_u
 )
 (func $~lib/typedarray/Int64Array#constructor (; 45 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
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
  i32.const 3
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $2
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $2
  local.set $0
  local.get $0
 )
 (func $~lib/typedarray/Int64Array#get:length (; 46 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  i32.const 3
  i32.shr_u
 )
 (func $~lib/typedarray/Uint64Array#constructor (; 47 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
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
  local.set $2
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $2
  local.set $0
  local.get $0
 )
 (func $~lib/typedarray/Uint64Array#get:length (; 48 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  i32.const 3
  i32.shr_u
 )
 (func $~lib/typedarray/Float32Array#constructor (; 49 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 12
   i32.const 14
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
  end
  local.get $1
  i32.const 2
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $2
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $2
  local.set $0
  local.get $0
 )
 (func $~lib/typedarray/Float32Array#get:length (; 50 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  i32.const 2
  i32.shr_u
 )
 (func $~lib/typedarray/Float64Array#constructor (; 51 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 12
   i32.const 15
   call $~lib/rt/tlsf/__alloc
   call $~lib/rt/pure/__retain
  end
  local.get $1
  i32.const 3
  call $~lib/arraybuffer/ArrayBufferView#constructor
  local.set $2
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $2
  local.set $0
  local.get $0
 )
 (func $~lib/typedarray/Float64Array#get:length (; 52 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  i32.const 3
  i32.shr_u
 )
 (func $std/typedarray/testInstantiate (; 53 ;) (type $FUNCSIG$vi) (param $0 i32)
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
  global.get $~lib/error
  if
   return
  end
  local.get $1
  local.set $2
  local.get $2
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 32
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  local.get $0
  global.get $~lib/typedarray/Int8Array.BYTES_PER_ELEMENT
  i32.mul
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 33
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $2
  call $~lib/typedarray/Int8Array#get:length
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 34
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.get $0
  call $~lib/typedarray/Uint8Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  local.set $3
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 37
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  local.get $0
  global.get $~lib/typedarray/Uint8Array.BYTES_PER_ELEMENT
  i32.mul
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 38
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $3
  call $~lib/typedarray/Uint8Array#get:length
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 39
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.get $0
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  local.set $4
  local.get $4
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 42
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  local.get $0
  global.get $~lib/typedarray/Uint8Array.BYTES_PER_ELEMENT
  i32.mul
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 43
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $4
  call $~lib/typedarray/Uint8ClampedArray#get:length
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 44
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.get $0
  call $~lib/typedarray/Int16Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  local.set $5
  local.get $5
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 47
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  local.get $0
  global.get $~lib/typedarray/Int16Array.BYTES_PER_ELEMENT
  i32.mul
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 48
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $5
  call $~lib/typedarray/Int16Array#get:length
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 49
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.get $0
  call $~lib/typedarray/Uint16Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  local.set $6
  local.get $6
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 52
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  local.get $0
  global.get $~lib/typedarray/Uint16Array.BYTES_PER_ELEMENT
  i32.mul
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 53
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $6
  call $~lib/typedarray/Uint16Array#get:length
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 54
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.get $0
  call $~lib/typedarray/Int32Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  local.set $7
  local.get $7
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 57
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  local.get $0
  global.get $~lib/typedarray/Int32Array.BYTES_PER_ELEMENT
  i32.mul
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 58
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  call $~lib/typedarray/Int32Array#get:length
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 59
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.get $0
  call $~lib/typedarray/Uint32Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  local.set $8
  local.get $8
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 62
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $8
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  local.get $0
  global.get $~lib/typedarray/Uint32Array.BYTES_PER_ELEMENT
  i32.mul
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 63
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $8
  call $~lib/typedarray/Uint32Array#get:length
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 64
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.get $0
  call $~lib/typedarray/Int64Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  local.set $9
  local.get $9
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 67
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $9
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  local.get $0
  global.get $~lib/typedarray/Int64Array.BYTES_PER_ELEMENT
  i32.mul
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 68
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $9
  call $~lib/typedarray/Int64Array#get:length
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 69
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.get $0
  call $~lib/typedarray/Uint64Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  local.set $10
  local.get $10
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 72
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $10
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  local.get $0
  global.get $~lib/typedarray/Uint64Array.BYTES_PER_ELEMENT
  i32.mul
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 73
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $10
  call $~lib/typedarray/Uint64Array#get:length
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 74
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.get $0
  call $~lib/typedarray/Float32Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  local.set $11
  local.get $11
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 77
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $11
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  local.get $0
  global.get $~lib/typedarray/Float32Array.BYTES_PER_ELEMENT
  i32.mul
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 78
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $11
  call $~lib/typedarray/Float32Array#get:length
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 79
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  i32.const 0
  local.get $0
  call $~lib/typedarray/Float64Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  local.set $12
  local.get $12
  call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
  i32.const 0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 82
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $12
  call $~lib/arraybuffer/ArrayBufferView#get:byteLength
  local.get $0
  global.get $~lib/typedarray/Float64Array.BYTES_PER_ELEMENT
  i32.mul
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 83
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $12
  call $~lib/typedarray/Float64Array#get:length
  local.get $0
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 84
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
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
  local.get $12
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int32Array#__set (; 54 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
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
 (func $~lib/typedarray/Int32Array#__get (; 55 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
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
 (func $~lib/typedarray/Int32Array#subarray (; 56 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  block $~lib/typedarray/SUBARRAY<~lib/typedarray/Int32Array,i32>|inlined.0 (result i32)
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
   i32.const 10
   call $~lib/rt/tlsf/__alloc
   local.set $7
   global.get $~lib/error
   if
    i32.const 0
    br $~lib/typedarray/SUBARRAY<~lib/typedarray/Int32Array,i32>|inlined.0
   end
   local.get $7
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
  end
 )
 (func $~lib/typedarray/Float64Array#__set (; 57 ;) (type $FUNCSIG$viid) (param $0 i32) (param $1 i32) (param $2 f64)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
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
 (func $~lib/typedarray/Float64Array#subarray (; 58 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  block $~lib/typedarray/SUBARRAY<~lib/typedarray/Float64Array,f64>|inlined.0 (result i32)
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
   i32.const 15
   call $~lib/rt/tlsf/__alloc
   local.set $7
   global.get $~lib/error
   if
    i32.const 0
    br $~lib/typedarray/SUBARRAY<~lib/typedarray/Float64Array,f64>|inlined.0
   end
   local.get $7
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
  end
 )
 (func $~lib/util/sort/insertionSort<f64> (; 59 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
      local.set $7
      global.get $~lib/error
      if
       return
      end
      local.get $7
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
 (func $~lib/memory/memory.fill (; 60 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/util/sort/weakHeapSort<f64> (; 61 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 f64)
  (local $9 f64)
  (local $10 i32)
  (local $11 f64)
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
  global.get $~lib/error
  if
   return
  end
  local.get $4
  local.set $5
  local.get $5
  i32.const 0
  local.get $3
  call $~lib/memory/memory.fill
  block $break|0
   local.get $1
   i32.const 1
   i32.sub
   local.set $4
   loop $loop|0
    local.get $4
    i32.const 0
    i32.gt_s
    i32.eqz
    br_if $break|0
    local.get $4
    local.set $6
    block $break|1
     loop $continue|1
      local.get $6
      i32.const 1
      i32.and
      local.get $5
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
    local.get $4
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
    local.set $10
    global.get $~lib/error
    if
     return
    end
    local.get $10
    i32.const 0
    i32.lt_s
    if
     local.get $5
     local.get $4
     i32.const 5
     i32.shr_s
     i32.const 2
     i32.shl
     i32.add
     local.get $5
     local.get $4
     i32.const 5
     i32.shr_s
     i32.const 2
     i32.shl
     i32.add
     i32.load
     i32.const 1
     local.get $4
     i32.const 31
     i32.and
     i32.shl
     i32.xor
     i32.store
     local.get $0
     local.get $4
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
    local.get $4
    i32.const 1
    i32.sub
    local.set $4
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
      local.get $5
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
      local.tee $4
      local.get $7
      i32.lt_s
      i32.eqz
      br_if $break|3
      local.get $4
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
      local.set $10
      global.get $~lib/error
      if
       return
      end
      local.get $10
      i32.const 0
      i32.lt_s
      if
       local.get $5
       local.get $6
       i32.const 5
       i32.shr_s
       i32.const 2
       i32.shl
       i32.add
       local.get $5
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
  local.get $5
  call $~lib/rt/tlsf/__free
  local.get $0
  f64.load offset=8
  local.set $11
  local.get $0
  local.get $0
  f64.load
  f64.store offset=8
  local.get $0
  local.get $11
  f64.store
 )
 (func $~lib/typedarray/Float64Array#sort (; 62 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
    local.set $8
    global.get $~lib/error
    if
     i32.const 0
     br $~lib/typedarray/SORT<~lib/typedarray/Float64Array,f64>|inlined.0
    end
    local.get $8
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
   block $~lib/util/sort/SORT<f64>|inlined.0
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
     global.get $~lib/error
     if
      br $~lib/util/sort/SORT<f64>|inlined.0
     end
    else     
     local.get $10
     local.get $9
     local.get $8
     call $~lib/util/sort/weakHeapSort<f64>
     global.get $~lib/error
     if
      br $~lib/util/sort/SORT<f64>|inlined.0
     end
    end
   end
   local.get $3
  end
 )
 (func $~lib/util/sort/COMPARATOR<f64>~anonymous|0 (; 63 ;) (type $FUNCSIG$idd) (param $0 f64) (param $1 f64) (result i32)
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
 (func $~lib/typedarray/Float64Array#sort|trampoline (; 64 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/typedarray/Float64Array#__get (; 65 ;) (type $FUNCSIG$dii) (param $0 i32) (param $1 i32) (result f64)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
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
 (func $~lib/typedarray/Uint8ClampedArray#__set (; 66 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 0
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
 (func $~lib/typedarray/Uint8ClampedArray#__get (; 67 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 0
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
 (func $~lib/typedarray/Int8Array#__set (; 68 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 0
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
 (func $~lib/typedarray/Int8Array#fill (; 69 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
 (func $~lib/rt/__allocArray (; 70 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  i32.const 16
  local.get $2
  call $~lib/rt/tlsf/__alloc
  local.set $4
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $4
  local.set $5
  local.get $0
  local.get $1
  i32.shl
  local.set $6
  local.get $6
  i32.const 0
  call $~lib/rt/tlsf/__alloc
  local.set $4
  global.get $~lib/error
  if
   i32.const 0
   return
  end
  local.get $4
  local.set $7
  local.get $5
  local.get $7
  call $~lib/rt/pure/__retain
  i32.store
  local.get $5
  local.get $7
  i32.store offset=4
  local.get $5
  local.get $6
  i32.store offset=8
  local.get $5
  local.get $0
  i32.store offset=12
  local.get $3
  if
   local.get $7
   local.get $3
   local.get $6
   call $~lib/memory/memory.copy
  end
  local.get $5
 )
 (func $~lib/array/Array<i8>#get:length (; 71 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/typedarray/Int8Array#__get (; 72 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 0
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
 (func $~lib/array/Array<i8>#__unchecked_get (; 73 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 0
  i32.shl
  i32.add
  i32.load8_s
 )
 (func $~lib/array/Array<i8>#__get (; 74 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 0
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 280
   call $~lib/error/RangeError#constructor
   global.set $~lib/error
   i32.const 0
   return
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<i8>#__unchecked_get
 )
 (func $std/typedarray/isInt8ArrayEqual (; 75 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
    local.set $4
    global.get $~lib/error
    if
     i32.const 0
     return
    end
    local.get $4
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    local.get $1
    local.get $2
    call $~lib/array/Array<i8>#__get
    local.set $4
    global.get $~lib/error
    if
     i32.const 0
     return
    end
    local.get $4
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
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
 (func $~lib/typedarray/Int8Array#subarray (; 76 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  block $~lib/typedarray/SUBARRAY<~lib/typedarray/Int8Array,i8>|inlined.0 (result i32)
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
   local.set $7
   global.get $~lib/error
   if
    i32.const 0
    br $~lib/typedarray/SUBARRAY<~lib/typedarray/Int8Array,i8>|inlined.0
   end
   local.get $7
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
  end
 )
 (func $~lib/typedarray/Int32Array#fill (; 77 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
 (func $~lib/array/Array<i32>#get:length (; 78 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  local.get $0
  i32.load offset=12
 )
 (func $~lib/array/Array<i32>#__unchecked_get (; 79 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  i32.load offset=4
  local.get $1
  i32.const 2
  i32.shl
  i32.add
  i32.load
 )
 (func $~lib/array/Array<i32>#__get (; 80 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
   i32.const 280
   call $~lib/error/RangeError#constructor
   global.set $~lib/error
   i32.const 0
   return
  end
  local.get $0
  local.get $1
  call $~lib/array/Array<i32>#__unchecked_get
 )
 (func $std/typedarray/isInt32ArrayEqual (; 81 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
    local.set $4
    global.get $~lib/error
    if
     i32.const 0
     return
    end
    local.get $4
    local.get $1
    local.get $2
    call $~lib/array/Array<i32>#__get
    local.set $4
    global.get $~lib/error
    if
     i32.const 0
     return
    end
    local.get $4
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
 (func $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>~anonymous|0 (; 82 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
 (func $~lib/typedarray/Int8Array#reduce<i8> (; 83 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  block $~lib/typedarray/REDUCE<~lib/typedarray/Int8Array,i8,i8>|inlined.0 (result i32)
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
     local.set $9
     global.get $~lib/error
     if
      i32.const 0
      br $~lib/typedarray/REDUCE<~lib/typedarray/Int8Array,i8,i8>|inlined.0
     end
     local.get $9
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
  end
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8> (; 84 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
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
   i32.const 24
   i32.const 263
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint8Array#__set (; 85 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 0
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
 (func $std/typedarray/testReduce<~lib/typedarray/Uint8Array,u8>~anonymous|0 (; 86 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
 (func $~lib/typedarray/Uint8Array#reduce<u8> (; 87 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  block $~lib/typedarray/REDUCE<~lib/typedarray/Uint8Array,u8,u8>|inlined.0 (result i32)
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
     local.set $9
     global.get $~lib/error
     if
      i32.const 0
      br $~lib/typedarray/REDUCE<~lib/typedarray/Uint8Array,u8,u8>|inlined.0
     end
     local.get $9
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
  end
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Uint8Array,u8> (; 88 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint8Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint8Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint8Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint8Array#__set
  global.get $~lib/error
  if
   return
  end
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
   i32.const 24
   i32.const 263
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Uint8ClampedArray,u8>~anonymous|0 (; 89 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
 (func $~lib/typedarray/Uint8ClampedArray#reduce<u8> (; 90 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  block $~lib/typedarray/REDUCE<~lib/typedarray/Uint8ClampedArray,u8,u8>|inlined.0 (result i32)
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
     local.set $9
     global.get $~lib/error
     if
      i32.const 0
      br $~lib/typedarray/REDUCE<~lib/typedarray/Uint8ClampedArray,u8,u8>|inlined.0
     end
     local.get $9
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
  end
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Uint8ClampedArray,u8> (; 91 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
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
   i32.const 24
   i32.const 263
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int16Array#__set (; 92 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
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
 (func $std/typedarray/testReduce<~lib/typedarray/Int16Array,i16>~anonymous|0 (; 93 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
 (func $~lib/typedarray/Int16Array#reduce<i16> (; 94 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  block $~lib/typedarray/REDUCE<~lib/typedarray/Int16Array,i16,i16>|inlined.0 (result i32)
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
     local.set $9
     global.get $~lib/error
     if
      i32.const 0
      br $~lib/typedarray/REDUCE<~lib/typedarray/Int16Array,i16,i16>|inlined.0
     end
     local.get $9
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
  end
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Int16Array,i16> (; 95 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
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
   i32.const 24
   i32.const 263
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint16Array#__set (; 96 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
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
 (func $std/typedarray/testReduce<~lib/typedarray/Uint16Array,u16>~anonymous|0 (; 97 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
 (func $~lib/typedarray/Uint16Array#reduce<u16> (; 98 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  block $~lib/typedarray/REDUCE<~lib/typedarray/Uint16Array,u16,u16>|inlined.0 (result i32)
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
     local.set $9
     global.get $~lib/error
     if
      i32.const 0
      br $~lib/typedarray/REDUCE<~lib/typedarray/Uint16Array,u16,u16>|inlined.0
     end
     local.get $9
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
  end
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Uint16Array,u16> (; 99 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint16Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint16Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint16Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint16Array#__set
  global.get $~lib/error
  if
   return
  end
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
   i32.const 24
   i32.const 263
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Int32Array,i32>~anonymous|0 (; 100 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
 (func $~lib/typedarray/Int32Array#reduce<i32> (; 101 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  block $~lib/typedarray/REDUCE<~lib/typedarray/Int32Array,i32,i32>|inlined.0 (result i32)
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
     local.set $9
     global.get $~lib/error
     if
      i32.const 0
      br $~lib/typedarray/REDUCE<~lib/typedarray/Int32Array,i32,i32>|inlined.0
     end
     local.get $9
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
  end
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Int32Array,i32> (; 102 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
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
   i32.const 24
   i32.const 263
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint32Array#__set (; 103 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
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
 (func $std/typedarray/testReduce<~lib/typedarray/Uint32Array,u32>~anonymous|0 (; 104 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
 (func $~lib/typedarray/Uint32Array#reduce<u32> (; 105 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  block $~lib/typedarray/REDUCE<~lib/typedarray/Uint32Array,u32,u32>|inlined.0 (result i32)
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
     local.set $9
     global.get $~lib/error
     if
      i32.const 0
      br $~lib/typedarray/REDUCE<~lib/typedarray/Uint32Array,u32,u32>|inlined.0
     end
     local.get $9
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
  end
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Uint32Array,u32> (; 106 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint32Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint32Array#__set
  global.get $~lib/error
  if
   return
  end
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
   i32.const 24
   i32.const 263
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int64Array#__set (; 107 ;) (type $FUNCSIG$viij) (param $0 i32) (param $1 i32) (param $2 i64)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
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
 (func $std/typedarray/testReduce<~lib/typedarray/Int64Array,i64>~anonymous|0 (; 108 ;) (type $FUNCSIG$jjjii) (param $0 i64) (param $1 i64) (param $2 i32) (param $3 i32) (result i64)
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
 (func $~lib/typedarray/Int64Array#reduce<i64> (; 109 ;) (type $FUNCSIG$jiij) (param $0 i32) (param $1 i32) (param $2 i64) (result i64)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  block $~lib/typedarray/REDUCE<~lib/typedarray/Int64Array,i64,i64>|inlined.0 (result i64)
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
     local.set $9
     global.get $~lib/error
     if
      i64.const 0
      br $~lib/typedarray/REDUCE<~lib/typedarray/Int64Array,i64,i64>|inlined.0
     end
     local.get $9
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
  end
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Int64Array,i64> (; 110 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i64)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
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
   i32.const 24
   i32.const 263
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint64Array#__set (; 111 ;) (type $FUNCSIG$viij) (param $0 i32) (param $1 i32) (param $2 i64)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
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
 (func $std/typedarray/testReduce<~lib/typedarray/Uint64Array,u64>~anonymous|0 (; 112 ;) (type $FUNCSIG$jjjii) (param $0 i64) (param $1 i64) (param $2 i32) (param $3 i32) (result i64)
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
 (func $~lib/typedarray/Uint64Array#reduce<u64> (; 113 ;) (type $FUNCSIG$jiij) (param $0 i32) (param $1 i32) (param $2 i64) (result i64)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i64)
  block $~lib/typedarray/REDUCE<~lib/typedarray/Uint64Array,u64,u64>|inlined.0 (result i64)
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
     local.set $9
     global.get $~lib/error
     if
      i64.const 0
      br $~lib/typedarray/REDUCE<~lib/typedarray/Uint64Array,u64,u64>|inlined.0
     end
     local.get $9
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
  end
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Uint64Array,u64> (; 114 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i64)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint64Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i64.const 1
  call $~lib/typedarray/Uint64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 1
  i64.const 2
  call $~lib/typedarray/Uint64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 2
  i64.const 3
  call $~lib/typedarray/Uint64Array#__set
  global.get $~lib/error
  if
   return
  end
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
   i32.const 24
   i32.const 263
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Float32Array#__set (; 115 ;) (type $FUNCSIG$viif) (param $0 i32) (param $1 i32) (param $2 f32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
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
 (func $std/typedarray/testReduce<~lib/typedarray/Float32Array,f32>~anonymous|0 (; 116 ;) (type $FUNCSIG$fffii) (param $0 f32) (param $1 f32) (param $2 i32) (param $3 i32) (result f32)
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
 (func $~lib/typedarray/Float32Array#reduce<f32> (; 117 ;) (type $FUNCSIG$fiif) (param $0 i32) (param $1 i32) (param $2 f32) (result f32)
  (local $3 f32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 f32)
  block $~lib/typedarray/REDUCE<~lib/typedarray/Float32Array,f32,f32>|inlined.0 (result f32)
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
     local.set $9
     global.get $~lib/error
     if
      f32.const 0
      br $~lib/typedarray/REDUCE<~lib/typedarray/Float32Array,f32,f32>|inlined.0
     end
     local.get $9
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
  end
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Float32Array,f32> (; 118 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 f32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Float32Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
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
   i32.const 24
   i32.const 263
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Float64Array,f64>~anonymous|0 (; 119 ;) (type $FUNCSIG$dddii) (param $0 f64) (param $1 f64) (param $2 i32) (param $3 i32) (result f64)
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
 (func $~lib/typedarray/Float64Array#reduce<f64> (; 120 ;) (type $FUNCSIG$diid) (param $0 i32) (param $1 i32) (param $2 f64) (result f64)
  (local $3 f64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 f64)
  block $~lib/typedarray/REDUCE<~lib/typedarray/Float64Array,f64,f64>|inlined.0 (result f64)
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
     local.set $9
     global.get $~lib/error
     if
      f64.const 0
      br $~lib/typedarray/REDUCE<~lib/typedarray/Float64Array,f64,f64>|inlined.0
     end
     local.get $9
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
  end
 )
 (func $std/typedarray/testReduce<~lib/typedarray/Float64Array,f64> (; 121 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 f64)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Float64Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
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
   i32.const 24
   i32.const 263
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Int8Array,i8>~anonymous|0 (; 122 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
 (func $~lib/typedarray/Int8Array#reduceRight<i8> (; 123 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  block $~lib/typedarray/REDUCE_RIGHT<~lib/typedarray/Int8Array,i8,i8>|inlined.0 (result i32)
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
     local.set $8
     global.get $~lib/error
     if
      i32.const 0
      br $~lib/typedarray/REDUCE_RIGHT<~lib/typedarray/Int8Array,i8,i8>|inlined.0
     end
     local.get $8
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
  end
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Int8Array,i8> (; 124 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
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
   i32.const 24
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
 (func $std/typedarray/testReduceRight<~lib/typedarray/Uint8Array,u8>~anonymous|0 (; 125 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
 (func $~lib/typedarray/Uint8Array#reduceRight<u8> (; 126 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  block $~lib/typedarray/REDUCE_RIGHT<~lib/typedarray/Uint8Array,u8,u8>|inlined.0 (result i32)
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
     local.set $8
     global.get $~lib/error
     if
      i32.const 0
      br $~lib/typedarray/REDUCE_RIGHT<~lib/typedarray/Uint8Array,u8,u8>|inlined.0
     end
     local.get $8
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
  end
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Uint8Array,u8> (; 127 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint8Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint8Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint8Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint8Array#__set
  global.get $~lib/error
  if
   return
  end
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
   i32.const 24
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
 (func $std/typedarray/testReduceRight<~lib/typedarray/Uint8ClampedArray,u8>~anonymous|0 (; 128 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
 (func $~lib/typedarray/Uint8ClampedArray#reduceRight<u8> (; 129 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  block $~lib/typedarray/REDUCE_RIGHT<~lib/typedarray/Uint8ClampedArray,u8,u8>|inlined.0 (result i32)
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
     local.set $8
     global.get $~lib/error
     if
      i32.const 0
      br $~lib/typedarray/REDUCE_RIGHT<~lib/typedarray/Uint8ClampedArray,u8,u8>|inlined.0
     end
     local.get $8
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
  end
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Uint8ClampedArray,u8> (; 130 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
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
   i32.const 24
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
 (func $std/typedarray/testReduceRight<~lib/typedarray/Int16Array,i16>~anonymous|0 (; 131 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
 (func $~lib/typedarray/Int16Array#reduceRight<i16> (; 132 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  block $~lib/typedarray/REDUCE_RIGHT<~lib/typedarray/Int16Array,i16,i16>|inlined.0 (result i32)
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
     local.set $8
     global.get $~lib/error
     if
      i32.const 0
      br $~lib/typedarray/REDUCE_RIGHT<~lib/typedarray/Int16Array,i16,i16>|inlined.0
     end
     local.get $8
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
  end
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Int16Array,i16> (; 133 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
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
   i32.const 24
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
 (func $std/typedarray/testReduceRight<~lib/typedarray/Uint16Array,u16>~anonymous|0 (; 134 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
 (func $~lib/typedarray/Uint16Array#reduceRight<u16> (; 135 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  block $~lib/typedarray/REDUCE_RIGHT<~lib/typedarray/Uint16Array,u16,u16>|inlined.0 (result i32)
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
     local.set $8
     global.get $~lib/error
     if
      i32.const 0
      br $~lib/typedarray/REDUCE_RIGHT<~lib/typedarray/Uint16Array,u16,u16>|inlined.0
     end
     local.get $8
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
  end
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Uint16Array,u16> (; 136 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint16Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint16Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint16Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint16Array#__set
  global.get $~lib/error
  if
   return
  end
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
   i32.const 24
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
 (func $std/typedarray/testReduceRight<~lib/typedarray/Int32Array,i32>~anonymous|0 (; 137 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
 (func $~lib/typedarray/Int32Array#reduceRight<i32> (; 138 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  block $~lib/typedarray/REDUCE_RIGHT<~lib/typedarray/Int32Array,i32,i32>|inlined.0 (result i32)
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
     local.set $8
     global.get $~lib/error
     if
      i32.const 0
      br $~lib/typedarray/REDUCE_RIGHT<~lib/typedarray/Int32Array,i32,i32>|inlined.0
     end
     local.get $8
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
  end
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Int32Array,i32> (; 139 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
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
   i32.const 24
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
 (func $std/typedarray/testReduceRight<~lib/typedarray/Uint32Array,u32>~anonymous|0 (; 140 ;) (type $FUNCSIG$iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
 (func $~lib/typedarray/Uint32Array#reduceRight<u32> (; 141 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  block $~lib/typedarray/REDUCE_RIGHT<~lib/typedarray/Uint32Array,u32,u32>|inlined.0 (result i32)
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
     local.set $8
     global.get $~lib/error
     if
      i32.const 0
      br $~lib/typedarray/REDUCE_RIGHT<~lib/typedarray/Uint32Array,u32,u32>|inlined.0
     end
     local.get $8
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
  end
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Uint32Array,u32> (; 142 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint32Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint32Array#__set
  global.get $~lib/error
  if
   return
  end
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
   i32.const 24
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
 (func $std/typedarray/testReduceRight<~lib/typedarray/Int64Array,i64>~anonymous|0 (; 143 ;) (type $FUNCSIG$jjjii) (param $0 i64) (param $1 i64) (param $2 i32) (param $3 i32) (result i64)
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
 (func $~lib/typedarray/Int64Array#reduceRight<i64> (; 144 ;) (type $FUNCSIG$jiij) (param $0 i32) (param $1 i32) (param $2 i64) (result i64)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  block $~lib/typedarray/REDUCE_RIGHT<~lib/typedarray/Int64Array,i64,i64>|inlined.0 (result i64)
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
     local.set $8
     global.get $~lib/error
     if
      i64.const 0
      br $~lib/typedarray/REDUCE_RIGHT<~lib/typedarray/Int64Array,i64,i64>|inlined.0
     end
     local.get $8
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
  end
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Int64Array,i64> (; 145 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i64)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
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
   i32.const 24
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
 (func $std/typedarray/testReduceRight<~lib/typedarray/Uint64Array,u64>~anonymous|0 (; 146 ;) (type $FUNCSIG$jjjii) (param $0 i64) (param $1 i64) (param $2 i32) (param $3 i32) (result i64)
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
 (func $~lib/typedarray/Uint64Array#reduceRight<u64> (; 147 ;) (type $FUNCSIG$jiij) (param $0 i32) (param $1 i32) (param $2 i64) (result i64)
  (local $3 i64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i64)
  block $~lib/typedarray/REDUCE_RIGHT<~lib/typedarray/Uint64Array,u64,u64>|inlined.0 (result i64)
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
     local.set $8
     global.get $~lib/error
     if
      i64.const 0
      br $~lib/typedarray/REDUCE_RIGHT<~lib/typedarray/Uint64Array,u64,u64>|inlined.0
     end
     local.get $8
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
  end
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Uint64Array,u64> (; 148 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i64)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint64Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i64.const 1
  call $~lib/typedarray/Uint64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 1
  i64.const 2
  call $~lib/typedarray/Uint64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 2
  i64.const 3
  call $~lib/typedarray/Uint64Array#__set
  global.get $~lib/error
  if
   return
  end
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
   i32.const 24
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
 (func $std/typedarray/testReduceRight<~lib/typedarray/Float32Array,f32>~anonymous|0 (; 149 ;) (type $FUNCSIG$fffii) (param $0 f32) (param $1 f32) (param $2 i32) (param $3 i32) (result f32)
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
 (func $~lib/typedarray/Float32Array#reduceRight<f32> (; 150 ;) (type $FUNCSIG$fiif) (param $0 i32) (param $1 i32) (param $2 f32) (result f32)
  (local $3 f32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 f32)
  block $~lib/typedarray/REDUCE_RIGHT<~lib/typedarray/Float32Array,f32,f32>|inlined.0 (result f32)
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
     local.set $8
     global.get $~lib/error
     if
      f32.const 0
      br $~lib/typedarray/REDUCE_RIGHT<~lib/typedarray/Float32Array,f32,f32>|inlined.0
     end
     local.get $8
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
  end
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Float32Array,f32> (; 151 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 f32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Float32Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
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
   i32.const 24
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
 (func $std/typedarray/testReduceRight<~lib/typedarray/Float64Array,f64>~anonymous|0 (; 152 ;) (type $FUNCSIG$dddii) (param $0 f64) (param $1 f64) (param $2 i32) (param $3 i32) (result f64)
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
 (func $~lib/typedarray/Float64Array#reduceRight<f64> (; 153 ;) (type $FUNCSIG$diid) (param $0 i32) (param $1 i32) (param $2 f64) (result f64)
  (local $3 f64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 f64)
  block $~lib/typedarray/REDUCE_RIGHT<~lib/typedarray/Float64Array,f64,f64>|inlined.0 (result f64)
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
     local.set $8
     global.get $~lib/error
     if
      f64.const 0
      br $~lib/typedarray/REDUCE_RIGHT<~lib/typedarray/Float64Array,f64,f64>|inlined.0
     end
     local.get $8
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
  end
 )
 (func $std/typedarray/testReduceRight<~lib/typedarray/Float64Array,f64> (; 154 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 f64)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Float64Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
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
   i32.const 24
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
 (func $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>~anonymous|0 (; 155 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/typedarray/Int8Array#map (; 156 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  block $~lib/typedarray/MAP<~lib/typedarray/Int8Array,i8>|inlined.0 (result i32)
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
   local.set $6
   global.get $~lib/error
   if
    i32.const 0
    br $~lib/typedarray/MAP<~lib/typedarray/Int8Array,i8>|inlined.0
   end
   local.get $6
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
     local.set $10
     global.get $~lib/error
     if
      i32.const 0
      br $~lib/typedarray/MAP<~lib/typedarray/Int8Array,i8>|inlined.0
     end
     local.get $10
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
  end
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8> (; 157 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
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
  i32.const 24
  call $~lib/typedarray/Int8Array#map
  local.set $2
  local.get $2
  i32.const 0
  call $~lib/typedarray/Int8Array#__get
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 1
  i32.eq
  i32.eqz
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
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 4
  i32.eq
  i32.eqz
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
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 9
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 319
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
 (func $std/typedarray/testArrayMap<~lib/typedarray/Uint8Array,u8>~anonymous|0 (; 158 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/typedarray/Uint8Array#map (; 159 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  block $~lib/typedarray/MAP<~lib/typedarray/Uint8Array,u8>|inlined.0 (result i32)
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
   local.set $6
   global.get $~lib/error
   if
    i32.const 0
    br $~lib/typedarray/MAP<~lib/typedarray/Uint8Array,u8>|inlined.0
   end
   local.get $6
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
     local.set $10
     global.get $~lib/error
     if
      i32.const 0
      br $~lib/typedarray/MAP<~lib/typedarray/Uint8Array,u8>|inlined.0
     end
     local.get $10
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
  end
 )
 (func $~lib/typedarray/Uint8Array#__get (; 160 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.ge_u
  if
   i32.const 0
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
 (func $std/typedarray/testArrayMap<~lib/typedarray/Uint8Array,u8> (; 161 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint8Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint8Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint8Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint8Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 25
  call $~lib/typedarray/Uint8Array#map
  local.set $2
  local.get $2
  i32.const 0
  call $~lib/typedarray/Uint8Array#__get
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  i32.const 255
  i32.and
  i32.const 1
  i32.eq
  i32.eqz
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
  call $~lib/typedarray/Uint8Array#__get
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  i32.const 255
  i32.and
  i32.const 4
  i32.eq
  i32.eqz
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
  call $~lib/typedarray/Uint8Array#__get
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  i32.const 255
  i32.and
  i32.const 9
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 319
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
 (func $std/typedarray/testArrayMap<~lib/typedarray/Uint8ClampedArray,u8>~anonymous|0 (; 162 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/typedarray/Uint8ClampedArray#map (; 163 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  block $~lib/typedarray/MAP<~lib/typedarray/Uint8ClampedArray,u8>|inlined.0 (result i32)
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
   local.set $6
   global.get $~lib/error
   if
    i32.const 0
    br $~lib/typedarray/MAP<~lib/typedarray/Uint8ClampedArray,u8>|inlined.0
   end
   local.get $6
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
     local.set $10
     global.get $~lib/error
     if
      i32.const 0
      br $~lib/typedarray/MAP<~lib/typedarray/Uint8ClampedArray,u8>|inlined.0
     end
     local.get $10
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
  end
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Uint8ClampedArray,u8> (; 164 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
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
  i32.const 26
  call $~lib/typedarray/Uint8ClampedArray#map
  local.set $2
  local.get $2
  i32.const 0
  call $~lib/typedarray/Uint8ClampedArray#__get
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  i32.const 255
  i32.and
  i32.const 1
  i32.eq
  i32.eqz
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
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  i32.const 255
  i32.and
  i32.const 4
  i32.eq
  i32.eqz
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
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  i32.const 255
  i32.and
  i32.const 9
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 319
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
 (func $std/typedarray/testArrayMap<~lib/typedarray/Int16Array,i16>~anonymous|0 (; 165 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/typedarray/Int16Array#map (; 166 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  block $~lib/typedarray/MAP<~lib/typedarray/Int16Array,i16>|inlined.0 (result i32)
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
   local.set $6
   global.get $~lib/error
   if
    i32.const 0
    br $~lib/typedarray/MAP<~lib/typedarray/Int16Array,i16>|inlined.0
   end
   local.get $6
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
     local.set $10
     global.get $~lib/error
     if
      i32.const 0
      br $~lib/typedarray/MAP<~lib/typedarray/Int16Array,i16>|inlined.0
     end
     local.get $10
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
  end
 )
 (func $~lib/typedarray/Int16Array#__get (; 167 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
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
 (func $std/typedarray/testArrayMap<~lib/typedarray/Int16Array,i16> (; 168 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
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
  i32.const 27
  call $~lib/typedarray/Int16Array#map
  local.set $2
  local.get $2
  i32.const 0
  call $~lib/typedarray/Int16Array#__get
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 1
  i32.eq
  i32.eqz
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
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 4
  i32.eq
  i32.eqz
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
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 9
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 319
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
 (func $std/typedarray/testArrayMap<~lib/typedarray/Uint16Array,u16>~anonymous|0 (; 169 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/typedarray/Uint16Array#map (; 170 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  block $~lib/typedarray/MAP<~lib/typedarray/Uint16Array,u16>|inlined.0 (result i32)
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
   local.set $6
   global.get $~lib/error
   if
    i32.const 0
    br $~lib/typedarray/MAP<~lib/typedarray/Uint16Array,u16>|inlined.0
   end
   local.get $6
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
     local.set $10
     global.get $~lib/error
     if
      i32.const 0
      br $~lib/typedarray/MAP<~lib/typedarray/Uint16Array,u16>|inlined.0
     end
     local.get $10
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
  end
 )
 (func $~lib/typedarray/Uint16Array#__get (; 171 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 1
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
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
 (func $std/typedarray/testArrayMap<~lib/typedarray/Uint16Array,u16> (; 172 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint16Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint16Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint16Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint16Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 28
  call $~lib/typedarray/Uint16Array#map
  local.set $2
  local.get $2
  i32.const 0
  call $~lib/typedarray/Uint16Array#__get
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  i32.const 65535
  i32.and
  i32.const 1
  i32.eq
  i32.eqz
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
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  i32.const 65535
  i32.and
  i32.const 4
  i32.eq
  i32.eqz
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
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  i32.const 65535
  i32.and
  i32.const 9
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 319
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
 (func $std/typedarray/testArrayMap<~lib/typedarray/Int32Array,i32>~anonymous|0 (; 173 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/typedarray/Int32Array#map (; 174 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  block $~lib/typedarray/MAP<~lib/typedarray/Int32Array,i32>|inlined.0 (result i32)
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
   local.set $6
   global.get $~lib/error
   if
    i32.const 0
    br $~lib/typedarray/MAP<~lib/typedarray/Int32Array,i32>|inlined.0
   end
   local.get $6
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
     local.set $10
     global.get $~lib/error
     if
      i32.const 0
      br $~lib/typedarray/MAP<~lib/typedarray/Int32Array,i32>|inlined.0
     end
     local.get $10
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
  end
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Int32Array,i32> (; 175 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
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
  i32.const 29
  call $~lib/typedarray/Int32Array#map
  local.set $2
  local.get $2
  i32.const 0
  call $~lib/typedarray/Int32Array#__get
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  i32.const 1
  i32.eq
  i32.eqz
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
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  i32.const 4
  i32.eq
  i32.eqz
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
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  i32.const 9
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 319
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
 (func $std/typedarray/testArrayMap<~lib/typedarray/Uint32Array,u32>~anonymous|0 (; 176 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/typedarray/Uint32Array#map (; 177 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  block $~lib/typedarray/MAP<~lib/typedarray/Uint32Array,u32>|inlined.0 (result i32)
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
   local.set $6
   global.get $~lib/error
   if
    i32.const 0
    br $~lib/typedarray/MAP<~lib/typedarray/Uint32Array,u32>|inlined.0
   end
   local.get $6
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
     local.set $10
     global.get $~lib/error
     if
      i32.const 0
      br $~lib/typedarray/MAP<~lib/typedarray/Uint32Array,u32>|inlined.0
     end
     local.get $10
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
  end
 )
 (func $~lib/typedarray/Uint32Array#__get (; 178 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
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
 (func $std/typedarray/testArrayMap<~lib/typedarray/Uint32Array,u32> (; 179 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint32Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 30
  call $~lib/typedarray/Uint32Array#map
  local.set $2
  local.get $2
  i32.const 0
  call $~lib/typedarray/Uint32Array#__get
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  i32.const 1
  i32.eq
  i32.eqz
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
  call $~lib/typedarray/Uint32Array#__get
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  i32.const 4
  i32.eq
  i32.eqz
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
  call $~lib/typedarray/Uint32Array#__get
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  i32.const 9
  i32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 319
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
 (func $std/typedarray/testArrayMap<~lib/typedarray/Int64Array,i64>~anonymous|0 (; 180 ;) (type $FUNCSIG$jjii) (param $0 i64) (param $1 i32) (param $2 i32) (result i64)
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
 (func $~lib/typedarray/Int64Array#map (; 181 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i64)
  block $~lib/typedarray/MAP<~lib/typedarray/Int64Array,i64>|inlined.0 (result i32)
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
   local.set $6
   global.get $~lib/error
   if
    i32.const 0
    br $~lib/typedarray/MAP<~lib/typedarray/Int64Array,i64>|inlined.0
   end
   local.get $6
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
     local.set $10
     global.get $~lib/error
     if
      i32.const 0
      br $~lib/typedarray/MAP<~lib/typedarray/Int64Array,i64>|inlined.0
     end
     local.get $10
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
  end
 )
 (func $~lib/typedarray/Int64Array#__get (; 182 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
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
 (func $std/typedarray/testArrayMap<~lib/typedarray/Int64Array,i64> (; 183 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
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
  i32.const 31
  call $~lib/typedarray/Int64Array#map
  local.set $2
  local.get $2
  i32.const 0
  call $~lib/typedarray/Int64Array#__get
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  i64.const 1
  i64.eq
  i32.eqz
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
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  i64.const 4
  i64.eq
  i32.eqz
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
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  i64.const 9
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 319
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
 (func $std/typedarray/testArrayMap<~lib/typedarray/Uint64Array,u64>~anonymous|0 (; 184 ;) (type $FUNCSIG$jjii) (param $0 i64) (param $1 i32) (param $2 i32) (result i64)
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
 (func $~lib/typedarray/Uint64Array#map (; 185 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i64)
  block $~lib/typedarray/MAP<~lib/typedarray/Uint64Array,u64>|inlined.0 (result i32)
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
   local.set $6
   global.get $~lib/error
   if
    i32.const 0
    br $~lib/typedarray/MAP<~lib/typedarray/Uint64Array,u64>|inlined.0
   end
   local.get $6
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
     local.set $10
     global.get $~lib/error
     if
      i32.const 0
      br $~lib/typedarray/MAP<~lib/typedarray/Uint64Array,u64>|inlined.0
     end
     local.get $10
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
  end
 )
 (func $~lib/typedarray/Uint64Array#__get (; 186 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 3
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
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
 (func $std/typedarray/testArrayMap<~lib/typedarray/Uint64Array,u64> (; 187 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i64)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint64Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i64.const 1
  call $~lib/typedarray/Uint64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 1
  i64.const 2
  call $~lib/typedarray/Uint64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 2
  i64.const 3
  call $~lib/typedarray/Uint64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 32
  call $~lib/typedarray/Uint64Array#map
  local.set $2
  local.get $2
  i32.const 0
  call $~lib/typedarray/Uint64Array#__get
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  i64.const 1
  i64.eq
  i32.eqz
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
  call $~lib/typedarray/Uint64Array#__get
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  i64.const 4
  i64.eq
  i32.eqz
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
  call $~lib/typedarray/Uint64Array#__get
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  i64.const 9
  i64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 319
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
 (func $std/typedarray/testArrayMap<~lib/typedarray/Float32Array,f32>~anonymous|0 (; 188 ;) (type $FUNCSIG$ffii) (param $0 f32) (param $1 i32) (param $2 i32) (result f32)
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
 (func $~lib/typedarray/Float32Array#map (; 189 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 f32)
  block $~lib/typedarray/MAP<~lib/typedarray/Float32Array,f32>|inlined.0 (result i32)
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
   local.set $6
   global.get $~lib/error
   if
    i32.const 0
    br $~lib/typedarray/MAP<~lib/typedarray/Float32Array,f32>|inlined.0
   end
   local.get $6
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
     local.set $10
     global.get $~lib/error
     if
      i32.const 0
      br $~lib/typedarray/MAP<~lib/typedarray/Float32Array,f32>|inlined.0
     end
     local.get $10
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
  end
 )
 (func $~lib/typedarray/Float32Array#__get (; 190 ;) (type $FUNCSIG$fii) (param $0 i32) (param $1 i32) (result f32)
  local.get $1
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
  i32.ge_u
  if
   i32.const 0
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
 (func $std/typedarray/testArrayMap<~lib/typedarray/Float32Array,f32> (; 191 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Float32Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
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
  i32.const 33
  call $~lib/typedarray/Float32Array#map
  local.set $2
  local.get $2
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  f32.const 1
  f32.eq
  i32.eqz
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
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  f32.const 4
  f32.eq
  i32.eqz
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
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  f32.const 9
  f32.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 319
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
 (func $std/typedarray/testArrayMap<~lib/typedarray/Float64Array,f64>~anonymous|0 (; 192 ;) (type $FUNCSIG$ddii) (param $0 f64) (param $1 i32) (param $2 i32) (result f64)
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
 (func $~lib/typedarray/Float64Array#map (; 193 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 f64)
  block $~lib/typedarray/MAP<~lib/typedarray/Float64Array,f64>|inlined.0 (result i32)
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
   local.set $6
   global.get $~lib/error
   if
    i32.const 0
    br $~lib/typedarray/MAP<~lib/typedarray/Float64Array,f64>|inlined.0
   end
   local.get $6
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
     local.set $10
     global.get $~lib/error
     if
      i32.const 0
      br $~lib/typedarray/MAP<~lib/typedarray/Float64Array,f64>|inlined.0
     end
     local.get $10
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
  end
 )
 (func $std/typedarray/testArrayMap<~lib/typedarray/Float64Array,f64> (; 194 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f64)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Float64Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
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
  i32.const 34
  call $~lib/typedarray/Float64Array#map
  local.set $2
  local.get $2
  i32.const 0
  call $~lib/typedarray/Float64Array#__get
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  f64.const 1
  f64.eq
  i32.eqz
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
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  f64.const 4
  f64.eq
  i32.eqz
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
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  f64.const 9
  f64.eq
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 319
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
 (func $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|0 (; 195 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/typedarray/Int8Array#some (; 196 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
     local.set $7
     global.get $~lib/error
     if
      i32.const 0
      br $~lib/typedarray/SOME<~lib/typedarray/Int8Array,i8>|inlined.0
     end
     local.get $7
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
 (func $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>~anonymous|1 (; 197 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8> (; 198 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Int8Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Int8Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Int8Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 35
  call $~lib/typedarray/Int8Array#some
  local.set $2
  local.get $2
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 346
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 36
  call $~lib/typedarray/Int8Array#some
  local.set $3
  local.get $3
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 349
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Uint8Array,u8>~anonymous|0 (; 199 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/typedarray/Uint8Array#some (; 200 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
     local.set $7
     global.get $~lib/error
     if
      i32.const 0
      br $~lib/typedarray/SOME<~lib/typedarray/Uint8Array,u8>|inlined.0
     end
     local.get $7
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
 (func $std/typedarray/testArraySome<~lib/typedarray/Uint8Array,u8>~anonymous|1 (; 201 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $std/typedarray/testArraySome<~lib/typedarray/Uint8Array,u8> (; 202 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint8Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Uint8Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Uint8Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Uint8Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 37
  call $~lib/typedarray/Uint8Array#some
  local.set $2
  local.get $2
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 346
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 38
  call $~lib/typedarray/Uint8Array#some
  local.set $3
  local.get $3
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 349
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Uint8ClampedArray,u8>~anonymous|0 (; 203 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/typedarray/Uint8ClampedArray#some (; 204 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
     local.set $7
     global.get $~lib/error
     if
      i32.const 0
      br $~lib/typedarray/SOME<~lib/typedarray/Uint8ClampedArray,u8>|inlined.0
     end
     local.get $7
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
 (func $std/typedarray/testArraySome<~lib/typedarray/Uint8ClampedArray,u8>~anonymous|1 (; 205 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $std/typedarray/testArraySome<~lib/typedarray/Uint8ClampedArray,u8> (; 206 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Uint8ClampedArray#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Uint8ClampedArray#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Uint8ClampedArray#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 39
  call $~lib/typedarray/Uint8ClampedArray#some
  local.set $2
  local.get $2
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 346
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 40
  call $~lib/typedarray/Uint8ClampedArray#some
  local.set $3
  local.get $3
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 349
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|0 (; 207 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/typedarray/Int16Array#some (; 208 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
     local.set $7
     global.get $~lib/error
     if
      i32.const 0
      br $~lib/typedarray/SOME<~lib/typedarray/Int16Array,i16>|inlined.0
     end
     local.get $7
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
 (func $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>~anonymous|1 (; 209 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16> (; 210 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Int16Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Int16Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Int16Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 41
  call $~lib/typedarray/Int16Array#some
  local.set $2
  local.get $2
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 346
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 42
  call $~lib/typedarray/Int16Array#some
  local.set $3
  local.get $3
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 349
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Uint16Array,u16>~anonymous|0 (; 211 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/typedarray/Uint16Array#some (; 212 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
     local.set $7
     global.get $~lib/error
     if
      i32.const 0
      br $~lib/typedarray/SOME<~lib/typedarray/Uint16Array,u16>|inlined.0
     end
     local.get $7
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
 (func $std/typedarray/testArraySome<~lib/typedarray/Uint16Array,u16>~anonymous|1 (; 213 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $std/typedarray/testArraySome<~lib/typedarray/Uint16Array,u16> (; 214 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint16Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Uint16Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Uint16Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Uint16Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 43
  call $~lib/typedarray/Uint16Array#some
  local.set $2
  local.get $2
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 346
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 44
  call $~lib/typedarray/Uint16Array#some
  local.set $3
  local.get $3
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 349
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|0 (; 215 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/typedarray/Int32Array#some (; 216 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
     local.set $7
     global.get $~lib/error
     if
      i32.const 0
      br $~lib/typedarray/SOME<~lib/typedarray/Int32Array,i32>|inlined.0
     end
     local.get $7
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
 (func $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>~anonymous|1 (; 217 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32> (; 218 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Int32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Int32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Int32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 45
  call $~lib/typedarray/Int32Array#some
  local.set $2
  local.get $2
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 346
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 46
  call $~lib/typedarray/Int32Array#some
  local.set $3
  local.get $3
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 349
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Uint32Array,u32>~anonymous|0 (; 219 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/typedarray/Uint32Array#some (; 220 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
     local.set $7
     global.get $~lib/error
     if
      i32.const 0
      br $~lib/typedarray/SOME<~lib/typedarray/Uint32Array,u32>|inlined.0
     end
     local.get $7
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
 (func $std/typedarray/testArraySome<~lib/typedarray/Uint32Array,u32>~anonymous|1 (; 221 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $std/typedarray/testArraySome<~lib/typedarray/Uint32Array,u32> (; 222 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint32Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Uint32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Uint32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Uint32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 47
  call $~lib/typedarray/Uint32Array#some
  local.set $2
  local.get $2
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 346
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 48
  call $~lib/typedarray/Uint32Array#some
  local.set $3
  local.get $3
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 349
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|0 (; 223 ;) (type $FUNCSIG$ijii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/typedarray/Int64Array#some (; 224 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
     local.set $7
     global.get $~lib/error
     if
      i32.const 0
      br $~lib/typedarray/SOME<~lib/typedarray/Int64Array,i64>|inlined.0
     end
     local.get $7
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
 (func $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>~anonymous|1 (; 225 ;) (type $FUNCSIG$ijii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
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
 (func $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64> (; 226 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i64.const 2
  call $~lib/typedarray/Int64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 1
  i64.const 4
  call $~lib/typedarray/Int64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 2
  i64.const 6
  call $~lib/typedarray/Int64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 49
  call $~lib/typedarray/Int64Array#some
  local.set $2
  local.get $2
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 346
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 50
  call $~lib/typedarray/Int64Array#some
  local.set $3
  local.get $3
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 349
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Uint64Array,u64>~anonymous|0 (; 227 ;) (type $FUNCSIG$ijii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/typedarray/Uint64Array#some (; 228 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
     local.set $7
     global.get $~lib/error
     if
      i32.const 0
      br $~lib/typedarray/SOME<~lib/typedarray/Uint64Array,u64>|inlined.0
     end
     local.get $7
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
 (func $std/typedarray/testArraySome<~lib/typedarray/Uint64Array,u64>~anonymous|1 (; 229 ;) (type $FUNCSIG$ijii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
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
 (func $std/typedarray/testArraySome<~lib/typedarray/Uint64Array,u64> (; 230 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint64Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i64.const 2
  call $~lib/typedarray/Uint64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 1
  i64.const 4
  call $~lib/typedarray/Uint64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 2
  i64.const 6
  call $~lib/typedarray/Uint64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 51
  call $~lib/typedarray/Uint64Array#some
  local.set $2
  local.get $2
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 346
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 52
  call $~lib/typedarray/Uint64Array#some
  local.set $3
  local.get $3
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 349
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Float32Array,f32>~anonymous|0 (; 231 ;) (type $FUNCSIG$ifii) (param $0 f32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/typedarray/Float32Array#some (; 232 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
     local.set $7
     global.get $~lib/error
     if
      i32.const 0
      br $~lib/typedarray/SOME<~lib/typedarray/Float32Array,f32>|inlined.0
     end
     local.get $7
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
 (func $std/typedarray/testArraySome<~lib/typedarray/Float32Array,f32>~anonymous|1 (; 233 ;) (type $FUNCSIG$ifii) (param $0 f32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $std/typedarray/testArraySome<~lib/typedarray/Float32Array,f32> (; 234 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Float32Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  f32.const 2
  call $~lib/typedarray/Float32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 1
  f32.const 4
  call $~lib/typedarray/Float32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 2
  f32.const 6
  call $~lib/typedarray/Float32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 53
  call $~lib/typedarray/Float32Array#some
  local.set $2
  local.get $2
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 346
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 54
  call $~lib/typedarray/Float32Array#some
  local.set $3
  local.get $3
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 349
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArraySome<~lib/typedarray/Float64Array,f64>~anonymous|0 (; 235 ;) (type $FUNCSIG$idii) (param $0 f64) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/typedarray/Float64Array#some (; 236 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
     local.set $7
     global.get $~lib/error
     if
      i32.const 0
      br $~lib/typedarray/SOME<~lib/typedarray/Float64Array,f64>|inlined.0
     end
     local.get $7
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
 (func $std/typedarray/testArraySome<~lib/typedarray/Float64Array,f64>~anonymous|1 (; 237 ;) (type $FUNCSIG$idii) (param $0 f64) (param $1 i32) (param $2 i32) (result i32)
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
 (func $std/typedarray/testArraySome<~lib/typedarray/Float64Array,f64> (; 238 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Float64Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  f64.const 2
  call $~lib/typedarray/Float64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 1
  f64.const 4
  call $~lib/typedarray/Float64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 2
  f64.const 6
  call $~lib/typedarray/Float64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 55
  call $~lib/typedarray/Float64Array#some
  local.set $2
  local.get $2
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 346
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 56
  call $~lib/typedarray/Float64Array#some
  local.set $3
  local.get $3
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 349
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int8Array,i8>~anonymous|0 (; 239 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/typedarray/Int8Array#findIndex (; 240 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
     local.set $7
     global.get $~lib/error
     if
      i32.const 0
      br $~lib/typedarray/FIND_INDEX<~lib/typedarray/Int8Array,i8>|inlined.0
     end
     local.get $7
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
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int8Array,i8>~anonymous|1 (; 241 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int8Array,i8> (; 242 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
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
  i32.const 57
  call $~lib/typedarray/Int8Array#findIndex
  local.set $2
  local.get $2
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 864
   i32.const 24
   i32.const 376
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 58
  call $~lib/typedarray/Int8Array#findIndex
  local.set $3
  local.get $3
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 912
   i32.const 24
   i32.const 379
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint8Array,u8>~anonymous|0 (; 243 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/typedarray/Uint8Array#findIndex (; 244 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
     local.set $7
     global.get $~lib/error
     if
      i32.const 0
      br $~lib/typedarray/FIND_INDEX<~lib/typedarray/Uint8Array,u8>|inlined.0
     end
     local.get $7
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
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint8Array,u8>~anonymous|1 (; 245 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint8Array,u8> (; 246 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint8Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint8Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint8Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint8Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 59
  call $~lib/typedarray/Uint8Array#findIndex
  local.set $2
  local.get $2
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 864
   i32.const 24
   i32.const 376
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 60
  call $~lib/typedarray/Uint8Array#findIndex
  local.set $3
  local.get $3
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 912
   i32.const 24
   i32.const 379
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint8ClampedArray,u8>~anonymous|0 (; 247 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/typedarray/Uint8ClampedArray#findIndex (; 248 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
     local.set $7
     global.get $~lib/error
     if
      i32.const 0
      br $~lib/typedarray/FIND_INDEX<~lib/typedarray/Uint8ClampedArray,u8>|inlined.0
     end
     local.get $7
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
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint8ClampedArray,u8>~anonymous|1 (; 249 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint8ClampedArray,u8> (; 250 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
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
  i32.const 61
  call $~lib/typedarray/Uint8ClampedArray#findIndex
  local.set $2
  local.get $2
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 864
   i32.const 24
   i32.const 376
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 62
  call $~lib/typedarray/Uint8ClampedArray#findIndex
  local.set $3
  local.get $3
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 912
   i32.const 24
   i32.const 379
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int16Array,i16>~anonymous|0 (; 251 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/typedarray/Int16Array#findIndex (; 252 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
     local.set $7
     global.get $~lib/error
     if
      i32.const 0
      br $~lib/typedarray/FIND_INDEX<~lib/typedarray/Int16Array,i16>|inlined.0
     end
     local.get $7
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
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int16Array,i16>~anonymous|1 (; 253 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int16Array,i16> (; 254 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
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
  i32.const 63
  call $~lib/typedarray/Int16Array#findIndex
  local.set $2
  local.get $2
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 864
   i32.const 24
   i32.const 376
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 64
  call $~lib/typedarray/Int16Array#findIndex
  local.set $3
  local.get $3
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 912
   i32.const 24
   i32.const 379
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint16Array,u16>~anonymous|0 (; 255 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/typedarray/Uint16Array#findIndex (; 256 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
     local.set $7
     global.get $~lib/error
     if
      i32.const 0
      br $~lib/typedarray/FIND_INDEX<~lib/typedarray/Uint16Array,u16>|inlined.0
     end
     local.get $7
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
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint16Array,u16>~anonymous|1 (; 257 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint16Array,u16> (; 258 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint16Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint16Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint16Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint16Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 65
  call $~lib/typedarray/Uint16Array#findIndex
  local.set $2
  local.get $2
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 864
   i32.const 24
   i32.const 376
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 66
  call $~lib/typedarray/Uint16Array#findIndex
  local.set $3
  local.get $3
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 912
   i32.const 24
   i32.const 379
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int32Array,i32>~anonymous|0 (; 259 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/typedarray/Int32Array#findIndex (; 260 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
     local.set $7
     global.get $~lib/error
     if
      i32.const 0
      br $~lib/typedarray/FIND_INDEX<~lib/typedarray/Int32Array,i32>|inlined.0
     end
     local.get $7
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
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int32Array,i32>~anonymous|1 (; 261 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int32Array,i32> (; 262 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
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
  i32.const 67
  call $~lib/typedarray/Int32Array#findIndex
  local.set $2
  local.get $2
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 864
   i32.const 24
   i32.const 376
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 68
  call $~lib/typedarray/Int32Array#findIndex
  local.set $3
  local.get $3
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 912
   i32.const 24
   i32.const 379
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint32Array,u32>~anonymous|0 (; 263 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/typedarray/Uint32Array#findIndex (; 264 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
     local.set $7
     global.get $~lib/error
     if
      i32.const 0
      br $~lib/typedarray/FIND_INDEX<~lib/typedarray/Uint32Array,u32>|inlined.0
     end
     local.get $7
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
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint32Array,u32>~anonymous|1 (; 265 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint32Array,u32> (; 266 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint32Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 1
  call $~lib/typedarray/Uint32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 1
  i32.const 2
  call $~lib/typedarray/Uint32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 2
  i32.const 3
  call $~lib/typedarray/Uint32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 69
  call $~lib/typedarray/Uint32Array#findIndex
  local.set $2
  local.get $2
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 864
   i32.const 24
   i32.const 376
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 70
  call $~lib/typedarray/Uint32Array#findIndex
  local.set $3
  local.get $3
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 912
   i32.const 24
   i32.const 379
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int64Array,i64>~anonymous|0 (; 267 ;) (type $FUNCSIG$ijii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/typedarray/Int64Array#findIndex (; 268 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
     local.set $7
     global.get $~lib/error
     if
      i32.const 0
      br $~lib/typedarray/FIND_INDEX<~lib/typedarray/Int64Array,i64>|inlined.0
     end
     local.get $7
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
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int64Array,i64>~anonymous|1 (; 269 ;) (type $FUNCSIG$ijii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
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
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Int64Array,i64> (; 270 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
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
  i32.const 71
  call $~lib/typedarray/Int64Array#findIndex
  local.set $2
  local.get $2
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 864
   i32.const 24
   i32.const 376
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 72
  call $~lib/typedarray/Int64Array#findIndex
  local.set $3
  local.get $3
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 912
   i32.const 24
   i32.const 379
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint64Array,u64>~anonymous|0 (; 271 ;) (type $FUNCSIG$ijii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/typedarray/Uint64Array#findIndex (; 272 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
     local.set $7
     global.get $~lib/error
     if
      i32.const 0
      br $~lib/typedarray/FIND_INDEX<~lib/typedarray/Uint64Array,u64>|inlined.0
     end
     local.get $7
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
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint64Array,u64>~anonymous|1 (; 273 ;) (type $FUNCSIG$ijii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
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
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint64Array,u64> (; 274 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint64Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i64.const 1
  call $~lib/typedarray/Uint64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 1
  i64.const 2
  call $~lib/typedarray/Uint64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 2
  i64.const 3
  call $~lib/typedarray/Uint64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 73
  call $~lib/typedarray/Uint64Array#findIndex
  local.set $2
  local.get $2
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 864
   i32.const 24
   i32.const 376
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 74
  call $~lib/typedarray/Uint64Array#findIndex
  local.set $3
  local.get $3
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 912
   i32.const 24
   i32.const 379
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Float32Array,f32>~anonymous|0 (; 275 ;) (type $FUNCSIG$ifii) (param $0 f32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/typedarray/Float32Array#findIndex (; 276 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
     local.set $7
     global.get $~lib/error
     if
      i32.const 0
      br $~lib/typedarray/FIND_INDEX<~lib/typedarray/Float32Array,f32>|inlined.0
     end
     local.get $7
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
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Float32Array,f32>~anonymous|1 (; 277 ;) (type $FUNCSIG$ifii) (param $0 f32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Float32Array,f32> (; 278 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Float32Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
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
  i32.const 75
  call $~lib/typedarray/Float32Array#findIndex
  local.set $2
  local.get $2
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 864
   i32.const 24
   i32.const 376
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 76
  call $~lib/typedarray/Float32Array#findIndex
  local.set $3
  local.get $3
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 912
   i32.const 24
   i32.const 379
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Float64Array,f64>~anonymous|0 (; 279 ;) (type $FUNCSIG$idii) (param $0 f64) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/typedarray/Float64Array#findIndex (; 280 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
     local.set $7
     global.get $~lib/error
     if
      i32.const 0
      br $~lib/typedarray/FIND_INDEX<~lib/typedarray/Float64Array,f64>|inlined.0
     end
     local.get $7
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
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Float64Array,f64>~anonymous|1 (; 281 ;) (type $FUNCSIG$idii) (param $0 f64) (param $1 i32) (param $2 i32) (result i32)
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
 (func $std/typedarray/testArrayFindIndex<~lib/typedarray/Float64Array,f64> (; 282 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Float64Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
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
  i32.const 77
  call $~lib/typedarray/Float64Array#findIndex
  local.set $2
  local.get $2
  i32.const 1
  i32.eq
  i32.eqz
  if
   i32.const 864
   i32.const 24
   i32.const 376
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 78
  call $~lib/typedarray/Float64Array#findIndex
  local.set $3
  local.get $3
  i32.const -1
  i32.eq
  i32.eqz
  if
   i32.const 912
   i32.const 24
   i32.const 379
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int8Array,i8>~anonymous|0 (; 283 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/typedarray/Int8Array#every (; 284 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
      local.set $7
      global.get $~lib/error
      if
       i32.const 0
       br $~lib/typedarray/EVERY<~lib/typedarray/Int8Array,i8>|inlined.0
      end
      local.get $7
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
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int8Array,i8>~anonymous|1 (; 285 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int8Array,i8> (; 286 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Int8Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Int8Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Int8Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 79
  call $~lib/typedarray/Int8Array#every
  local.set $2
  local.get $2
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 406
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 80
  call $~lib/typedarray/Int8Array#every
  local.set $3
  local.get $3
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 409
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint8Array,u8>~anonymous|0 (; 287 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/typedarray/Uint8Array#every (; 288 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
      local.set $7
      global.get $~lib/error
      if
       i32.const 0
       br $~lib/typedarray/EVERY<~lib/typedarray/Uint8Array,u8>|inlined.0
      end
      local.get $7
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
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint8Array,u8>~anonymous|1 (; 289 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint8Array,u8> (; 290 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint8Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Uint8Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Uint8Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Uint8Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 81
  call $~lib/typedarray/Uint8Array#every
  local.set $2
  local.get $2
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 406
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 82
  call $~lib/typedarray/Uint8Array#every
  local.set $3
  local.get $3
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 409
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint8ClampedArray,u8>~anonymous|0 (; 291 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/typedarray/Uint8ClampedArray#every (; 292 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
      local.set $7
      global.get $~lib/error
      if
       i32.const 0
       br $~lib/typedarray/EVERY<~lib/typedarray/Uint8ClampedArray,u8>|inlined.0
      end
      local.get $7
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
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint8ClampedArray,u8>~anonymous|1 (; 293 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint8ClampedArray,u8> (; 294 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Uint8ClampedArray#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Uint8ClampedArray#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Uint8ClampedArray#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 83
  call $~lib/typedarray/Uint8ClampedArray#every
  local.set $2
  local.get $2
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 406
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 84
  call $~lib/typedarray/Uint8ClampedArray#every
  local.set $3
  local.get $3
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 409
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int16Array,i16>~anonymous|0 (; 295 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/typedarray/Int16Array#every (; 296 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
      local.set $7
      global.get $~lib/error
      if
       i32.const 0
       br $~lib/typedarray/EVERY<~lib/typedarray/Int16Array,i16>|inlined.0
      end
      local.get $7
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
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int16Array,i16>~anonymous|1 (; 297 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int16Array,i16> (; 298 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Int16Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Int16Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Int16Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 85
  call $~lib/typedarray/Int16Array#every
  local.set $2
  local.get $2
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 406
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 86
  call $~lib/typedarray/Int16Array#every
  local.set $3
  local.get $3
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 409
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint16Array,u16>~anonymous|0 (; 299 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/typedarray/Uint16Array#every (; 300 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
      local.set $7
      global.get $~lib/error
      if
       i32.const 0
       br $~lib/typedarray/EVERY<~lib/typedarray/Uint16Array,u16>|inlined.0
      end
      local.get $7
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
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint16Array,u16>~anonymous|1 (; 301 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint16Array,u16> (; 302 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint16Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Uint16Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Uint16Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Uint16Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 87
  call $~lib/typedarray/Uint16Array#every
  local.set $2
  local.get $2
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 406
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 88
  call $~lib/typedarray/Uint16Array#every
  local.set $3
  local.get $3
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 409
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int32Array,i32>~anonymous|0 (; 303 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/typedarray/Int32Array#every (; 304 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
      local.set $7
      global.get $~lib/error
      if
       i32.const 0
       br $~lib/typedarray/EVERY<~lib/typedarray/Int32Array,i32>|inlined.0
      end
      local.get $7
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
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int32Array,i32>~anonymous|1 (; 305 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int32Array,i32> (; 306 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Int32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Int32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Int32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 89
  call $~lib/typedarray/Int32Array#every
  local.set $2
  local.get $2
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 406
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 90
  call $~lib/typedarray/Int32Array#every
  local.set $3
  local.get $3
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 409
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint32Array,u32>~anonymous|0 (; 307 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/typedarray/Uint32Array#every (; 308 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
      local.set $7
      global.get $~lib/error
      if
       i32.const 0
       br $~lib/typedarray/EVERY<~lib/typedarray/Uint32Array,u32>|inlined.0
      end
      local.get $7
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
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint32Array,u32>~anonymous|1 (; 309 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint32Array,u32> (; 310 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint32Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i32.const 2
  call $~lib/typedarray/Uint32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 1
  i32.const 4
  call $~lib/typedarray/Uint32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 2
  i32.const 6
  call $~lib/typedarray/Uint32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 91
  call $~lib/typedarray/Uint32Array#every
  local.set $2
  local.get $2
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 406
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 92
  call $~lib/typedarray/Uint32Array#every
  local.set $3
  local.get $3
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 409
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int64Array,i64>~anonymous|0 (; 311 ;) (type $FUNCSIG$ijii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/typedarray/Int64Array#every (; 312 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
      local.set $7
      global.get $~lib/error
      if
       i32.const 0
       br $~lib/typedarray/EVERY<~lib/typedarray/Int64Array,i64>|inlined.0
      end
      local.get $7
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
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int64Array,i64>~anonymous|1 (; 313 ;) (type $FUNCSIG$ijii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
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
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Int64Array,i64> (; 314 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i64.const 2
  call $~lib/typedarray/Int64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 1
  i64.const 4
  call $~lib/typedarray/Int64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 2
  i64.const 6
  call $~lib/typedarray/Int64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 93
  call $~lib/typedarray/Int64Array#every
  local.set $2
  local.get $2
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 406
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 94
  call $~lib/typedarray/Int64Array#every
  local.set $3
  local.get $3
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 409
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint64Array,u64>~anonymous|0 (; 315 ;) (type $FUNCSIG$ijii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/typedarray/Uint64Array#every (; 316 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
      local.set $7
      global.get $~lib/error
      if
       i32.const 0
       br $~lib/typedarray/EVERY<~lib/typedarray/Uint64Array,u64>|inlined.0
      end
      local.get $7
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
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint64Array,u64>~anonymous|1 (; 317 ;) (type $FUNCSIG$ijii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
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
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Uint64Array,u64> (; 318 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint64Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  i64.const 2
  call $~lib/typedarray/Uint64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 1
  i64.const 4
  call $~lib/typedarray/Uint64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 2
  i64.const 6
  call $~lib/typedarray/Uint64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 95
  call $~lib/typedarray/Uint64Array#every
  local.set $2
  local.get $2
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 406
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 96
  call $~lib/typedarray/Uint64Array#every
  local.set $3
  local.get $3
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 409
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/number/isNaN<f32> (; 319 ;) (type $FUNCSIG$if) (param $0 f32) (result i32)
  local.get $0
  local.get $0
  f32.ne
 )
 (func $~lib/math/NativeMathf.mod (; 320 ;) (type $FUNCSIG$fff) (param $0 f32) (param $1 f32) (result f32)
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
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Float32Array,f32>~anonymous|0 (; 321 ;) (type $FUNCSIG$ifii) (param $0 f32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/typedarray/Float32Array#every (; 322 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
      local.set $7
      global.get $~lib/error
      if
       i32.const 0
       br $~lib/typedarray/EVERY<~lib/typedarray/Float32Array,f32>|inlined.0
      end
      local.get $7
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
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Float32Array,f32>~anonymous|1 (; 323 ;) (type $FUNCSIG$ifii) (param $0 f32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Float32Array,f32> (; 324 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Float32Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  f32.const 2
  call $~lib/typedarray/Float32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 1
  f32.const 4
  call $~lib/typedarray/Float32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 2
  f32.const 6
  call $~lib/typedarray/Float32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 97
  call $~lib/typedarray/Float32Array#every
  local.set $2
  local.get $2
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 406
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 98
  call $~lib/typedarray/Float32Array#every
  local.set $3
  local.get $3
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 409
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/number/isNaN<f64> (; 325 ;) (type $FUNCSIG$id) (param $0 f64) (result i32)
  local.get $0
  local.get $0
  f64.ne
 )
 (func $~lib/math/NativeMath.mod (; 326 ;) (type $FUNCSIG$ddd) (param $0 f64) (param $1 f64) (result f64)
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
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Float64Array,f64>~anonymous|0 (; 327 ;) (type $FUNCSIG$idii) (param $0 f64) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/typedarray/Float64Array#every (; 328 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
      local.set $7
      global.get $~lib/error
      if
       i32.const 0
       br $~lib/typedarray/EVERY<~lib/typedarray/Float64Array,f64>|inlined.0
      end
      local.get $7
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
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Float64Array,f64>~anonymous|1 (; 329 ;) (type $FUNCSIG$idii) (param $0 f64) (param $1 i32) (param $2 i32) (result i32)
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
 (func $std/typedarray/testArrayEvery<~lib/typedarray/Float64Array,f64> (; 330 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Float64Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
  local.tee $0
  call $~lib/rt/pure/__retain
  local.set $1
  local.get $1
  i32.const 0
  f64.const 2
  call $~lib/typedarray/Float64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 1
  f64.const 4
  call $~lib/typedarray/Float64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 2
  f64.const 6
  call $~lib/typedarray/Float64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 99
  call $~lib/typedarray/Float64Array#every
  local.set $2
  local.get $2
  i32.const 0
  i32.ne
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 406
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  i32.const 100
  call $~lib/typedarray/Float64Array#every
  local.set $3
  local.get $3
  i32.const 0
  i32.ne
  i32.eqz
  i32.eqz
  if
   i32.const 0
   i32.const 24
   i32.const 409
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Int8Array,i8>~anonymous|0 (; 331 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  global.get $std/typedarray/forEachValues
  local.get $1
  call $~lib/array/Array<i32>#__get
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  local.set $4
  local.get $0
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  local.get $4
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.eq
  i32.eqz
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
  i32.eq
  i32.eqz
  if
   i32.const 1096
   i32.const 24
   i32.const 437
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/typedarray/forEachSelf
  local.get $2
  i32.eq
  i32.eqz
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
 (func $~lib/typedarray/Int8Array#forEach (; 332 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $~lib/typedarray/FOREACH<~lib/typedarray/Int8Array,i8>|inlined.0
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
     global.get $~lib/error
     if
      br $~lib/typedarray/FOREACH<~lib/typedarray/Int8Array,i8>|inlined.0
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
   call $~lib/rt/pure/__release
  end
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Int8Array,i8> (; 333 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  global.set $std/typedarray/forEachCallCount
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int8Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
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
  local.set $2
  global.get $~lib/error
  if
   return
  end
  local.get $2
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  call $~lib/typedarray/Int8Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 1
  global.get $std/typedarray/forEachValues
  i32.const 1
  call $~lib/array/Array<i32>#__get
  local.set $2
  global.get $~lib/error
  if
   return
  end
  local.get $2
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  call $~lib/typedarray/Int8Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 2
  global.get $std/typedarray/forEachValues
  i32.const 2
  call $~lib/array/Array<i32>#__get
  local.set $2
  global.get $~lib/error
  if
   return
  end
  local.get $2
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  call $~lib/typedarray/Int8Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 101
  call $~lib/typedarray/Int8Array#forEach
  global.get $std/typedarray/forEachCallCount
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 1240
   i32.const 24
   i32.const 441
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Uint8Array,u8>~anonymous|0 (; 334 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  global.get $std/typedarray/forEachValues
  local.get $1
  call $~lib/array/Array<i32>#__get
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  local.set $4
  local.get $0
  i32.const 255
  i32.and
  local.get $4
  i32.const 255
  i32.and
  i32.eq
  i32.eqz
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
  i32.eq
  i32.eqz
  if
   i32.const 1096
   i32.const 24
   i32.const 437
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/typedarray/forEachSelf
  local.get $2
  i32.eq
  i32.eqz
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
 (func $~lib/typedarray/Uint8Array#forEach (; 335 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $~lib/typedarray/FOREACH<~lib/typedarray/Uint8Array,u8>|inlined.0
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
     global.get $~lib/error
     if
      br $~lib/typedarray/FOREACH<~lib/typedarray/Uint8Array,u8>|inlined.0
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
   call $~lib/rt/pure/__release
  end
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Uint8Array,u8> (; 336 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  global.set $std/typedarray/forEachCallCount
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint8Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
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
  local.set $2
  global.get $~lib/error
  if
   return
  end
  local.get $2
  i32.const 255
  i32.and
  call $~lib/typedarray/Uint8Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 1
  global.get $std/typedarray/forEachValues
  i32.const 1
  call $~lib/array/Array<i32>#__get
  local.set $2
  global.get $~lib/error
  if
   return
  end
  local.get $2
  i32.const 255
  i32.and
  call $~lib/typedarray/Uint8Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 2
  global.get $std/typedarray/forEachValues
  i32.const 2
  call $~lib/array/Array<i32>#__get
  local.set $2
  global.get $~lib/error
  if
   return
  end
  local.get $2
  i32.const 255
  i32.and
  call $~lib/typedarray/Uint8Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 102
  call $~lib/typedarray/Uint8Array#forEach
  global.get $std/typedarray/forEachCallCount
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 1240
   i32.const 24
   i32.const 441
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Uint8ClampedArray,u8>~anonymous|0 (; 337 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  global.get $std/typedarray/forEachValues
  local.get $1
  call $~lib/array/Array<i32>#__get
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  local.set $4
  local.get $0
  i32.const 255
  i32.and
  local.get $4
  i32.const 255
  i32.and
  i32.eq
  i32.eqz
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
  i32.eq
  i32.eqz
  if
   i32.const 1096
   i32.const 24
   i32.const 437
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/typedarray/forEachSelf
  local.get $2
  i32.eq
  i32.eqz
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
 (func $~lib/typedarray/Uint8ClampedArray#forEach (; 338 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $~lib/typedarray/FOREACH<~lib/typedarray/Uint8ClampedArray,u8>|inlined.0
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
     global.get $~lib/error
     if
      br $~lib/typedarray/FOREACH<~lib/typedarray/Uint8ClampedArray,u8>|inlined.0
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
   call $~lib/rt/pure/__release
  end
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Uint8ClampedArray,u8> (; 339 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  global.set $std/typedarray/forEachCallCount
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
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
  local.set $2
  global.get $~lib/error
  if
   return
  end
  local.get $2
  i32.const 255
  i32.and
  call $~lib/typedarray/Uint8ClampedArray#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 1
  global.get $std/typedarray/forEachValues
  i32.const 1
  call $~lib/array/Array<i32>#__get
  local.set $2
  global.get $~lib/error
  if
   return
  end
  local.get $2
  i32.const 255
  i32.and
  call $~lib/typedarray/Uint8ClampedArray#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 2
  global.get $std/typedarray/forEachValues
  i32.const 2
  call $~lib/array/Array<i32>#__get
  local.set $2
  global.get $~lib/error
  if
   return
  end
  local.get $2
  i32.const 255
  i32.and
  call $~lib/typedarray/Uint8ClampedArray#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 103
  call $~lib/typedarray/Uint8ClampedArray#forEach
  global.get $std/typedarray/forEachCallCount
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 1240
   i32.const 24
   i32.const 441
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Int16Array,i16>~anonymous|0 (; 340 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  global.get $std/typedarray/forEachValues
  local.get $1
  call $~lib/array/Array<i32>#__get
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  local.set $4
  local.get $0
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  local.get $4
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.eq
  i32.eqz
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
  i32.eq
  i32.eqz
  if
   i32.const 1096
   i32.const 24
   i32.const 437
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/typedarray/forEachSelf
  local.get $2
  i32.eq
  i32.eqz
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
 (func $~lib/typedarray/Int16Array#forEach (; 341 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $~lib/typedarray/FOREACH<~lib/typedarray/Int16Array,i16>|inlined.0
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
     global.get $~lib/error
     if
      br $~lib/typedarray/FOREACH<~lib/typedarray/Int16Array,i16>|inlined.0
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
   call $~lib/rt/pure/__release
  end
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Int16Array,i16> (; 342 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  global.set $std/typedarray/forEachCallCount
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int16Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
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
  local.set $2
  global.get $~lib/error
  if
   return
  end
  local.get $2
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  call $~lib/typedarray/Int16Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 1
  global.get $std/typedarray/forEachValues
  i32.const 1
  call $~lib/array/Array<i32>#__get
  local.set $2
  global.get $~lib/error
  if
   return
  end
  local.get $2
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  call $~lib/typedarray/Int16Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 2
  global.get $std/typedarray/forEachValues
  i32.const 2
  call $~lib/array/Array<i32>#__get
  local.set $2
  global.get $~lib/error
  if
   return
  end
  local.get $2
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  call $~lib/typedarray/Int16Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 104
  call $~lib/typedarray/Int16Array#forEach
  global.get $std/typedarray/forEachCallCount
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 1240
   i32.const 24
   i32.const 441
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Uint16Array,u16>~anonymous|0 (; 343 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  global.get $std/typedarray/forEachValues
  local.get $1
  call $~lib/array/Array<i32>#__get
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  local.set $4
  local.get $0
  i32.const 65535
  i32.and
  local.get $4
  i32.const 65535
  i32.and
  i32.eq
  i32.eqz
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
  i32.eq
  i32.eqz
  if
   i32.const 1096
   i32.const 24
   i32.const 437
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/typedarray/forEachSelf
  local.get $2
  i32.eq
  i32.eqz
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
 (func $~lib/typedarray/Uint16Array#forEach (; 344 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $~lib/typedarray/FOREACH<~lib/typedarray/Uint16Array,u16>|inlined.0
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
     global.get $~lib/error
     if
      br $~lib/typedarray/FOREACH<~lib/typedarray/Uint16Array,u16>|inlined.0
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
   call $~lib/rt/pure/__release
  end
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Uint16Array,u16> (; 345 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  global.set $std/typedarray/forEachCallCount
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint16Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
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
  local.set $2
  global.get $~lib/error
  if
   return
  end
  local.get $2
  i32.const 65535
  i32.and
  call $~lib/typedarray/Uint16Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 1
  global.get $std/typedarray/forEachValues
  i32.const 1
  call $~lib/array/Array<i32>#__get
  local.set $2
  global.get $~lib/error
  if
   return
  end
  local.get $2
  i32.const 65535
  i32.and
  call $~lib/typedarray/Uint16Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 2
  global.get $std/typedarray/forEachValues
  i32.const 2
  call $~lib/array/Array<i32>#__get
  local.set $2
  global.get $~lib/error
  if
   return
  end
  local.get $2
  i32.const 65535
  i32.and
  call $~lib/typedarray/Uint16Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 105
  call $~lib/typedarray/Uint16Array#forEach
  global.get $std/typedarray/forEachCallCount
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 1240
   i32.const 24
   i32.const 441
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Int32Array,i32>~anonymous|0 (; 346 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  global.get $std/typedarray/forEachValues
  local.get $1
  call $~lib/array/Array<i32>#__get
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  local.set $4
  local.get $0
  local.get $4
  i32.eq
  i32.eqz
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
  i32.eq
  i32.eqz
  if
   i32.const 1096
   i32.const 24
   i32.const 437
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/typedarray/forEachSelf
  local.get $2
  i32.eq
  i32.eqz
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
 (func $~lib/typedarray/Int32Array#forEach (; 347 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $~lib/typedarray/FOREACH<~lib/typedarray/Int32Array,i32>|inlined.0
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
     global.get $~lib/error
     if
      br $~lib/typedarray/FOREACH<~lib/typedarray/Int32Array,i32>|inlined.0
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
   call $~lib/rt/pure/__release
  end
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Int32Array,i32> (; 348 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  global.set $std/typedarray/forEachCallCount
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int32Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
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
  local.set $2
  global.get $~lib/error
  if
   return
  end
  local.get $2
  call $~lib/typedarray/Int32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 1
  global.get $std/typedarray/forEachValues
  i32.const 1
  call $~lib/array/Array<i32>#__get
  local.set $2
  global.get $~lib/error
  if
   return
  end
  local.get $2
  call $~lib/typedarray/Int32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 2
  global.get $std/typedarray/forEachValues
  i32.const 2
  call $~lib/array/Array<i32>#__get
  local.set $2
  global.get $~lib/error
  if
   return
  end
  local.get $2
  call $~lib/typedarray/Int32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 106
  call $~lib/typedarray/Int32Array#forEach
  global.get $std/typedarray/forEachCallCount
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 1240
   i32.const 24
   i32.const 441
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Uint32Array,u32>~anonymous|0 (; 349 ;) (type $FUNCSIG$viii) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  global.get $std/typedarray/forEachValues
  local.get $1
  call $~lib/array/Array<i32>#__get
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  local.set $4
  local.get $0
  local.get $4
  i32.eq
  i32.eqz
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
  i32.eq
  i32.eqz
  if
   i32.const 1096
   i32.const 24
   i32.const 437
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/typedarray/forEachSelf
  local.get $2
  i32.eq
  i32.eqz
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
 (func $~lib/typedarray/Uint32Array#forEach (; 350 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $~lib/typedarray/FOREACH<~lib/typedarray/Uint32Array,u32>|inlined.0
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
     global.get $~lib/error
     if
      br $~lib/typedarray/FOREACH<~lib/typedarray/Uint32Array,u32>|inlined.0
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
   call $~lib/rt/pure/__release
  end
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Uint32Array,u32> (; 351 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  global.set $std/typedarray/forEachCallCount
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint32Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
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
  local.set $2
  global.get $~lib/error
  if
   return
  end
  local.get $2
  call $~lib/typedarray/Uint32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 1
  global.get $std/typedarray/forEachValues
  i32.const 1
  call $~lib/array/Array<i32>#__get
  local.set $2
  global.get $~lib/error
  if
   return
  end
  local.get $2
  call $~lib/typedarray/Uint32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 2
  global.get $std/typedarray/forEachValues
  i32.const 2
  call $~lib/array/Array<i32>#__get
  local.set $2
  global.get $~lib/error
  if
   return
  end
  local.get $2
  call $~lib/typedarray/Uint32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 107
  call $~lib/typedarray/Uint32Array#forEach
  global.get $std/typedarray/forEachCallCount
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 1240
   i32.const 24
   i32.const 441
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Int64Array,i64>~anonymous|0 (; 352 ;) (type $FUNCSIG$vjii) (param $0 i64) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  global.get $std/typedarray/forEachValues
  local.get $1
  call $~lib/array/Array<i32>#__get
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  local.set $4
  local.get $0
  local.get $4
  i64.extend_i32_s
  i64.eq
  i32.eqz
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
  i32.eq
  i32.eqz
  if
   i32.const 1096
   i32.const 24
   i32.const 437
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/typedarray/forEachSelf
  local.get $2
  i32.eq
  i32.eqz
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
 (func $~lib/typedarray/Int64Array#forEach (; 353 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $~lib/typedarray/FOREACH<~lib/typedarray/Int64Array,i64>|inlined.0
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
     global.get $~lib/error
     if
      br $~lib/typedarray/FOREACH<~lib/typedarray/Int64Array,i64>|inlined.0
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
   call $~lib/rt/pure/__release
  end
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Int64Array,i64> (; 354 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  global.set $std/typedarray/forEachCallCount
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Int64Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
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
  local.set $2
  global.get $~lib/error
  if
   return
  end
  local.get $2
  i64.extend_i32_s
  call $~lib/typedarray/Int64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 1
  global.get $std/typedarray/forEachValues
  i32.const 1
  call $~lib/array/Array<i32>#__get
  local.set $2
  global.get $~lib/error
  if
   return
  end
  local.get $2
  i64.extend_i32_s
  call $~lib/typedarray/Int64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 2
  global.get $std/typedarray/forEachValues
  i32.const 2
  call $~lib/array/Array<i32>#__get
  local.set $2
  global.get $~lib/error
  if
   return
  end
  local.get $2
  i64.extend_i32_s
  call $~lib/typedarray/Int64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 108
  call $~lib/typedarray/Int64Array#forEach
  global.get $std/typedarray/forEachCallCount
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 1240
   i32.const 24
   i32.const 441
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Uint64Array,u64>~anonymous|0 (; 355 ;) (type $FUNCSIG$vjii) (param $0 i64) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  global.get $std/typedarray/forEachValues
  local.get $1
  call $~lib/array/Array<i32>#__get
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  local.set $4
  local.get $0
  local.get $4
  i64.extend_i32_s
  i64.eq
  i32.eqz
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
  i32.eq
  i32.eqz
  if
   i32.const 1096
   i32.const 24
   i32.const 437
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/typedarray/forEachSelf
  local.get $2
  i32.eq
  i32.eqz
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
 (func $~lib/typedarray/Uint64Array#forEach (; 356 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $~lib/typedarray/FOREACH<~lib/typedarray/Uint64Array,u64>|inlined.0
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
     global.get $~lib/error
     if
      br $~lib/typedarray/FOREACH<~lib/typedarray/Uint64Array,u64>|inlined.0
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
   call $~lib/rt/pure/__release
  end
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Uint64Array,u64> (; 357 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  global.set $std/typedarray/forEachCallCount
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Uint64Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
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
  local.set $2
  global.get $~lib/error
  if
   return
  end
  local.get $2
  i64.extend_i32_s
  call $~lib/typedarray/Uint64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 1
  global.get $std/typedarray/forEachValues
  i32.const 1
  call $~lib/array/Array<i32>#__get
  local.set $2
  global.get $~lib/error
  if
   return
  end
  local.get $2
  i64.extend_i32_s
  call $~lib/typedarray/Uint64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 2
  global.get $std/typedarray/forEachValues
  i32.const 2
  call $~lib/array/Array<i32>#__get
  local.set $2
  global.get $~lib/error
  if
   return
  end
  local.get $2
  i64.extend_i32_s
  call $~lib/typedarray/Uint64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 109
  call $~lib/typedarray/Uint64Array#forEach
  global.get $std/typedarray/forEachCallCount
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 1240
   i32.const 24
   i32.const 441
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Float32Array,f32>~anonymous|0 (; 358 ;) (type $FUNCSIG$vfii) (param $0 f32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  global.get $std/typedarray/forEachValues
  local.get $1
  call $~lib/array/Array<i32>#__get
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  local.set $4
  local.get $0
  local.get $4
  f32.convert_i32_s
  f32.eq
  i32.eqz
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
  i32.eq
  i32.eqz
  if
   i32.const 1096
   i32.const 24
   i32.const 437
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/typedarray/forEachSelf
  local.get $2
  i32.eq
  i32.eqz
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
 (func $~lib/typedarray/Float32Array#forEach (; 359 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $~lib/typedarray/FOREACH<~lib/typedarray/Float32Array,f32>|inlined.0
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
     global.get $~lib/error
     if
      br $~lib/typedarray/FOREACH<~lib/typedarray/Float32Array,f32>|inlined.0
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
   call $~lib/rt/pure/__release
  end
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Float32Array,f32> (; 360 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  global.set $std/typedarray/forEachCallCount
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Float32Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
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
  local.set $2
  global.get $~lib/error
  if
   return
  end
  local.get $2
  f32.convert_i32_s
  call $~lib/typedarray/Float32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 1
  global.get $std/typedarray/forEachValues
  i32.const 1
  call $~lib/array/Array<i32>#__get
  local.set $2
  global.get $~lib/error
  if
   return
  end
  local.get $2
  f32.convert_i32_s
  call $~lib/typedarray/Float32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 2
  global.get $std/typedarray/forEachValues
  i32.const 2
  call $~lib/array/Array<i32>#__get
  local.set $2
  global.get $~lib/error
  if
   return
  end
  local.get $2
  f32.convert_i32_s
  call $~lib/typedarray/Float32Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 110
  call $~lib/typedarray/Float32Array#forEach
  global.get $std/typedarray/forEachCallCount
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 1240
   i32.const 24
   i32.const 441
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Float64Array,f64>~anonymous|0 (; 361 ;) (type $FUNCSIG$vdii) (param $0 f64) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $2
  call $~lib/rt/pure/__retain
  drop
  global.get $std/typedarray/forEachValues
  local.get $1
  call $~lib/array/Array<i32>#__get
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  local.set $4
  local.get $0
  local.get $4
  f64.convert_i32_s
  f64.eq
  i32.eqz
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
  i32.eq
  i32.eqz
  if
   i32.const 1096
   i32.const 24
   i32.const 437
   i32.const 4
   call $~lib/builtins/abort
   unreachable
  end
  global.get $std/typedarray/forEachSelf
  local.get $2
  i32.eq
  i32.eqz
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
 (func $~lib/typedarray/Float64Array#forEach (; 362 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  block $~lib/typedarray/FOREACH<~lib/typedarray/Float64Array,f64>|inlined.0
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
     global.get $~lib/error
     if
      br $~lib/typedarray/FOREACH<~lib/typedarray/Float64Array,f64>|inlined.0
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
   call $~lib/rt/pure/__release
  end
 )
 (func $std/typedarray/testArrayForEach<~lib/typedarray/Float64Array,f64> (; 363 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  i32.const 0
  global.set $std/typedarray/forEachCallCount
  i32.const 0
  i32.const 3
  call $~lib/typedarray/Float64Array#constructor
  local.set $0
  global.get $~lib/error
  if
   return
  end
  local.get $0
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
  local.set $2
  global.get $~lib/error
  if
   return
  end
  local.get $2
  f64.convert_i32_s
  call $~lib/typedarray/Float64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 1
  global.get $std/typedarray/forEachValues
  i32.const 1
  call $~lib/array/Array<i32>#__get
  local.set $2
  global.get $~lib/error
  if
   return
  end
  local.get $2
  f64.convert_i32_s
  call $~lib/typedarray/Float64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 2
  global.get $std/typedarray/forEachValues
  i32.const 2
  call $~lib/array/Array<i32>#__get
  local.set $2
  global.get $~lib/error
  if
   return
  end
  local.get $2
  f64.convert_i32_s
  call $~lib/typedarray/Float64Array#__set
  global.get $~lib/error
  if
   return
  end
  local.get $1
  i32.const 111
  call $~lib/typedarray/Float64Array#forEach
  global.get $std/typedarray/forEachCallCount
  i32.const 3
  i32.eq
  i32.eqz
  if
   i32.const 1240
   i32.const 24
   i32.const 441
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $0
  call $~lib/rt/pure/__release
  local.get $1
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int8Array#reverse (; 364 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
    i32.lt_s
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
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Int8Array,i8> (; 365 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $std/typedarray/testArrayReverseValues
  call $~lib/rt/pure/__retain
  local.set $0
  i32.const 0
  i32.const 9
  call $~lib/typedarray/Int8Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  local.tee $1
  call $~lib/rt/pure/__retain
  local.set $2
  i32.const 0
  i32.const 9
  call $~lib/typedarray/Int8Array#constructor
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  local.tee $3
  call $~lib/rt/pure/__retain
  local.set $4
  i32.const 0
  local.set $5
  block $break|0
   i32.const 0
   local.set $5
   loop $loop|0
    local.get $5
    i32.const 9
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $2
    local.get $5
    local.get $0
    local.get $5
    call $~lib/array/Array<i32>#__get
    local.set $6
    global.get $~lib/error
    if
     return
    end
    local.get $6
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    call $~lib/typedarray/Int8Array#__set
    global.get $~lib/error
    if
     return
    end
    local.get $4
    local.get $5
    local.get $0
    local.get $5
    call $~lib/array/Array<i32>#__get
    local.set $6
    global.get $~lib/error
    if
     return
    end
    local.get $6
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    call $~lib/typedarray/Int8Array#__set
    global.get $~lib/error
    if
     return
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $loop|0
   end
   unreachable
  end
  local.get $2
  call $~lib/typedarray/Int8Array#reverse
  call $~lib/rt/pure/__release
  block $break|1
   i32.const 0
   local.set $5
   loop $loop|1
    local.get $5
    i32.const 9
    i32.lt_s
    i32.eqz
    br_if $break|1
    local.get $2
    local.get $5
    call $~lib/typedarray/Int8Array#__get
    local.set $6
    global.get $~lib/error
    if
     return
    end
    local.get $6
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    local.get $0
    i32.const 8
    local.get $5
    i32.sub
    call $~lib/array/Array<i32>#__get
    local.set $6
    global.get $~lib/error
    if
     return
    end
    local.get $6
    i32.const 24
    i32.shl
    i32.const 24
    i32.shr_s
    i32.eq
    i32.eqz
    if
     i32.const 1400
     i32.const 24
     i32.const 471
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $loop|1
   end
   unreachable
  end
  local.get $4
  i32.const 4
  i32.const 8
  call $~lib/typedarray/Int8Array#subarray
  local.tee $6
  call $~lib/typedarray/Int8Array#reverse
  local.set $7
  local.get $7
  i32.const 0
  call $~lib/typedarray/Int8Array#__get
  local.set $8
  global.get $~lib/error
  if
   return
  end
  local.get $8
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 1488
   i32.const 24
   i32.const 476
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.const 1
  call $~lib/typedarray/Int8Array#__get
  local.set $8
  global.get $~lib/error
  if
   return
  end
  local.get $8
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 7
  i32.eq
  i32.eqz
  if
   i32.const 1488
   i32.const 24
   i32.const 477
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.const 2
  call $~lib/typedarray/Int8Array#__get
  local.set $8
  global.get $~lib/error
  if
   return
  end
  local.get $8
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 1488
   i32.const 24
   i32.const 478
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.const 3
  call $~lib/typedarray/Int8Array#__get
  local.set $8
  global.get $~lib/error
  if
   return
  end
  local.get $8
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 1488
   i32.const 24
   i32.const 479
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint8Array#reverse (; 366 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
    i32.lt_s
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
 (func $~lib/typedarray/Uint8Array#subarray (; 367 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  block $~lib/typedarray/SUBARRAY<~lib/typedarray/Uint8Array,u8>|inlined.0 (result i32)
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
   i32.const 6
   call $~lib/rt/tlsf/__alloc
   local.set $7
   global.get $~lib/error
   if
    i32.const 0
    br $~lib/typedarray/SUBARRAY<~lib/typedarray/Uint8Array,u8>|inlined.0
   end
   local.get $7
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
  end
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Uint8Array,u8> (; 368 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $std/typedarray/testArrayReverseValues
  call $~lib/rt/pure/__retain
  local.set $0
  i32.const 0
  i32.const 9
  call $~lib/typedarray/Uint8Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  local.tee $1
  call $~lib/rt/pure/__retain
  local.set $2
  i32.const 0
  i32.const 9
  call $~lib/typedarray/Uint8Array#constructor
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  local.tee $3
  call $~lib/rt/pure/__retain
  local.set $4
  i32.const 0
  local.set $5
  block $break|0
   i32.const 0
   local.set $5
   loop $loop|0
    local.get $5
    i32.const 9
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $2
    local.get $5
    local.get $0
    local.get $5
    call $~lib/array/Array<i32>#__get
    local.set $6
    global.get $~lib/error
    if
     return
    end
    local.get $6
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__set
    global.get $~lib/error
    if
     return
    end
    local.get $4
    local.get $5
    local.get $0
    local.get $5
    call $~lib/array/Array<i32>#__get
    local.set $6
    global.get $~lib/error
    if
     return
    end
    local.get $6
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8Array#__set
    global.get $~lib/error
    if
     return
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $loop|0
   end
   unreachable
  end
  local.get $2
  call $~lib/typedarray/Uint8Array#reverse
  call $~lib/rt/pure/__release
  block $break|1
   i32.const 0
   local.set $5
   loop $loop|1
    local.get $5
    i32.const 9
    i32.lt_s
    i32.eqz
    br_if $break|1
    local.get $2
    local.get $5
    call $~lib/typedarray/Uint8Array#__get
    local.set $6
    global.get $~lib/error
    if
     return
    end
    local.get $6
    i32.const 255
    i32.and
    local.get $0
    i32.const 8
    local.get $5
    i32.sub
    call $~lib/array/Array<i32>#__get
    local.set $6
    global.get $~lib/error
    if
     return
    end
    local.get $6
    i32.const 255
    i32.and
    i32.eq
    i32.eqz
    if
     i32.const 1400
     i32.const 24
     i32.const 471
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $loop|1
   end
   unreachable
  end
  local.get $4
  i32.const 4
  i32.const 8
  call $~lib/typedarray/Uint8Array#subarray
  local.tee $6
  call $~lib/typedarray/Uint8Array#reverse
  local.set $7
  local.get $7
  i32.const 0
  call $~lib/typedarray/Uint8Array#__get
  local.set $8
  global.get $~lib/error
  if
   return
  end
  local.get $8
  i32.const 255
  i32.and
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 1488
   i32.const 24
   i32.const 476
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.const 1
  call $~lib/typedarray/Uint8Array#__get
  local.set $8
  global.get $~lib/error
  if
   return
  end
  local.get $8
  i32.const 255
  i32.and
  i32.const 7
  i32.eq
  i32.eqz
  if
   i32.const 1488
   i32.const 24
   i32.const 477
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.const 2
  call $~lib/typedarray/Uint8Array#__get
  local.set $8
  global.get $~lib/error
  if
   return
  end
  local.get $8
  i32.const 255
  i32.and
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 1488
   i32.const 24
   i32.const 478
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.const 3
  call $~lib/typedarray/Uint8Array#__get
  local.set $8
  global.get $~lib/error
  if
   return
  end
  local.get $8
  i32.const 255
  i32.and
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 1488
   i32.const 24
   i32.const 479
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint8ClampedArray#reverse (; 369 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
    i32.lt_s
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
 (func $~lib/typedarray/Uint8ClampedArray#subarray (; 370 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  block $~lib/typedarray/SUBARRAY<~lib/typedarray/Uint8ClampedArray,u8>|inlined.0 (result i32)
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
   i32.const 7
   call $~lib/rt/tlsf/__alloc
   local.set $7
   global.get $~lib/error
   if
    i32.const 0
    br $~lib/typedarray/SUBARRAY<~lib/typedarray/Uint8ClampedArray,u8>|inlined.0
   end
   local.get $7
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
  end
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Uint8ClampedArray,u8> (; 371 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $std/typedarray/testArrayReverseValues
  call $~lib/rt/pure/__retain
  local.set $0
  i32.const 0
  i32.const 9
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  local.tee $1
  call $~lib/rt/pure/__retain
  local.set $2
  i32.const 0
  i32.const 9
  call $~lib/typedarray/Uint8ClampedArray#constructor
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  local.tee $3
  call $~lib/rt/pure/__retain
  local.set $4
  i32.const 0
  local.set $5
  block $break|0
   i32.const 0
   local.set $5
   loop $loop|0
    local.get $5
    i32.const 9
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $2
    local.get $5
    local.get $0
    local.get $5
    call $~lib/array/Array<i32>#__get
    local.set $6
    global.get $~lib/error
    if
     return
    end
    local.get $6
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8ClampedArray#__set
    global.get $~lib/error
    if
     return
    end
    local.get $4
    local.get $5
    local.get $0
    local.get $5
    call $~lib/array/Array<i32>#__get
    local.set $6
    global.get $~lib/error
    if
     return
    end
    local.get $6
    i32.const 255
    i32.and
    call $~lib/typedarray/Uint8ClampedArray#__set
    global.get $~lib/error
    if
     return
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $loop|0
   end
   unreachable
  end
  local.get $2
  call $~lib/typedarray/Uint8ClampedArray#reverse
  call $~lib/rt/pure/__release
  block $break|1
   i32.const 0
   local.set $5
   loop $loop|1
    local.get $5
    i32.const 9
    i32.lt_s
    i32.eqz
    br_if $break|1
    local.get $2
    local.get $5
    call $~lib/typedarray/Uint8ClampedArray#__get
    local.set $6
    global.get $~lib/error
    if
     return
    end
    local.get $6
    i32.const 255
    i32.and
    local.get $0
    i32.const 8
    local.get $5
    i32.sub
    call $~lib/array/Array<i32>#__get
    local.set $6
    global.get $~lib/error
    if
     return
    end
    local.get $6
    i32.const 255
    i32.and
    i32.eq
    i32.eqz
    if
     i32.const 1400
     i32.const 24
     i32.const 471
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $loop|1
   end
   unreachable
  end
  local.get $4
  i32.const 4
  i32.const 8
  call $~lib/typedarray/Uint8ClampedArray#subarray
  local.tee $6
  call $~lib/typedarray/Uint8ClampedArray#reverse
  local.set $7
  local.get $7
  i32.const 0
  call $~lib/typedarray/Uint8ClampedArray#__get
  local.set $8
  global.get $~lib/error
  if
   return
  end
  local.get $8
  i32.const 255
  i32.and
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 1488
   i32.const 24
   i32.const 476
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.const 1
  call $~lib/typedarray/Uint8ClampedArray#__get
  local.set $8
  global.get $~lib/error
  if
   return
  end
  local.get $8
  i32.const 255
  i32.and
  i32.const 7
  i32.eq
  i32.eqz
  if
   i32.const 1488
   i32.const 24
   i32.const 477
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.const 2
  call $~lib/typedarray/Uint8ClampedArray#__get
  local.set $8
  global.get $~lib/error
  if
   return
  end
  local.get $8
  i32.const 255
  i32.and
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 1488
   i32.const 24
   i32.const 478
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#__get
  local.set $8
  global.get $~lib/error
  if
   return
  end
  local.get $8
  i32.const 255
  i32.and
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 1488
   i32.const 24
   i32.const 479
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int16Array#reverse (; 372 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
    i32.lt_s
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
 (func $~lib/typedarray/Int16Array#subarray (; 373 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  block $~lib/typedarray/SUBARRAY<~lib/typedarray/Int16Array,i16>|inlined.0 (result i32)
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
   i32.const 8
   call $~lib/rt/tlsf/__alloc
   local.set $7
   global.get $~lib/error
   if
    i32.const 0
    br $~lib/typedarray/SUBARRAY<~lib/typedarray/Int16Array,i16>|inlined.0
   end
   local.get $7
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
  end
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Int16Array,i16> (; 374 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $std/typedarray/testArrayReverseValues
  call $~lib/rt/pure/__retain
  local.set $0
  i32.const 0
  i32.const 9
  call $~lib/typedarray/Int16Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  local.tee $1
  call $~lib/rt/pure/__retain
  local.set $2
  i32.const 0
  i32.const 9
  call $~lib/typedarray/Int16Array#constructor
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  local.tee $3
  call $~lib/rt/pure/__retain
  local.set $4
  i32.const 0
  local.set $5
  block $break|0
   i32.const 0
   local.set $5
   loop $loop|0
    local.get $5
    i32.const 9
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $2
    local.get $5
    local.get $0
    local.get $5
    call $~lib/array/Array<i32>#__get
    local.set $6
    global.get $~lib/error
    if
     return
    end
    local.get $6
    i32.const 16
    i32.shl
    i32.const 16
    i32.shr_s
    call $~lib/typedarray/Int16Array#__set
    global.get $~lib/error
    if
     return
    end
    local.get $4
    local.get $5
    local.get $0
    local.get $5
    call $~lib/array/Array<i32>#__get
    local.set $6
    global.get $~lib/error
    if
     return
    end
    local.get $6
    i32.const 16
    i32.shl
    i32.const 16
    i32.shr_s
    call $~lib/typedarray/Int16Array#__set
    global.get $~lib/error
    if
     return
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $loop|0
   end
   unreachable
  end
  local.get $2
  call $~lib/typedarray/Int16Array#reverse
  call $~lib/rt/pure/__release
  block $break|1
   i32.const 0
   local.set $5
   loop $loop|1
    local.get $5
    i32.const 9
    i32.lt_s
    i32.eqz
    br_if $break|1
    local.get $2
    local.get $5
    call $~lib/typedarray/Int16Array#__get
    local.set $6
    global.get $~lib/error
    if
     return
    end
    local.get $6
    i32.const 16
    i32.shl
    i32.const 16
    i32.shr_s
    local.get $0
    i32.const 8
    local.get $5
    i32.sub
    call $~lib/array/Array<i32>#__get
    local.set $6
    global.get $~lib/error
    if
     return
    end
    local.get $6
    i32.const 16
    i32.shl
    i32.const 16
    i32.shr_s
    i32.eq
    i32.eqz
    if
     i32.const 1400
     i32.const 24
     i32.const 471
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $loop|1
   end
   unreachable
  end
  local.get $4
  i32.const 4
  i32.const 8
  call $~lib/typedarray/Int16Array#subarray
  local.tee $6
  call $~lib/typedarray/Int16Array#reverse
  local.set $7
  local.get $7
  i32.const 0
  call $~lib/typedarray/Int16Array#__get
  local.set $8
  global.get $~lib/error
  if
   return
  end
  local.get $8
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 1488
   i32.const 24
   i32.const 476
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.const 1
  call $~lib/typedarray/Int16Array#__get
  local.set $8
  global.get $~lib/error
  if
   return
  end
  local.get $8
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 7
  i32.eq
  i32.eqz
  if
   i32.const 1488
   i32.const 24
   i32.const 477
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.const 2
  call $~lib/typedarray/Int16Array#__get
  local.set $8
  global.get $~lib/error
  if
   return
  end
  local.get $8
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 1488
   i32.const 24
   i32.const 478
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.const 3
  call $~lib/typedarray/Int16Array#__get
  local.set $8
  global.get $~lib/error
  if
   return
  end
  local.get $8
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 1488
   i32.const 24
   i32.const 479
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint16Array#reverse (; 375 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
    i32.lt_s
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
 (func $~lib/typedarray/Uint16Array#subarray (; 376 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  block $~lib/typedarray/SUBARRAY<~lib/typedarray/Uint16Array,u16>|inlined.0 (result i32)
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
   i32.const 9
   call $~lib/rt/tlsf/__alloc
   local.set $7
   global.get $~lib/error
   if
    i32.const 0
    br $~lib/typedarray/SUBARRAY<~lib/typedarray/Uint16Array,u16>|inlined.0
   end
   local.get $7
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
  end
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Uint16Array,u16> (; 377 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $std/typedarray/testArrayReverseValues
  call $~lib/rt/pure/__retain
  local.set $0
  i32.const 0
  i32.const 9
  call $~lib/typedarray/Uint16Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  local.tee $1
  call $~lib/rt/pure/__retain
  local.set $2
  i32.const 0
  i32.const 9
  call $~lib/typedarray/Uint16Array#constructor
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  local.tee $3
  call $~lib/rt/pure/__retain
  local.set $4
  i32.const 0
  local.set $5
  block $break|0
   i32.const 0
   local.set $5
   loop $loop|0
    local.get $5
    i32.const 9
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $2
    local.get $5
    local.get $0
    local.get $5
    call $~lib/array/Array<i32>#__get
    local.set $6
    global.get $~lib/error
    if
     return
    end
    local.get $6
    i32.const 65535
    i32.and
    call $~lib/typedarray/Uint16Array#__set
    global.get $~lib/error
    if
     return
    end
    local.get $4
    local.get $5
    local.get $0
    local.get $5
    call $~lib/array/Array<i32>#__get
    local.set $6
    global.get $~lib/error
    if
     return
    end
    local.get $6
    i32.const 65535
    i32.and
    call $~lib/typedarray/Uint16Array#__set
    global.get $~lib/error
    if
     return
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $loop|0
   end
   unreachable
  end
  local.get $2
  call $~lib/typedarray/Uint16Array#reverse
  call $~lib/rt/pure/__release
  block $break|1
   i32.const 0
   local.set $5
   loop $loop|1
    local.get $5
    i32.const 9
    i32.lt_s
    i32.eqz
    br_if $break|1
    local.get $2
    local.get $5
    call $~lib/typedarray/Uint16Array#__get
    local.set $6
    global.get $~lib/error
    if
     return
    end
    local.get $6
    i32.const 65535
    i32.and
    local.get $0
    i32.const 8
    local.get $5
    i32.sub
    call $~lib/array/Array<i32>#__get
    local.set $6
    global.get $~lib/error
    if
     return
    end
    local.get $6
    i32.const 65535
    i32.and
    i32.eq
    i32.eqz
    if
     i32.const 1400
     i32.const 24
     i32.const 471
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $loop|1
   end
   unreachable
  end
  local.get $4
  i32.const 4
  i32.const 8
  call $~lib/typedarray/Uint16Array#subarray
  local.tee $6
  call $~lib/typedarray/Uint16Array#reverse
  local.set $7
  local.get $7
  i32.const 0
  call $~lib/typedarray/Uint16Array#__get
  local.set $8
  global.get $~lib/error
  if
   return
  end
  local.get $8
  i32.const 65535
  i32.and
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 1488
   i32.const 24
   i32.const 476
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.const 1
  call $~lib/typedarray/Uint16Array#__get
  local.set $8
  global.get $~lib/error
  if
   return
  end
  local.get $8
  i32.const 65535
  i32.and
  i32.const 7
  i32.eq
  i32.eqz
  if
   i32.const 1488
   i32.const 24
   i32.const 477
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.const 2
  call $~lib/typedarray/Uint16Array#__get
  local.set $8
  global.get $~lib/error
  if
   return
  end
  local.get $8
  i32.const 65535
  i32.and
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 1488
   i32.const 24
   i32.const 478
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.const 3
  call $~lib/typedarray/Uint16Array#__get
  local.set $8
  global.get $~lib/error
  if
   return
  end
  local.get $8
  i32.const 65535
  i32.and
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 1488
   i32.const 24
   i32.const 479
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int32Array#reverse (; 378 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
    i32.lt_s
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
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Int32Array,i32> (; 379 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $std/typedarray/testArrayReverseValues
  call $~lib/rt/pure/__retain
  local.set $0
  i32.const 0
  i32.const 9
  call $~lib/typedarray/Int32Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  local.tee $1
  call $~lib/rt/pure/__retain
  local.set $2
  i32.const 0
  i32.const 9
  call $~lib/typedarray/Int32Array#constructor
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  local.tee $3
  call $~lib/rt/pure/__retain
  local.set $4
  i32.const 0
  local.set $5
  block $break|0
   i32.const 0
   local.set $5
   loop $loop|0
    local.get $5
    i32.const 9
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $2
    local.get $5
    local.get $0
    local.get $5
    call $~lib/array/Array<i32>#__get
    local.set $6
    global.get $~lib/error
    if
     return
    end
    local.get $6
    call $~lib/typedarray/Int32Array#__set
    global.get $~lib/error
    if
     return
    end
    local.get $4
    local.get $5
    local.get $0
    local.get $5
    call $~lib/array/Array<i32>#__get
    local.set $6
    global.get $~lib/error
    if
     return
    end
    local.get $6
    call $~lib/typedarray/Int32Array#__set
    global.get $~lib/error
    if
     return
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $loop|0
   end
   unreachable
  end
  local.get $2
  call $~lib/typedarray/Int32Array#reverse
  call $~lib/rt/pure/__release
  block $break|1
   i32.const 0
   local.set $5
   loop $loop|1
    local.get $5
    i32.const 9
    i32.lt_s
    i32.eqz
    br_if $break|1
    local.get $2
    local.get $5
    call $~lib/typedarray/Int32Array#__get
    local.set $6
    global.get $~lib/error
    if
     return
    end
    local.get $6
    local.get $0
    i32.const 8
    local.get $5
    i32.sub
    call $~lib/array/Array<i32>#__get
    local.set $6
    global.get $~lib/error
    if
     return
    end
    local.get $6
    i32.eq
    i32.eqz
    if
     i32.const 1400
     i32.const 24
     i32.const 471
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $loop|1
   end
   unreachable
  end
  local.get $4
  i32.const 4
  i32.const 8
  call $~lib/typedarray/Int32Array#subarray
  local.tee $6
  call $~lib/typedarray/Int32Array#reverse
  local.set $7
  local.get $7
  i32.const 0
  call $~lib/typedarray/Int32Array#__get
  local.set $8
  global.get $~lib/error
  if
   return
  end
  local.get $8
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 1488
   i32.const 24
   i32.const 476
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.const 1
  call $~lib/typedarray/Int32Array#__get
  local.set $8
  global.get $~lib/error
  if
   return
  end
  local.get $8
  i32.const 7
  i32.eq
  i32.eqz
  if
   i32.const 1488
   i32.const 24
   i32.const 477
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.const 2
  call $~lib/typedarray/Int32Array#__get
  local.set $8
  global.get $~lib/error
  if
   return
  end
  local.get $8
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 1488
   i32.const 24
   i32.const 478
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.const 3
  call $~lib/typedarray/Int32Array#__get
  local.set $8
  global.get $~lib/error
  if
   return
  end
  local.get $8
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 1488
   i32.const 24
   i32.const 479
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint32Array#reverse (; 380 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
    i32.lt_s
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
 (func $~lib/typedarray/Uint32Array#subarray (; 381 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  block $~lib/typedarray/SUBARRAY<~lib/typedarray/Uint32Array,u32>|inlined.0 (result i32)
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
   i32.const 11
   call $~lib/rt/tlsf/__alloc
   local.set $7
   global.get $~lib/error
   if
    i32.const 0
    br $~lib/typedarray/SUBARRAY<~lib/typedarray/Uint32Array,u32>|inlined.0
   end
   local.get $7
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
  end
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Uint32Array,u32> (; 382 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  global.get $std/typedarray/testArrayReverseValues
  call $~lib/rt/pure/__retain
  local.set $0
  i32.const 0
  i32.const 9
  call $~lib/typedarray/Uint32Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  local.tee $1
  call $~lib/rt/pure/__retain
  local.set $2
  i32.const 0
  i32.const 9
  call $~lib/typedarray/Uint32Array#constructor
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  local.tee $3
  call $~lib/rt/pure/__retain
  local.set $4
  i32.const 0
  local.set $5
  block $break|0
   i32.const 0
   local.set $5
   loop $loop|0
    local.get $5
    i32.const 9
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $2
    local.get $5
    local.get $0
    local.get $5
    call $~lib/array/Array<i32>#__get
    local.set $6
    global.get $~lib/error
    if
     return
    end
    local.get $6
    call $~lib/typedarray/Uint32Array#__set
    global.get $~lib/error
    if
     return
    end
    local.get $4
    local.get $5
    local.get $0
    local.get $5
    call $~lib/array/Array<i32>#__get
    local.set $6
    global.get $~lib/error
    if
     return
    end
    local.get $6
    call $~lib/typedarray/Uint32Array#__set
    global.get $~lib/error
    if
     return
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $loop|0
   end
   unreachable
  end
  local.get $2
  call $~lib/typedarray/Uint32Array#reverse
  call $~lib/rt/pure/__release
  block $break|1
   i32.const 0
   local.set $5
   loop $loop|1
    local.get $5
    i32.const 9
    i32.lt_s
    i32.eqz
    br_if $break|1
    local.get $2
    local.get $5
    call $~lib/typedarray/Uint32Array#__get
    local.set $6
    global.get $~lib/error
    if
     return
    end
    local.get $6
    local.get $0
    i32.const 8
    local.get $5
    i32.sub
    call $~lib/array/Array<i32>#__get
    local.set $6
    global.get $~lib/error
    if
     return
    end
    local.get $6
    i32.eq
    i32.eqz
    if
     i32.const 1400
     i32.const 24
     i32.const 471
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $loop|1
   end
   unreachable
  end
  local.get $4
  i32.const 4
  i32.const 8
  call $~lib/typedarray/Uint32Array#subarray
  local.tee $6
  call $~lib/typedarray/Uint32Array#reverse
  local.set $7
  local.get $7
  i32.const 0
  call $~lib/typedarray/Uint32Array#__get
  local.set $8
  global.get $~lib/error
  if
   return
  end
  local.get $8
  i32.const 8
  i32.eq
  i32.eqz
  if
   i32.const 1488
   i32.const 24
   i32.const 476
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.const 1
  call $~lib/typedarray/Uint32Array#__get
  local.set $8
  global.get $~lib/error
  if
   return
  end
  local.get $8
  i32.const 7
  i32.eq
  i32.eqz
  if
   i32.const 1488
   i32.const 24
   i32.const 477
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.const 2
  call $~lib/typedarray/Uint32Array#__get
  local.set $8
  global.get $~lib/error
  if
   return
  end
  local.get $8
  i32.const 6
  i32.eq
  i32.eqz
  if
   i32.const 1488
   i32.const 24
   i32.const 478
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $7
  i32.const 3
  call $~lib/typedarray/Uint32Array#__get
  local.set $8
  global.get $~lib/error
  if
   return
  end
  local.get $8
  i32.const 5
  i32.eq
  i32.eqz
  if
   i32.const 1488
   i32.const 24
   i32.const 479
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $7
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Int64Array#reverse (; 383 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
    i32.lt_s
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
 (func $~lib/typedarray/Int64Array#subarray (; 384 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  block $~lib/typedarray/SUBARRAY<~lib/typedarray/Int64Array,i64>|inlined.0 (result i32)
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
   i32.const 12
   call $~lib/rt/tlsf/__alloc
   local.set $7
   global.get $~lib/error
   if
    i32.const 0
    br $~lib/typedarray/SUBARRAY<~lib/typedarray/Int64Array,i64>|inlined.0
   end
   local.get $7
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
  end
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Int64Array,i64> (; 385 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i32)
  global.get $std/typedarray/testArrayReverseValues
  call $~lib/rt/pure/__retain
  local.set $0
  i32.const 0
  i32.const 9
  call $~lib/typedarray/Int64Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  local.tee $1
  call $~lib/rt/pure/__retain
  local.set $2
  i32.const 0
  i32.const 9
  call $~lib/typedarray/Int64Array#constructor
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  local.tee $3
  call $~lib/rt/pure/__retain
  local.set $4
  i32.const 0
  local.set $5
  block $break|0
   i32.const 0
   local.set $5
   loop $loop|0
    local.get $5
    i32.const 9
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $2
    local.get $5
    local.get $0
    local.get $5
    call $~lib/array/Array<i32>#__get
    local.set $6
    global.get $~lib/error
    if
     return
    end
    local.get $6
    i64.extend_i32_s
    call $~lib/typedarray/Int64Array#__set
    global.get $~lib/error
    if
     return
    end
    local.get $4
    local.get $5
    local.get $0
    local.get $5
    call $~lib/array/Array<i32>#__get
    local.set $6
    global.get $~lib/error
    if
     return
    end
    local.get $6
    i64.extend_i32_s
    call $~lib/typedarray/Int64Array#__set
    global.get $~lib/error
    if
     return
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $loop|0
   end
   unreachable
  end
  local.get $2
  call $~lib/typedarray/Int64Array#reverse
  call $~lib/rt/pure/__release
  block $break|1
   i32.const 0
   local.set $5
   loop $loop|1
    local.get $5
    i32.const 9
    i32.lt_s
    i32.eqz
    br_if $break|1
    local.get $2
    local.get $5
    call $~lib/typedarray/Int64Array#__get
    local.set $7
    global.get $~lib/error
    if
     return
    end
    local.get $7
    local.get $0
    i32.const 8
    local.get $5
    i32.sub
    call $~lib/array/Array<i32>#__get
    local.set $6
    global.get $~lib/error
    if
     return
    end
    local.get $6
    i64.extend_i32_s
    i64.eq
    i32.eqz
    if
     i32.const 1400
     i32.const 24
     i32.const 471
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $loop|1
   end
   unreachable
  end
  local.get $4
  i32.const 4
  i32.const 8
  call $~lib/typedarray/Int64Array#subarray
  local.tee $6
  call $~lib/typedarray/Int64Array#reverse
  local.set $8
  local.get $8
  i32.const 0
  call $~lib/typedarray/Int64Array#__get
  local.set $7
  global.get $~lib/error
  if
   return
  end
  local.get $7
  i64.const 8
  i64.eq
  i32.eqz
  if
   i32.const 1488
   i32.const 24
   i32.const 476
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $8
  i32.const 1
  call $~lib/typedarray/Int64Array#__get
  local.set $7
  global.get $~lib/error
  if
   return
  end
  local.get $7
  i64.const 7
  i64.eq
  i32.eqz
  if
   i32.const 1488
   i32.const 24
   i32.const 477
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $8
  i32.const 2
  call $~lib/typedarray/Int64Array#__get
  local.set $7
  global.get $~lib/error
  if
   return
  end
  local.get $7
  i64.const 6
  i64.eq
  i32.eqz
  if
   i32.const 1488
   i32.const 24
   i32.const 478
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $8
  i32.const 3
  call $~lib/typedarray/Int64Array#__get
  local.set $7
  global.get $~lib/error
  if
   return
  end
  local.get $7
  i64.const 5
  i64.eq
  i32.eqz
  if
   i32.const 1488
   i32.const 24
   i32.const 479
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Uint64Array#reverse (; 386 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
    i32.lt_s
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
 (func $~lib/typedarray/Uint64Array#subarray (; 387 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  block $~lib/typedarray/SUBARRAY<~lib/typedarray/Uint64Array,u64>|inlined.0 (result i32)
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
   i32.const 13
   call $~lib/rt/tlsf/__alloc
   local.set $7
   global.get $~lib/error
   if
    i32.const 0
    br $~lib/typedarray/SUBARRAY<~lib/typedarray/Uint64Array,u64>|inlined.0
   end
   local.get $7
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
  end
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Uint64Array,u64> (; 388 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i64)
  (local $8 i32)
  global.get $std/typedarray/testArrayReverseValues
  call $~lib/rt/pure/__retain
  local.set $0
  i32.const 0
  i32.const 9
  call $~lib/typedarray/Uint64Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  local.tee $1
  call $~lib/rt/pure/__retain
  local.set $2
  i32.const 0
  i32.const 9
  call $~lib/typedarray/Uint64Array#constructor
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  local.tee $3
  call $~lib/rt/pure/__retain
  local.set $4
  i32.const 0
  local.set $5
  block $break|0
   i32.const 0
   local.set $5
   loop $loop|0
    local.get $5
    i32.const 9
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $2
    local.get $5
    local.get $0
    local.get $5
    call $~lib/array/Array<i32>#__get
    local.set $6
    global.get $~lib/error
    if
     return
    end
    local.get $6
    i64.extend_i32_s
    call $~lib/typedarray/Uint64Array#__set
    global.get $~lib/error
    if
     return
    end
    local.get $4
    local.get $5
    local.get $0
    local.get $5
    call $~lib/array/Array<i32>#__get
    local.set $6
    global.get $~lib/error
    if
     return
    end
    local.get $6
    i64.extend_i32_s
    call $~lib/typedarray/Uint64Array#__set
    global.get $~lib/error
    if
     return
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $loop|0
   end
   unreachable
  end
  local.get $2
  call $~lib/typedarray/Uint64Array#reverse
  call $~lib/rt/pure/__release
  block $break|1
   i32.const 0
   local.set $5
   loop $loop|1
    local.get $5
    i32.const 9
    i32.lt_s
    i32.eqz
    br_if $break|1
    local.get $2
    local.get $5
    call $~lib/typedarray/Uint64Array#__get
    local.set $7
    global.get $~lib/error
    if
     return
    end
    local.get $7
    local.get $0
    i32.const 8
    local.get $5
    i32.sub
    call $~lib/array/Array<i32>#__get
    local.set $6
    global.get $~lib/error
    if
     return
    end
    local.get $6
    i64.extend_i32_s
    i64.eq
    i32.eqz
    if
     i32.const 1400
     i32.const 24
     i32.const 471
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $loop|1
   end
   unreachable
  end
  local.get $4
  i32.const 4
  i32.const 8
  call $~lib/typedarray/Uint64Array#subarray
  local.tee $6
  call $~lib/typedarray/Uint64Array#reverse
  local.set $8
  local.get $8
  i32.const 0
  call $~lib/typedarray/Uint64Array#__get
  local.set $7
  global.get $~lib/error
  if
   return
  end
  local.get $7
  i64.const 8
  i64.eq
  i32.eqz
  if
   i32.const 1488
   i32.const 24
   i32.const 476
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $8
  i32.const 1
  call $~lib/typedarray/Uint64Array#__get
  local.set $7
  global.get $~lib/error
  if
   return
  end
  local.get $7
  i64.const 7
  i64.eq
  i32.eqz
  if
   i32.const 1488
   i32.const 24
   i32.const 477
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $8
  i32.const 2
  call $~lib/typedarray/Uint64Array#__get
  local.set $7
  global.get $~lib/error
  if
   return
  end
  local.get $7
  i64.const 6
  i64.eq
  i32.eqz
  if
   i32.const 1488
   i32.const 24
   i32.const 478
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $8
  i32.const 3
  call $~lib/typedarray/Uint64Array#__get
  local.set $7
  global.get $~lib/error
  if
   return
  end
  local.get $7
  i64.const 5
  i64.eq
  i32.eqz
  if
   i32.const 1488
   i32.const 24
   i32.const 479
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Float32Array#reverse (; 389 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
    i32.lt_s
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
 (func $~lib/typedarray/Float32Array#subarray (; 390 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  block $~lib/typedarray/SUBARRAY<~lib/typedarray/Float32Array,f32>|inlined.0 (result i32)
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
   i32.const 14
   call $~lib/rt/tlsf/__alloc
   local.set $7
   global.get $~lib/error
   if
    i32.const 0
    br $~lib/typedarray/SUBARRAY<~lib/typedarray/Float32Array,f32>|inlined.0
   end
   local.get $7
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
  end
 )
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Float32Array,f32> (; 391 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 f32)
  (local $8 i32)
  global.get $std/typedarray/testArrayReverseValues
  call $~lib/rt/pure/__retain
  local.set $0
  i32.const 0
  i32.const 9
  call $~lib/typedarray/Float32Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  local.tee $1
  call $~lib/rt/pure/__retain
  local.set $2
  i32.const 0
  i32.const 9
  call $~lib/typedarray/Float32Array#constructor
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  local.tee $3
  call $~lib/rt/pure/__retain
  local.set $4
  i32.const 0
  local.set $5
  block $break|0
   i32.const 0
   local.set $5
   loop $loop|0
    local.get $5
    i32.const 9
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $2
    local.get $5
    local.get $0
    local.get $5
    call $~lib/array/Array<i32>#__get
    local.set $6
    global.get $~lib/error
    if
     return
    end
    local.get $6
    f32.convert_i32_s
    call $~lib/typedarray/Float32Array#__set
    global.get $~lib/error
    if
     return
    end
    local.get $4
    local.get $5
    local.get $0
    local.get $5
    call $~lib/array/Array<i32>#__get
    local.set $6
    global.get $~lib/error
    if
     return
    end
    local.get $6
    f32.convert_i32_s
    call $~lib/typedarray/Float32Array#__set
    global.get $~lib/error
    if
     return
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $loop|0
   end
   unreachable
  end
  local.get $2
  call $~lib/typedarray/Float32Array#reverse
  call $~lib/rt/pure/__release
  block $break|1
   i32.const 0
   local.set $5
   loop $loop|1
    local.get $5
    i32.const 9
    i32.lt_s
    i32.eqz
    br_if $break|1
    local.get $2
    local.get $5
    call $~lib/typedarray/Float32Array#__get
    local.set $7
    global.get $~lib/error
    if
     return
    end
    local.get $7
    local.get $0
    i32.const 8
    local.get $5
    i32.sub
    call $~lib/array/Array<i32>#__get
    local.set $6
    global.get $~lib/error
    if
     return
    end
    local.get $6
    f32.convert_i32_s
    f32.eq
    i32.eqz
    if
     i32.const 1400
     i32.const 24
     i32.const 471
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $loop|1
   end
   unreachable
  end
  local.get $4
  i32.const 4
  i32.const 8
  call $~lib/typedarray/Float32Array#subarray
  local.tee $6
  call $~lib/typedarray/Float32Array#reverse
  local.set $8
  local.get $8
  i32.const 0
  call $~lib/typedarray/Float32Array#__get
  local.set $7
  global.get $~lib/error
  if
   return
  end
  local.get $7
  f32.const 8
  f32.eq
  i32.eqz
  if
   i32.const 1488
   i32.const 24
   i32.const 476
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $8
  i32.const 1
  call $~lib/typedarray/Float32Array#__get
  local.set $7
  global.get $~lib/error
  if
   return
  end
  local.get $7
  f32.const 7
  f32.eq
  i32.eqz
  if
   i32.const 1488
   i32.const 24
   i32.const 477
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $8
  i32.const 2
  call $~lib/typedarray/Float32Array#__get
  local.set $7
  global.get $~lib/error
  if
   return
  end
  local.get $7
  f32.const 6
  f32.eq
  i32.eqz
  if
   i32.const 1488
   i32.const 24
   i32.const 478
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $8
  i32.const 3
  call $~lib/typedarray/Float32Array#__get
  local.set $7
  global.get $~lib/error
  if
   return
  end
  local.get $7
  f32.const 5
  f32.eq
  i32.eqz
  if
   i32.const 1488
   i32.const 24
   i32.const 479
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
 )
 (func $~lib/typedarray/Float64Array#reverse (; 392 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
    i32.lt_s
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
 (func $std/typedarray/testArrayReverse<~lib/typedarray/Float64Array,f64> (; 393 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 f64)
  (local $8 i32)
  global.get $std/typedarray/testArrayReverseValues
  call $~lib/rt/pure/__retain
  local.set $0
  i32.const 0
  i32.const 9
  call $~lib/typedarray/Float64Array#constructor
  local.set $1
  global.get $~lib/error
  if
   return
  end
  local.get $1
  local.tee $1
  call $~lib/rt/pure/__retain
  local.set $2
  i32.const 0
  i32.const 9
  call $~lib/typedarray/Float64Array#constructor
  local.set $3
  global.get $~lib/error
  if
   return
  end
  local.get $3
  local.tee $3
  call $~lib/rt/pure/__retain
  local.set $4
  i32.const 0
  local.set $5
  block $break|0
   i32.const 0
   local.set $5
   loop $loop|0
    local.get $5
    i32.const 9
    i32.lt_s
    i32.eqz
    br_if $break|0
    local.get $2
    local.get $5
    local.get $0
    local.get $5
    call $~lib/array/Array<i32>#__get
    local.set $6
    global.get $~lib/error
    if
     return
    end
    local.get $6
    f64.convert_i32_s
    call $~lib/typedarray/Float64Array#__set
    global.get $~lib/error
    if
     return
    end
    local.get $4
    local.get $5
    local.get $0
    local.get $5
    call $~lib/array/Array<i32>#__get
    local.set $6
    global.get $~lib/error
    if
     return
    end
    local.get $6
    f64.convert_i32_s
    call $~lib/typedarray/Float64Array#__set
    global.get $~lib/error
    if
     return
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $loop|0
   end
   unreachable
  end
  local.get $2
  call $~lib/typedarray/Float64Array#reverse
  call $~lib/rt/pure/__release
  block $break|1
   i32.const 0
   local.set $5
   loop $loop|1
    local.get $5
    i32.const 9
    i32.lt_s
    i32.eqz
    br_if $break|1
    local.get $2
    local.get $5
    call $~lib/typedarray/Float64Array#__get
    local.set $7
    global.get $~lib/error
    if
     return
    end
    local.get $7
    local.get $0
    i32.const 8
    local.get $5
    i32.sub
    call $~lib/array/Array<i32>#__get
    local.set $6
    global.get $~lib/error
    if
     return
    end
    local.get $6
    f64.convert_i32_s
    f64.eq
    i32.eqz
    if
     i32.const 1400
     i32.const 24
     i32.const 471
     i32.const 4
     call $~lib/builtins/abort
     unreachable
    end
    local.get $5
    i32.const 1
    i32.add
    local.set $5
    br $loop|1
   end
   unreachable
  end
  local.get $4
  i32.const 4
  i32.const 8
  call $~lib/typedarray/Float64Array#subarray
  local.tee $6
  call $~lib/typedarray/Float64Array#reverse
  local.set $8
  local.get $8
  i32.const 0
  call $~lib/typedarray/Float64Array#__get
  local.set $7
  global.get $~lib/error
  if
   return
  end
  local.get $7
  f64.const 8
  f64.eq
  i32.eqz
  if
   i32.const 1488
   i32.const 24
   i32.const 476
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $8
  i32.const 1
  call $~lib/typedarray/Float64Array#__get
  local.set $7
  global.get $~lib/error
  if
   return
  end
  local.get $7
  f64.const 7
  f64.eq
  i32.eqz
  if
   i32.const 1488
   i32.const 24
   i32.const 477
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $8
  i32.const 2
  call $~lib/typedarray/Float64Array#__get
  local.set $7
  global.get $~lib/error
  if
   return
  end
  local.get $7
  f64.const 6
  f64.eq
  i32.eqz
  if
   i32.const 1488
   i32.const 24
   i32.const 478
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $8
  i32.const 3
  call $~lib/typedarray/Float64Array#__get
  local.set $7
  global.get $~lib/error
  if
   return
  end
  local.get $7
  f64.const 5
  f64.eq
  i32.eqz
  if
   i32.const 1488
   i32.const 24
   i32.const 479
   i32.const 2
   call $~lib/builtins/abort
   unreachable
  end
  local.get $1
  call $~lib/rt/pure/__release
  local.get $3
  call $~lib/rt/pure/__release
  local.get $6
  call $~lib/rt/pure/__release
  local.get $0
  call $~lib/rt/pure/__release
  local.get $2
  call $~lib/rt/pure/__release
  local.get $4
  call $~lib/rt/pure/__release
  local.get $8
  call $~lib/rt/pure/__release
 )
 (func $start:std/typedarray (; 394 ;) (type $FUNCSIG$v)
  (local $0 i32)
  (local $1 i32)
  (local $2 f64)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  block $uncaughtError
   global.get $~lib/typedarray/Int8Array.BYTES_PER_ELEMENT
   i32.const 1
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 1
    i32.const 0
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/typedarray/Uint8Array.BYTES_PER_ELEMENT
   i32.const 1
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 2
    i32.const 0
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/typedarray/Uint8ClampedArray.BYTES_PER_ELEMENT
   i32.const 1
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 3
    i32.const 0
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/typedarray/Int16Array.BYTES_PER_ELEMENT
   i32.const 2
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 4
    i32.const 0
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/typedarray/Uint16Array.BYTES_PER_ELEMENT
   i32.const 2
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 5
    i32.const 0
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/typedarray/Int32Array.BYTES_PER_ELEMENT
   i32.const 4
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 6
    i32.const 0
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/typedarray/Uint32Array.BYTES_PER_ELEMENT
   i32.const 4
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 7
    i32.const 0
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/typedarray/Int64Array.BYTES_PER_ELEMENT
   i32.const 8
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 8
    i32.const 0
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/typedarray/Uint64Array.BYTES_PER_ELEMENT
   i32.const 8
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 9
    i32.const 0
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/typedarray/Float32Array.BYTES_PER_ELEMENT
   i32.const 4
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 10
    i32.const 0
    call $~lib/builtins/abort
    unreachable
   end
   global.get $~lib/typedarray/Float64Array.BYTES_PER_ELEMENT
   i32.const 8
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 11
    i32.const 0
    call $~lib/builtins/abort
    unreachable
   end
   i32.const 0
   call $std/typedarray/testInstantiate
   global.get $~lib/error
   if
    br $uncaughtError
   end
   i32.const 5
   call $std/typedarray/testInstantiate
   global.get $~lib/error
   if
    br $uncaughtError
   end
   i32.const 0
   i32.const 3
   call $~lib/typedarray/Int32Array#constructor
   local.set $0
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $0
   local.set $0
   local.get $0
   i32.const 0
   i32.const 1
   call $~lib/typedarray/Int32Array#__set
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $0
   i32.const 1
   i32.const 2
   call $~lib/typedarray/Int32Array#__set
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $0
   i32.const 2
   i32.const 3
   call $~lib/typedarray/Int32Array#__set
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $0
   call $~lib/typedarray/Int32Array#get:length
   i32.const 3
   i32.eq
   i32.eqz
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
   i32.const 0
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 96
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   call $~lib/arraybuffer/ArrayBufferView#get:byteLength
   i32.const 3
   i32.const 4
   i32.mul
   i32.eq
   i32.eqz
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
   local.set $1
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $1
   i32.const 1
   i32.eq
   i32.eqz
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
   local.set $1
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $1
   i32.const 2
   i32.eq
   i32.eqz
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
   local.set $1
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $1
   i32.const 3
   i32.eq
   i32.eqz
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
    i32.const 24
    i32.const 103
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
   i32.const 1
   i32.const 4
   i32.mul
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 104
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   call $~lib/arraybuffer/ArrayBufferView#get:byteLength
   i32.const 1
   i32.const 4
   i32.mul
   i32.eq
   i32.eqz
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
   local.set $1
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $1
   i32.const 2
   i32.eq
   i32.eqz
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
   i32.const 0
   i32.const 8
   call $~lib/typedarray/Float64Array#constructor
   local.set $0
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $0
   local.set $0
   local.get $0
   i32.const 0
   f64.const 1
   call $~lib/typedarray/Float64Array#__set
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $0
   i32.const 1
   f64.const 2
   call $~lib/typedarray/Float64Array#__set
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $0
   i32.const 2
   f64.const 7
   call $~lib/typedarray/Float64Array#__set
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $0
   i32.const 3
   f64.const 6
   call $~lib/typedarray/Float64Array#__set
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $0
   i32.const 4
   f64.const 5
   call $~lib/typedarray/Float64Array#__set
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $0
   i32.const 5
   f64.const 4
   call $~lib/typedarray/Float64Array#__set
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $0
   i32.const 6
   f64.const 3
   call $~lib/typedarray/Float64Array#__set
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $0
   i32.const 7
   f64.const 8
   call $~lib/typedarray/Float64Array#__set
   global.get $~lib/error
   if
    br $uncaughtError
   end
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
    i32.const 24
    i32.const 122
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
   i32.const 2
   i32.const 8
   i32.mul
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 123
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   call $~lib/arraybuffer/ArrayBufferView#get:byteLength
   i32.const 4
   i32.const 8
   i32.mul
   i32.eq
   i32.eqz
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
   local.get $0
   i32.const 0
   call $~lib/typedarray/Float64Array#sort|trampoline
   call $~lib/rt/pure/__release
   local.get $0
   i32.const 0
   call $~lib/typedarray/Float64Array#__get
   local.set $2
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $2
   f64.const 4
   f64.eq
   if (result i32)
    local.get $0
    i32.const 1
    call $~lib/typedarray/Float64Array#__get
    local.set $2
    global.get $~lib/error
    if
     br $uncaughtError
    end
    local.get $2
    f64.const 5
    f64.eq
   else    
    i32.const 0
   end
   if (result i32)
    local.get $0
    i32.const 2
    call $~lib/typedarray/Float64Array#__get
    local.set $2
    global.get $~lib/error
    if
     br $uncaughtError
    end
    local.get $2
    f64.const 6
    f64.eq
   else    
    i32.const 0
   end
   if (result i32)
    local.get $0
    i32.const 3
    call $~lib/typedarray/Float64Array#__get
    local.set $2
    global.get $~lib/error
    if
     br $uncaughtError
    end
    local.get $2
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
   i32.const 0
   i32.const 3
   call $~lib/typedarray/Uint8ClampedArray#constructor
   local.set $0
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $0
   local.set $0
   local.get $0
   i32.const 0
   i32.const -32
   call $~lib/typedarray/Uint8ClampedArray#__set
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $0
   i32.const 1
   i32.const 2
   call $~lib/typedarray/Uint8ClampedArray#__set
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $0
   i32.const 2
   i32.const 256
   call $~lib/typedarray/Uint8ClampedArray#__set
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $0
   i32.const 0
   call $~lib/typedarray/Uint8ClampedArray#__get
   local.set $1
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $1
   i32.const 255
   i32.and
   i32.const 0
   i32.eq
   i32.eqz
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
   local.set $1
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $1
   i32.const 255
   i32.and
   i32.const 2
   i32.eq
   i32.eqz
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
   local.set $1
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $1
   i32.const 255
   i32.and
   i32.const 255
   i32.eq
   i32.eqz
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
   i32.const 0
   i32.const 5
   call $~lib/typedarray/Int8Array#constructor
   local.set $0
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $0
   local.set $0
   local.get $0
   i32.const 0
   i32.const 1
   call $~lib/typedarray/Int8Array#__set
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $0
   i32.const 1
   i32.const 2
   call $~lib/typedarray/Int8Array#__set
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $0
   i32.const 2
   i32.const 3
   call $~lib/typedarray/Int8Array#__set
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $0
   i32.const 3
   i32.const 4
   call $~lib/typedarray/Int8Array#__set
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $0
   i32.const 4
   i32.const 5
   call $~lib/typedarray/Int8Array#__set
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $0
   i32.const 1
   i32.const 1
   i32.const 3
   call $~lib/typedarray/Int8Array#fill
   call $~lib/rt/pure/__release
   local.get $0
   i32.const 5
   i32.const 0
   i32.const 16
   i32.const 424
   call $~lib/rt/__allocArray
   local.set $3
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $3
   call $~lib/rt/pure/__retain
   local.tee $3
   call $std/typedarray/isInt8ArrayEqual
   local.set $1
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $1
   i32.const 0
   i32.ne
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
   global.get $~lib/builtins/i32.MAX_VALUE
   call $~lib/typedarray/Int8Array#fill
   call $~lib/rt/pure/__release
   local.get $0
   i32.const 5
   i32.const 0
   i32.const 16
   i32.const 448
   call $~lib/rt/__allocArray
   local.set $4
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $4
   call $~lib/rt/pure/__retain
   local.tee $4
   call $std/typedarray/isInt8ArrayEqual
   local.set $1
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $1
   i32.const 0
   i32.ne
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
   local.get $0
   i32.const 5
   i32.const 0
   i32.const 16
   i32.const 472
   call $~lib/rt/__allocArray
   local.set $5
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $5
   call $~lib/rt/pure/__retain
   local.tee $5
   call $std/typedarray/isInt8ArrayEqual
   local.set $1
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $1
   i32.const 0
   i32.ne
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
   global.get $~lib/builtins/i32.MAX_VALUE
   call $~lib/typedarray/Int8Array#fill
   call $~lib/rt/pure/__release
   local.get $0
   i32.const 5
   i32.const 0
   i32.const 16
   i32.const 496
   call $~lib/rt/__allocArray
   local.set $6
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $6
   call $~lib/rt/pure/__retain
   local.tee $6
   call $std/typedarray/isInt8ArrayEqual
   local.set $1
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $1
   i32.const 0
   i32.ne
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
   local.get $0
   i32.const 5
   i32.const 0
   i32.const 16
   i32.const 520
   call $~lib/rt/__allocArray
   local.set $7
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $7
   call $~lib/rt/pure/__retain
   local.tee $7
   call $std/typedarray/isInt8ArrayEqual
   local.set $1
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $1
   i32.const 0
   i32.ne
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
    i32.const 24
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
    i32.const 24
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
    i32.const 24
    i32.const 167
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $1
   i32.const 3
   i32.const 0
   i32.const 16
   i32.const 544
   call $~lib/rt/__allocArray
   local.set $9
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $9
   call $~lib/rt/pure/__retain
   local.tee $9
   call $std/typedarray/isInt8ArrayEqual
   local.set $8
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $8
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 168
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 5
   i32.const 0
   i32.const 16
   i32.const 568
   call $~lib/rt/__allocArray
   local.set $10
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $10
   call $~lib/rt/pure/__retain
   local.tee $10
   call $std/typedarray/isInt8ArrayEqual
   local.set $8
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $8
   i32.const 0
   i32.ne
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
   local.get $1
   call $~lib/rt/pure/__release
   local.get $9
   call $~lib/rt/pure/__release
   local.get $10
   call $~lib/rt/pure/__release
   i32.const 0
   i32.const 5
   call $~lib/typedarray/Int32Array#constructor
   local.set $10
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $10
   local.set $10
   local.get $10
   i32.const 0
   i32.const 1
   call $~lib/typedarray/Int32Array#__set
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $10
   i32.const 1
   i32.const 2
   call $~lib/typedarray/Int32Array#__set
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $10
   i32.const 2
   i32.const 3
   call $~lib/typedarray/Int32Array#__set
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $10
   i32.const 3
   i32.const 4
   call $~lib/typedarray/Int32Array#__set
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $10
   i32.const 4
   i32.const 5
   call $~lib/typedarray/Int32Array#__set
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $10
   i32.const 1
   i32.const 1
   i32.const 3
   call $~lib/typedarray/Int32Array#fill
   call $~lib/rt/pure/__release
   local.get $10
   i32.const 5
   i32.const 2
   i32.const 17
   i32.const 592
   call $~lib/rt/__allocArray
   local.set $1
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $1
   call $~lib/rt/pure/__retain
   local.tee $1
   call $std/typedarray/isInt32ArrayEqual
   local.set $9
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $9
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 181
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $10
   i32.const 0
   i32.const 0
   global.get $~lib/builtins/i32.MAX_VALUE
   call $~lib/typedarray/Int32Array#fill
   call $~lib/rt/pure/__release
   local.get $10
   i32.const 5
   i32.const 2
   i32.const 17
   i32.const 632
   call $~lib/rt/__allocArray
   local.set $7
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $7
   call $~lib/rt/pure/__retain
   local.tee $7
   call $std/typedarray/isInt32ArrayEqual
   local.set $9
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $9
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 184
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $10
   i32.const 1
   i32.const 0
   i32.const -3
   call $~lib/typedarray/Int32Array#fill
   call $~lib/rt/pure/__release
   local.get $10
   i32.const 5
   i32.const 2
   i32.const 17
   i32.const 672
   call $~lib/rt/__allocArray
   local.set $6
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $6
   call $~lib/rt/pure/__retain
   local.tee $6
   call $std/typedarray/isInt32ArrayEqual
   local.set $9
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $9
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 187
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $10
   i32.const 2
   i32.const -2
   global.get $~lib/builtins/i32.MAX_VALUE
   call $~lib/typedarray/Int32Array#fill
   call $~lib/rt/pure/__release
   local.get $10
   i32.const 5
   i32.const 2
   i32.const 17
   i32.const 712
   call $~lib/rt/__allocArray
   local.set $5
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $5
   call $~lib/rt/pure/__retain
   local.tee $5
   call $std/typedarray/isInt32ArrayEqual
   local.set $9
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $9
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 190
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $10
   i32.const 0
   i32.const 1
   i32.const 0
   call $~lib/typedarray/Int32Array#fill
   call $~lib/rt/pure/__release
   local.get $10
   i32.const 5
   i32.const 2
   i32.const 17
   i32.const 752
   call $~lib/rt/__allocArray
   local.set $4
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $4
   call $~lib/rt/pure/__retain
   local.tee $4
   call $std/typedarray/isInt32ArrayEqual
   local.set $9
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $9
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 193
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $10
   i32.const 1
   i32.const 4
   call $~lib/typedarray/Int32Array#subarray
   local.set $9
   local.get $9
   i32.const 0
   i32.const 0
   global.get $~lib/builtins/i32.MAX_VALUE
   call $~lib/typedarray/Int32Array#fill
   call $~lib/rt/pure/__release
   local.get $9
   call $~lib/typedarray/Int32Array#get:length
   i32.const 3
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 197
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $9
   call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
   i32.const 1
   i32.const 4
   i32.mul
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 198
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $9
   call $~lib/arraybuffer/ArrayBufferView#get:byteLength
   i32.const 3
   i32.const 4
   i32.mul
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 199
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $9
   i32.const 3
   i32.const 2
   i32.const 17
   i32.const 792
   call $~lib/rt/__allocArray
   local.set $0
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $0
   call $~lib/rt/pure/__retain
   local.tee $0
   call $std/typedarray/isInt32ArrayEqual
   local.set $3
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $3
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 200
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $10
   i32.const 5
   i32.const 2
   i32.const 17
   i32.const 824
   call $~lib/rt/__allocArray
   local.set $8
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $8
   call $~lib/rt/pure/__retain
   local.tee $8
   call $std/typedarray/isInt32ArrayEqual
   local.set $3
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $3
   i32.const 0
   i32.ne
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 201
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $10
   call $~lib/rt/pure/__release
   local.get $1
   call $~lib/rt/pure/__release
   local.get $7
   call $~lib/rt/pure/__release
   local.get $6
   call $~lib/rt/pure/__release
   local.get $5
   call $~lib/rt/pure/__release
   local.get $4
   call $~lib/rt/pure/__release
   local.get $9
   call $~lib/rt/pure/__release
   local.get $0
   call $~lib/rt/pure/__release
   local.get $8
   call $~lib/rt/pure/__release
   i32.const 0
   i32.const 6
   call $~lib/typedarray/Int8Array#constructor
   local.set $8
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $8
   local.set $8
   local.get $8
   i32.const 0
   i32.const 1
   call $~lib/typedarray/Int8Array#__set
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $8
   i32.const 1
   i32.const 2
   call $~lib/typedarray/Int8Array#__set
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $8
   i32.const 2
   i32.const 3
   call $~lib/typedarray/Int8Array#__set
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $8
   i32.const 3
   i32.const 4
   call $~lib/typedarray/Int8Array#__set
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $8
   i32.const 4
   i32.const 5
   call $~lib/typedarray/Int8Array#__set
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $8
   i32.const 5
   i32.const 6
   call $~lib/typedarray/Int8Array#__set
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $8
   i32.const 1
   i32.const 6
   call $~lib/typedarray/Int8Array#subarray
   local.set $0
   local.get $0
   i32.const 0
   call $~lib/typedarray/Int8Array#__get
   local.set $9
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $9
   i32.const 24
   i32.shl
   i32.const 24
   i32.shr_s
   i32.const 2
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 24
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
    i32.const 24
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
    i32.const 24
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
    i32.const 24
    i32.const 225
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $0
   i32.const 1
   i32.const 5
   call $~lib/typedarray/Int8Array#subarray
   local.set $9
   local.get $9
   i32.const 0
   call $~lib/typedarray/Int8Array#__get
   local.set $4
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $4
   i32.const 24
   i32.shl
   i32.const 24
   i32.shr_s
   i32.const 3
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 228
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $9
   call $~lib/typedarray/Int8Array#get:length
   i32.const 4
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 229
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $9
   call $~lib/arraybuffer/ArrayBufferView#get:byteOffset
   i32.const 2
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 230
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $9
   call $~lib/arraybuffer/ArrayBufferView#get:byteLength
   i32.const 4
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 231
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $9
   i32.const 1
   i32.const 4
   call $~lib/typedarray/Int8Array#subarray
   local.set $4
   local.get $4
   i32.const 0
   call $~lib/typedarray/Int8Array#__get
   local.set $5
   global.get $~lib/error
   if
    br $uncaughtError
   end
   local.get $5
   i32.const 24
   i32.shl
   i32.const 24
   i32.shr_s
   i32.const 4
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 234
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $4
   call $~lib/typedarray/Int8Array#get:length
   i32.const 3
   i32.eq
   i32.eqz
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
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 236
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $4
   call $~lib/arraybuffer/ArrayBufferView#get:byteLength
   i32.const 3
   i32.eq
   i32.eqz
   if
    i32.const 0
    i32.const 24
    i32.const 237
    i32.const 2
    call $~lib/builtins/abort
    unreachable
   end
   local.get $8
   call $~lib/rt/pure/__release
   local.get $0
   call $~lib/rt/pure/__release
   local.get $9
   call $~lib/rt/pure/__release
   local.get $4
   call $~lib/rt/pure/__release
   call $std/typedarray/testReduce<~lib/typedarray/Int8Array,i8>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testReduce<~lib/typedarray/Uint8Array,u8>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testReduce<~lib/typedarray/Uint8ClampedArray,u8>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testReduce<~lib/typedarray/Int16Array,i16>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testReduce<~lib/typedarray/Uint16Array,u16>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testReduce<~lib/typedarray/Int32Array,i32>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testReduce<~lib/typedarray/Uint32Array,u32>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testReduce<~lib/typedarray/Int64Array,i64>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testReduce<~lib/typedarray/Uint64Array,u64>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testReduce<~lib/typedarray/Float32Array,f32>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testReduce<~lib/typedarray/Float64Array,f64>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testReduceRight<~lib/typedarray/Int8Array,i8>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testReduceRight<~lib/typedarray/Uint8Array,u8>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testReduceRight<~lib/typedarray/Uint8ClampedArray,u8>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testReduceRight<~lib/typedarray/Int16Array,i16>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testReduceRight<~lib/typedarray/Uint16Array,u16>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testReduceRight<~lib/typedarray/Int32Array,i32>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testReduceRight<~lib/typedarray/Uint32Array,u32>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testReduceRight<~lib/typedarray/Int64Array,i64>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testReduceRight<~lib/typedarray/Uint64Array,u64>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testReduceRight<~lib/typedarray/Float32Array,f32>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testReduceRight<~lib/typedarray/Float64Array,f64>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testArrayMap<~lib/typedarray/Int8Array,i8>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testArrayMap<~lib/typedarray/Uint8Array,u8>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testArrayMap<~lib/typedarray/Uint8ClampedArray,u8>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testArrayMap<~lib/typedarray/Int16Array,i16>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testArrayMap<~lib/typedarray/Uint16Array,u16>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testArrayMap<~lib/typedarray/Int32Array,i32>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testArrayMap<~lib/typedarray/Uint32Array,u32>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testArrayMap<~lib/typedarray/Int64Array,i64>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testArrayMap<~lib/typedarray/Uint64Array,u64>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testArrayMap<~lib/typedarray/Float32Array,f32>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testArrayMap<~lib/typedarray/Float64Array,f64>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testArraySome<~lib/typedarray/Int8Array,i8>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testArraySome<~lib/typedarray/Uint8Array,u8>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testArraySome<~lib/typedarray/Uint8ClampedArray,u8>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testArraySome<~lib/typedarray/Int16Array,i16>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testArraySome<~lib/typedarray/Uint16Array,u16>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testArraySome<~lib/typedarray/Int32Array,i32>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testArraySome<~lib/typedarray/Uint32Array,u32>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testArraySome<~lib/typedarray/Int64Array,i64>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testArraySome<~lib/typedarray/Uint64Array,u64>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testArraySome<~lib/typedarray/Float32Array,f32>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testArraySome<~lib/typedarray/Float64Array,f64>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testArrayFindIndex<~lib/typedarray/Int8Array,i8>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint8Array,u8>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint8ClampedArray,u8>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testArrayFindIndex<~lib/typedarray/Int16Array,i16>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint16Array,u16>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testArrayFindIndex<~lib/typedarray/Int32Array,i32>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint32Array,u32>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testArrayFindIndex<~lib/typedarray/Int64Array,i64>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testArrayFindIndex<~lib/typedarray/Uint64Array,u64>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testArrayFindIndex<~lib/typedarray/Float32Array,f32>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testArrayFindIndex<~lib/typedarray/Float64Array,f64>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testArrayEvery<~lib/typedarray/Int8Array,i8>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testArrayEvery<~lib/typedarray/Uint8Array,u8>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testArrayEvery<~lib/typedarray/Uint8ClampedArray,u8>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testArrayEvery<~lib/typedarray/Int16Array,i16>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testArrayEvery<~lib/typedarray/Uint16Array,u16>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testArrayEvery<~lib/typedarray/Int32Array,i32>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testArrayEvery<~lib/typedarray/Uint32Array,u32>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testArrayEvery<~lib/typedarray/Int64Array,i64>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testArrayEvery<~lib/typedarray/Uint64Array,u64>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testArrayEvery<~lib/typedarray/Float32Array,f32>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testArrayEvery<~lib/typedarray/Float64Array,f64>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testArrayForEach<~lib/typedarray/Int8Array,i8>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testArrayForEach<~lib/typedarray/Uint8Array,u8>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testArrayForEach<~lib/typedarray/Uint8ClampedArray,u8>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testArrayForEach<~lib/typedarray/Int16Array,i16>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testArrayForEach<~lib/typedarray/Uint16Array,u16>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testArrayForEach<~lib/typedarray/Int32Array,i32>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testArrayForEach<~lib/typedarray/Uint32Array,u32>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testArrayForEach<~lib/typedarray/Int64Array,i64>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testArrayForEach<~lib/typedarray/Uint64Array,u64>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testArrayForEach<~lib/typedarray/Float32Array,f32>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testArrayForEach<~lib/typedarray/Float64Array,f64>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testArrayReverse<~lib/typedarray/Int8Array,i8>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testArrayReverse<~lib/typedarray/Uint8Array,u8>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testArrayReverse<~lib/typedarray/Uint8ClampedArray,u8>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testArrayReverse<~lib/typedarray/Int16Array,i16>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testArrayReverse<~lib/typedarray/Uint16Array,u16>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testArrayReverse<~lib/typedarray/Int32Array,i32>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testArrayReverse<~lib/typedarray/Uint32Array,u32>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testArrayReverse<~lib/typedarray/Int64Array,i64>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testArrayReverse<~lib/typedarray/Uint64Array,u64>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testArrayReverse<~lib/typedarray/Float32Array,f32>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   call $std/typedarray/testArrayReverse<~lib/typedarray/Float64Array,f64>
   global.get $~lib/error
   if
    br $uncaughtError
   end
   global.get $std/typedarray/forEachValues
   call $~lib/rt/pure/__release
   global.get $~lib/error
   if
    br $uncaughtError
   end
   global.get $std/typedarray/testArrayReverseValues
   call $~lib/rt/pure/__release
   global.get $~lib/error
   if
    br $uncaughtError
   end
   return
  end
  i32.const 1592
  i32.const 24
  i32.const 1
  i32.const 0
  call $~lib/builtins/abort
  unreachable
 )
 (func $start (; 395 ;) (type $FUNCSIG$v)
  global.get $~lib/started
  if
   return
  else   
   i32.const 1
   global.set $~lib/started
  end
  call $start:std/typedarray
 )
 (func $~lib/array/Array<i8>#__visit_impl (; 396 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/array/Array<i32>#__visit_impl (; 397 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  nop
 )
 (func $~lib/rt/pure/markGray (; 398 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $~lib/rt/pure/scanBlack (; 399 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $~lib/rt/pure/scan (; 400 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $~lib/rt/pure/collectWhite (; 401 ;) (type $FUNCSIG$vi) (param $0 i32)
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
 (func $~lib/rt/pure/__visit (; 402 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
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
        global.get $~lib/error
        if
         return
        end
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
        i32.const 80
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
     i32.const 268435455
     i32.const -1
     i32.xor
     i32.and
     local.get $3
     i32.const 1
     i32.add
     i32.const 268435455
     i32.const -1
     i32.xor
     i32.and
     i32.eq
     i32.eqz
     if
      i32.const 0
      i32.const 80
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
    i32.const 80
    i32.const 97
    i32.const 24
    call $~lib/builtins/abort
    unreachable
   end
  end
 )
 (func $~lib/rt/__visit_members (; 403 ;) (type $FUNCSIG$vii) (param $0 i32) (param $1 i32)
  (local $2 i32)
  block $block$4$break
   block $switch$1$default
    block $switch$1$case$19
     block $switch$1$case$18
      block $switch$1$case$6
       block $switch$1$case$4
        block $switch$1$case$2
         local.get $0
         i32.const 8
         i32.sub
         i32.load
         br_table $switch$1$case$2 $switch$1$case$2 $switch$1$case$4 $switch$1$case$4 $switch$1$case$6 $switch$1$case$6 $switch$1$case$4 $switch$1$case$4 $switch$1$case$4 $switch$1$case$4 $switch$1$case$4 $switch$1$case$4 $switch$1$case$4 $switch$1$case$4 $switch$1$case$4 $switch$1$case$4 $switch$1$case$18 $switch$1$case$19 $switch$1$default
        end
        return
       end
       br $block$4$break
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
      local.tee $2
      if
       local.get $2
       local.get $1
       call $~lib/rt/pure/__visit
      end
      return
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
 (func $null (; 404 ;) (type $FUNCSIG$v)
 )
)
