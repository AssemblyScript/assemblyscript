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
 (table $0 101 funcref)
 (elem (i32.const 0) $null $~lib/internal/sort/COMPARATOR<f64>~anonymous|1 $std/typedarray/testReduce<Int8Array,i8>~anonymous|2 $std/typedarray/testReduce<Int8Array,i8>~anonymous|2 $std/typedarray/testReduce<Int8Array,i8>~anonymous|2 $std/typedarray/testReduce<Int8Array,i8>~anonymous|2 $std/typedarray/testReduce<Int8Array,i8>~anonymous|2 $std/typedarray/testReduce<Int8Array,i8>~anonymous|2 $std/typedarray/testReduce<Int8Array,i8>~anonymous|2 $std/typedarray/testReduce<Int64Array,i64>~anonymous|9 $std/typedarray/testReduce<Int64Array,i64>~anonymous|9 $std/typedarray/testReduce<Float32Array,f32>~anonymous|11 $std/typedarray/testReduce<Float64Array,f64>~anonymous|12 $std/typedarray/testReduce<Int8Array,i8>~anonymous|2 $std/typedarray/testReduce<Int8Array,i8>~anonymous|2 $std/typedarray/testReduce<Int8Array,i8>~anonymous|2 $std/typedarray/testReduce<Int8Array,i8>~anonymous|2 $std/typedarray/testReduce<Int8Array,i8>~anonymous|2 $std/typedarray/testReduce<Int8Array,i8>~anonymous|2 $std/typedarray/testReduce<Int8Array,i8>~anonymous|2 $std/typedarray/testReduce<Int64Array,i64>~anonymous|9 $std/typedarray/testReduce<Int64Array,i64>~anonymous|9 $std/typedarray/testReduce<Float32Array,f32>~anonymous|11 $std/typedarray/testReduce<Float64Array,f64>~anonymous|12 $std/typedarray/testArrayMap<Int8Array,i8>~anonymous|24 $std/typedarray/testArrayMap<Int8Array,i8>~anonymous|24 $std/typedarray/testArrayMap<Int8Array,i8>~anonymous|24 $std/typedarray/testArrayMap<Int8Array,i8>~anonymous|24 $std/typedarray/testArrayMap<Int8Array,i8>~anonymous|24 $std/typedarray/testArrayMap<Int8Array,i8>~anonymous|24 $std/typedarray/testArrayMap<Int8Array,i8>~anonymous|24 $std/typedarray/testArrayMap<Int64Array,i64>~anonymous|31 $std/typedarray/testArrayMap<Int64Array,i64>~anonymous|31 $std/typedarray/testArrayMap<Float32Array,f32>~anonymous|33 $std/typedarray/testArrayMap<Float64Array,f64>~anonymous|34 $std/typedarray/testArraySome<Int8Array,i8>~anonymous|35 $std/typedarray/testArraySome<Int8Array,i8>~anonymous|36 $std/typedarray/testArraySome<Int8Array,i8>~anonymous|35 $std/typedarray/testArraySome<Int8Array,i8>~anonymous|36 $std/typedarray/testArraySome<Int8Array,i8>~anonymous|35 $std/typedarray/testArraySome<Int8Array,i8>~anonymous|36 $std/typedarray/testArraySome<Int16Array,i16>~anonymous|41 $std/typedarray/testArraySome<Int16Array,i16>~anonymous|42 $std/typedarray/testArraySome<Int16Array,i16>~anonymous|41 $std/typedarray/testArraySome<Int16Array,i16>~anonymous|42 $std/typedarray/testArraySome<Int32Array,i32>~anonymous|45 $std/typedarray/testArraySome<Int32Array,i32>~anonymous|46 $std/typedarray/testArraySome<Int32Array,i32>~anonymous|45 $std/typedarray/testArraySome<Int32Array,i32>~anonymous|46 $std/typedarray/testArraySome<Int64Array,i64>~anonymous|49 $std/typedarray/testArraySome<Int64Array,i64>~anonymous|50 $std/typedarray/testArraySome<Int64Array,i64>~anonymous|49 $std/typedarray/testArraySome<Int64Array,i64>~anonymous|50 $std/typedarray/testArraySome<Float32Array,f32>~anonymous|53 $std/typedarray/testArraySome<Float32Array,f32>~anonymous|54 $std/typedarray/testArraySome<Float64Array,f64>~anonymous|55 $std/typedarray/testArraySome<Float64Array,f64>~anonymous|56 $std/typedarray/testArraySome<Int8Array,i8>~anonymous|35 $std/typedarray/testArrayFindIndex<Int8Array,i8>~anonymous|58 $std/typedarray/testArraySome<Int8Array,i8>~anonymous|35 $std/typedarray/testArrayFindIndex<Int8Array,i8>~anonymous|58 $std/typedarray/testArraySome<Int8Array,i8>~anonymous|35 $std/typedarray/testArrayFindIndex<Int8Array,i8>~anonymous|58 $std/typedarray/testArraySome<Int16Array,i16>~anonymous|41 $std/typedarray/testArrayFindIndex<Int16Array,i16>~anonymous|64 $std/typedarray/testArraySome<Int16Array,i16>~anonymous|41 $std/typedarray/testArrayFindIndex<Int16Array,i16>~anonymous|64 $std/typedarray/testArraySome<Int32Array,i32>~anonymous|45 $std/typedarray/testArrayFindIndex<Int32Array,i32>~anonymous|68 $std/typedarray/testArraySome<Int32Array,i32>~anonymous|45 $std/typedarray/testArrayFindIndex<Int32Array,i32>~anonymous|68 $std/typedarray/testArraySome<Int64Array,i64>~anonymous|49 $std/typedarray/testArrayFindIndex<Int64Array,i64>~anonymous|72 $std/typedarray/testArraySome<Int64Array,i64>~anonymous|49 $std/typedarray/testArrayFindIndex<Int64Array,i64>~anonymous|72 $std/typedarray/testArraySome<Float32Array,f32>~anonymous|53 $std/typedarray/testArrayFindIndex<Float32Array,f32>~anonymous|76 $std/typedarray/testArraySome<Float64Array,f64>~anonymous|55 $std/typedarray/testArrayFindIndex<Float64Array,f64>~anonymous|78 $std/typedarray/testArrayEvery<Int8Array,i8>~anonymous|79 $std/typedarray/testArraySome<Int8Array,i8>~anonymous|35 $std/typedarray/testArrayEvery<Uint8Array,u8>~anonymous|81 $std/typedarray/testArraySome<Int8Array,i8>~anonymous|35 $std/typedarray/testArrayEvery<Uint8Array,u8>~anonymous|81 $std/typedarray/testArraySome<Int8Array,i8>~anonymous|35 $std/typedarray/testArrayEvery<Int16Array,i16>~anonymous|85 $std/typedarray/testArraySome<Int16Array,i16>~anonymous|41 $std/typedarray/testArrayEvery<Uint8Array,u8>~anonymous|81 $std/typedarray/testArraySome<Int16Array,i16>~anonymous|41 $std/typedarray/testArrayEvery<Int32Array,i32>~anonymous|89 $std/typedarray/testArraySome<Int32Array,i32>~anonymous|45 $std/typedarray/testArrayEvery<Uint8Array,u8>~anonymous|81 $std/typedarray/testArraySome<Int32Array,i32>~anonymous|45 $std/typedarray/testArrayEvery<Int64Array,i64>~anonymous|93 $std/typedarray/testArraySome<Int64Array,i64>~anonymous|49 $std/typedarray/testArrayEvery<Uint64Array,u64>~anonymous|95 $std/typedarray/testArraySome<Int64Array,i64>~anonymous|49 $std/typedarray/testArrayEvery<Float32Array,f32>~anonymous|97 $std/typedarray/testArraySome<Float32Array,f32>~anonymous|53 $std/typedarray/testArrayEvery<Float64Array,f64>~anonymous|99 $std/typedarray/testArraySome<Float64Array,f64>~anonymous|55)
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
  local.tee $2
  current_memory
  local.tee $3
  i32.const 16
  i32.shl
  i32.gt_u
  if
   local.get $3
   local.get $2
   local.get $1
   i32.sub
   i32.const 65535
   i32.add
   i32.const -65536
   i32.and
   i32.const 16
   i32.shr_u
   local.tee $0
   local.get $3
   local.get $0
   i32.gt_s
   select
   grow_memory
   i32.const 0
   i32.lt_s
   if
    local.get $0
    grow_memory
    i32.const 0
    i32.lt_s
    if
     unreachable
    end
   end
  end
  local.get $2
  global.set $~lib/allocator/arena/offset
  local.get $1
 )
 (func $~lib/internal/arraybuffer/allocateUnsafe (; 2 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $~lib/internal/memory/memset (; 3 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
  local.tee $3
  i32.sub
  local.set $2
  local.get $0
  local.get $3
  i32.add
  local.tee $0
  local.get $1
  i32.const 255
  i32.and
  i32.const 16843009
  i32.mul
  local.tee $1
  i32.store
  local.get $2
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
 (func $~lib/internal/typedarray/TypedArray<i8>#constructor (; 4 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/typedarray/Int8Array#constructor (; 5 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  local.get $0
  if (result i32)
   local.get $0
  else   
   i32.const 12
   call $~lib/allocator/arena/__memory_allocate
  end
  local.get $1
  call $~lib/internal/typedarray/TypedArray<i8>#constructor
 )
 (func $~lib/typedarray/Uint8ClampedArray#constructor (; 6 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  i32.const 12
  call $~lib/allocator/arena/__memory_allocate
  local.get $0
  call $~lib/typedarray/Int8Array#constructor
 )
 (func $~lib/internal/typedarray/TypedArray<i16>#constructor (; 7 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/internal/typedarray/TypedArray<i32>#constructor (; 9 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/internal/typedarray/TypedArray<i64>#constructor (; 11 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $std/typedarray/testInstantiate (; 13 ;) (type $iv) (param $0 i32)
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
 (func $~lib/internal/typedarray/TypedArray<i32>#__set (; 14 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/internal/typedarray/TypedArray<i32>#__get (; 15 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/typedarray/Int32Array#subarray (; 16 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 1
  local.get $0
  local.tee $3
  i32.load offset=8
  i32.const 2
  i32.shr_u
  local.tee $0
  i32.const 1
  local.get $0
  i32.lt_s
  select
  local.set $2
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $0
   local.get $1
   i32.add
   local.tee $0
   local.get $2
   local.get $0
   local.get $2
   i32.gt_s
   select
  else   
   local.get $1
   local.get $0
   local.get $1
   local.get $0
   i32.lt_s
   select
   local.tee $0
   local.get $2
   local.get $0
   local.get $2
   i32.gt_s
   select
  end
  local.set $1
  i32.const 12
  call $~lib/allocator/arena/__memory_allocate
  local.tee $0
  local.get $3
  i32.load
  i32.store
  local.get $0
  local.get $3
  i32.load offset=4
  local.get $2
  i32.const 2
  i32.shl
  i32.add
  i32.store offset=4
  local.get $0
  local.get $1
  local.get $2
  i32.sub
  i32.const 2
  i32.shl
  i32.store offset=8
  local.get $0
 )
 (func $~lib/internal/typedarray/TypedArray<f64>#__set (; 17 ;) (type $iiFv) (param $0 i32) (param $1 i32) (param $2 f64)
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
 (func $~lib/typedarray/Float64Array#subarray (; 18 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 2
  local.get $0
  local.tee $2
  i32.load offset=8
  i32.const 3
  i32.shr_u
  local.tee $0
  i32.const 2
  local.get $0
  i32.lt_s
  select
  local.set $1
  i32.const 6
  local.get $0
  i32.const 6
  local.get $0
  i32.lt_s
  select
  local.tee $0
  local.get $1
  local.get $0
  local.get $1
  i32.gt_s
  select
  local.set $3
  i32.const 12
  call $~lib/allocator/arena/__memory_allocate
  local.tee $0
  local.get $2
  i32.load
  i32.store
  local.get $0
  local.get $2
  i32.load offset=4
  local.get $1
  i32.const 3
  i32.shl
  i32.add
  i32.store offset=4
  local.get $0
  local.get $3
  local.get $1
  i32.sub
  i32.const 3
  i32.shl
  i32.store offset=8
  local.get $0
 )
 (func $~lib/internal/sort/insertionSort<f64> (; 19 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
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
       global.set $~argc
       local.get $6
       local.get $7
       local.get $3
       call_indirect (type $FFi)
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
 (func $~lib/internal/sort/weakHeapSort<f64> (; 20 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 f64)
  (local $8 f64)
  (local $9 i32)
  local.get $2
  i32.const 31
  i32.add
  i32.const 5
  i32.shr_s
  i32.const 2
  i32.shl
  local.tee $6
  call $~lib/allocator/arena/__memory_allocate
  local.tee $9
  i32.const 0
  local.get $6
  call $~lib/internal/memory/memset
  local.get $2
  i32.const 1
  i32.sub
  local.set $4
  loop $repeat|0
   local.get $4
   i32.const 0
   i32.gt_s
   if
    local.get $4
    local.set $6
    loop $continue|1
     local.get $6
     i32.const 1
     i32.and
     local.get $6
     i32.const 6
     i32.shr_s
     i32.const 2
     i32.shl
     local.get $9
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
     if
      local.get $6
      i32.const 1
      i32.shr_s
      local.set $6
      br $continue|1
     end
    end
    local.get $6
    i32.const 1
    i32.shr_s
    local.tee $5
    i32.const 3
    i32.shl
    local.get $0
    i32.add
    local.get $1
    i32.add
    f64.load offset=8
    local.set $8
    local.get $4
    i32.const 3
    i32.shl
    local.get $0
    i32.add
    local.get $1
    i32.add
    f64.load offset=8
    local.set $7
    i32.const 2
    global.set $~argc
    local.get $8
    local.get $7
    local.get $3
    call_indirect (type $FFi)
    i32.const 0
    i32.lt_s
    if
     local.get $4
     i32.const 5
     i32.shr_s
     i32.const 2
     i32.shl
     local.get $9
     i32.add
     local.tee $6
     local.get $6
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
     local.get $1
     i32.add
     local.get $8
     f64.store offset=8
     local.get $5
     i32.const 3
     i32.shl
     local.get $0
     i32.add
     local.get $1
     i32.add
     local.get $7
     f64.store offset=8
    end
    local.get $4
    i32.const 1
    i32.sub
    local.set $4
    br $repeat|0
   end
  end
  local.get $2
  i32.const 1
  i32.sub
  local.set $4
  loop $repeat|2
   local.get $4
   i32.const 2
   i32.ge_s
   if
    local.get $0
    local.get $1
    i32.add
    local.tee $2
    f64.load offset=8
    local.set $7
    local.get $2
    local.get $4
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
    local.get $7
    f64.store offset=8
    i32.const 1
    local.set $5
    loop $continue|3
     local.get $5
     i32.const 5
     i32.shr_s
     i32.const 2
     i32.shl
     local.get $9
     i32.add
     i32.load
     local.get $5
     i32.const 31
     i32.and
     i32.shr_u
     i32.const 1
     i32.and
     local.get $5
     i32.const 1
     i32.shl
     i32.add
     local.tee $6
     local.get $4
     i32.lt_s
     if
      local.get $6
      local.set $5
      br $continue|3
     end
    end
    loop $continue|4
     local.get $5
     i32.const 0
     i32.gt_s
     if
      local.get $0
      local.get $1
      i32.add
      f64.load offset=8
      local.set $7
      local.get $5
      i32.const 3
      i32.shl
      local.get $0
      i32.add
      local.get $1
      i32.add
      f64.load offset=8
      local.set $8
      i32.const 2
      global.set $~argc
      local.get $7
      local.get $8
      local.get $3
      call_indirect (type $FFi)
      i32.const 0
      i32.lt_s
      if
       local.get $5
       i32.const 5
       i32.shr_s
       i32.const 2
       i32.shl
       local.get $9
       i32.add
       local.tee $2
       local.get $2
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
       local.get $7
       f64.store offset=8
       local.get $0
       local.get $1
       i32.add
       local.get $8
       f64.store offset=8
      end
      local.get $5
      i32.const 1
      i32.shr_s
      local.set $5
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
  i32.const 8
  i32.add
  local.get $1
  i32.add
  local.tee $2
  f64.load offset=8
  local.set $7
  local.get $2
  local.get $0
  local.get $1
  i32.add
  local.tee $0
  f64.load offset=8
  f64.store offset=8
  local.get $0
  local.get $7
  f64.store offset=8
 )
 (func $~lib/typedarray/Float64Array#sort (; 21 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 f64)
  local.get $0
  i32.load offset=4
  local.set $2
  block $__inlined_func$~lib/internal/typedarray/SORT<Float64Array,f64>
   local.get $0
   i32.load offset=8
   i32.const 3
   i32.shr_u
   local.tee $4
   i32.const 1
   i32.le_s
   br_if $__inlined_func$~lib/internal/typedarray/SORT<Float64Array,f64>
   local.get $0
   i32.load
   local.set $3
   local.get $4
   i32.const 2
   i32.eq
   if
    local.get $3
    i32.const 8
    i32.add
    local.get $2
    i32.add
    f64.load offset=8
    local.set $5
    local.get $2
    local.get $3
    i32.add
    f64.load offset=8
    local.set $6
    i32.const 2
    global.set $~argc
    local.get $5
    local.get $6
    local.get $1
    call_indirect (type $FFi)
    i32.const 0
    i32.lt_s
    if
     local.get $3
     i32.const 8
     i32.add
     local.get $2
     i32.add
     local.get $6
     f64.store offset=8
     local.get $2
     local.get $3
     i32.add
     local.get $5
     f64.store offset=8
    end
    br $__inlined_func$~lib/internal/typedarray/SORT<Float64Array,f64>
   end
   local.get $4
   i32.const 256
   i32.lt_s
   if
    local.get $3
    local.get $2
    local.get $4
    local.get $1
    call $~lib/internal/sort/insertionSort<f64>
   else    
    local.get $3
    local.get $2
    local.get $4
    local.get $1
    call $~lib/internal/sort/weakHeapSort<f64>
   end
  end
  local.get $0
 )
 (func $~lib/internal/sort/COMPARATOR<f64>~anonymous|1 (; 22 ;) (type $FFi) (param $0 f64) (param $1 f64) (result i32)
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
 (func $~lib/internal/typedarray/TypedArray<f64>#__get (; 23 ;) (type $iiF) (param $0 i32) (param $1 i32) (result f64)
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
 (func $~lib/internal/typedarray/TypedArray<u8>#__set (; 24 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/internal/typedarray/TypedArray<u8>#__get (; 25 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/typedarray/Int8Array#fill (; 26 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  local.tee $5
  i32.load
  local.set $6
  local.get $0
  i32.load offset=4
  local.set $7
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
   local.tee $0
   local.get $4
   local.get $0
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
   local.tee $0
   local.get $4
   local.get $0
   local.get $4
   i32.lt_s
   select
  end
  local.tee $3
  i32.lt_s
  if
   local.get $2
   local.get $6
   i32.add
   local.get $7
   i32.add
   i32.const 8
   i32.add
   local.get $1
   local.get $3
   local.get $2
   i32.sub
   call $~lib/internal/memory/memset
  end
  local.get $5
 )
 (func $~lib/internal/typedarray/TypedArray<i8>#__get (; 27 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $std/typedarray/isInt8ArrayEqual (; 28 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/typedarray/Int8Array#fill|trampoline (; 29 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argc
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
 (func $~lib/typedarray/Int8Array#subarray (; 30 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  i32.const 1
  local.get $0
  local.tee $3
  i32.load offset=8
  local.tee $0
  i32.const 1
  local.get $0
  i32.lt_s
  select
  local.set $2
  local.get $1
  i32.const 0
  i32.lt_s
  if (result i32)
   local.get $0
   local.get $1
   i32.add
   local.tee $0
   local.get $2
   local.get $0
   local.get $2
   i32.gt_s
   select
  else   
   local.get $1
   local.get $0
   local.get $1
   local.get $0
   i32.lt_s
   select
   local.tee $0
   local.get $2
   local.get $0
   local.get $2
   i32.gt_s
   select
  end
  local.set $1
  i32.const 12
  call $~lib/allocator/arena/__memory_allocate
  local.tee $0
  local.get $3
  i32.load
  i32.store
  local.get $0
  local.get $3
  i32.load offset=4
  local.get $2
  i32.add
  i32.store offset=4
  local.get $0
  local.get $1
  local.get $2
  i32.sub
  i32.store offset=8
  local.get $0
 )
 (func $~lib/typedarray/Int32Array#fill (; 31 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  local.get $0
  local.tee $5
  i32.load
  local.set $6
  local.get $0
  i32.load offset=4
  local.set $7
  local.get $0
  i32.load offset=8
  i32.const 2
  i32.shr_u
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
   local.tee $0
   local.get $4
   local.get $0
   local.get $4
   i32.lt_s
   select
  end
  local.set $2
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
   local.tee $0
   local.get $4
   local.get $0
   local.get $4
   i32.lt_s
   select
  end
  local.set $3
  loop $repeat|0
   local.get $2
   local.get $3
   i32.ge_s
   i32.eqz
   if
    local.get $2
    i32.const 2
    i32.shl
    local.get $6
    i32.add
    local.get $7
    i32.add
    local.get $1
    i32.store offset=8
    local.get $2
    i32.const 1
    i32.add
    local.set $2
    br $repeat|0
   end
  end
  local.get $5
 )
 (func $std/typedarray/isInt32ArrayEqual (; 32 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/typedarray/Int32Array#fill|trampoline (; 33 ;) (type $FUNCSIG$iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  block $2of2
   block $1of2
    block $0of2
     block $outOfRange
      global.get $~argc
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
 (func $std/typedarray/testReduce<Int8Array,i8>~anonymous|2 (; 34 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  local.get $0
  local.get $1
  i32.add
 )
 (func $~lib/typedarray/Int8Array#reduce<i8> (; 35 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
    global.set $~argc
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
    call_indirect (type $iiiii)
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
 (func $std/typedarray/testReduce<Int8Array,i8> (; 36 ;) (type $v)
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
 (func $~lib/typedarray/Uint8Array#reduce<u8> (; 37 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
    global.set $~argc
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
    call_indirect (type $iiiii)
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
 (func $std/typedarray/testReduce<Uint8Array,u8> (; 38 ;) (type $v)
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
 (func $std/typedarray/testReduce<Uint8ClampedArray,u8> (; 39 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#constructor
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
 (func $~lib/internal/typedarray/TypedArray<i16>#__set (; 40 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $~lib/typedarray/Int16Array#reduce<i16> (; 41 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
    global.set $~argc
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
    call_indirect (type $iiiii)
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
 (func $std/typedarray/testReduce<Int16Array,i16> (; 42 ;) (type $v)
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
 (func $~lib/typedarray/Uint16Array#reduce<u16> (; 43 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
    global.set $~argc
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
    call_indirect (type $iiiii)
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
 (func $std/typedarray/testReduce<Uint16Array,u16> (; 44 ;) (type $v)
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
 (func $~lib/typedarray/Int32Array#reduce<i32> (; 45 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
    global.set $~argc
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
    call_indirect (type $iiiii)
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
 (func $std/typedarray/testReduce<Int32Array,i32> (; 46 ;) (type $v)
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
 (func $std/typedarray/testReduce<Uint32Array,u32> (; 47 ;) (type $v)
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
 (func $~lib/internal/typedarray/TypedArray<i64>#__set (; 48 ;) (type $iiIv) (param $0 i32) (param $1 i32) (param $2 i64)
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
 (func $std/typedarray/testReduce<Int64Array,i64>~anonymous|9 (; 49 ;) (type $IIiiI) (param $0 i64) (param $1 i64) (param $2 i32) (param $3 i32) (result i64)
  local.get $0
  local.get $1
  i64.add
 )
 (func $~lib/typedarray/Int64Array#reduce<i64> (; 50 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
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
    global.set $~argc
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
    call_indirect (type $IIiiI)
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
 (func $std/typedarray/testReduce<Int64Array,i64> (; 51 ;) (type $v)
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
 (func $std/typedarray/testReduce<Uint64Array,u64> (; 52 ;) (type $v)
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
 (func $~lib/internal/typedarray/TypedArray<f32>#__set (; 53 ;) (type $iifv) (param $0 i32) (param $1 i32) (param $2 f32)
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
 (func $std/typedarray/testReduce<Float32Array,f32>~anonymous|11 (; 54 ;) (type $ffiif) (param $0 f32) (param $1 f32) (param $2 i32) (param $3 i32) (result f32)
  local.get $0
  local.get $1
  f32.add
 )
 (func $~lib/typedarray/Float32Array#reduce<f32> (; 55 ;) (type $FUNCSIG$fi) (param $0 i32) (result f32)
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
    global.set $~argc
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
    call_indirect (type $ffiif)
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
 (func $std/typedarray/testReduce<Float32Array,f32> (; 56 ;) (type $v)
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
 (func $std/typedarray/testReduce<Float64Array,f64>~anonymous|12 (; 57 ;) (type $FFiiF) (param $0 f64) (param $1 f64) (param $2 i32) (param $3 i32) (result f64)
  local.get $0
  local.get $1
  f64.add
 )
 (func $~lib/typedarray/Float64Array#reduce<f64> (; 58 ;) (type $FUNCSIG$di) (param $0 i32) (result f64)
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
    global.set $~argc
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
    call_indirect (type $FFiiF)
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
 (func $std/typedarray/testReduce<Float64Array,f64> (; 59 ;) (type $v)
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
 (func $~lib/typedarray/Int8Array#reduceRight<i8> (; 60 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
    global.set $~argc
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
    call_indirect (type $iiiii)
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
 (func $std/typedarray/testReduceRight<Int8Array,i8> (; 61 ;) (type $v)
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
 (func $~lib/typedarray/Uint8Array#reduceRight<u8> (; 62 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
    global.set $~argc
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
    call_indirect (type $iiiii)
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
 (func $std/typedarray/testReduceRight<Uint8Array,u8> (; 63 ;) (type $v)
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
 (func $std/typedarray/testReduceRight<Uint8ClampedArray,u8> (; 64 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#constructor
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
 (func $~lib/typedarray/Int16Array#reduceRight<i16> (; 65 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
    global.set $~argc
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
    call_indirect (type $iiiii)
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
 (func $std/typedarray/testReduceRight<Int16Array,i16> (; 66 ;) (type $v)
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
 (func $~lib/typedarray/Uint16Array#reduceRight<u16> (; 67 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
    global.set $~argc
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
    call_indirect (type $iiiii)
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
 (func $std/typedarray/testReduceRight<Uint16Array,u16> (; 68 ;) (type $v)
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
 (func $~lib/typedarray/Int32Array#reduceRight<i32> (; 69 ;) (type $FUNCSIG$iii) (param $0 i32) (param $1 i32) (result i32)
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
    global.set $~argc
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
    call_indirect (type $iiiii)
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
 (func $std/typedarray/testReduceRight<Int32Array,i32> (; 70 ;) (type $v)
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
 (func $std/typedarray/testReduceRight<Uint32Array,u32> (; 71 ;) (type $v)
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
 (func $~lib/typedarray/Int64Array#reduceRight<i64> (; 72 ;) (type $FUNCSIG$jii) (param $0 i32) (param $1 i32) (result i64)
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
    global.set $~argc
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
    call_indirect (type $IIiiI)
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
 (func $std/typedarray/testReduceRight<Int64Array,i64> (; 73 ;) (type $v)
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
 (func $std/typedarray/testReduceRight<Uint64Array,u64> (; 74 ;) (type $v)
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
 (func $~lib/typedarray/Float32Array#reduceRight<f32> (; 75 ;) (type $FUNCSIG$fi) (param $0 i32) (result f32)
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
    global.set $~argc
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
    call_indirect (type $ffiif)
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
 (func $std/typedarray/testReduceRight<Float32Array,f32> (; 76 ;) (type $v)
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
 (func $~lib/typedarray/Float64Array#reduceRight<f64> (; 77 ;) (type $FUNCSIG$di) (param $0 i32) (result f64)
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
    global.set $~argc
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
    call_indirect (type $FFiiF)
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
 (func $std/typedarray/testReduceRight<Float64Array,f64> (; 78 ;) (type $v)
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
 (func $std/typedarray/testArrayMap<Int8Array,i8>~anonymous|24 (; 79 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  local.get $0
  i32.mul
 )
 (func $~lib/typedarray/Int8Array#map (; 80 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
    global.set $~argc
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
    call_indirect (type $iiii)
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
 (func $std/typedarray/testArrayMap<Int8Array,i8> (; 81 ;) (type $v)
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
 (func $~lib/typedarray/Uint8Array#map (; 82 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
    global.set $~argc
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
    call_indirect (type $iiii)
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
 (func $std/typedarray/testArrayMap<Uint8Array,u8> (; 83 ;) (type $v)
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
 (func $~lib/typedarray/Uint8ClampedArray#map (; 84 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
    global.set $~argc
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
    call_indirect (type $iiii)
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
 (func $std/typedarray/testArrayMap<Uint8ClampedArray,u8> (; 85 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#constructor
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
  call $~lib/typedarray/Uint8ClampedArray#map
  local.tee $0
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<u8>#__get
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
 (func $~lib/typedarray/Int16Array#map (; 86 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
    global.set $~argc
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
    call_indirect (type $iiii)
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
 (func $~lib/internal/typedarray/TypedArray<i16>#__get (; 87 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $std/typedarray/testArrayMap<Int16Array,i16> (; 88 ;) (type $v)
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
 (func $~lib/typedarray/Uint16Array#map (; 89 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
    global.set $~argc
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
    call_indirect (type $iiii)
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
 (func $~lib/internal/typedarray/TypedArray<u16>#__get (; 90 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $std/typedarray/testArrayMap<Uint16Array,u16> (; 91 ;) (type $v)
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
 (func $~lib/internal/typedarray/MAP<Int32Array,i32> (; 92 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
    global.set $~argc
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
    call_indirect (type $iiii)
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
 (func $std/typedarray/testArrayMap<Int32Array,i32> (; 93 ;) (type $v)
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
  call $~lib/internal/typedarray/MAP<Int32Array,i32>
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
 (func $std/typedarray/testArrayMap<Uint32Array,u32> (; 94 ;) (type $v)
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
  call $~lib/internal/typedarray/MAP<Int32Array,i32>
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
 (func $std/typedarray/testArrayMap<Int64Array,i64>~anonymous|31 (; 95 ;) (type $IiiI) (param $0 i64) (param $1 i32) (param $2 i32) (result i64)
  local.get $0
  local.get $0
  i64.mul
 )
 (func $~lib/internal/typedarray/MAP<Int64Array,i64> (; 96 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
    global.set $~argc
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
    call_indirect (type $IiiI)
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
 (func $~lib/internal/typedarray/TypedArray<i64>#__get (; 97 ;) (type $iiI) (param $0 i32) (param $1 i32) (result i64)
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
 (func $std/typedarray/testArrayMap<Int64Array,i64> (; 98 ;) (type $v)
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
  call $~lib/internal/typedarray/MAP<Int64Array,i64>
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
 (func $std/typedarray/testArrayMap<Uint64Array,u64> (; 99 ;) (type $v)
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
  call $~lib/internal/typedarray/MAP<Int64Array,i64>
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
 (func $std/typedarray/testArrayMap<Float32Array,f32>~anonymous|33 (; 100 ;) (type $fiif) (param $0 f32) (param $1 i32) (param $2 i32) (result f32)
  local.get $0
  local.get $0
  f32.mul
 )
 (func $~lib/typedarray/Float32Array#map (; 101 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
    global.set $~argc
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
    call_indirect (type $fiif)
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
 (func $~lib/internal/typedarray/TypedArray<f32>#__get (; 102 ;) (type $iif) (param $0 i32) (param $1 i32) (result f32)
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
 (func $std/typedarray/testArrayMap<Float32Array,f32> (; 103 ;) (type $v)
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
 (func $std/typedarray/testArrayMap<Float64Array,f64>~anonymous|34 (; 104 ;) (type $FiiF) (param $0 f64) (param $1 i32) (param $2 i32) (result f64)
  local.get $0
  local.get $0
  f64.mul
 )
 (func $~lib/typedarray/Float64Array#map (; 105 ;) (type $FUNCSIG$ii) (param $0 i32) (result i32)
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
    global.set $~argc
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
    call_indirect (type $FiiF)
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
 (func $std/typedarray/testArrayMap<Float64Array,f64> (; 106 ;) (type $v)
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
 (func $std/typedarray/testArraySome<Int8Array,i8>~anonymous|35 (; 107 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 255
  i32.and
  i32.const 2
  i32.eq
 )
 (func $~lib/typedarray/Int8Array#some (; 108 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $__inlined_func$~lib/internal/typedarray/SOME<Int8Array,i8> (result i32)
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
     global.set $~argc
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
     call_indirect (type $iiii)
     br_if $__inlined_func$~lib/internal/typedarray/SOME<Int8Array,i8>
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
 (func $std/typedarray/testArraySome<Int8Array,i8>~anonymous|36 (; 109 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 255
  i32.and
  i32.eqz
 )
 (func $std/typedarray/testArraySome<Int8Array,i8> (; 110 ;) (type $v)
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
 (func $~lib/typedarray/Uint8Array#some (; 111 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $__inlined_func$~lib/internal/typedarray/SOME<Uint8Array,u8> (result i32)
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
     global.set $~argc
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
     call_indirect (type $iiii)
     br_if $__inlined_func$~lib/internal/typedarray/SOME<Uint8Array,u8>
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
 (func $std/typedarray/testArraySome<Uint8Array,u8> (; 112 ;) (type $v)
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
 (func $std/typedarray/testArraySome<Uint8ClampedArray,u8> (; 113 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#constructor
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
 (func $std/typedarray/testArraySome<Int16Array,i16>~anonymous|41 (; 114 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 65535
  i32.and
  i32.const 2
  i32.eq
 )
 (func $~lib/typedarray/Int16Array#some (; 115 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $__inlined_func$~lib/internal/typedarray/SOME<Int16Array,i16> (result i32)
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
     global.set $~argc
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
     call_indirect (type $iiii)
     br_if $__inlined_func$~lib/internal/typedarray/SOME<Int16Array,i16>
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
 (func $std/typedarray/testArraySome<Int16Array,i16>~anonymous|42 (; 116 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 65535
  i32.and
  i32.eqz
 )
 (func $std/typedarray/testArraySome<Int16Array,i16> (; 117 ;) (type $v)
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
 (func $~lib/typedarray/Uint16Array#some (; 118 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $__inlined_func$~lib/internal/typedarray/SOME<Uint16Array,u16> (result i32)
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
     global.set $~argc
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
     call_indirect (type $iiii)
     br_if $__inlined_func$~lib/internal/typedarray/SOME<Uint16Array,u16>
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
 (func $std/typedarray/testArraySome<Uint16Array,u16> (; 119 ;) (type $v)
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
 (func $std/typedarray/testArraySome<Int32Array,i32>~anonymous|45 (; 120 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 2
  i32.eq
 )
 (func $~lib/typedarray/Int32Array#some (; 121 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $__inlined_func$~lib/internal/typedarray/SOME<Int32Array,i32> (result i32)
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
     global.set $~argc
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
     call_indirect (type $iiii)
     br_if $__inlined_func$~lib/internal/typedarray/SOME<Int32Array,i32>
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
 (func $std/typedarray/testArraySome<Int32Array,i32>~anonymous|46 (; 122 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.eqz
 )
 (func $std/typedarray/testArraySome<Int32Array,i32> (; 123 ;) (type $v)
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
 (func $std/typedarray/testArraySome<Uint32Array,u32> (; 124 ;) (type $v)
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
 (func $std/typedarray/testArraySome<Int64Array,i64>~anonymous|49 (; 125 ;) (type $Iiii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i64.const 2
  i64.eq
 )
 (func $~lib/typedarray/Int64Array#some (; 126 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $__inlined_func$~lib/internal/typedarray/SOME<Int64Array,i64> (result i32)
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
     global.set $~argc
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
     call_indirect (type $Iiii)
     br_if $__inlined_func$~lib/internal/typedarray/SOME<Int64Array,i64>
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
 (func $std/typedarray/testArraySome<Int64Array,i64>~anonymous|50 (; 127 ;) (type $Iiii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i64.const 0
  i64.eq
 )
 (func $std/typedarray/testArraySome<Int64Array,i64> (; 128 ;) (type $v)
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
 (func $std/typedarray/testArraySome<Uint64Array,u64> (; 129 ;) (type $v)
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
 (func $std/typedarray/testArraySome<Float32Array,f32>~anonymous|53 (; 130 ;) (type $fiii) (param $0 f32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  f32.const 2
  f32.eq
 )
 (func $~lib/typedarray/Float32Array#some (; 131 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $__inlined_func$~lib/internal/typedarray/SOME<Float32Array,f32> (result i32)
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
     global.set $~argc
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
     call_indirect (type $fiii)
     br_if $__inlined_func$~lib/internal/typedarray/SOME<Float32Array,f32>
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
 (func $std/typedarray/testArraySome<Float32Array,f32>~anonymous|54 (; 132 ;) (type $fiii) (param $0 f32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  f32.const 0
  f32.eq
 )
 (func $std/typedarray/testArraySome<Float32Array,f32> (; 133 ;) (type $v)
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
 (func $std/typedarray/testArraySome<Float64Array,f64>~anonymous|55 (; 134 ;) (type $Fiii) (param $0 f64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  f64.const 2
  f64.eq
 )
 (func $~lib/typedarray/Float64Array#some (; 135 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $__inlined_func$~lib/internal/typedarray/SOME<Float64Array,f64> (result i32)
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
     global.set $~argc
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
     call_indirect (type $Fiii)
     br_if $__inlined_func$~lib/internal/typedarray/SOME<Float64Array,f64>
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
 (func $std/typedarray/testArraySome<Float64Array,f64>~anonymous|56 (; 136 ;) (type $Fiii) (param $0 f64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  f64.const 0
  f64.eq
 )
 (func $std/typedarray/testArraySome<Float64Array,f64> (; 137 ;) (type $v)
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
 (func $~lib/typedarray/Int8Array#findIndex (; 138 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  block $__inlined_func$~lib/internal/typedarray/FIND_INDEX<Int8Array,i8>
   loop $repeat|0
    block $break|0
     local.get $0
     local.get $2
     i32.ge_s
     br_if $break|0
     i32.const 3
     global.set $~argc
     local.get $0
     local.get $4
     i32.add
     local.get $5
     i32.add
     i32.load8_s offset=8
     local.get $0
     local.get $3
     local.get $1
     call_indirect (type $iiii)
     br_if $__inlined_func$~lib/internal/typedarray/FIND_INDEX<Int8Array,i8>
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
 (func $std/typedarray/testArrayFindIndex<Int8Array,i8>~anonymous|58 (; 139 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 255
  i32.and
  i32.const 4
  i32.eq
 )
 (func $std/typedarray/testArrayFindIndex<Int8Array,i8> (; 140 ;) (type $v)
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
 (func $~lib/typedarray/Uint8Array#findIndex (; 141 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  block $__inlined_func$~lib/internal/typedarray/FIND_INDEX<Uint8Array,u8>
   loop $repeat|0
    block $break|0
     local.get $0
     local.get $2
     i32.ge_s
     br_if $break|0
     i32.const 3
     global.set $~argc
     local.get $0
     local.get $4
     i32.add
     local.get $5
     i32.add
     i32.load8_u offset=8
     local.get $0
     local.get $3
     local.get $1
     call_indirect (type $iiii)
     br_if $__inlined_func$~lib/internal/typedarray/FIND_INDEX<Uint8Array,u8>
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
 (func $std/typedarray/testArrayFindIndex<Uint8Array,u8> (; 142 ;) (type $v)
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
 (func $std/typedarray/testArrayFindIndex<Uint8ClampedArray,u8> (; 143 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#constructor
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
  local.get $0
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
 (func $~lib/typedarray/Int16Array#findIndex (; 144 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  block $__inlined_func$~lib/internal/typedarray/FIND_INDEX<Int16Array,i16>
   loop $repeat|0
    block $break|0
     local.get $0
     local.get $2
     i32.ge_s
     br_if $break|0
     i32.const 3
     global.set $~argc
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
     call_indirect (type $iiii)
     br_if $__inlined_func$~lib/internal/typedarray/FIND_INDEX<Int16Array,i16>
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
 (func $std/typedarray/testArrayFindIndex<Int16Array,i16>~anonymous|64 (; 145 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 65535
  i32.and
  i32.const 4
  i32.eq
 )
 (func $std/typedarray/testArrayFindIndex<Int16Array,i16> (; 146 ;) (type $v)
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
 (func $~lib/typedarray/Uint16Array#findIndex (; 147 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  block $__inlined_func$~lib/internal/typedarray/FIND_INDEX<Uint16Array,u16>
   loop $repeat|0
    block $break|0
     local.get $0
     local.get $2
     i32.ge_s
     br_if $break|0
     i32.const 3
     global.set $~argc
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
     call_indirect (type $iiii)
     br_if $__inlined_func$~lib/internal/typedarray/FIND_INDEX<Uint16Array,u16>
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
 (func $std/typedarray/testArrayFindIndex<Uint16Array,u16> (; 148 ;) (type $v)
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
 (func $~lib/typedarray/Int32Array#findIndex (; 149 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  block $__inlined_func$~lib/internal/typedarray/FIND_INDEX<Int32Array,i32>
   loop $repeat|0
    block $break|0
     local.get $0
     local.get $2
     i32.ge_s
     br_if $break|0
     i32.const 3
     global.set $~argc
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
     call_indirect (type $iiii)
     br_if $__inlined_func$~lib/internal/typedarray/FIND_INDEX<Int32Array,i32>
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
 (func $std/typedarray/testArrayFindIndex<Int32Array,i32>~anonymous|68 (; 150 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 4
  i32.eq
 )
 (func $std/typedarray/testArrayFindIndex<Int32Array,i32> (; 151 ;) (type $v)
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
 (func $std/typedarray/testArrayFindIndex<Uint32Array,u32> (; 152 ;) (type $v)
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
   i32.const 0
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
   i32.const 0
   i32.const 8
   i32.const 368
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Int64Array#findIndex (; 153 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  block $__inlined_func$~lib/internal/typedarray/FIND_INDEX<Int64Array,i64>
   loop $repeat|0
    block $break|0
     local.get $0
     local.get $2
     i32.ge_s
     br_if $break|0
     i32.const 3
     global.set $~argc
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
     call_indirect (type $Iiii)
     br_if $__inlined_func$~lib/internal/typedarray/FIND_INDEX<Int64Array,i64>
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
 (func $std/typedarray/testArrayFindIndex<Int64Array,i64>~anonymous|72 (; 154 ;) (type $Iiii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i64.const 4
  i64.eq
 )
 (func $std/typedarray/testArrayFindIndex<Int64Array,i64> (; 155 ;) (type $v)
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
 (func $std/typedarray/testArrayFindIndex<Uint64Array,u64> (; 156 ;) (type $v)
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
   i32.const 0
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
   i32.const 0
   i32.const 8
   i32.const 368
   i32.const 2
   call $~lib/env/abort
   unreachable
  end
 )
 (func $~lib/typedarray/Float32Array#findIndex (; 157 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  block $__inlined_func$~lib/internal/typedarray/FIND_INDEX<Float32Array,f32>
   loop $repeat|0
    block $break|0
     local.get $0
     local.get $2
     i32.ge_s
     br_if $break|0
     i32.const 3
     global.set $~argc
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
     call_indirect (type $fiii)
     br_if $__inlined_func$~lib/internal/typedarray/FIND_INDEX<Float32Array,f32>
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
 (func $std/typedarray/testArrayFindIndex<Float32Array,f32>~anonymous|76 (; 158 ;) (type $fiii) (param $0 f32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  f32.const 4
  f32.eq
 )
 (func $std/typedarray/testArrayFindIndex<Float32Array,f32> (; 159 ;) (type $v)
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
 (func $~lib/typedarray/Float64Array#findIndex (; 160 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  block $__inlined_func$~lib/internal/typedarray/FIND_INDEX<Float64Array,f64>
   loop $repeat|0
    block $break|0
     local.get $0
     local.get $2
     i32.ge_s
     br_if $break|0
     i32.const 3
     global.set $~argc
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
     call_indirect (type $Fiii)
     br_if $__inlined_func$~lib/internal/typedarray/FIND_INDEX<Float64Array,f64>
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
 (func $std/typedarray/testArrayFindIndex<Float64Array,f64>~anonymous|78 (; 161 ;) (type $Fiii) (param $0 f64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  f64.const 4
  f64.eq
 )
 (func $std/typedarray/testArrayFindIndex<Float64Array,f64> (; 162 ;) (type $v)
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
 (func $std/typedarray/testArrayEvery<Int8Array,i8>~anonymous|79 (; 163 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 24
  i32.shl
  i32.const 24
  i32.shr_s
  i32.const 2
  i32.rem_s
  i32.eqz
 )
 (func $~lib/typedarray/Int8Array#every (; 164 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $__inlined_func$~lib/internal/typedarray/EVERY<Int8Array,i8> (result i32)
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
     global.set $~argc
     local.get $2
     local.get $4
     i32.add
     local.get $5
     i32.add
     i32.load8_s offset=8
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $iiii)
     i32.eqz
     if
      i32.const 0
      br $__inlined_func$~lib/internal/typedarray/EVERY<Int8Array,i8>
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
 (func $std/typedarray/testArrayEvery<Int8Array,i8> (; 165 ;) (type $v)
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
 (func $std/typedarray/testArrayEvery<Uint8Array,u8>~anonymous|81 (; 166 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 1
  i32.and
  i32.eqz
 )
 (func $~lib/typedarray/Uint8Array#every (; 167 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $__inlined_func$~lib/internal/typedarray/EVERY<Uint8Array,u8> (result i32)
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
     global.set $~argc
     local.get $2
     local.get $4
     i32.add
     local.get $5
     i32.add
     i32.load8_u offset=8
     local.get $2
     local.get $0
     local.get $1
     call_indirect (type $iiii)
     i32.eqz
     if
      i32.const 0
      br $__inlined_func$~lib/internal/typedarray/EVERY<Uint8Array,u8>
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
 (func $std/typedarray/testArrayEvery<Uint8Array,u8> (; 168 ;) (type $v)
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
 (func $std/typedarray/testArrayEvery<Uint8ClampedArray,u8> (; 169 ;) (type $v)
  (local $0 i32)
  i32.const 3
  call $~lib/typedarray/Uint8ClampedArray#constructor
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
 (func $std/typedarray/testArrayEvery<Int16Array,i16>~anonymous|85 (; 170 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 16
  i32.shl
  i32.const 16
  i32.shr_s
  i32.const 2
  i32.rem_s
  i32.eqz
 )
 (func $~lib/typedarray/Int16Array#every (; 171 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $__inlined_func$~lib/internal/typedarray/EVERY<Int16Array,i16> (result i32)
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
     global.set $~argc
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
     call_indirect (type $iiii)
     i32.eqz
     if
      i32.const 0
      br $__inlined_func$~lib/internal/typedarray/EVERY<Int16Array,i16>
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
 (func $std/typedarray/testArrayEvery<Int16Array,i16> (; 172 ;) (type $v)
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
 (func $~lib/typedarray/Uint16Array#every (; 173 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $__inlined_func$~lib/internal/typedarray/EVERY<Uint16Array,u16> (result i32)
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
     global.set $~argc
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
     call_indirect (type $iiii)
     i32.eqz
     if
      i32.const 0
      br $__inlined_func$~lib/internal/typedarray/EVERY<Uint16Array,u16>
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
 (func $std/typedarray/testArrayEvery<Uint16Array,u16> (; 174 ;) (type $v)
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
 (func $std/typedarray/testArrayEvery<Int32Array,i32>~anonymous|89 (; 175 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i32.const 2
  i32.rem_s
  i32.eqz
 )
 (func $~lib/typedarray/Int32Array#every (; 176 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $__inlined_func$~lib/internal/typedarray/EVERY<Int32Array,i32> (result i32)
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
     global.set $~argc
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
     call_indirect (type $iiii)
     i32.eqz
     if
      i32.const 0
      br $__inlined_func$~lib/internal/typedarray/EVERY<Int32Array,i32>
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
 (func $std/typedarray/testArrayEvery<Int32Array,i32> (; 177 ;) (type $v)
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
 (func $std/typedarray/testArrayEvery<Uint32Array,u32> (; 178 ;) (type $v)
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
 (func $std/typedarray/testArrayEvery<Int64Array,i64>~anonymous|93 (; 179 ;) (type $Iiii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i64.const 2
  i64.rem_s
  i64.const 0
  i64.eq
 )
 (func $~lib/typedarray/Int64Array#every (; 180 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $__inlined_func$~lib/internal/typedarray/EVERY<Int64Array,i64> (result i32)
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
     global.set $~argc
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
     call_indirect (type $Iiii)
     i32.eqz
     if
      i32.const 0
      br $__inlined_func$~lib/internal/typedarray/EVERY<Int64Array,i64>
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
 (func $std/typedarray/testArrayEvery<Int64Array,i64> (; 181 ;) (type $v)
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
 (func $std/typedarray/testArrayEvery<Uint64Array,u64>~anonymous|95 (; 182 ;) (type $Iiii) (param $0 i64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  i64.const 2
  i64.rem_u
  i64.const 0
  i64.eq
 )
 (func $std/typedarray/testArrayEvery<Uint64Array,u64> (; 183 ;) (type $v)
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
 (func $~lib/math/NativeMathf.mod (; 184 ;) (type $FUNCSIG$ff) (param $0 f32) (result f32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  local.get $0
  i32.reinterpret_f32
  local.tee $1
  i32.const 23
  i32.shr_u
  i32.const 255
  i32.and
  local.set $2
  local.get $1
  i32.const -2147483648
  i32.and
  local.set $4
  local.get $2
  i32.const 255
  i32.eq
  local.tee $3
  if (result i32)
   local.get $3
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
   local.get $1
   i32.const 1
   i32.shl
   local.tee $3
   i32.const -2147483648
   i32.le_u
   if
    local.get $3
    i32.const -2147483648
    i32.eq
    br_if $folding-inner0
    local.get $0
    return
   end
   local.get $2
   if (result i32)
    local.get $1
    i32.const 8388607
    i32.and
    i32.const 8388608
    i32.or
   else    
    local.get $1
    i32.const 1
    local.get $2
    local.get $1
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
 (func $std/typedarray/testArrayEvery<Float32Array,f32>~anonymous|97 (; 185 ;) (type $fiii) (param $0 f32) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  call $~lib/math/NativeMathf.mod
  f32.const 0
  f32.eq
 )
 (func $~lib/typedarray/Float32Array#every (; 186 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $__inlined_func$~lib/internal/typedarray/EVERY<Float32Array,f32> (result i32)
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
     global.set $~argc
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
     call_indirect (type $fiii)
     i32.eqz
     if
      i32.const 0
      br $__inlined_func$~lib/internal/typedarray/EVERY<Float32Array,f32>
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
 (func $std/typedarray/testArrayEvery<Float32Array,f32> (; 187 ;) (type $v)
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
 (func $~lib/math/NativeMath.mod (; 188 ;) (type $FUNCSIG$dd) (param $0 f64) (result f64)
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
 (func $std/typedarray/testArrayEvery<Float64Array,f64>~anonymous|99 (; 189 ;) (type $Fiii) (param $0 f64) (param $1 i32) (param $2 i32) (result i32)
  local.get $0
  call $~lib/math/NativeMath.mod
  f64.const 0
  f64.eq
 )
 (func $~lib/typedarray/Float64Array#every (; 190 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  block $__inlined_func$~lib/internal/typedarray/EVERY<Float64Array,f64> (result i32)
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
     global.set $~argc
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
     call_indirect (type $Fiii)
     i32.eqz
     if
      i32.const 0
      br $__inlined_func$~lib/internal/typedarray/EVERY<Float64Array,f64>
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
 (func $std/typedarray/testArrayEvery<Float64Array,f64> (; 191 ;) (type $v)
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
 (func $start (; 192 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  i32.const 624
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
  global.set $~argc
  global.get $std/typedarray/af64
  local.set $1
  block $1of1
   block $0of1
    block $outOfRange
     global.get $~argc
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
  drop
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
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  global.get $std/typedarray/clampedArr
  i32.const 1
  i32.const 2
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  global.get $std/typedarray/clampedArr
  i32.const 2
  i32.const 255
  call $~lib/internal/typedarray/TypedArray<u8>#__set
  global.get $std/typedarray/clampedArr
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<u8>#__get
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
  i32.const 1
  global.set $~argc
  global.get $std/typedarray/arr8
  i32.const 0
  i32.const 0
  call $~lib/typedarray/Int8Array#fill|trampoline
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
  i32.const 2
  global.set $~argc
  global.get $std/typedarray/arr8
  i32.const 2
  i32.const -2
  call $~lib/typedarray/Int8Array#fill|trampoline
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
  i32.const 4
  call $~lib/typedarray/Int8Array#subarray
  global.set $std/typedarray/sub8
  i32.const 1
  global.set $~argc
  global.get $std/typedarray/sub8
  i32.const 0
  i32.const 0
  call $~lib/typedarray/Int8Array#fill|trampoline
  drop
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
  i32.const 1
  global.set $~argc
  global.get $std/typedarray/arr32
  i32.const 0
  i32.const 0
  call $~lib/typedarray/Int32Array#fill|trampoline
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
  i32.const 2
  global.set $~argc
  global.get $std/typedarray/arr32
  i32.const 2
  i32.const -2
  call $~lib/typedarray/Int32Array#fill|trampoline
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
  i32.const 4
  call $~lib/typedarray/Int32Array#subarray
  global.set $std/typedarray/sub32
  i32.const 1
  global.set $~argc
  global.get $std/typedarray/sub32
  i32.const 0
  i32.const 0
  call $~lib/typedarray/Int32Array#fill|trampoline
  drop
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
  i32.const 6
  call $~lib/typedarray/Int8Array#subarray
  global.set $std/typedarray/multisubarr1
  global.get $std/typedarray/multisubarr1
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<i8>#__get
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
  i32.const 5
  call $~lib/typedarray/Int8Array#subarray
  global.set $std/typedarray/multisubarr2
  global.get $std/typedarray/multisubarr2
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<i8>#__get
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
  i32.const 4
  call $~lib/typedarray/Int8Array#subarray
  global.set $std/typedarray/multisubarr3
  global.get $std/typedarray/multisubarr3
  i32.const 0
  call $~lib/internal/typedarray/TypedArray<i8>#__get
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
 (func $null (; 193 ;) (type $v)
  nop
 )
)
