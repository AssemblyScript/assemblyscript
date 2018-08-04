(module
 (type $iii (func (param i32 i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $ii (func (param i32) (result i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iiv (func (param i32 i32)))
 (type $iiif (func (param i32 i32 i32) (result f32)))
 (type $iif (func (param i32 i32) (result f32)))
 (type $iiiii (func (param i32 i32 i32 i32) (result i32)))
 (type $F (func (result f64)))
 (type $Iv (func (param i64)))
 (type $II (func (param i64) (result i64)))
 (type $ffi (func (param f32 f32) (result i32)))
 (type $iv (func (param i32)))
 (type $fi (func (param f32) (result i32)))
 (type $FFi (func (param f64 f64) (result i32)))
 (type $iiF (func (param i32 i32) (result f64)))
 (type $Fi (func (param f64) (result i32)))
 (type $iiiiii (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $iiiiiv (func (param i32 i32 i32 i32 i32)))
 (type $v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (import "JSMath" "random" (func $~lib/math/JSMath.random (result f64)))
 (global $~lib/internal/allocator/AL_BITS i32 (i32.const 3))
 (global $~lib/internal/allocator/AL_SIZE i32 (i32.const 8))
 (global $~lib/internal/allocator/AL_MASK i32 (i32.const 7))
 (global $~lib/internal/allocator/MAX_SIZE_32 i32 (i32.const 1073741824))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $~lib/internal/arraybuffer/HEADER_SIZE i32 (i32.const 8))
 (global $~lib/internal/arraybuffer/MAX_BLENGTH i32 (i32.const 1073741816))
 (global $~lib/internal/string/HEADER_SIZE i32 (i32.const 4))
 (global $~lib/internal/string/MAX_LENGTH i32 (i32.const 536870910))
 (global $std/array/arr (mut i32) (i32.const 0))
 (global $std/array/i (mut i32) (i32.const 0))
 (global $std/array/includes (mut i32) (i32.const 0))
 (global $~argc (mut i32) (i32.const 0))
 (global $std/array/every (mut i32) (i32.const 0))
 (global $std/array/some (mut i32) (i32.const 0))
 (global $std/array/newArr (mut i32) (i32.const 0))
 (global $std/array/filteredArr (mut i32) (i32.const 0))
 (global $std/array/boolVal (mut i32) (i32.const 0))
 (global $~lib/math/random_seeded (mut i32) (i32.const 0))
 (global $~lib/math/random_state0 (mut i64) (i64.const 0))
 (global $~lib/math/random_state1 (mut i64) (i64.const 0))
 (global $std/array/charset i32 (i32.const 168))
 (global $NaN f64 (f64.const nan:0x8000000000000))
 (global $Infinity f64 (f64.const inf))
 (global $std/array/f32ArrayTyped (mut i32) (i32.const 408))
 (global $std/array/f64ArrayTyped (mut i32) (i32.const 616))
 (global $std/array/i32ArrayTyped (mut i32) (i32.const 792))
 (global $std/array/u32ArrayTyped (mut i32) (i32.const 872))
 (global $std/array/reversed0 (mut i32) (i32.const 928))
 (global $std/array/reversed1 (mut i32) (i32.const 952))
 (global $std/array/reversed2 (mut i32) (i32.const 976))
 (global $std/array/reversed4 (mut i32) (i32.const 1016))
 (global $std/array/expected4 (mut i32) (i32.const 1056))
 (global $std/array/reversed64 (mut i32) (i32.const 0))
 (global $std/array/reversed128 (mut i32) (i32.const 0))
 (global $std/array/reversed1024 (mut i32) (i32.const 0))
 (global $std/array/reversed10000 (mut i32) (i32.const 0))
 (global $std/array/randomized512 (mut i32) (i32.const 0))
 (global $std/array/randomized64 (mut i32) (i32.const 0))
 (global $std/array/randomized257 (mut i32) (i32.const 0))
 (global $std/array/reversedNested512 (mut i32) (i32.const 0))
 (global $std/array/reversedElements512 (mut i32) (i32.const 0))
 (global $std/array/randomStringsActual (mut i32) (i32.const 1216))
 (global $std/array/randomStringsExpected (mut i32) (i32.const 1288))
 (global $std/array/randomStrings400 (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 1396))
 (table 55 55 anyfunc)
 (elem (i32.const 0) $start~anonymous|0 $start~anonymous|1 $start~anonymous|2 $start~anonymous|3 $start~anonymous|4 $start~anonymous|5 $start~anonymous|6 $start~anonymous|7 $start~anonymous|8 $start~anonymous|9 $start~anonymous|10 $start~anonymous|11 $start~anonymous|12 $start~anonymous|13 $start~anonymous|14 $start~anonymous|15 $start~anonymous|16 $start~anonymous|17 $start~anonymous|18 $start~anonymous|19 $start~anonymous|20 $start~anonymous|21 $start~anonymous|22 $start~anonymous|23 $start~anonymous|24 $start~anonymous|25 $start~anonymous|26 $start~anonymous|27 $start~anonymous|28 $start~anonymous|29 $start~anonymous|30 $start~anonymous|31 $start~anonymous|32 $start~anonymous|33 $start~anonymous|34 $start~anonymous|35 $start~anonymous|36 $start~anonymous|37 $start~anonymous|38 $start~anonymous|39 $start~anonymous|40 $start~anonymous|41 $~lib/array/Array<f32>#sort|trampoline~anonymous|42 $~lib/array/Array<f64>#sort|trampoline~anonymous|43 $~lib/array/Array<i32>#sort|trampoline~anonymous|44 $~lib/array/Array<u32>#sort|trampoline~anonymous|45 $std/array/assertSortedDefault<i32>~anonymous|46 $start~anonymous|47 $start~anonymous|48 $start~anonymous|49 $start~anonymous|50 $start~anonymous|51 $start~anonymous|52 $start~anonymous|53 $start~anonymous|54)
 (memory $0 1)
 (data (i32.const 8) "\0d\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 40) "\1c\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 104) "\0c\00\00\00s\00t\00d\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 136) "\0c\00\00\00~\00l\00i\00b\00/\00m\00a\00t\00h\00.\00t\00s\00")
 (data (i32.const 168) "V\00\00\00A\00B\00C\00D\00E\00F\00G\00H\00I\00J\00K\00L\00M\00N\00O\00P\00Q\00R\00S\00T\00U\00V\00W\00X\00Y\00Z\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z\000\001\002\003\004\005\006\007\008\009\00_\00-\00,\00.\00+\00/\00\\\00[\00]\00{\00}\00(\00)\00<\00>\00*\00&\00$\00%\00^\00@\00#\00!\00?\00")
 (data (i32.const 344) " \00\00\00\00\00\00\00\00\00\80?\00\00\c0\7f\00\00\80\ff\00\00\80?\00\00\00\00\00\00\80\bf\00\00\00\c0\00\00\80\7f\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 408) "X\01\00\00\08\00\00\00")
 (data (i32.const 416) " \00\00\00\00\00\00\00\00\00\80\ff\00\00\00\c0\00\00\80\bf\00\00\00\00\00\00\80?\00\00\80?\00\00\80\7f\00\00\c0\7f\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 480) "\a0\01\00\00\08\00\00\00")
 (data (i32.const 488) "@\00\00\00\00\00\00\00\00\00\00\00\00\00\f0?\00\00\00\00\00\00\f8\7f\00\00\00\00\00\00\f0\ff\05\00\00\00\00\00\f0?\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f0\bf\00\00\00\00\00\00\00\c0\00\00\00\00\00\00\f0\7f\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 616) "\e8\01\00\00\08\00\00\00")
 (data (i32.const 624) "@\00\00\00\00\00\00\00\00\00\00\00\00\00\f0\ff\00\00\00\00\00\00\00\c0\00\00\00\00\00\00\f0\bf\00\00\00\00\00\00\00\00\00\00\00\00\00\00\f0?\05\00\00\00\00\00\f0?\00\00\00\00\00\00\f0\7f\00\00\00\00\00\00\f8\7f\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 752) "p\02\00\00\08\00\00\00")
 (data (i32.const 760) "\14\00\00\00\00\00\00\00\01\00\00\00\fe\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\02\00\00\00\00\00\00\00")
 (data (i32.const 792) "\f8\02\00\00\05\00\00\00")
 (data (i32.const 800) "\14\00\00\00\00\00\00\00\fe\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\01\00\00\00\02\00\00\00\00\00\00\00")
 (data (i32.const 832) " \03\00\00\05\00\00\00")
 (data (i32.const 840) "\14\00\00\00\00\00\00\00\01\00\00\00\ff\ff\ff\ff\fe\ff\ff\ff\00\00\00\00\02\00\00\00\00\00\00\00")
 (data (i32.const 872) "H\03\00\00\05\00\00\00")
 (data (i32.const 880) "\14\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\fe\ff\ff\ff\ff\ff\ff\ff\00\00\00\00")
 (data (i32.const 912) "p\03\00\00\05\00\00\00")
 (data (i32.const 920) "\00\00\00\00\00\00\00\00")
 (data (i32.const 928) "\98\03\00\00\00\00\00\00")
 (data (i32.const 936) "\04\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00")
 (data (i32.const 952) "\a8\03\00\00\01\00\00\00")
 (data (i32.const 960) "\08\00\00\00\00\00\00\00\02\00\00\00\01\00\00\00")
 (data (i32.const 976) "\c0\03\00\00\02\00\00\00")
 (data (i32.const 984) "\10\00\00\00\00\00\00\00\03\00\00\00\02\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1016) "\d8\03\00\00\04\00\00\00")
 (data (i32.const 1024) "\10\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1056) "\00\04\00\00\04\00\00\00")
 (data (i32.const 1064) "\04\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00")
 (data (i32.const 1080) "(\04\00\00\01\00\00\00")
 (data (i32.const 1088) "\08\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00")
 (data (i32.const 1104) "@\04\00\00\02\00\00\00")
 (data (i32.const 1112) "\01\00\00\00a\00")
 (data (i32.const 1120) "\01\00\00\00b\00")
 (data (i32.const 1128) "\02\00\00\00a\00b\00")
 (data (i32.const 1136) "\02\00\00\00b\00a\00")
 (data (i32.const 1144) "\00\00\00\00")
 (data (i32.const 1152) "\1c\00\00\00\00\00\00\00X\04\00\00`\04\00\00X\04\00\00h\04\00\00p\04\00\00x\04\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1216) "\80\04\00\00\07\00\00\00")
 (data (i32.const 1224) "\1c\00\00\00\00\00\00\00x\04\00\00X\04\00\00X\04\00\00h\04\00\00`\04\00\00p\04\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 1288) "\c8\04\00\00\07\00\00\00")
 (data (i32.const 1296) "\0e\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 1328) "\17\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 1384) "\04\00\00\00n\00u\00l\00l\00")
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $~lib/internal/arraybuffer/computeSize (; 2 ;) (type $ii) (param $0 i32) (result i32)
  (i32.shl
   (i32.const 1)
   (i32.sub
    (i32.const 32)
    (i32.clz
     (i32.sub
      (i32.add
       (get_local $0)
       (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
      )
      (i32.const 1)
     )
    )
   )
  )
 )
 (func $~lib/allocator/arena/__memory_allocate (; 3 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (if
   (i32.gt_u
    (get_local $0)
    (get_global $~lib/internal/allocator/MAX_SIZE_32)
   )
   (unreachable)
  )
  (set_local $1
   (get_global $~lib/allocator/arena/offset)
  )
  (set_local $4
   (i32.and
    (i32.add
     (i32.add
      (get_local $1)
      (select
       (tee_local $2
        (get_local $0)
       )
       (tee_local $3
        (i32.const 1)
       )
       (i32.gt_u
        (get_local $2)
        (get_local $3)
       )
      )
     )
     (get_global $~lib/internal/allocator/AL_MASK)
    )
    (i32.xor
     (get_global $~lib/internal/allocator/AL_MASK)
     (i32.const -1)
    )
   )
  )
  (set_local $5
   (current_memory)
  )
  (if
   (i32.gt_u
    (get_local $4)
    (i32.shl
     (get_local $5)
     (i32.const 16)
    )
   )
   (block
    (set_local $2
     (i32.shr_u
      (i32.and
       (i32.add
        (i32.sub
         (get_local $4)
         (get_local $1)
        )
        (i32.const 65535)
       )
       (i32.xor
        (i32.const 65535)
        (i32.const -1)
       )
      )
      (i32.const 16)
     )
    )
    (set_local $3
     (select
      (tee_local $3
       (get_local $5)
      )
      (tee_local $6
       (get_local $2)
      )
      (i32.gt_s
       (get_local $3)
       (get_local $6)
      )
     )
    )
    (if
     (i32.lt_s
      (grow_memory
       (get_local $3)
      )
      (i32.const 0)
     )
     (if
      (i32.lt_s
       (grow_memory
        (get_local $2)
       )
       (i32.const 0)
      )
      (unreachable)
     )
    )
   )
  )
  (set_global $~lib/allocator/arena/offset
   (get_local $4)
  )
  (get_local $1)
 )
 (func $~lib/internal/arraybuffer/allocateUnsafe (; 4 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (if
   (i32.eqz
    (i32.le_u
     (get_local $0)
     (get_global $~lib/internal/arraybuffer/MAX_BLENGTH)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 40)
     (i32.const 23)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (set_local $1
   (block $~lib/memory/memory.allocate|inlined.0 (result i32)
    (set_local $2
     (call $~lib/internal/arraybuffer/computeSize
      (get_local $0)
     )
    )
    (br $~lib/memory/memory.allocate|inlined.0
     (call $~lib/allocator/arena/__memory_allocate
      (get_local $2)
     )
    )
   )
  )
  (i32.store
   (get_local $1)
   (get_local $0)
  )
  (get_local $1)
 )
 (func $~lib/memory/memory.allocate (; 5 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (call $~lib/allocator/arena/__memory_allocate
    (get_local $0)
   )
  )
 )
 (func $~lib/internal/memory/memset (; 6 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (if
   (i32.eqz
    (get_local $2)
   )
   (return)
  )
  (i32.store8
   (get_local $0)
   (get_local $1)
  )
  (i32.store8
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 1)
   )
   (get_local $1)
  )
  (if
   (i32.le_u
    (get_local $2)
    (i32.const 2)
   )
   (return)
  )
  (i32.store8
   (i32.add
    (get_local $0)
    (i32.const 1)
   )
   (get_local $1)
  )
  (i32.store8
   (i32.add
    (get_local $0)
    (i32.const 2)
   )
   (get_local $1)
  )
  (i32.store8
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 2)
   )
   (get_local $1)
  )
  (i32.store8
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 3)
   )
   (get_local $1)
  )
  (if
   (i32.le_u
    (get_local $2)
    (i32.const 6)
   )
   (return)
  )
  (i32.store8
   (i32.add
    (get_local $0)
    (i32.const 3)
   )
   (get_local $1)
  )
  (i32.store8
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 4)
   )
   (get_local $1)
  )
  (if
   (i32.le_u
    (get_local $2)
    (i32.const 8)
   )
   (return)
  )
  (set_local $3
   (i32.and
    (i32.sub
     (i32.const 0)
     (get_local $0)
    )
    (i32.const 3)
   )
  )
  (set_local $0
   (i32.add
    (get_local $0)
    (get_local $3)
   )
  )
  (set_local $2
   (i32.sub
    (get_local $2)
    (get_local $3)
   )
  )
  (set_local $2
   (i32.and
    (get_local $2)
    (i32.const -4)
   )
  )
  (set_local $4
   (i32.mul
    (i32.div_u
     (i32.const -1)
     (i32.const 255)
    )
    (i32.and
     (get_local $1)
     (i32.const 255)
    )
   )
  )
  (i32.store
   (get_local $0)
   (get_local $4)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 4)
   )
   (get_local $4)
  )
  (if
   (i32.le_u
    (get_local $2)
    (i32.const 8)
   )
   (return)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (get_local $4)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (get_local $4)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 12)
   )
   (get_local $4)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 8)
   )
   (get_local $4)
  )
  (if
   (i32.le_u
    (get_local $2)
    (i32.const 24)
   )
   (return)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 12)
   )
   (get_local $4)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 16)
   )
   (get_local $4)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 20)
   )
   (get_local $4)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 24)
   )
   (get_local $4)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 28)
   )
   (get_local $4)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 24)
   )
   (get_local $4)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 20)
   )
   (get_local $4)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 16)
   )
   (get_local $4)
  )
  (set_local $3
   (i32.add
    (i32.const 24)
    (i32.and
     (get_local $0)
     (i32.const 4)
    )
   )
  )
  (set_local $0
   (i32.add
    (get_local $0)
    (get_local $3)
   )
  )
  (set_local $2
   (i32.sub
    (get_local $2)
    (get_local $3)
   )
  )
  (set_local $5
   (i64.or
    (i64.extend_u/i32
     (get_local $4)
    )
    (i64.shl
     (i64.extend_u/i32
      (get_local $4)
     )
     (i64.const 32)
    )
   )
  )
  (block $break|0
   (loop $continue|0
    (if
     (i32.ge_u
      (get_local $2)
      (i32.const 32)
     )
     (block
      (block
       (i64.store
        (get_local $0)
        (get_local $5)
       )
       (i64.store
        (i32.add
         (get_local $0)
         (i32.const 8)
        )
        (get_local $5)
       )
       (i64.store
        (i32.add
         (get_local $0)
         (i32.const 16)
        )
        (get_local $5)
       )
       (i64.store
        (i32.add
         (get_local $0)
         (i32.const 24)
        )
        (get_local $5)
       )
       (set_local $2
        (i32.sub
         (get_local $2)
         (i32.const 32)
        )
       )
       (set_local $0
        (i32.add
         (get_local $0)
         (i32.const 32)
        )
       )
      )
      (br $continue|0)
     )
    )
   )
  )
 )
 (func $~lib/array/Array<i32>#constructor (; 7 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (if
   (i32.gt_u
    (get_local $1)
    (i32.const 268435454)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 23)
     (i32.const 39)
    )
    (unreachable)
   )
  )
  (set_local $2
   (i32.shl
    (get_local $1)
    (i32.const 2)
   )
  )
  (set_local $3
   (call $~lib/internal/arraybuffer/allocateUnsafe
    (get_local $2)
   )
  )
  (i32.store
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $4
        (call $~lib/memory/memory.allocate
         (i32.const 8)
        )
       )
       (i32.store
        (get_local $4)
        (i32.const 0)
       )
       (i32.store offset=4
        (get_local $4)
        (i32.const 0)
       )
       (get_local $4)
      )
     )
    )
   )
   (get_local $3)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $1)
  )
  (block $~lib/memory/memory.fill|inlined.0
   (set_local $4
    (i32.add
     (get_local $3)
     (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
    )
   )
   (set_local $5
    (i32.const 0)
   )
   (call $~lib/internal/memory/memset
    (get_local $4)
    (get_local $5)
    (get_local $2)
   )
  )
  (get_local $0)
 )
 (func $std/array/internalCapacity<i32> (; 8 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (set_local $1
   (i32.load
    (get_local $0)
   )
  )
  (i32.shr_s
   (i32.load
    (get_local $1)
   )
   (i32.const 2)
  )
 )
 (func $~lib/internal/memory/memcpy (; 9 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (block $break|0
   (loop $continue|0
    (if
     (if (result i32)
      (get_local $2)
      (i32.and
       (get_local $1)
       (i32.const 3)
      )
      (get_local $2)
     )
     (block
      (block
       (i32.store8
        (block (result i32)
         (set_local $5
          (get_local $0)
         )
         (set_local $0
          (i32.add
           (get_local $5)
           (i32.const 1)
          )
         )
         (get_local $5)
        )
        (i32.load8_u
         (block (result i32)
          (set_local $5
           (get_local $1)
          )
          (set_local $1
           (i32.add
            (get_local $5)
            (i32.const 1)
           )
          )
          (get_local $5)
         )
        )
       )
       (set_local $2
        (i32.sub
         (get_local $2)
         (i32.const 1)
        )
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  (if
   (i32.eq
    (i32.and
     (get_local $0)
     (i32.const 3)
    )
    (i32.const 0)
   )
   (block
    (block $break|1
     (loop $continue|1
      (if
       (i32.ge_u
        (get_local $2)
        (i32.const 16)
       )
       (block
        (block
         (i32.store
          (get_local $0)
          (i32.load
           (get_local $1)
          )
         )
         (i32.store
          (i32.add
           (get_local $0)
           (i32.const 4)
          )
          (i32.load
           (i32.add
            (get_local $1)
            (i32.const 4)
           )
          )
         )
         (i32.store
          (i32.add
           (get_local $0)
           (i32.const 8)
          )
          (i32.load
           (i32.add
            (get_local $1)
            (i32.const 8)
           )
          )
         )
         (i32.store
          (i32.add
           (get_local $0)
           (i32.const 12)
          )
          (i32.load
           (i32.add
            (get_local $1)
            (i32.const 12)
           )
          )
         )
         (set_local $1
          (i32.add
           (get_local $1)
           (i32.const 16)
          )
         )
         (set_local $0
          (i32.add
           (get_local $0)
           (i32.const 16)
          )
         )
         (set_local $2
          (i32.sub
           (get_local $2)
           (i32.const 16)
          )
         )
        )
        (br $continue|1)
       )
      )
     )
    )
    (if
     (i32.and
      (get_local $2)
      (i32.const 8)
     )
     (block
      (i32.store
       (get_local $0)
       (i32.load
        (get_local $1)
       )
      )
      (i32.store
       (i32.add
        (get_local $0)
        (i32.const 4)
       )
       (i32.load
        (i32.add
         (get_local $1)
         (i32.const 4)
        )
       )
      )
      (set_local $0
       (i32.add
        (get_local $0)
        (i32.const 8)
       )
      )
      (set_local $1
       (i32.add
        (get_local $1)
        (i32.const 8)
       )
      )
     )
    )
    (if
     (i32.and
      (get_local $2)
      (i32.const 4)
     )
     (block
      (i32.store
       (get_local $0)
       (i32.load
        (get_local $1)
       )
      )
      (set_local $0
       (i32.add
        (get_local $0)
        (i32.const 4)
       )
      )
      (set_local $1
       (i32.add
        (get_local $1)
        (i32.const 4)
       )
      )
     )
    )
    (if
     (i32.and
      (get_local $2)
      (i32.const 2)
     )
     (block
      (i32.store16
       (get_local $0)
       (i32.load16_u
        (get_local $1)
       )
      )
      (set_local $0
       (i32.add
        (get_local $0)
        (i32.const 2)
       )
      )
      (set_local $1
       (i32.add
        (get_local $1)
        (i32.const 2)
       )
      )
     )
    )
    (if
     (i32.and
      (get_local $2)
      (i32.const 1)
     )
     (i32.store8
      (block (result i32)
       (set_local $5
        (get_local $0)
       )
       (set_local $0
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
      (i32.load8_u
       (block (result i32)
        (set_local $5
         (get_local $1)
        )
        (set_local $1
         (i32.add
          (get_local $5)
          (i32.const 1)
         )
        )
        (get_local $5)
       )
      )
     )
    )
    (return)
   )
  )
  (if
   (i32.ge_u
    (get_local $2)
    (i32.const 32)
   )
   (block $break|2
    (block $case2|2
     (block $case1|2
      (block $case0|2
       (set_local $5
        (i32.and
         (get_local $0)
         (i32.const 3)
        )
       )
       (br_if $case0|2
        (i32.eq
         (get_local $5)
         (i32.const 1)
        )
       )
       (br_if $case1|2
        (i32.eq
         (get_local $5)
         (i32.const 2)
        )
       )
       (br_if $case2|2
        (i32.eq
         (get_local $5)
         (i32.const 3)
        )
       )
       (br $break|2)
      )
      (block
       (set_local $3
        (i32.load
         (get_local $1)
        )
       )
       (i32.store8
        (block (result i32)
         (set_local $5
          (get_local $0)
         )
         (set_local $0
          (i32.add
           (get_local $5)
           (i32.const 1)
          )
         )
         (get_local $5)
        )
        (i32.load8_u
         (block (result i32)
          (set_local $5
           (get_local $1)
          )
          (set_local $1
           (i32.add
            (get_local $5)
            (i32.const 1)
           )
          )
          (get_local $5)
         )
        )
       )
       (i32.store8
        (block (result i32)
         (set_local $5
          (get_local $0)
         )
         (set_local $0
          (i32.add
           (get_local $5)
           (i32.const 1)
          )
         )
         (get_local $5)
        )
        (i32.load8_u
         (block (result i32)
          (set_local $5
           (get_local $1)
          )
          (set_local $1
           (i32.add
            (get_local $5)
            (i32.const 1)
           )
          )
          (get_local $5)
         )
        )
       )
       (i32.store8
        (block (result i32)
         (set_local $5
          (get_local $0)
         )
         (set_local $0
          (i32.add
           (get_local $5)
           (i32.const 1)
          )
         )
         (get_local $5)
        )
        (i32.load8_u
         (block (result i32)
          (set_local $5
           (get_local $1)
          )
          (set_local $1
           (i32.add
            (get_local $5)
            (i32.const 1)
           )
          )
          (get_local $5)
         )
        )
       )
       (set_local $2
        (i32.sub
         (get_local $2)
         (i32.const 3)
        )
       )
       (block $break|3
        (loop $continue|3
         (if
          (i32.ge_u
           (get_local $2)
           (i32.const 17)
          )
          (block
           (block
            (set_local $4
             (i32.load
              (i32.add
               (get_local $1)
               (i32.const 1)
              )
             )
            )
            (i32.store
             (get_local $0)
             (i32.or
              (i32.shr_u
               (get_local $3)
               (i32.const 24)
              )
              (i32.shl
               (get_local $4)
               (i32.const 8)
              )
             )
            )
            (set_local $3
             (i32.load
              (i32.add
               (get_local $1)
               (i32.const 5)
              )
             )
            )
            (i32.store
             (i32.add
              (get_local $0)
              (i32.const 4)
             )
             (i32.or
              (i32.shr_u
               (get_local $4)
               (i32.const 24)
              )
              (i32.shl
               (get_local $3)
               (i32.const 8)
              )
             )
            )
            (set_local $4
             (i32.load
              (i32.add
               (get_local $1)
               (i32.const 9)
              )
             )
            )
            (i32.store
             (i32.add
              (get_local $0)
              (i32.const 8)
             )
             (i32.or
              (i32.shr_u
               (get_local $3)
               (i32.const 24)
              )
              (i32.shl
               (get_local $4)
               (i32.const 8)
              )
             )
            )
            (set_local $3
             (i32.load
              (i32.add
               (get_local $1)
               (i32.const 13)
              )
             )
            )
            (i32.store
             (i32.add
              (get_local $0)
              (i32.const 12)
             )
             (i32.or
              (i32.shr_u
               (get_local $4)
               (i32.const 24)
              )
              (i32.shl
               (get_local $3)
               (i32.const 8)
              )
             )
            )
            (set_local $1
             (i32.add
              (get_local $1)
              (i32.const 16)
             )
            )
            (set_local $0
             (i32.add
              (get_local $0)
              (i32.const 16)
             )
            )
            (set_local $2
             (i32.sub
              (get_local $2)
              (i32.const 16)
             )
            )
           )
           (br $continue|3)
          )
         )
        )
       )
       (br $break|2)
      )
     )
     (block
      (set_local $3
       (i32.load
        (get_local $1)
       )
      )
      (i32.store8
       (block (result i32)
        (set_local $5
         (get_local $0)
        )
        (set_local $0
         (i32.add
          (get_local $5)
          (i32.const 1)
         )
        )
        (get_local $5)
       )
       (i32.load8_u
        (block (result i32)
         (set_local $5
          (get_local $1)
         )
         (set_local $1
          (i32.add
           (get_local $5)
           (i32.const 1)
          )
         )
         (get_local $5)
        )
       )
      )
      (i32.store8
       (block (result i32)
        (set_local $5
         (get_local $0)
        )
        (set_local $0
         (i32.add
          (get_local $5)
          (i32.const 1)
         )
        )
        (get_local $5)
       )
       (i32.load8_u
        (block (result i32)
         (set_local $5
          (get_local $1)
         )
         (set_local $1
          (i32.add
           (get_local $5)
           (i32.const 1)
          )
         )
         (get_local $5)
        )
       )
      )
      (set_local $2
       (i32.sub
        (get_local $2)
        (i32.const 2)
       )
      )
      (block $break|4
       (loop $continue|4
        (if
         (i32.ge_u
          (get_local $2)
          (i32.const 18)
         )
         (block
          (block
           (set_local $4
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 2)
             )
            )
           )
           (i32.store
            (get_local $0)
            (i32.or
             (i32.shr_u
              (get_local $3)
              (i32.const 16)
             )
             (i32.shl
              (get_local $4)
              (i32.const 16)
             )
            )
           )
           (set_local $3
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 6)
             )
            )
           )
           (i32.store
            (i32.add
             (get_local $0)
             (i32.const 4)
            )
            (i32.or
             (i32.shr_u
              (get_local $4)
              (i32.const 16)
             )
             (i32.shl
              (get_local $3)
              (i32.const 16)
             )
            )
           )
           (set_local $4
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 10)
             )
            )
           )
           (i32.store
            (i32.add
             (get_local $0)
             (i32.const 8)
            )
            (i32.or
             (i32.shr_u
              (get_local $3)
              (i32.const 16)
             )
             (i32.shl
              (get_local $4)
              (i32.const 16)
             )
            )
           )
           (set_local $3
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 14)
             )
            )
           )
           (i32.store
            (i32.add
             (get_local $0)
             (i32.const 12)
            )
            (i32.or
             (i32.shr_u
              (get_local $4)
              (i32.const 16)
             )
             (i32.shl
              (get_local $3)
              (i32.const 16)
             )
            )
           )
           (set_local $1
            (i32.add
             (get_local $1)
             (i32.const 16)
            )
           )
           (set_local $0
            (i32.add
             (get_local $0)
             (i32.const 16)
            )
           )
           (set_local $2
            (i32.sub
             (get_local $2)
             (i32.const 16)
            )
           )
          )
          (br $continue|4)
         )
        )
       )
      )
      (br $break|2)
     )
    )
    (block
     (set_local $3
      (i32.load
       (get_local $1)
      )
     )
     (i32.store8
      (block (result i32)
       (set_local $5
        (get_local $0)
       )
       (set_local $0
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
      (i32.load8_u
       (block (result i32)
        (set_local $5
         (get_local $1)
        )
        (set_local $1
         (i32.add
          (get_local $5)
          (i32.const 1)
         )
        )
        (get_local $5)
       )
      )
     )
     (set_local $2
      (i32.sub
       (get_local $2)
       (i32.const 1)
      )
     )
     (block $break|5
      (loop $continue|5
       (if
        (i32.ge_u
         (get_local $2)
         (i32.const 19)
        )
        (block
         (block
          (set_local $4
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 3)
            )
           )
          )
          (i32.store
           (get_local $0)
           (i32.or
            (i32.shr_u
             (get_local $3)
             (i32.const 8)
            )
            (i32.shl
             (get_local $4)
             (i32.const 24)
            )
           )
          )
          (set_local $3
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 7)
            )
           )
          )
          (i32.store
           (i32.add
            (get_local $0)
            (i32.const 4)
           )
           (i32.or
            (i32.shr_u
             (get_local $4)
             (i32.const 8)
            )
            (i32.shl
             (get_local $3)
             (i32.const 24)
            )
           )
          )
          (set_local $4
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 11)
            )
           )
          )
          (i32.store
           (i32.add
            (get_local $0)
            (i32.const 8)
           )
           (i32.or
            (i32.shr_u
             (get_local $3)
             (i32.const 8)
            )
            (i32.shl
             (get_local $4)
             (i32.const 24)
            )
           )
          )
          (set_local $3
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 15)
            )
           )
          )
          (i32.store
           (i32.add
            (get_local $0)
            (i32.const 12)
           )
           (i32.or
            (i32.shr_u
             (get_local $4)
             (i32.const 8)
            )
            (i32.shl
             (get_local $3)
             (i32.const 24)
            )
           )
          )
          (set_local $1
           (i32.add
            (get_local $1)
            (i32.const 16)
           )
          )
          (set_local $0
           (i32.add
            (get_local $0)
            (i32.const 16)
           )
          )
          (set_local $2
           (i32.sub
            (get_local $2)
            (i32.const 16)
           )
          )
         )
         (br $continue|5)
        )
       )
      )
     )
     (br $break|2)
    )
   )
  )
  (if
   (i32.and
    (get_local $2)
    (i32.const 16)
   )
   (block
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
   )
  )
  (if
   (i32.and
    (get_local $2)
    (i32.const 8)
   )
   (block
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
   )
  )
  (if
   (i32.and
    (get_local $2)
    (i32.const 4)
   )
   (block
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
   )
  )
  (if
   (i32.and
    (get_local $2)
    (i32.const 2)
   )
   (block
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
    (i32.store8
     (block (result i32)
      (set_local $5
       (get_local $0)
      )
      (set_local $0
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
     (i32.load8_u
      (block (result i32)
       (set_local $5
        (get_local $1)
       )
       (set_local $1
        (i32.add
         (get_local $5)
         (i32.const 1)
        )
       )
       (get_local $5)
      )
     )
    )
   )
  )
  (if
   (i32.and
    (get_local $2)
    (i32.const 1)
   )
   (i32.store8
    (block (result i32)
     (set_local $5
      (get_local $0)
     )
     (set_local $0
      (i32.add
       (get_local $5)
       (i32.const 1)
      )
     )
     (get_local $5)
    )
    (i32.load8_u
     (block (result i32)
      (set_local $5
       (get_local $1)
      )
      (set_local $1
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (get_local $5)
     )
    )
   )
  )
 )
 (func $~lib/internal/memory/memmove (; 10 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (if
   (i32.eq
    (get_local $0)
    (get_local $1)
   )
   (return)
  )
  (if
   (if (result i32)
    (tee_local $3
     (i32.le_u
      (i32.add
       (get_local $1)
       (get_local $2)
      )
      (get_local $0)
     )
    )
    (get_local $3)
    (i32.le_u
     (i32.add
      (get_local $0)
      (get_local $2)
     )
     (get_local $1)
    )
   )
   (block
    (call $~lib/internal/memory/memcpy
     (get_local $0)
     (get_local $1)
     (get_local $2)
    )
    (return)
   )
  )
  (if
   (i32.lt_u
    (get_local $0)
    (get_local $1)
   )
   (block
    (if
     (i32.eq
      (i32.and
       (get_local $1)
       (i32.const 7)
      )
      (i32.and
       (get_local $0)
       (i32.const 7)
      )
     )
     (block
      (block $break|0
       (loop $continue|0
        (if
         (i32.and
          (get_local $0)
          (i32.const 7)
         )
         (block
          (block
           (if
            (i32.eqz
             (get_local $2)
            )
            (return)
           )
           (set_local $2
            (i32.sub
             (get_local $2)
             (i32.const 1)
            )
           )
           (i32.store8
            (block (result i32)
             (set_local $3
              (get_local $0)
             )
             (set_local $0
              (i32.add
               (get_local $3)
               (i32.const 1)
              )
             )
             (get_local $3)
            )
            (i32.load8_u
             (block (result i32)
              (set_local $3
               (get_local $1)
              )
              (set_local $1
               (i32.add
                (get_local $3)
                (i32.const 1)
               )
              )
              (get_local $3)
             )
            )
           )
          )
          (br $continue|0)
         )
        )
       )
      )
      (block $break|1
       (loop $continue|1
        (if
         (i32.ge_u
          (get_local $2)
          (i32.const 8)
         )
         (block
          (block
           (i64.store
            (get_local $0)
            (i64.load
             (get_local $1)
            )
           )
           (set_local $2
            (i32.sub
             (get_local $2)
             (i32.const 8)
            )
           )
           (set_local $0
            (i32.add
             (get_local $0)
             (i32.const 8)
            )
           )
           (set_local $1
            (i32.add
             (get_local $1)
             (i32.const 8)
            )
           )
          )
          (br $continue|1)
         )
        )
       )
      )
     )
    )
    (block $break|2
     (loop $continue|2
      (if
       (get_local $2)
       (block
        (block
         (i32.store8
          (block (result i32)
           (set_local $3
            (get_local $0)
           )
           (set_local $0
            (i32.add
             (get_local $3)
             (i32.const 1)
            )
           )
           (get_local $3)
          )
          (i32.load8_u
           (block (result i32)
            (set_local $3
             (get_local $1)
            )
            (set_local $1
             (i32.add
              (get_local $3)
              (i32.const 1)
             )
            )
            (get_local $3)
           )
          )
         )
         (set_local $2
          (i32.sub
           (get_local $2)
           (i32.const 1)
          )
         )
        )
        (br $continue|2)
       )
      )
     )
    )
   )
   (block
    (if
     (i32.eq
      (i32.and
       (get_local $1)
       (i32.const 7)
      )
      (i32.and
       (get_local $0)
       (i32.const 7)
      )
     )
     (block
      (block $break|3
       (loop $continue|3
        (if
         (i32.and
          (i32.add
           (get_local $0)
           (get_local $2)
          )
          (i32.const 7)
         )
         (block
          (block
           (if
            (i32.eqz
             (get_local $2)
            )
            (return)
           )
           (i32.store8
            (i32.add
             (get_local $0)
             (tee_local $2
              (i32.sub
               (get_local $2)
               (i32.const 1)
              )
             )
            )
            (i32.load8_u
             (i32.add
              (get_local $1)
              (get_local $2)
             )
            )
           )
          )
          (br $continue|3)
         )
        )
       )
      )
      (block $break|4
       (loop $continue|4
        (if
         (i32.ge_u
          (get_local $2)
          (i32.const 8)
         )
         (block
          (block
           (set_local $2
            (i32.sub
             (get_local $2)
             (i32.const 8)
            )
           )
           (i64.store
            (i32.add
             (get_local $0)
             (get_local $2)
            )
            (i64.load
             (i32.add
              (get_local $1)
              (get_local $2)
             )
            )
           )
          )
          (br $continue|4)
         )
        )
       )
      )
     )
    )
    (block $break|5
     (loop $continue|5
      (if
       (get_local $2)
       (block
        (i32.store8
         (i32.add
          (get_local $0)
          (tee_local $2
           (i32.sub
            (get_local $2)
            (i32.const 1)
           )
          )
         )
         (i32.load8_u
          (i32.add
           (get_local $1)
           (get_local $2)
          )
         )
        )
        (br $continue|5)
       )
      )
     )
    )
   )
  )
 )
 (func $~lib/internal/arraybuffer/reallocateUnsafe (; 11 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (if
   (i32.gt_s
    (get_local $1)
    (get_local $2)
   )
   (block
    (if
     (i32.eqz
      (i32.le_s
       (get_local $1)
       (get_global $~lib/internal/arraybuffer/MAX_BLENGTH)
      )
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 40)
       (i32.const 37)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    (if
     (i32.le_s
      (get_local $1)
      (i32.sub
       (call $~lib/internal/arraybuffer/computeSize
        (get_local $2)
       )
       (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
      )
     )
     (block
      (i32.store
       (get_local $0)
       (get_local $1)
      )
      (block $~lib/memory/memory.fill|inlined.1
       (set_local $3
        (i32.add
         (i32.add
          (get_local $0)
          (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
         )
         (get_local $2)
        )
       )
       (set_local $4
        (i32.const 0)
       )
       (set_local $5
        (i32.sub
         (get_local $1)
         (get_local $2)
        )
       )
       (call $~lib/internal/memory/memset
        (get_local $3)
        (get_local $4)
        (get_local $5)
       )
      )
     )
     (block
      (set_local $5
       (call $~lib/internal/arraybuffer/allocateUnsafe
        (get_local $1)
       )
      )
      (block $~lib/memory/memory.copy|inlined.0
       (set_local $4
        (i32.add
         (get_local $5)
         (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
        )
       )
       (set_local $3
        (i32.add
         (get_local $0)
         (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
        )
       )
       (call $~lib/internal/memory/memmove
        (get_local $4)
        (get_local $3)
        (get_local $2)
       )
      )
      (block $~lib/memory/memory.fill|inlined.2
       (set_local $3
        (i32.add
         (i32.add
          (get_local $5)
          (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
         )
         (get_local $2)
        )
       )
       (set_local $4
        (i32.const 0)
       )
       (set_local $6
        (i32.sub
         (get_local $1)
         (get_local $2)
        )
       )
       (call $~lib/internal/memory/memset
        (get_local $3)
        (get_local $4)
        (get_local $6)
       )
      )
      (return
       (get_local $5)
      )
     )
    )
   )
   (if
    (i32.lt_s
     (get_local $1)
     (get_local $2)
    )
    (block
     (if
      (i32.eqz
       (i32.ge_s
        (get_local $1)
        (i32.const 0)
       )
      )
      (block
       (call $~lib/env/abort
        (i32.const 0)
        (i32.const 40)
        (i32.const 61)
        (i32.const 4)
       )
       (unreachable)
      )
     )
     (i32.store
      (get_local $0)
      (get_local $1)
     )
    )
   )
  )
  (get_local $0)
 )
 (func $~lib/array/Array<i32>#push (; 12 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $2
   (i32.load offset=4
    (get_local $0)
   )
  )
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (set_local $4
   (i32.shr_u
    (i32.load
     (get_local $3)
    )
    (i32.const 2)
   )
  )
  (set_local $5
   (i32.add
    (get_local $2)
    (i32.const 1)
   )
  )
  (if
   (i32.ge_u
    (get_local $2)
    (get_local $4)
   )
   (block
    (if
     (i32.ge_u
      (get_local $2)
      (i32.const 268435454)
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 8)
       (i32.const 146)
       (i32.const 42)
      )
      (unreachable)
     )
    )
    (set_local $3
     (call $~lib/internal/arraybuffer/reallocateUnsafe
      (get_local $3)
      (i32.shl
       (get_local $5)
       (i32.const 2)
      )
     )
    )
    (i32.store
     (get_local $0)
     (get_local $3)
    )
   )
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $5)
  )
  (block $~lib/internal/arraybuffer/storeUnsafe<i32,i32>|inlined.0
   (i32.store offset=8
    (i32.add
     (get_local $3)
     (i32.shl
      (get_local $2)
      (i32.const 2)
     )
    )
    (get_local $1)
   )
  )
  (get_local $5)
 )
 (func $~lib/array/Array<i32>#__get (; 13 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (if (result i32)
   (i32.lt_u
    (get_local $1)
    (i32.shr_u
     (i32.load
      (get_local $2)
     )
     (i32.const 2)
    )
   )
   (block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.0 (result i32)
    (i32.load offset=8
     (i32.add
      (get_local $2)
      (i32.shl
       (get_local $1)
       (i32.const 2)
      )
     )
    )
   )
   (unreachable)
  )
 )
 (func $~lib/array/Array<i32>#pop (; 14 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $1
   (i32.load offset=4
    (get_local $0)
   )
  )
  (if
   (i32.lt_s
    (get_local $1)
    (i32.const 1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 158)
     (i32.const 20)
    )
    (unreachable)
   )
  )
  (set_local $4
   (block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.1 (result i32)
    (set_local $2
     (i32.load
      (get_local $0)
     )
    )
    (set_local $3
     (tee_local $1
      (i32.sub
       (get_local $1)
       (i32.const 1)
      )
     )
    )
    (i32.load offset=8
     (i32.add
      (get_local $2)
      (i32.shl
       (get_local $3)
       (i32.const 2)
      )
     )
    )
   )
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $1)
  )
  (get_local $4)
 )
 (func $~lib/array/Array<i32>#unshift (; 15 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (set_local $3
   (i32.shr_u
    (i32.load
     (get_local $2)
    )
    (i32.const 2)
   )
  )
  (set_local $4
   (i32.load offset=4
    (get_local $0)
   )
  )
  (set_local $5
   (i32.add
    (get_local $4)
    (i32.const 1)
   )
  )
  (if
   (i32.ge_u
    (get_local $4)
    (get_local $3)
   )
   (block
    (if
     (i32.ge_u
      (get_local $4)
      (i32.const 268435454)
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 8)
       (i32.const 248)
       (i32.const 42)
      )
      (unreachable)
     )
    )
    (set_local $2
     (call $~lib/internal/arraybuffer/reallocateUnsafe
      (get_local $2)
      (i32.shl
       (get_local $5)
       (i32.const 2)
      )
     )
    )
    (set_local $3
     (i32.shr_u
      (i32.load
       (get_local $2)
      )
      (i32.const 2)
     )
    )
    (i32.store
     (get_local $0)
     (get_local $2)
    )
   )
  )
  (block $~lib/memory/memory.copy|inlined.1
   (set_local $6
    (i32.add
     (i32.add
      (get_local $2)
      (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
     )
     (i32.const 4)
    )
   )
   (set_local $7
    (i32.add
     (get_local $2)
     (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
    )
   )
   (set_local $8
    (i32.shl
     (i32.sub
      (get_local $3)
      (i32.const 1)
     )
     (i32.const 2)
    )
   )
   (call $~lib/internal/memory/memmove
    (get_local $6)
    (get_local $7)
    (get_local $8)
   )
  )
  (block $~lib/internal/arraybuffer/storeUnsafe<i32,i32>|inlined.1
   (set_local $8
    (i32.const 0)
   )
   (i32.store offset=8
    (i32.add
     (get_local $2)
     (i32.shl
      (get_local $8)
      (i32.const 2)
     )
    )
    (get_local $1)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $5)
  )
  (get_local $5)
 )
 (func $~lib/array/Array<i32>#shift (; 16 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (set_local $1
   (i32.load offset=4
    (get_local $0)
   )
  )
  (if
   (i32.lt_s
    (get_local $1)
    (i32.const 1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 219)
     (i32.const 20)
    )
    (unreachable)
   )
  )
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (set_local $4
   (block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.2 (result i32)
    (set_local $3
     (i32.const 0)
    )
    (i32.load offset=8
     (i32.add
      (get_local $2)
      (i32.shl
       (get_local $3)
       (i32.const 2)
      )
     )
    )
   )
  )
  (set_local $5
   (i32.sub
    (get_local $1)
    (i32.const 1)
   )
  )
  (block $~lib/memory/memory.copy|inlined.2
   (set_local $3
    (i32.add
     (get_local $2)
     (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
    )
   )
   (set_local $6
    (i32.add
     (i32.add
      (get_local $2)
      (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
     )
     (i32.const 4)
    )
   )
   (set_local $7
    (i32.shl
     (get_local $5)
     (i32.const 2)
    )
   )
   (call $~lib/internal/memory/memmove
    (get_local $3)
    (get_local $6)
    (get_local $7)
   )
  )
  (block $~lib/internal/arraybuffer/storeUnsafe<i32,i32>|inlined.2
   (set_local $7
    (i32.const 0)
   )
   (i32.store offset=8
    (i32.add
     (get_local $2)
     (i32.shl
      (get_local $5)
      (i32.const 2)
     )
    )
    (get_local $7)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $5)
  )
  (get_local $4)
 )
 (func $~lib/array/Array<i32>#reverse (; 17 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $1
   (i32.load
    (get_local $0)
   )
  )
  (block $break|0
   (block
    (set_local $2
     (i32.const 0)
    )
    (set_local $3
     (i32.sub
      (i32.load offset=4
       (get_local $0)
      )
      (i32.const 1)
     )
    )
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $2)
       (get_local $3)
      )
     )
    )
    (block
     (set_local $4
      (block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.3 (result i32)
       (i32.load offset=8
        (i32.add
         (get_local $1)
         (i32.shl
          (get_local $2)
          (i32.const 2)
         )
        )
       )
      )
     )
     (block $~lib/internal/arraybuffer/storeUnsafe<i32,i32>|inlined.3
      (set_local $5
       (block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.4 (result i32)
        (i32.load offset=8
         (i32.add
          (get_local $1)
          (i32.shl
           (get_local $3)
           (i32.const 2)
          )
         )
        )
       )
      )
      (i32.store offset=8
       (i32.add
        (get_local $1)
        (i32.shl
         (get_local $2)
         (i32.const 2)
        )
       )
       (get_local $5)
      )
     )
     (block $~lib/internal/arraybuffer/storeUnsafe<i32,i32>|inlined.4
      (i32.store offset=8
       (i32.add
        (get_local $1)
        (i32.shl
         (get_local $3)
         (i32.const 2)
        )
       )
       (get_local $4)
      )
     )
    )
    (block
     (set_local $2
      (i32.add
       (get_local $2)
       (i32.const 1)
      )
     )
     (set_local $3
      (i32.sub
       (get_local $3)
       (i32.const 1)
      )
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $0)
 )
 (func $~lib/array/Array<i32>#indexOf (; 18 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $3
   (i32.load offset=4
    (get_local $0)
   )
  )
  (if
   (if (result i32)
    (tee_local $4
     (i32.eq
      (get_local $3)
      (i32.const 0)
     )
    )
    (get_local $4)
    (i32.ge_s
     (get_local $2)
     (get_local $3)
    )
   )
   (return
    (i32.const -1)
   )
  )
  (if
   (i32.lt_s
    (get_local $2)
    (i32.const 0)
   )
   (set_local $2
    (select
     (tee_local $4
      (i32.add
       (get_local $3)
       (get_local $2)
      )
     )
     (tee_local $5
      (i32.const 0)
     )
     (i32.gt_s
      (get_local $4)
      (get_local $5)
     )
    )
   )
  )
  (set_local $6
   (i32.load
    (get_local $0)
   )
  )
  (block $break|0
   (loop $continue|0
    (if
     (i32.lt_s
      (get_local $2)
      (get_local $3)
     )
     (block
      (block
       (if
        (i32.eq
         (block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.6 (result i32)
          (i32.load offset=8
           (i32.add
            (get_local $6)
            (i32.shl
             (get_local $2)
             (i32.const 2)
            )
           )
          )
         )
         (get_local $1)
        )
        (return
         (get_local $2)
        )
       )
       (set_local $2
        (i32.add
         (get_local $2)
         (i32.const 1)
        )
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  (i32.const -1)
 )
 (func $~lib/array/Array<i32>#includes (; 19 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $3
   (i32.load offset=4
    (get_local $0)
   )
  )
  (if
   (if (result i32)
    (tee_local $4
     (i32.eq
      (get_local $3)
      (i32.const 0)
     )
    )
    (get_local $4)
    (i32.ge_s
     (get_local $2)
     (get_local $3)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (if
   (i32.lt_s
    (get_local $2)
    (i32.const 0)
   )
   (set_local $2
    (select
     (tee_local $4
      (i32.add
       (get_local $3)
       (get_local $2)
      )
     )
     (tee_local $5
      (i32.const 0)
     )
     (i32.gt_s
      (get_local $4)
      (get_local $5)
     )
    )
   )
  )
  (set_local $6
   (i32.load
    (get_local $0)
   )
  )
  (block $break|0
   (loop $continue|0
    (if
     (i32.lt_s
      (get_local $2)
      (get_local $3)
     )
     (block
      (block
       (if
        (i32.eq
         (block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.8 (result i32)
          (i32.load offset=8
           (i32.add
            (get_local $6)
            (i32.shl
             (get_local $2)
             (i32.const 2)
            )
           )
          )
         )
         (get_local $1)
        )
        (return
         (i32.const 1)
        )
       )
       (set_local $2
        (i32.add
         (get_local $2)
         (i32.const 1)
        )
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  (i32.const 0)
 )
 (func $~lib/array/Array<i32>#splice (; 20 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (if
   (i32.lt_s
    (get_local $2)
    (i32.const 1)
   )
   (return)
  )
  (set_local $3
   (i32.load offset=4
    (get_local $0)
   )
  )
  (if
   (i32.lt_s
    (get_local $1)
    (i32.const 0)
   )
   (set_local $1
    (select
     (tee_local $4
      (i32.add
       (get_local $3)
       (get_local $1)
      )
     )
     (tee_local $5
      (i32.const 0)
     )
     (i32.gt_s
      (get_local $4)
      (get_local $5)
     )
    )
   )
  )
  (if
   (i32.ge_s
    (get_local $1)
    (get_local $3)
   )
   (return)
  )
  (set_local $2
   (select
    (tee_local $4
     (get_local $2)
    )
    (tee_local $5
     (i32.sub
      (get_local $3)
      (get_local $1)
     )
    )
    (i32.lt_s
     (get_local $4)
     (get_local $5)
    )
   )
  )
  (set_local $6
   (i32.load
    (get_local $0)
   )
  )
  (block $~lib/memory/memory.copy|inlined.3
   (set_local $4
    (i32.add
     (i32.add
      (get_local $6)
      (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
     )
     (i32.shl
      (get_local $1)
      (i32.const 2)
     )
    )
   )
   (set_local $5
    (i32.add
     (i32.add
      (get_local $6)
      (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
     )
     (i32.shl
      (i32.add
       (get_local $1)
       (get_local $2)
      )
      (i32.const 2)
     )
    )
   )
   (set_local $7
    (i32.shl
     (get_local $2)
     (i32.const 2)
    )
   )
   (call $~lib/internal/memory/memmove
    (get_local $4)
    (get_local $5)
    (get_local $7)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (i32.sub
    (get_local $3)
    (get_local $2)
   )
  )
 )
 (func $~lib/array/Array<i32>#__set (; 21 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (set_local $4
   (i32.shr_u
    (i32.load
     (get_local $3)
    )
    (i32.const 2)
   )
  )
  (if
   (i32.ge_u
    (get_local $1)
    (get_local $4)
   )
   (block
    (if
     (i32.ge_u
      (get_local $1)
      (i32.const 268435454)
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 8)
       (i32.const 87)
       (i32.const 41)
      )
      (unreachable)
     )
    )
    (set_local $3
     (call $~lib/internal/arraybuffer/reallocateUnsafe
      (get_local $3)
      (i32.shl
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
       (i32.const 2)
      )
     )
    )
    (i32.store
     (get_local $0)
     (get_local $3)
    )
    (i32.store offset=4
     (get_local $0)
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
   )
  )
  (block $~lib/internal/arraybuffer/storeUnsafe<i32,i32>|inlined.5
   (i32.store offset=8
    (i32.add
     (get_local $3)
     (i32.shl
      (get_local $1)
      (i32.const 2)
     )
    )
    (get_local $2)
   )
  )
 )
 (func $start~anonymous|0 (; 22 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.eq
   (get_local $0)
   (i32.const 0)
  )
 )
 (func $~lib/array/Array<i32>#findIndex (; 23 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (block $break|0
   (block
    (set_local $3
     (i32.const 0)
    )
    (set_local $4
     (i32.load offset=4
      (get_local $0)
     )
    )
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (if (result i32)
       (tee_local $5
        (i32.lt_s
         (get_local $3)
         (get_local $4)
        )
       )
       (i32.lt_s
        (get_local $3)
        (i32.load offset=4
         (get_local $0)
        )
       )
       (get_local $5)
      )
     )
    )
    (if
     (i32.and
      (block (result i32)
       (set_global $~argc
        (i32.const 3)
       )
       (call_indirect (type $iiii)
        (block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.10 (result i32)
         (i32.load offset=8
          (i32.add
           (get_local $2)
           (i32.shl
            (get_local $3)
            (i32.const 2)
           )
          )
         )
        )
        (get_local $3)
        (get_local $0)
        (get_local $1)
       )
      )
      (i32.const 1)
     )
     (return
      (get_local $3)
     )
    )
    (set_local $3
     (i32.add
      (get_local $3)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (i32.const -1)
 )
 (func $start~anonymous|1 (; 24 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.eq
   (get_local $0)
   (i32.const 1)
  )
 )
 (func $start~anonymous|2 (; 25 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.eq
   (get_local $0)
   (i32.const 100)
  )
 )
 (func $start~anonymous|3 (; 26 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (drop
   (call $~lib/array/Array<i32>#push
    (get_local $2)
    (i32.const 100)
   )
  )
  (i32.eq
   (get_local $0)
   (i32.const 100)
  )
 )
 (func $start~anonymous|4 (; 27 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.eq
   (get_local $0)
   (i32.const 100)
  )
 )
 (func $start~anonymous|5 (; 28 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_local $2)
   )
  )
  (i32.eq
   (get_local $0)
   (i32.const 100)
  )
 )
 (func $start~anonymous|6 (; 29 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.ge_s
   (get_local $0)
   (i32.const 0)
  )
 )
 (func $~lib/array/Array<i32>#every (; 30 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (block $break|0
   (block
    (set_local $3
     (i32.const 0)
    )
    (set_local $4
     (i32.load offset=4
      (get_local $0)
     )
    )
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (if (result i32)
       (tee_local $5
        (i32.lt_s
         (get_local $3)
         (get_local $4)
        )
       )
       (i32.lt_s
        (get_local $3)
        (i32.load offset=4
         (get_local $0)
        )
       )
       (get_local $5)
      )
     )
    )
    (if
     (i32.eqz
      (i32.and
       (block (result i32)
        (set_global $~argc
         (i32.const 3)
        )
        (call_indirect (type $iiii)
         (block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.12 (result i32)
          (i32.load offset=8
           (i32.add
            (get_local $2)
            (i32.shl
             (get_local $3)
             (i32.const 2)
            )
           )
          )
         )
         (get_local $3)
         (get_local $0)
         (get_local $1)
        )
       )
       (i32.const 1)
      )
     )
     (return
      (i32.const 0)
     )
    )
    (set_local $3
     (i32.add
      (get_local $3)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (i32.const 1)
 )
 (func $start~anonymous|7 (; 31 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.le_s
   (get_local $0)
   (i32.const 0)
  )
 )
 (func $start~anonymous|8 (; 32 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (drop
   (call $~lib/array/Array<i32>#push
    (get_local $2)
    (i32.const 100)
   )
  )
  (i32.lt_s
   (get_local $0)
   (i32.const 10)
  )
 )
 (func $start~anonymous|9 (; 33 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.lt_s
   (get_local $0)
   (i32.const 10)
  )
 )
 (func $start~anonymous|10 (; 34 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_local $2)
   )
  )
  (i32.lt_s
   (get_local $0)
   (i32.const 3)
  )
 )
 (func $start~anonymous|11 (; 35 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.ge_s
   (get_local $0)
   (i32.const 3)
  )
 )
 (func $~lib/array/Array<i32>#some (; 36 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (block $break|0
   (block
    (set_local $3
     (i32.const 0)
    )
    (set_local $4
     (i32.load offset=4
      (get_local $0)
     )
    )
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (if (result i32)
       (tee_local $5
        (i32.lt_s
         (get_local $3)
         (get_local $4)
        )
       )
       (i32.lt_s
        (get_local $3)
        (i32.load offset=4
         (get_local $0)
        )
       )
       (get_local $5)
      )
     )
    )
    (if
     (i32.and
      (block (result i32)
       (set_global $~argc
        (i32.const 3)
       )
       (call_indirect (type $iiii)
        (block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.14 (result i32)
         (i32.load offset=8
          (i32.add
           (get_local $2)
           (i32.shl
            (get_local $3)
            (i32.const 2)
           )
          )
         )
        )
        (get_local $3)
        (get_local $0)
        (get_local $1)
       )
      )
      (i32.const 1)
     )
     (return
      (i32.const 1)
     )
    )
    (set_local $3
     (i32.add
      (get_local $3)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (i32.const 0)
 )
 (func $start~anonymous|12 (; 37 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.le_s
   (get_local $0)
   (i32.const -1)
  )
 )
 (func $start~anonymous|13 (; 38 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (drop
   (call $~lib/array/Array<i32>#push
    (get_local $2)
    (i32.const 100)
   )
  )
  (i32.gt_s
   (get_local $0)
   (i32.const 10)
  )
 )
 (func $start~anonymous|14 (; 39 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.gt_s
   (get_local $0)
   (i32.const 10)
  )
 )
 (func $start~anonymous|15 (; 40 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_local $2)
   )
  )
  (i32.gt_s
   (get_local $0)
   (i32.const 3)
  )
 )
 (func $start~anonymous|16 (; 41 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (set_global $std/array/i
   (i32.add
    (get_global $std/array/i)
    (get_local $0)
   )
  )
 )
 (func $~lib/array/Array<i32>#forEach (; 42 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (block $break|0
   (block
    (set_local $3
     (i32.const 0)
    )
    (set_local $4
     (i32.load offset=4
      (get_local $0)
     )
    )
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (if (result i32)
       (tee_local $5
        (i32.lt_s
         (get_local $3)
         (get_local $4)
        )
       )
       (i32.lt_s
        (get_local $3)
        (i32.load offset=4
         (get_local $0)
        )
       )
       (get_local $5)
      )
     )
    )
    (block
     (set_global $~argc
      (i32.const 3)
     )
     (call_indirect (type $iiiv)
      (block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.15 (result i32)
       (i32.load offset=8
        (i32.add
         (get_local $2)
         (i32.shl
          (get_local $3)
          (i32.const 2)
         )
        )
       )
      )
      (get_local $3)
      (get_local $0)
      (get_local $1)
     )
    )
    (set_local $3
     (i32.add
      (get_local $3)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
 )
 (func $start~anonymous|17 (; 43 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (drop
   (call $~lib/array/Array<i32>#push
    (get_local $2)
    (i32.const 100)
   )
  )
  (set_global $std/array/i
   (i32.add
    (get_global $std/array/i)
    (get_local $0)
   )
  )
 )
 (func $start~anonymous|18 (; 44 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (set_global $std/array/i
   (i32.add
    (get_global $std/array/i)
    (get_local $0)
   )
  )
 )
 (func $start~anonymous|19 (; 45 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_local $2)
   )
  )
  (set_global $std/array/i
   (i32.add
    (get_global $std/array/i)
    (get_local $0)
   )
  )
 )
 (func $start~anonymous|20 (; 46 ;) (type $iiif) (param $0 i32) (param $1 i32) (param $2 i32) (result f32)
  (f32.convert_s/i32
   (get_local $0)
  )
 )
 (func $~lib/array/Array<f32>#constructor (; 47 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (if
   (i32.gt_u
    (get_local $1)
    (i32.const 268435454)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 23)
     (i32.const 39)
    )
    (unreachable)
   )
  )
  (set_local $2
   (i32.shl
    (get_local $1)
    (i32.const 2)
   )
  )
  (set_local $3
   (call $~lib/internal/arraybuffer/allocateUnsafe
    (get_local $2)
   )
  )
  (i32.store
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $4
        (call $~lib/memory/memory.allocate
         (i32.const 8)
        )
       )
       (i32.store
        (get_local $4)
        (i32.const 0)
       )
       (i32.store offset=4
        (get_local $4)
        (i32.const 0)
       )
       (get_local $4)
      )
     )
    )
   )
   (get_local $3)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $1)
  )
  (block $~lib/memory/memory.fill|inlined.3
   (set_local $4
    (i32.add
     (get_local $3)
     (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
    )
   )
   (set_local $5
    (i32.const 0)
   )
   (call $~lib/internal/memory/memset
    (get_local $4)
    (get_local $5)
    (get_local $2)
   )
  )
  (get_local $0)
 )
 (func $~lib/array/Array<i32>#map<f32> (; 48 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 f32)
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (set_local $3
   (i32.load offset=4
    (get_local $0)
   )
  )
  (set_local $4
   (call $~lib/array/Array<f32>#constructor
    (i32.const 0)
    (get_local $3)
   )
  )
  (set_local $5
   (i32.load
    (get_local $4)
   )
  )
  (block $break|0
   (set_local $6
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (if (result i32)
       (tee_local $7
        (i32.lt_s
         (get_local $6)
         (get_local $3)
        )
       )
       (i32.lt_s
        (get_local $6)
        (i32.load offset=4
         (get_local $0)
        )
       )
       (get_local $7)
      )
     )
    )
    (block $~lib/internal/arraybuffer/storeUnsafe<f32,f32>|inlined.0
     (set_local $8
      (block (result f32)
       (set_global $~argc
        (i32.const 3)
       )
       (call_indirect (type $iiif)
        (block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.16 (result i32)
         (i32.load offset=8
          (i32.add
           (get_local $2)
           (i32.shl
            (get_local $6)
            (i32.const 2)
           )
          )
         )
        )
        (get_local $6)
        (get_local $0)
        (get_local $1)
       )
      )
     )
     (f32.store offset=8
      (i32.add
       (get_local $5)
       (i32.shl
        (get_local $6)
        (i32.const 2)
       )
      )
      (get_local $8)
     )
    )
    (set_local $6
     (i32.add
      (get_local $6)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $4)
 )
 (func $~lib/array/Array<f32>#__get (; 49 ;) (type $iif) (param $0 i32) (param $1 i32) (result f32)
  (local $2 i32)
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (if (result f32)
   (i32.lt_u
    (get_local $1)
    (i32.shr_u
     (i32.load
      (get_local $2)
     )
     (i32.const 2)
    )
   )
   (block $~lib/internal/arraybuffer/loadUnsafe<f32,f32>|inlined.0 (result f32)
    (f32.load offset=8
     (i32.add
      (get_local $2)
      (i32.shl
       (get_local $1)
       (i32.const 2)
      )
     )
    )
   )
   (unreachable)
  )
 )
 (func $start~anonymous|21 (; 50 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (drop
   (call $~lib/array/Array<i32>#push
    (get_local $2)
    (i32.const 100)
   )
  )
  (set_global $std/array/i
   (i32.add
    (get_global $std/array/i)
    (get_local $0)
   )
  )
  (get_local $0)
 )
 (func $~lib/array/Array<i32>#map<i32> (; 51 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (set_local $3
   (i32.load offset=4
    (get_local $0)
   )
  )
  (set_local $4
   (call $~lib/array/Array<i32>#constructor
    (i32.const 0)
    (get_local $3)
   )
  )
  (set_local $5
   (i32.load
    (get_local $4)
   )
  )
  (block $break|0
   (set_local $6
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (if (result i32)
       (tee_local $7
        (i32.lt_s
         (get_local $6)
         (get_local $3)
        )
       )
       (i32.lt_s
        (get_local $6)
        (i32.load offset=4
         (get_local $0)
        )
       )
       (get_local $7)
      )
     )
    )
    (block $~lib/internal/arraybuffer/storeUnsafe<i32,i32>|inlined.6
     (set_local $7
      (block (result i32)
       (set_global $~argc
        (i32.const 3)
       )
       (call_indirect (type $iiii)
        (block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.17 (result i32)
         (i32.load offset=8
          (i32.add
           (get_local $2)
           (i32.shl
            (get_local $6)
            (i32.const 2)
           )
          )
         )
        )
        (get_local $6)
        (get_local $0)
        (get_local $1)
       )
      )
     )
     (i32.store offset=8
      (i32.add
       (get_local $5)
       (i32.shl
        (get_local $6)
        (i32.const 2)
       )
      )
      (get_local $7)
     )
    )
    (set_local $6
     (i32.add
      (get_local $6)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $4)
 )
 (func $start~anonymous|22 (; 52 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (set_global $std/array/i
   (i32.add
    (get_global $std/array/i)
    (get_local $0)
   )
  )
  (get_local $0)
 )
 (func $start~anonymous|23 (; 53 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_local $2)
   )
  )
  (set_global $std/array/i
   (i32.add
    (get_global $std/array/i)
    (get_local $0)
   )
  )
  (get_local $0)
 )
 (func $start~anonymous|24 (; 54 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.ge_s
   (get_local $0)
   (i32.const 2)
  )
 )
 (func $~lib/array/Array<i32>#filter (; 55 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (set_local $3
   (i32.load offset=4
    (get_local $0)
   )
  )
  (set_local $4
   (call $~lib/array/Array<i32>#constructor
    (i32.const 0)
    (i32.const 0)
   )
  )
  (block $break|0
   (set_local $5
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (if (result i32)
       (tee_local $6
        (i32.lt_s
         (get_local $5)
         (get_local $3)
        )
       )
       (i32.lt_s
        (get_local $5)
        (i32.load offset=4
         (get_local $0)
        )
       )
       (get_local $6)
      )
     )
    )
    (block
     (set_local $6
      (block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.18 (result i32)
       (i32.load offset=8
        (i32.add
         (get_local $2)
         (i32.shl
          (get_local $5)
          (i32.const 2)
         )
        )
       )
      )
     )
     (if
      (i32.and
       (block (result i32)
        (set_global $~argc
         (i32.const 3)
        )
        (call_indirect (type $iiii)
         (get_local $6)
         (get_local $5)
         (get_local $0)
         (get_local $1)
        )
       )
       (i32.const 1)
      )
      (drop
       (call $~lib/array/Array<i32>#push
        (get_local $4)
        (get_local $6)
       )
      )
     )
    )
    (set_local $5
     (i32.add
      (get_local $5)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $4)
 )
 (func $start~anonymous|25 (; 56 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (drop
   (call $~lib/array/Array<i32>#push
    (get_local $2)
    (i32.const 100)
   )
  )
  (set_global $std/array/i
   (i32.add
    (get_global $std/array/i)
    (get_local $0)
   )
  )
  (i32.ge_s
   (get_local $0)
   (i32.const 2)
  )
 )
 (func $start~anonymous|26 (; 57 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (set_global $std/array/i
   (i32.add
    (get_global $std/array/i)
    (get_local $0)
   )
  )
  (i32.ge_s
   (get_local $0)
   (i32.const 2)
  )
 )
 (func $start~anonymous|27 (; 58 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_local $2)
   )
  )
  (set_global $std/array/i
   (i32.add
    (get_global $std/array/i)
    (get_local $0)
   )
  )
  (i32.ge_s
   (get_local $0)
   (i32.const 2)
  )
 )
 (func $start~anonymous|28 (; 59 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (i32.add
   (get_local $0)
   (get_local $1)
  )
 )
 (func $~lib/array/Array<i32>#reduce<i32> (; 60 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (set_local $3
   (get_local $2)
  )
  (set_local $4
   (i32.load
    (get_local $0)
   )
  )
  (block $break|0
   (block
    (set_local $5
     (i32.const 0)
    )
    (set_local $6
     (i32.load offset=4
      (get_local $0)
     )
    )
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (if (result i32)
       (tee_local $7
        (i32.lt_s
         (get_local $5)
         (get_local $6)
        )
       )
       (i32.lt_s
        (get_local $5)
        (i32.load offset=4
         (get_local $0)
        )
       )
       (get_local $7)
      )
     )
    )
    (set_local $3
     (block (result i32)
      (set_global $~argc
       (i32.const 4)
      )
      (call_indirect (type $iiiii)
       (get_local $3)
       (block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.19 (result i32)
        (i32.load offset=8
         (i32.add
          (get_local $4)
          (i32.shl
           (get_local $5)
           (i32.const 2)
          )
         )
        )
       )
       (get_local $5)
       (get_local $0)
       (get_local $1)
      )
     )
    )
    (set_local $5
     (i32.add
      (get_local $5)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $3)
 )
 (func $start~anonymous|29 (; 61 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (i32.add
   (get_local $0)
   (get_local $1)
  )
 )
 (func $start~anonymous|30 (; 62 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (if (result i32)
   (i32.and
    (get_local $0)
    (i32.const 1)
   )
   (get_local $0)
   (i32.gt_s
    (get_local $1)
    (i32.const 2)
   )
  )
 )
 (func $~lib/array/Array<i32>#reduce<bool> (; 63 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (set_local $3
   (get_local $2)
  )
  (set_local $4
   (i32.load
    (get_local $0)
   )
  )
  (block $break|0
   (block
    (set_local $5
     (i32.const 0)
    )
    (set_local $6
     (i32.load offset=4
      (get_local $0)
     )
    )
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (if (result i32)
       (tee_local $7
        (i32.lt_s
         (get_local $5)
         (get_local $6)
        )
       )
       (i32.lt_s
        (get_local $5)
        (i32.load offset=4
         (get_local $0)
        )
       )
       (get_local $7)
      )
     )
    )
    (set_local $3
     (block (result i32)
      (set_global $~argc
       (i32.const 4)
      )
      (call_indirect (type $iiiii)
       (get_local $3)
       (block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.20 (result i32)
        (i32.load offset=8
         (i32.add
          (get_local $4)
          (i32.shl
           (get_local $5)
           (i32.const 2)
          )
         )
        )
       )
       (get_local $5)
       (get_local $0)
       (get_local $1)
      )
     )
    )
    (set_local $5
     (i32.add
      (get_local $5)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $3)
 )
 (func $start~anonymous|31 (; 64 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (if (result i32)
   (i32.and
    (get_local $0)
    (i32.const 1)
   )
   (get_local $0)
   (i32.gt_s
    (get_local $1)
    (i32.const 100)
   )
  )
 )
 (func $start~anonymous|32 (; 65 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (drop
   (call $~lib/array/Array<i32>#push
    (get_local $3)
    (i32.const 1)
   )
  )
  (i32.add
   (get_local $0)
   (get_local $1)
  )
 )
 (func $start~anonymous|33 (; 66 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (i32.add
   (get_local $0)
   (get_local $1)
  )
 )
 (func $start~anonymous|34 (; 67 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_local $3)
   )
  )
  (i32.add
   (get_local $0)
   (get_local $1)
  )
 )
 (func $start~anonymous|35 (; 68 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (i32.add
   (get_local $0)
   (get_local $1)
  )
 )
 (func $~lib/array/Array<i32>#reduceRight<i32> (; 69 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $3
   (get_local $2)
  )
  (set_local $4
   (i32.load
    (get_local $0)
   )
  )
  (block $break|0
   (set_local $5
    (i32.sub
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 1)
    )
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.ge_s
       (get_local $5)
       (i32.const 0)
      )
     )
    )
    (set_local $3
     (block (result i32)
      (set_global $~argc
       (i32.const 4)
      )
      (call_indirect (type $iiiii)
       (get_local $3)
       (block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.21 (result i32)
        (i32.load offset=8
         (i32.add
          (get_local $4)
          (i32.shl
           (get_local $5)
           (i32.const 2)
          )
         )
        )
       )
       (get_local $5)
       (get_local $0)
       (get_local $1)
      )
     )
    )
    (set_local $5
     (i32.sub
      (get_local $5)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $3)
 )
 (func $start~anonymous|36 (; 70 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (i32.add
   (get_local $0)
   (get_local $1)
  )
 )
 (func $start~anonymous|37 (; 71 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (if (result i32)
   (i32.and
    (get_local $0)
    (i32.const 1)
   )
   (get_local $0)
   (i32.gt_s
    (get_local $1)
    (i32.const 2)
   )
  )
 )
 (func $~lib/array/Array<i32>#reduceRight<bool> (; 72 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $3
   (get_local $2)
  )
  (set_local $4
   (i32.load
    (get_local $0)
   )
  )
  (block $break|0
   (set_local $5
    (i32.sub
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 1)
    )
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.ge_s
       (get_local $5)
       (i32.const 0)
      )
     )
    )
    (set_local $3
     (block (result i32)
      (set_global $~argc
       (i32.const 4)
      )
      (call_indirect (type $iiiii)
       (get_local $3)
       (block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.22 (result i32)
        (i32.load offset=8
         (i32.add
          (get_local $4)
          (i32.shl
           (get_local $5)
           (i32.const 2)
          )
         )
        )
       )
       (get_local $5)
       (get_local $0)
       (get_local $1)
      )
     )
    )
    (set_local $5
     (i32.sub
      (get_local $5)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $3)
 )
 (func $start~anonymous|38 (; 73 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (if (result i32)
   (i32.and
    (get_local $0)
    (i32.const 1)
   )
   (get_local $0)
   (i32.gt_s
    (get_local $1)
    (i32.const 100)
   )
  )
 )
 (func $start~anonymous|39 (; 74 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (drop
   (call $~lib/array/Array<i32>#push
    (get_local $3)
    (i32.const 1)
   )
  )
  (i32.add
   (get_local $0)
   (get_local $1)
  )
 )
 (func $start~anonymous|40 (; 75 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (i32.add
   (get_local $0)
   (get_local $1)
  )
 )
 (func $start~anonymous|41 (; 76 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_local $3)
   )
  )
  (i32.add
   (get_local $0)
   (get_local $1)
  )
 )
 (func $~lib/math/murmurHash3 (; 77 ;) (type $II) (param $0 i64) (result i64)
  (set_local $0
   (i64.xor
    (get_local $0)
    (i64.shr_u
     (get_local $0)
     (i64.const 33)
    )
   )
  )
  (set_local $0
   (i64.mul
    (get_local $0)
    (i64.const -49064778989728563)
   )
  )
  (set_local $0
   (i64.xor
    (get_local $0)
    (i64.shr_u
     (get_local $0)
     (i64.const 33)
    )
   )
  )
  (set_local $0
   (i64.mul
    (get_local $0)
    (i64.const -4265267296055464877)
   )
  )
  (set_local $0
   (i64.xor
    (get_local $0)
    (i64.shr_u
     (get_local $0)
     (i64.const 33)
    )
   )
  )
  (get_local $0)
 )
 (func $~lib/math/NativeMath.seedRandom (; 78 ;) (type $Iv) (param $0 i64)
  (if
   (i64.eqz
    (get_local $0)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 136)
     (i32.const 1000)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  (set_global $~lib/math/random_seeded
   (i32.const 1)
  )
  (set_global $~lib/math/random_state0
   (call $~lib/math/murmurHash3
    (get_local $0)
   )
  )
  (set_global $~lib/math/random_state1
   (call $~lib/math/murmurHash3
    (get_global $~lib/math/random_state0)
   )
  )
 )
 (func $~lib/internal/array/insertionSort<f32> (; 79 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 f32)
  (local $6 i32)
  (local $7 f32)
  (local $8 i32)
  (block $break|0
   (set_local $4
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $4)
       (get_local $2)
      )
     )
    )
    (block
     (set_local $5
      (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f32,f32>|inlined.0 (result f32)
       (f32.load offset=8
        (i32.add
         (i32.add
          (get_local $0)
          (get_local $1)
         )
         (i32.shl
          (get_local $4)
          (i32.const 2)
         )
        )
       )
      )
     )
     (set_local $6
      (i32.sub
       (get_local $4)
       (i32.const 1)
      )
     )
     (block $break|1
      (loop $continue|1
       (if
        (i32.ge_s
         (get_local $6)
         (i32.const 0)
        )
        (block
         (block
          (set_local $7
           (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f32,f32>|inlined.1 (result f32)
            (f32.load offset=8
             (i32.add
              (i32.add
               (get_local $0)
               (get_local $1)
              )
              (i32.shl
               (get_local $6)
               (i32.const 2)
              )
             )
            )
           )
          )
          (if
           (i32.lt_s
            (block (result i32)
             (set_global $~argc
              (i32.const 2)
             )
             (call_indirect (type $ffi)
              (get_local $5)
              (get_local $7)
              (get_local $3)
             )
            )
            (i32.const 0)
           )
           (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<f32,f32>|inlined.0
            (set_local $8
             (i32.add
              (block (result i32)
               (set_local $8
                (get_local $6)
               )
               (set_local $6
                (i32.sub
                 (get_local $8)
                 (i32.const 1)
                )
               )
               (get_local $8)
              )
              (i32.const 1)
             )
            )
            (f32.store offset=8
             (i32.add
              (i32.add
               (get_local $0)
               (get_local $1)
              )
              (i32.shl
               (get_local $8)
               (i32.const 2)
              )
             )
             (get_local $7)
            )
           )
           (br $break|1)
          )
         )
         (br $continue|1)
        )
       )
      )
     )
     (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<f32,f32>|inlined.1
      (set_local $8
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (f32.store offset=8
       (i32.add
        (i32.add
         (get_local $0)
         (get_local $1)
        )
        (i32.shl
         (get_local $8)
         (i32.const 2)
        )
       )
       (get_local $5)
      )
     )
    )
    (set_local $4
     (i32.add
      (get_local $4)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
 )
 (func $~lib/allocator/arena/__memory_free (; 80 ;) (type $iv) (param $0 i32)
  (nop)
 )
 (func $~lib/internal/array/weakHeapSort<f32> (; 81 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 f32)
  (local $10 f32)
  (local $11 i32)
  (local $12 f32)
  (set_local $4
   (i32.shl
    (i32.shr_s
     (i32.add
      (get_local $2)
      (i32.const 31)
     )
     (i32.const 5)
    )
    (i32.const 2)
   )
  )
  (set_local $5
   (block $~lib/memory/memory.allocate|inlined.1 (result i32)
    (br $~lib/memory/memory.allocate|inlined.1
     (call $~lib/allocator/arena/__memory_allocate
      (get_local $4)
     )
    )
   )
  )
  (block $~lib/memory/memory.fill|inlined.4
   (set_local $6
    (i32.const 0)
   )
   (call $~lib/internal/memory/memset
    (get_local $5)
    (get_local $6)
    (get_local $4)
   )
  )
  (block $break|0
   (set_local $6
    (i32.sub
     (get_local $2)
     (i32.const 1)
    )
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.gt_s
       (get_local $6)
       (i32.const 0)
      )
     )
    )
    (block
     (set_local $7
      (get_local $6)
     )
     (block $break|1
      (loop $continue|1
       (if
        (i32.eq
         (i32.and
          (get_local $7)
          (i32.const 1)
         )
         (i32.and
          (i32.shr_u
           (i32.load
            (i32.add
             (get_local $5)
             (i32.shl
              (i32.shr_s
               (get_local $7)
               (i32.const 6)
              )
              (i32.const 2)
             )
            )
           )
           (i32.and
            (i32.shr_s
             (get_local $7)
             (i32.const 1)
            )
            (i32.const 31)
           )
          )
          (i32.const 1)
         )
        )
        (block
         (set_local $7
          (i32.shr_s
           (get_local $7)
           (i32.const 1)
          )
         )
         (br $continue|1)
        )
       )
      )
     )
     (set_local $8
      (i32.shr_s
       (get_local $7)
       (i32.const 1)
      )
     )
     (set_local $9
      (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f32,f32>|inlined.2 (result f32)
       (f32.load offset=8
        (i32.add
         (i32.add
          (get_local $0)
          (get_local $1)
         )
         (i32.shl
          (get_local $8)
          (i32.const 2)
         )
        )
       )
      )
     )
     (set_local $10
      (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f32,f32>|inlined.3 (result f32)
       (f32.load offset=8
        (i32.add
         (i32.add
          (get_local $0)
          (get_local $1)
         )
         (i32.shl
          (get_local $6)
          (i32.const 2)
         )
        )
       )
      )
     )
     (if
      (i32.lt_s
       (block (result i32)
        (set_global $~argc
         (i32.const 2)
        )
        (call_indirect (type $ffi)
         (get_local $9)
         (get_local $10)
         (get_local $3)
        )
       )
       (i32.const 0)
      )
      (block
       (i32.store
        (i32.add
         (get_local $5)
         (i32.shl
          (i32.shr_s
           (get_local $6)
           (i32.const 5)
          )
          (i32.const 2)
         )
        )
        (i32.xor
         (i32.load
          (i32.add
           (get_local $5)
           (i32.shl
            (i32.shr_s
             (get_local $6)
             (i32.const 5)
            )
            (i32.const 2)
           )
          )
         )
         (i32.shl
          (i32.const 1)
          (i32.and
           (get_local $6)
           (i32.const 31)
          )
         )
        )
       )
       (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<f32,f32>|inlined.2
        (f32.store offset=8
         (i32.add
          (i32.add
           (get_local $0)
           (get_local $1)
          )
          (i32.shl
           (get_local $6)
           (i32.const 2)
          )
         )
         (get_local $9)
        )
       )
       (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<f32,f32>|inlined.3
        (f32.store offset=8
         (i32.add
          (i32.add
           (get_local $0)
           (get_local $1)
          )
          (i32.shl
           (get_local $8)
           (i32.const 2)
          )
         )
         (get_local $10)
        )
       )
      )
     )
    )
    (set_local $6
     (i32.sub
      (get_local $6)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (block $break|2
   (set_local $6
    (i32.sub
     (get_local $2)
     (i32.const 1)
    )
   )
   (loop $repeat|2
    (br_if $break|2
     (i32.eqz
      (i32.ge_s
       (get_local $6)
       (i32.const 2)
      )
     )
    )
    (block
     (set_local $10
      (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f32,f32>|inlined.4 (result f32)
       (set_local $8
        (i32.const 0)
       )
       (f32.load offset=8
        (i32.add
         (i32.add
          (get_local $0)
          (get_local $1)
         )
         (i32.shl
          (get_local $8)
          (i32.const 2)
         )
        )
       )
      )
     )
     (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<f32,f32>|inlined.4
      (set_local $8
       (i32.const 0)
      )
      (set_local $9
       (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f32,f32>|inlined.5 (result f32)
        (f32.load offset=8
         (i32.add
          (i32.add
           (get_local $0)
           (get_local $1)
          )
          (i32.shl
           (get_local $6)
           (i32.const 2)
          )
         )
        )
       )
      )
      (f32.store offset=8
       (i32.add
        (i32.add
         (get_local $0)
         (get_local $1)
        )
        (i32.shl
         (get_local $8)
         (i32.const 2)
        )
       )
       (get_local $9)
      )
     )
     (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<f32,f32>|inlined.5
      (f32.store offset=8
       (i32.add
        (i32.add
         (get_local $0)
         (get_local $1)
        )
        (i32.shl
         (get_local $6)
         (i32.const 2)
        )
       )
       (get_local $10)
      )
     )
     (set_local $8
      (i32.const 1)
     )
     (block $break|3
      (loop $continue|3
       (if
        (i32.lt_s
         (tee_local $7
          (i32.add
           (i32.shl
            (get_local $8)
            (i32.const 1)
           )
           (i32.and
            (i32.shr_u
             (i32.load
              (i32.add
               (get_local $5)
               (i32.shl
                (i32.shr_s
                 (get_local $8)
                 (i32.const 5)
                )
                (i32.const 2)
               )
              )
             )
             (i32.and
              (get_local $8)
              (i32.const 31)
             )
            )
            (i32.const 1)
           )
          )
         )
         (get_local $6)
        )
        (block
         (set_local $8
          (get_local $7)
         )
         (br $continue|3)
        )
       )
      )
     )
     (block $break|4
      (loop $continue|4
       (if
        (i32.gt_s
         (get_local $8)
         (i32.const 0)
        )
        (block
         (block
          (set_local $10
           (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f32,f32>|inlined.6 (result f32)
            (set_local $11
             (i32.const 0)
            )
            (f32.load offset=8
             (i32.add
              (i32.add
               (get_local $0)
               (get_local $1)
              )
              (i32.shl
               (get_local $11)
               (i32.const 2)
              )
             )
            )
           )
          )
          (set_local $9
           (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f32,f32>|inlined.7 (result f32)
            (f32.load offset=8
             (i32.add
              (i32.add
               (get_local $0)
               (get_local $1)
              )
              (i32.shl
               (get_local $8)
               (i32.const 2)
              )
             )
            )
           )
          )
          (if
           (i32.lt_s
            (block (result i32)
             (set_global $~argc
              (i32.const 2)
             )
             (call_indirect (type $ffi)
              (get_local $10)
              (get_local $9)
              (get_local $3)
             )
            )
            (i32.const 0)
           )
           (block
            (i32.store
             (i32.add
              (get_local $5)
              (i32.shl
               (i32.shr_s
                (get_local $8)
                (i32.const 5)
               )
               (i32.const 2)
              )
             )
             (i32.xor
              (i32.load
               (i32.add
                (get_local $5)
                (i32.shl
                 (i32.shr_s
                  (get_local $8)
                  (i32.const 5)
                 )
                 (i32.const 2)
                )
               )
              )
              (i32.shl
               (i32.const 1)
               (i32.and
                (get_local $8)
                (i32.const 31)
               )
              )
             )
            )
            (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<f32,f32>|inlined.6
             (f32.store offset=8
              (i32.add
               (i32.add
                (get_local $0)
                (get_local $1)
               )
               (i32.shl
                (get_local $8)
                (i32.const 2)
               )
              )
              (get_local $10)
             )
            )
            (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<f32,f32>|inlined.7
             (set_local $11
              (i32.const 0)
             )
             (f32.store offset=8
              (i32.add
               (i32.add
                (get_local $0)
                (get_local $1)
               )
               (i32.shl
                (get_local $11)
                (i32.const 2)
               )
              )
              (get_local $9)
             )
            )
           )
          )
          (set_local $8
           (i32.shr_s
            (get_local $8)
            (i32.const 1)
           )
          )
         )
         (br $continue|4)
        )
       )
      )
     )
    )
    (set_local $6
     (i32.sub
      (get_local $6)
      (i32.const 1)
     )
    )
    (br $repeat|2)
   )
  )
  (block $~lib/memory/memory.free|inlined.0
   (block
    (call $~lib/allocator/arena/__memory_free
     (get_local $5)
    )
    (br $~lib/memory/memory.free|inlined.0)
   )
  )
  (set_local $12
   (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f32,f32>|inlined.8 (result f32)
    (set_local $6
     (i32.const 1)
    )
    (f32.load offset=8
     (i32.add
      (i32.add
       (get_local $0)
       (get_local $1)
      )
      (i32.shl
       (get_local $6)
       (i32.const 2)
      )
     )
    )
   )
  )
  (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<f32,f32>|inlined.8
   (set_local $6
    (i32.const 1)
   )
   (set_local $10
    (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f32,f32>|inlined.9 (result f32)
     (set_local $7
      (i32.const 0)
     )
     (f32.load offset=8
      (i32.add
       (i32.add
        (get_local $0)
        (get_local $1)
       )
       (i32.shl
        (get_local $7)
        (i32.const 2)
       )
      )
     )
    )
   )
   (f32.store offset=8
    (i32.add
     (i32.add
      (get_local $0)
      (get_local $1)
     )
     (i32.shl
      (get_local $6)
      (i32.const 2)
     )
    )
    (get_local $10)
   )
  )
  (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<f32,f32>|inlined.9
   (set_local $6
    (i32.const 0)
   )
   (f32.store offset=8
    (i32.add
     (i32.add
      (get_local $0)
      (get_local $1)
     )
     (i32.shl
      (get_local $6)
      (i32.const 2)
     )
    )
    (get_local $12)
   )
  )
 )
 (func $~lib/array/Array<f32>#sort (; 82 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f32)
  (local $6 f32)
  (if
   (i32.eqz
    (get_local $1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 311)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  (set_local $2
   (i32.load offset=4
    (get_local $0)
   )
  )
  (if
   (i32.le_s
    (get_local $2)
    (i32.const 1)
   )
   (return
    (get_local $0)
   )
  )
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (if
   (i32.eq
    (get_local $2)
    (i32.const 2)
   )
   (block
    (set_local $5
     (block $~lib/internal/arraybuffer/loadUnsafe<f32,f32>|inlined.1 (result f32)
      (set_local $4
       (i32.const 1)
      )
      (f32.load offset=8
       (i32.add
        (get_local $3)
        (i32.shl
         (get_local $4)
         (i32.const 2)
        )
       )
      )
     )
    )
    (set_local $6
     (block $~lib/internal/arraybuffer/loadUnsafe<f32,f32>|inlined.2 (result f32)
      (set_local $4
       (i32.const 0)
      )
      (f32.load offset=8
       (i32.add
        (get_local $3)
        (i32.shl
         (get_local $4)
         (i32.const 2)
        )
       )
      )
     )
    )
    (if
     (i32.lt_s
      (block (result i32)
       (set_global $~argc
        (i32.const 2)
       )
       (call_indirect (type $ffi)
        (get_local $5)
        (get_local $6)
        (get_local $1)
       )
      )
      (i32.const 0)
     )
     (block
      (block $~lib/internal/arraybuffer/storeUnsafe<f32,f32>|inlined.1
       (set_local $4
        (i32.const 1)
       )
       (f32.store offset=8
        (i32.add
         (get_local $3)
         (i32.shl
          (get_local $4)
          (i32.const 2)
         )
        )
        (get_local $6)
       )
      )
      (block $~lib/internal/arraybuffer/storeUnsafe<f32,f32>|inlined.2
       (set_local $4
        (i32.const 0)
       )
       (f32.store offset=8
        (i32.add
         (get_local $3)
         (i32.shl
          (get_local $4)
          (i32.const 2)
         )
        )
        (get_local $5)
       )
      )
     )
    )
    (return
     (get_local $0)
    )
   )
  )
  (if
   (i32.lt_s
    (get_local $2)
    (i32.const 256)
   )
   (call $~lib/internal/array/insertionSort<f32>
    (get_local $3)
    (i32.const 0)
    (get_local $2)
    (get_local $1)
   )
   (call $~lib/internal/array/weakHeapSort<f32>
    (get_local $3)
    (i32.const 0)
    (get_local $2)
    (get_local $1)
   )
  )
  (return
   (get_local $0)
  )
 )
 (func $~lib/array/Array<f32>#sort|trampoline~anonymous|42 (; 83 ;) (type $ffi) (param $0 f32) (param $1 f32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (set_local $2
   (i32.reinterpret/f32
    (get_local $0)
   )
  )
  (set_local $3
   (i32.reinterpret/f32
    (get_local $1)
   )
  )
  (set_local $2
   (i32.xor
    (get_local $2)
    (i32.shr_u
     (i32.shr_s
      (get_local $2)
      (i32.const 31)
     )
     (i32.const 1)
    )
   )
  )
  (set_local $3
   (i32.xor
    (get_local $3)
    (i32.shr_u
     (i32.shr_s
      (get_local $3)
      (i32.const 31)
     )
     (i32.const 1)
    )
   )
  )
  (i32.sub
   (i32.gt_s
    (get_local $2)
    (get_local $3)
   )
   (i32.lt_s
    (get_local $2)
    (get_local $3)
   )
  )
 )
 (func $~lib/array/Array<f32>#sort|trampoline (; 84 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (get_global $~argc)
     )
    )
    (unreachable)
   )
   (set_local $1
    (block $~lib/internal/array/defaultComparator<f32>|inlined.0 (result i32)
     (br $~lib/internal/array/defaultComparator<f32>|inlined.0
      (i32.const 42)
     )
    )
   )
  )
  (call $~lib/array/Array<f32>#sort
   (get_local $0)
   (get_local $1)
  )
 )
 (func $~lib/builtins/isNaN<f32> (; 85 ;) (type $fi) (param $0 f32) (result i32)
  (f32.ne
   (get_local $0)
   (get_local $0)
  )
 )
 (func $std/array/isArraysEqual<f32> (; 86 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.eqz
    (get_local $2)
   )
   (block
    (if
     (i32.ne
      (block $~lib/array/Array<f32>#get:length|inlined.3 (result i32)
       (i32.load offset=4
        (get_local $0)
       )
      )
      (block $~lib/array/Array<f32>#get:length|inlined.4 (result i32)
       (i32.load offset=4
        (get_local $1)
       )
      )
     )
     (return
      (i32.const 0)
     )
    )
    (set_local $2
     (block $~lib/array/Array<f32>#get:length|inlined.5 (result i32)
      (i32.load offset=4
       (get_local $0)
      )
     )
    )
   )
  )
  (block $break|0
   (set_local $3
    (i32.const 0)
   )
   (loop $repeat|0
    (block $continue|0
     (br_if $break|0
      (i32.eqz
       (i32.lt_s
        (get_local $3)
        (get_local $2)
       )
      )
     )
     (block
      (if
       (if (result i32)
        (tee_local $4
         (call $~lib/builtins/isNaN<f32>
          (call $~lib/array/Array<f32>#__get
           (get_local $0)
           (get_local $3)
          )
         )
        )
        (i32.eq
         (call $~lib/builtins/isNaN<f32>
          (call $~lib/array/Array<f32>#__get
           (get_local $0)
           (get_local $3)
          )
         )
         (call $~lib/builtins/isNaN<f32>
          (call $~lib/array/Array<f32>#__get
           (get_local $1)
           (get_local $3)
          )
         )
        )
        (get_local $4)
       )
       (br $continue|0)
      )
      (if
       (f32.ne
        (call $~lib/array/Array<f32>#__get
         (get_local $0)
         (get_local $3)
        )
        (call $~lib/array/Array<f32>#__get
         (get_local $1)
         (get_local $3)
        )
       )
       (return
        (i32.const 0)
       )
      )
     )
    )
    (set_local $3
     (i32.add
      (get_local $3)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (i32.const 1)
 )
 (func $~lib/internal/array/insertionSort<f64> (; 87 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 i32)
  (local $7 f64)
  (local $8 i32)
  (block $break|0
   (set_local $4
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $4)
       (get_local $2)
      )
     )
    )
    (block
     (set_local $5
      (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f64,f64>|inlined.0 (result f64)
       (f64.load offset=8
        (i32.add
         (i32.add
          (get_local $0)
          (get_local $1)
         )
         (i32.shl
          (get_local $4)
          (i32.const 3)
         )
        )
       )
      )
     )
     (set_local $6
      (i32.sub
       (get_local $4)
       (i32.const 1)
      )
     )
     (block $break|1
      (loop $continue|1
       (if
        (i32.ge_s
         (get_local $6)
         (i32.const 0)
        )
        (block
         (block
          (set_local $7
           (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f64,f64>|inlined.1 (result f64)
            (f64.load offset=8
             (i32.add
              (i32.add
               (get_local $0)
               (get_local $1)
              )
              (i32.shl
               (get_local $6)
               (i32.const 3)
              )
             )
            )
           )
          )
          (if
           (i32.lt_s
            (block (result i32)
             (set_global $~argc
              (i32.const 2)
             )
             (call_indirect (type $FFi)
              (get_local $5)
              (get_local $7)
              (get_local $3)
             )
            )
            (i32.const 0)
           )
           (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<f64,f64>|inlined.0
            (set_local $8
             (i32.add
              (block (result i32)
               (set_local $8
                (get_local $6)
               )
               (set_local $6
                (i32.sub
                 (get_local $8)
                 (i32.const 1)
                )
               )
               (get_local $8)
              )
              (i32.const 1)
             )
            )
            (f64.store offset=8
             (i32.add
              (i32.add
               (get_local $0)
               (get_local $1)
              )
              (i32.shl
               (get_local $8)
               (i32.const 3)
              )
             )
             (get_local $7)
            )
           )
           (br $break|1)
          )
         )
         (br $continue|1)
        )
       )
      )
     )
     (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<f64,f64>|inlined.1
      (set_local $8
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (f64.store offset=8
       (i32.add
        (i32.add
         (get_local $0)
         (get_local $1)
        )
        (i32.shl
         (get_local $8)
         (i32.const 3)
        )
       )
       (get_local $5)
      )
     )
    )
    (set_local $4
     (i32.add
      (get_local $4)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
 )
 (func $~lib/internal/array/weakHeapSort<f64> (; 88 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 f64)
  (local $10 f64)
  (local $11 i32)
  (local $12 f64)
  (set_local $4
   (i32.shl
    (i32.shr_s
     (i32.add
      (get_local $2)
      (i32.const 31)
     )
     (i32.const 5)
    )
    (i32.const 2)
   )
  )
  (set_local $5
   (block $~lib/memory/memory.allocate|inlined.2 (result i32)
    (br $~lib/memory/memory.allocate|inlined.2
     (call $~lib/allocator/arena/__memory_allocate
      (get_local $4)
     )
    )
   )
  )
  (block $~lib/memory/memory.fill|inlined.5
   (set_local $6
    (i32.const 0)
   )
   (call $~lib/internal/memory/memset
    (get_local $5)
    (get_local $6)
    (get_local $4)
   )
  )
  (block $break|0
   (set_local $6
    (i32.sub
     (get_local $2)
     (i32.const 1)
    )
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.gt_s
       (get_local $6)
       (i32.const 0)
      )
     )
    )
    (block
     (set_local $7
      (get_local $6)
     )
     (block $break|1
      (loop $continue|1
       (if
        (i32.eq
         (i32.and
          (get_local $7)
          (i32.const 1)
         )
         (i32.and
          (i32.shr_u
           (i32.load
            (i32.add
             (get_local $5)
             (i32.shl
              (i32.shr_s
               (get_local $7)
               (i32.const 6)
              )
              (i32.const 2)
             )
            )
           )
           (i32.and
            (i32.shr_s
             (get_local $7)
             (i32.const 1)
            )
            (i32.const 31)
           )
          )
          (i32.const 1)
         )
        )
        (block
         (set_local $7
          (i32.shr_s
           (get_local $7)
           (i32.const 1)
          )
         )
         (br $continue|1)
        )
       )
      )
     )
     (set_local $8
      (i32.shr_s
       (get_local $7)
       (i32.const 1)
      )
     )
     (set_local $9
      (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f64,f64>|inlined.2 (result f64)
       (f64.load offset=8
        (i32.add
         (i32.add
          (get_local $0)
          (get_local $1)
         )
         (i32.shl
          (get_local $8)
          (i32.const 3)
         )
        )
       )
      )
     )
     (set_local $10
      (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f64,f64>|inlined.3 (result f64)
       (f64.load offset=8
        (i32.add
         (i32.add
          (get_local $0)
          (get_local $1)
         )
         (i32.shl
          (get_local $6)
          (i32.const 3)
         )
        )
       )
      )
     )
     (if
      (i32.lt_s
       (block (result i32)
        (set_global $~argc
         (i32.const 2)
        )
        (call_indirect (type $FFi)
         (get_local $9)
         (get_local $10)
         (get_local $3)
        )
       )
       (i32.const 0)
      )
      (block
       (i32.store
        (i32.add
         (get_local $5)
         (i32.shl
          (i32.shr_s
           (get_local $6)
           (i32.const 5)
          )
          (i32.const 2)
         )
        )
        (i32.xor
         (i32.load
          (i32.add
           (get_local $5)
           (i32.shl
            (i32.shr_s
             (get_local $6)
             (i32.const 5)
            )
            (i32.const 2)
           )
          )
         )
         (i32.shl
          (i32.const 1)
          (i32.and
           (get_local $6)
           (i32.const 31)
          )
         )
        )
       )
       (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<f64,f64>|inlined.2
        (f64.store offset=8
         (i32.add
          (i32.add
           (get_local $0)
           (get_local $1)
          )
          (i32.shl
           (get_local $6)
           (i32.const 3)
          )
         )
         (get_local $9)
        )
       )
       (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<f64,f64>|inlined.3
        (f64.store offset=8
         (i32.add
          (i32.add
           (get_local $0)
           (get_local $1)
          )
          (i32.shl
           (get_local $8)
           (i32.const 3)
          )
         )
         (get_local $10)
        )
       )
      )
     )
    )
    (set_local $6
     (i32.sub
      (get_local $6)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (block $break|2
   (set_local $6
    (i32.sub
     (get_local $2)
     (i32.const 1)
    )
   )
   (loop $repeat|2
    (br_if $break|2
     (i32.eqz
      (i32.ge_s
       (get_local $6)
       (i32.const 2)
      )
     )
    )
    (block
     (set_local $10
      (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f64,f64>|inlined.4 (result f64)
       (set_local $8
        (i32.const 0)
       )
       (f64.load offset=8
        (i32.add
         (i32.add
          (get_local $0)
          (get_local $1)
         )
         (i32.shl
          (get_local $8)
          (i32.const 3)
         )
        )
       )
      )
     )
     (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<f64,f64>|inlined.4
      (set_local $8
       (i32.const 0)
      )
      (set_local $9
       (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f64,f64>|inlined.5 (result f64)
        (f64.load offset=8
         (i32.add
          (i32.add
           (get_local $0)
           (get_local $1)
          )
          (i32.shl
           (get_local $6)
           (i32.const 3)
          )
         )
        )
       )
      )
      (f64.store offset=8
       (i32.add
        (i32.add
         (get_local $0)
         (get_local $1)
        )
        (i32.shl
         (get_local $8)
         (i32.const 3)
        )
       )
       (get_local $9)
      )
     )
     (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<f64,f64>|inlined.5
      (f64.store offset=8
       (i32.add
        (i32.add
         (get_local $0)
         (get_local $1)
        )
        (i32.shl
         (get_local $6)
         (i32.const 3)
        )
       )
       (get_local $10)
      )
     )
     (set_local $8
      (i32.const 1)
     )
     (block $break|3
      (loop $continue|3
       (if
        (i32.lt_s
         (tee_local $7
          (i32.add
           (i32.shl
            (get_local $8)
            (i32.const 1)
           )
           (i32.and
            (i32.shr_u
             (i32.load
              (i32.add
               (get_local $5)
               (i32.shl
                (i32.shr_s
                 (get_local $8)
                 (i32.const 5)
                )
                (i32.const 2)
               )
              )
             )
             (i32.and
              (get_local $8)
              (i32.const 31)
             )
            )
            (i32.const 1)
           )
          )
         )
         (get_local $6)
        )
        (block
         (set_local $8
          (get_local $7)
         )
         (br $continue|3)
        )
       )
      )
     )
     (block $break|4
      (loop $continue|4
       (if
        (i32.gt_s
         (get_local $8)
         (i32.const 0)
        )
        (block
         (block
          (set_local $10
           (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f64,f64>|inlined.6 (result f64)
            (set_local $11
             (i32.const 0)
            )
            (f64.load offset=8
             (i32.add
              (i32.add
               (get_local $0)
               (get_local $1)
              )
              (i32.shl
               (get_local $11)
               (i32.const 3)
              )
             )
            )
           )
          )
          (set_local $9
           (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f64,f64>|inlined.7 (result f64)
            (f64.load offset=8
             (i32.add
              (i32.add
               (get_local $0)
               (get_local $1)
              )
              (i32.shl
               (get_local $8)
               (i32.const 3)
              )
             )
            )
           )
          )
          (if
           (i32.lt_s
            (block (result i32)
             (set_global $~argc
              (i32.const 2)
             )
             (call_indirect (type $FFi)
              (get_local $10)
              (get_local $9)
              (get_local $3)
             )
            )
            (i32.const 0)
           )
           (block
            (i32.store
             (i32.add
              (get_local $5)
              (i32.shl
               (i32.shr_s
                (get_local $8)
                (i32.const 5)
               )
               (i32.const 2)
              )
             )
             (i32.xor
              (i32.load
               (i32.add
                (get_local $5)
                (i32.shl
                 (i32.shr_s
                  (get_local $8)
                  (i32.const 5)
                 )
                 (i32.const 2)
                )
               )
              )
              (i32.shl
               (i32.const 1)
               (i32.and
                (get_local $8)
                (i32.const 31)
               )
              )
             )
            )
            (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<f64,f64>|inlined.6
             (f64.store offset=8
              (i32.add
               (i32.add
                (get_local $0)
                (get_local $1)
               )
               (i32.shl
                (get_local $8)
                (i32.const 3)
               )
              )
              (get_local $10)
             )
            )
            (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<f64,f64>|inlined.7
             (set_local $11
              (i32.const 0)
             )
             (f64.store offset=8
              (i32.add
               (i32.add
                (get_local $0)
                (get_local $1)
               )
               (i32.shl
                (get_local $11)
                (i32.const 3)
               )
              )
              (get_local $9)
             )
            )
           )
          )
          (set_local $8
           (i32.shr_s
            (get_local $8)
            (i32.const 1)
           )
          )
         )
         (br $continue|4)
        )
       )
      )
     )
    )
    (set_local $6
     (i32.sub
      (get_local $6)
      (i32.const 1)
     )
    )
    (br $repeat|2)
   )
  )
  (block $~lib/memory/memory.free|inlined.1
   (block
    (call $~lib/allocator/arena/__memory_free
     (get_local $5)
    )
    (br $~lib/memory/memory.free|inlined.1)
   )
  )
  (set_local $12
   (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f64,f64>|inlined.8 (result f64)
    (set_local $6
     (i32.const 1)
    )
    (f64.load offset=8
     (i32.add
      (i32.add
       (get_local $0)
       (get_local $1)
      )
      (i32.shl
       (get_local $6)
       (i32.const 3)
      )
     )
    )
   )
  )
  (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<f64,f64>|inlined.8
   (set_local $6
    (i32.const 1)
   )
   (set_local $10
    (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<f64,f64>|inlined.9 (result f64)
     (set_local $7
      (i32.const 0)
     )
     (f64.load offset=8
      (i32.add
       (i32.add
        (get_local $0)
        (get_local $1)
       )
       (i32.shl
        (get_local $7)
        (i32.const 3)
       )
      )
     )
    )
   )
   (f64.store offset=8
    (i32.add
     (i32.add
      (get_local $0)
      (get_local $1)
     )
     (i32.shl
      (get_local $6)
      (i32.const 3)
     )
    )
    (get_local $10)
   )
  )
  (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<f64,f64>|inlined.9
   (set_local $6
    (i32.const 0)
   )
   (f64.store offset=8
    (i32.add
     (i32.add
      (get_local $0)
      (get_local $1)
     )
     (i32.shl
      (get_local $6)
      (i32.const 3)
     )
    )
    (get_local $12)
   )
  )
 )
 (func $~lib/array/Array<f64>#sort (; 89 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 f64)
  (local $6 f64)
  (if
   (i32.eqz
    (get_local $1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 311)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  (set_local $2
   (i32.load offset=4
    (get_local $0)
   )
  )
  (if
   (i32.le_s
    (get_local $2)
    (i32.const 1)
   )
   (return
    (get_local $0)
   )
  )
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (if
   (i32.eq
    (get_local $2)
    (i32.const 2)
   )
   (block
    (set_local $5
     (block $~lib/internal/arraybuffer/loadUnsafe<f64,f64>|inlined.0 (result f64)
      (set_local $4
       (i32.const 1)
      )
      (f64.load offset=8
       (i32.add
        (get_local $3)
        (i32.shl
         (get_local $4)
         (i32.const 3)
        )
       )
      )
     )
    )
    (set_local $6
     (block $~lib/internal/arraybuffer/loadUnsafe<f64,f64>|inlined.1 (result f64)
      (set_local $4
       (i32.const 0)
      )
      (f64.load offset=8
       (i32.add
        (get_local $3)
        (i32.shl
         (get_local $4)
         (i32.const 3)
        )
       )
      )
     )
    )
    (if
     (i32.lt_s
      (block (result i32)
       (set_global $~argc
        (i32.const 2)
       )
       (call_indirect (type $FFi)
        (get_local $5)
        (get_local $6)
        (get_local $1)
       )
      )
      (i32.const 0)
     )
     (block
      (block $~lib/internal/arraybuffer/storeUnsafe<f64,f64>|inlined.0
       (set_local $4
        (i32.const 1)
       )
       (f64.store offset=8
        (i32.add
         (get_local $3)
         (i32.shl
          (get_local $4)
          (i32.const 3)
         )
        )
        (get_local $6)
       )
      )
      (block $~lib/internal/arraybuffer/storeUnsafe<f64,f64>|inlined.1
       (set_local $4
        (i32.const 0)
       )
       (f64.store offset=8
        (i32.add
         (get_local $3)
         (i32.shl
          (get_local $4)
          (i32.const 3)
         )
        )
        (get_local $5)
       )
      )
     )
    )
    (return
     (get_local $0)
    )
   )
  )
  (if
   (i32.lt_s
    (get_local $2)
    (i32.const 256)
   )
   (call $~lib/internal/array/insertionSort<f64>
    (get_local $3)
    (i32.const 0)
    (get_local $2)
    (get_local $1)
   )
   (call $~lib/internal/array/weakHeapSort<f64>
    (get_local $3)
    (i32.const 0)
    (get_local $2)
    (get_local $1)
   )
  )
  (return
   (get_local $0)
  )
 )
 (func $~lib/array/Array<f64>#sort|trampoline~anonymous|43 (; 90 ;) (type $FFi) (param $0 f64) (param $1 f64) (result i32)
  (local $2 i64)
  (local $3 i64)
  (set_local $2
   (i64.reinterpret/f64
    (get_local $0)
   )
  )
  (set_local $3
   (i64.reinterpret/f64
    (get_local $1)
   )
  )
  (set_local $2
   (i64.xor
    (get_local $2)
    (i64.shr_u
     (i64.shr_s
      (get_local $2)
      (i64.const 63)
     )
     (i64.const 1)
    )
   )
  )
  (set_local $3
   (i64.xor
    (get_local $3)
    (i64.shr_u
     (i64.shr_s
      (get_local $3)
      (i64.const 63)
     )
     (i64.const 1)
    )
   )
  )
  (i32.sub
   (i64.gt_s
    (get_local $2)
    (get_local $3)
   )
   (i64.lt_s
    (get_local $2)
    (get_local $3)
   )
  )
 )
 (func $~lib/array/Array<f64>#sort|trampoline (; 91 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (get_global $~argc)
     )
    )
    (unreachable)
   )
   (set_local $1
    (block $~lib/internal/array/defaultComparator<f64>|inlined.0 (result i32)
     (br $~lib/internal/array/defaultComparator<f64>|inlined.0
      (i32.const 43)
     )
    )
   )
  )
  (call $~lib/array/Array<f64>#sort
   (get_local $0)
   (get_local $1)
  )
 )
 (func $~lib/array/Array<f64>#__get (; 92 ;) (type $iiF) (param $0 i32) (param $1 i32) (result f64)
  (local $2 i32)
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (if (result f64)
   (i32.lt_u
    (get_local $1)
    (i32.shr_u
     (i32.load
      (get_local $2)
     )
     (i32.const 3)
    )
   )
   (block $~lib/internal/arraybuffer/loadUnsafe<f64,f64>|inlined.2 (result f64)
    (f64.load offset=8
     (i32.add
      (get_local $2)
      (i32.shl
       (get_local $1)
       (i32.const 3)
      )
     )
    )
   )
   (unreachable)
  )
 )
 (func $~lib/builtins/isNaN<f64> (; 93 ;) (type $Fi) (param $0 f64) (result i32)
  (f64.ne
   (get_local $0)
   (get_local $0)
  )
 )
 (func $std/array/isArraysEqual<f64> (; 94 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.eqz
    (get_local $2)
   )
   (block
    (if
     (i32.ne
      (block $~lib/array/Array<f64>#get:length|inlined.2 (result i32)
       (i32.load offset=4
        (get_local $0)
       )
      )
      (block $~lib/array/Array<f64>#get:length|inlined.3 (result i32)
       (i32.load offset=4
        (get_local $1)
       )
      )
     )
     (return
      (i32.const 0)
     )
    )
    (set_local $2
     (block $~lib/array/Array<f64>#get:length|inlined.4 (result i32)
      (i32.load offset=4
       (get_local $0)
      )
     )
    )
   )
  )
  (block $break|0
   (set_local $3
    (i32.const 0)
   )
   (loop $repeat|0
    (block $continue|0
     (br_if $break|0
      (i32.eqz
       (i32.lt_s
        (get_local $3)
        (get_local $2)
       )
      )
     )
     (block
      (if
       (if (result i32)
        (tee_local $4
         (call $~lib/builtins/isNaN<f64>
          (call $~lib/array/Array<f64>#__get
           (get_local $0)
           (get_local $3)
          )
         )
        )
        (i32.eq
         (call $~lib/builtins/isNaN<f64>
          (call $~lib/array/Array<f64>#__get
           (get_local $0)
           (get_local $3)
          )
         )
         (call $~lib/builtins/isNaN<f64>
          (call $~lib/array/Array<f64>#__get
           (get_local $1)
           (get_local $3)
          )
         )
        )
        (get_local $4)
       )
       (br $continue|0)
      )
      (if
       (f64.ne
        (call $~lib/array/Array<f64>#__get
         (get_local $0)
         (get_local $3)
        )
        (call $~lib/array/Array<f64>#__get
         (get_local $1)
         (get_local $3)
        )
       )
       (return
        (i32.const 0)
       )
      )
     )
    )
    (set_local $3
     (i32.add
      (get_local $3)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (i32.const 1)
 )
 (func $~lib/internal/array/insertionSort<i32> (; 95 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (block $break|0
   (set_local $4
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $4)
       (get_local $2)
      )
     )
    )
    (block
     (set_local $5
      (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<i32,i32>|inlined.0 (result i32)
       (i32.load offset=8
        (i32.add
         (i32.add
          (get_local $0)
          (get_local $1)
         )
         (i32.shl
          (get_local $4)
          (i32.const 2)
         )
        )
       )
      )
     )
     (set_local $6
      (i32.sub
       (get_local $4)
       (i32.const 1)
      )
     )
     (block $break|1
      (loop $continue|1
       (if
        (i32.ge_s
         (get_local $6)
         (i32.const 0)
        )
        (block
         (block
          (set_local $7
           (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<i32,i32>|inlined.1 (result i32)
            (i32.load offset=8
             (i32.add
              (i32.add
               (get_local $0)
               (get_local $1)
              )
              (i32.shl
               (get_local $6)
               (i32.const 2)
              )
             )
            )
           )
          )
          (if
           (i32.lt_s
            (block (result i32)
             (set_global $~argc
              (i32.const 2)
             )
             (call_indirect (type $iii)
              (get_local $5)
              (get_local $7)
              (get_local $3)
             )
            )
            (i32.const 0)
           )
           (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<i32,i32>|inlined.0
            (set_local $8
             (i32.add
              (block (result i32)
               (set_local $8
                (get_local $6)
               )
               (set_local $6
                (i32.sub
                 (get_local $8)
                 (i32.const 1)
                )
               )
               (get_local $8)
              )
              (i32.const 1)
             )
            )
            (i32.store offset=8
             (i32.add
              (i32.add
               (get_local $0)
               (get_local $1)
              )
              (i32.shl
               (get_local $8)
               (i32.const 2)
              )
             )
             (get_local $7)
            )
           )
           (br $break|1)
          )
         )
         (br $continue|1)
        )
       )
      )
     )
     (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<i32,i32>|inlined.1
      (set_local $7
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (i32.store offset=8
       (i32.add
        (i32.add
         (get_local $0)
         (get_local $1)
        )
        (i32.shl
         (get_local $7)
         (i32.const 2)
        )
       )
       (get_local $5)
      )
     )
    )
    (set_local $4
     (i32.add
      (get_local $4)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
 )
 (func $~lib/internal/array/weakHeapSort<i32> (; 96 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (set_local $4
   (i32.shl
    (i32.shr_s
     (i32.add
      (get_local $2)
      (i32.const 31)
     )
     (i32.const 5)
    )
    (i32.const 2)
   )
  )
  (set_local $5
   (block $~lib/memory/memory.allocate|inlined.3 (result i32)
    (br $~lib/memory/memory.allocate|inlined.3
     (call $~lib/allocator/arena/__memory_allocate
      (get_local $4)
     )
    )
   )
  )
  (block $~lib/memory/memory.fill|inlined.6
   (set_local $6
    (i32.const 0)
   )
   (call $~lib/internal/memory/memset
    (get_local $5)
    (get_local $6)
    (get_local $4)
   )
  )
  (block $break|0
   (set_local $6
    (i32.sub
     (get_local $2)
     (i32.const 1)
    )
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.gt_s
       (get_local $6)
       (i32.const 0)
      )
     )
    )
    (block
     (set_local $7
      (get_local $6)
     )
     (block $break|1
      (loop $continue|1
       (if
        (i32.eq
         (i32.and
          (get_local $7)
          (i32.const 1)
         )
         (i32.and
          (i32.shr_u
           (i32.load
            (i32.add
             (get_local $5)
             (i32.shl
              (i32.shr_s
               (get_local $7)
               (i32.const 6)
              )
              (i32.const 2)
             )
            )
           )
           (i32.and
            (i32.shr_s
             (get_local $7)
             (i32.const 1)
            )
            (i32.const 31)
           )
          )
          (i32.const 1)
         )
        )
        (block
         (set_local $7
          (i32.shr_s
           (get_local $7)
           (i32.const 1)
          )
         )
         (br $continue|1)
        )
       )
      )
     )
     (set_local $8
      (i32.shr_s
       (get_local $7)
       (i32.const 1)
      )
     )
     (set_local $9
      (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<i32,i32>|inlined.2 (result i32)
       (i32.load offset=8
        (i32.add
         (i32.add
          (get_local $0)
          (get_local $1)
         )
         (i32.shl
          (get_local $8)
          (i32.const 2)
         )
        )
       )
      )
     )
     (set_local $10
      (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<i32,i32>|inlined.3 (result i32)
       (i32.load offset=8
        (i32.add
         (i32.add
          (get_local $0)
          (get_local $1)
         )
         (i32.shl
          (get_local $6)
          (i32.const 2)
         )
        )
       )
      )
     )
     (if
      (i32.lt_s
       (block (result i32)
        (set_global $~argc
         (i32.const 2)
        )
        (call_indirect (type $iii)
         (get_local $9)
         (get_local $10)
         (get_local $3)
        )
       )
       (i32.const 0)
      )
      (block
       (i32.store
        (i32.add
         (get_local $5)
         (i32.shl
          (i32.shr_s
           (get_local $6)
           (i32.const 5)
          )
          (i32.const 2)
         )
        )
        (i32.xor
         (i32.load
          (i32.add
           (get_local $5)
           (i32.shl
            (i32.shr_s
             (get_local $6)
             (i32.const 5)
            )
            (i32.const 2)
           )
          )
         )
         (i32.shl
          (i32.const 1)
          (i32.and
           (get_local $6)
           (i32.const 31)
          )
         )
        )
       )
       (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<i32,i32>|inlined.2
        (i32.store offset=8
         (i32.add
          (i32.add
           (get_local $0)
           (get_local $1)
          )
          (i32.shl
           (get_local $6)
           (i32.const 2)
          )
         )
         (get_local $9)
        )
       )
       (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<i32,i32>|inlined.3
        (i32.store offset=8
         (i32.add
          (i32.add
           (get_local $0)
           (get_local $1)
          )
          (i32.shl
           (get_local $8)
           (i32.const 2)
          )
         )
         (get_local $10)
        )
       )
      )
     )
    )
    (set_local $6
     (i32.sub
      (get_local $6)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (block $break|2
   (set_local $6
    (i32.sub
     (get_local $2)
     (i32.const 1)
    )
   )
   (loop $repeat|2
    (br_if $break|2
     (i32.eqz
      (i32.ge_s
       (get_local $6)
       (i32.const 2)
      )
     )
    )
    (block
     (set_local $10
      (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<i32,i32>|inlined.4 (result i32)
       (set_local $10
        (i32.const 0)
       )
       (i32.load offset=8
        (i32.add
         (i32.add
          (get_local $0)
          (get_local $1)
         )
         (i32.shl
          (get_local $10)
          (i32.const 2)
         )
        )
       )
      )
     )
     (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<i32,i32>|inlined.4
      (set_local $9
       (i32.const 0)
      )
      (set_local $8
       (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<i32,i32>|inlined.5 (result i32)
        (i32.load offset=8
         (i32.add
          (i32.add
           (get_local $0)
           (get_local $1)
          )
          (i32.shl
           (get_local $6)
           (i32.const 2)
          )
         )
        )
       )
      )
      (i32.store offset=8
       (i32.add
        (i32.add
         (get_local $0)
         (get_local $1)
        )
        (i32.shl
         (get_local $9)
         (i32.const 2)
        )
       )
       (get_local $8)
      )
     )
     (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<i32,i32>|inlined.5
      (i32.store offset=8
       (i32.add
        (i32.add
         (get_local $0)
         (get_local $1)
        )
        (i32.shl
         (get_local $6)
         (i32.const 2)
        )
       )
       (get_local $10)
      )
     )
     (set_local $8
      (i32.const 1)
     )
     (block $break|3
      (loop $continue|3
       (if
        (i32.lt_s
         (tee_local $9
          (i32.add
           (i32.shl
            (get_local $8)
            (i32.const 1)
           )
           (i32.and
            (i32.shr_u
             (i32.load
              (i32.add
               (get_local $5)
               (i32.shl
                (i32.shr_s
                 (get_local $8)
                 (i32.const 5)
                )
                (i32.const 2)
               )
              )
             )
             (i32.and
              (get_local $8)
              (i32.const 31)
             )
            )
            (i32.const 1)
           )
          )
         )
         (get_local $6)
        )
        (block
         (set_local $8
          (get_local $9)
         )
         (br $continue|3)
        )
       )
      )
     )
     (block $break|4
      (loop $continue|4
       (if
        (i32.gt_s
         (get_local $8)
         (i32.const 0)
        )
        (block
         (block
          (set_local $10
           (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<i32,i32>|inlined.6 (result i32)
            (set_local $7
             (i32.const 0)
            )
            (i32.load offset=8
             (i32.add
              (i32.add
               (get_local $0)
               (get_local $1)
              )
              (i32.shl
               (get_local $7)
               (i32.const 2)
              )
             )
            )
           )
          )
          (set_local $7
           (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<i32,i32>|inlined.7 (result i32)
            (i32.load offset=8
             (i32.add
              (i32.add
               (get_local $0)
               (get_local $1)
              )
              (i32.shl
               (get_local $8)
               (i32.const 2)
              )
             )
            )
           )
          )
          (if
           (i32.lt_s
            (block (result i32)
             (set_global $~argc
              (i32.const 2)
             )
             (call_indirect (type $iii)
              (get_local $10)
              (get_local $7)
              (get_local $3)
             )
            )
            (i32.const 0)
           )
           (block
            (i32.store
             (i32.add
              (get_local $5)
              (i32.shl
               (i32.shr_s
                (get_local $8)
                (i32.const 5)
               )
               (i32.const 2)
              )
             )
             (i32.xor
              (i32.load
               (i32.add
                (get_local $5)
                (i32.shl
                 (i32.shr_s
                  (get_local $8)
                  (i32.const 5)
                 )
                 (i32.const 2)
                )
               )
              )
              (i32.shl
               (i32.const 1)
               (i32.and
                (get_local $8)
                (i32.const 31)
               )
              )
             )
            )
            (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<i32,i32>|inlined.6
             (i32.store offset=8
              (i32.add
               (i32.add
                (get_local $0)
                (get_local $1)
               )
               (i32.shl
                (get_local $8)
                (i32.const 2)
               )
              )
              (get_local $10)
             )
            )
            (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<i32,i32>|inlined.7
             (set_local $11
              (i32.const 0)
             )
             (i32.store offset=8
              (i32.add
               (i32.add
                (get_local $0)
                (get_local $1)
               )
               (i32.shl
                (get_local $11)
                (i32.const 2)
               )
              )
              (get_local $7)
             )
            )
           )
          )
          (set_local $8
           (i32.shr_s
            (get_local $8)
            (i32.const 1)
           )
          )
         )
         (br $continue|4)
        )
       )
      )
     )
    )
    (set_local $6
     (i32.sub
      (get_local $6)
      (i32.const 1)
     )
    )
    (br $repeat|2)
   )
  )
  (block $~lib/memory/memory.free|inlined.2
   (block
    (call $~lib/allocator/arena/__memory_free
     (get_local $5)
    )
    (br $~lib/memory/memory.free|inlined.2)
   )
  )
  (set_local $12
   (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<i32,i32>|inlined.8 (result i32)
    (set_local $6
     (i32.const 1)
    )
    (i32.load offset=8
     (i32.add
      (i32.add
       (get_local $0)
       (get_local $1)
      )
      (i32.shl
       (get_local $6)
       (i32.const 2)
      )
     )
    )
   )
  )
  (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<i32,i32>|inlined.8
   (set_local $6
    (i32.const 1)
   )
   (set_local $9
    (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<i32,i32>|inlined.9 (result i32)
     (set_local $9
      (i32.const 0)
     )
     (i32.load offset=8
      (i32.add
       (i32.add
        (get_local $0)
        (get_local $1)
       )
       (i32.shl
        (get_local $9)
        (i32.const 2)
       )
      )
     )
    )
   )
   (i32.store offset=8
    (i32.add
     (i32.add
      (get_local $0)
      (get_local $1)
     )
     (i32.shl
      (get_local $6)
      (i32.const 2)
     )
    )
    (get_local $9)
   )
  )
  (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<i32,i32>|inlined.9
   (set_local $9
    (i32.const 0)
   )
   (i32.store offset=8
    (i32.add
     (i32.add
      (get_local $0)
      (get_local $1)
     )
     (i32.shl
      (get_local $9)
      (i32.const 2)
     )
    )
    (get_local $12)
   )
  )
 )
 (func $~lib/array/Array<i32>#sort (; 97 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (if
   (i32.eqz
    (get_local $1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 311)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  (set_local $2
   (i32.load offset=4
    (get_local $0)
   )
  )
  (if
   (i32.le_s
    (get_local $2)
    (i32.const 1)
   )
   (return
    (get_local $0)
   )
  )
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (if
   (i32.eq
    (get_local $2)
    (i32.const 2)
   )
   (block
    (set_local $4
     (block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.23 (result i32)
      (set_local $4
       (i32.const 1)
      )
      (i32.load offset=8
       (i32.add
        (get_local $3)
        (i32.shl
         (get_local $4)
         (i32.const 2)
        )
       )
      )
     )
    )
    (set_local $5
     (block $~lib/internal/arraybuffer/loadUnsafe<i32,i32>|inlined.24 (result i32)
      (set_local $5
       (i32.const 0)
      )
      (i32.load offset=8
       (i32.add
        (get_local $3)
        (i32.shl
         (get_local $5)
         (i32.const 2)
        )
       )
      )
     )
    )
    (if
     (i32.lt_s
      (block (result i32)
       (set_global $~argc
        (i32.const 2)
       )
       (call_indirect (type $iii)
        (get_local $4)
        (get_local $5)
        (get_local $1)
       )
      )
      (i32.const 0)
     )
     (block
      (block $~lib/internal/arraybuffer/storeUnsafe<i32,i32>|inlined.7
       (set_local $6
        (i32.const 1)
       )
       (i32.store offset=8
        (i32.add
         (get_local $3)
         (i32.shl
          (get_local $6)
          (i32.const 2)
         )
        )
        (get_local $5)
       )
      )
      (block $~lib/internal/arraybuffer/storeUnsafe<i32,i32>|inlined.8
       (set_local $6
        (i32.const 0)
       )
       (i32.store offset=8
        (i32.add
         (get_local $3)
         (i32.shl
          (get_local $6)
          (i32.const 2)
         )
        )
        (get_local $4)
       )
      )
     )
    )
    (return
     (get_local $0)
    )
   )
  )
  (if
   (i32.lt_s
    (get_local $2)
    (i32.const 256)
   )
   (call $~lib/internal/array/insertionSort<i32>
    (get_local $3)
    (i32.const 0)
    (get_local $2)
    (get_local $1)
   )
   (call $~lib/internal/array/weakHeapSort<i32>
    (get_local $3)
    (i32.const 0)
    (get_local $2)
    (get_local $1)
   )
  )
  (return
   (get_local $0)
  )
 )
 (func $~lib/array/Array<i32>#sort|trampoline~anonymous|44 (; 98 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.sub
   (get_local $0)
   (get_local $1)
  )
 )
 (func $~lib/array/Array<i32>#sort|trampoline (; 99 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (get_global $~argc)
     )
    )
    (unreachable)
   )
   (set_local $1
    (block $~lib/internal/array/defaultComparator<i32>|inlined.0 (result i32)
     (br $~lib/internal/array/defaultComparator<i32>|inlined.0
      (i32.const 44)
     )
    )
   )
  )
  (call $~lib/array/Array<i32>#sort
   (get_local $0)
   (get_local $1)
  )
 )
 (func $std/array/isArraysEqual<i32> (; 100 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (if
   (i32.eqz
    (get_local $2)
   )
   (block
    (if
     (i32.ne
      (block $~lib/array/Array<i32>#get:length|inlined.31 (result i32)
       (i32.load offset=4
        (get_local $0)
       )
      )
      (block $~lib/array/Array<i32>#get:length|inlined.32 (result i32)
       (i32.load offset=4
        (get_local $1)
       )
      )
     )
     (return
      (i32.const 0)
     )
    )
    (set_local $2
     (block $~lib/array/Array<i32>#get:length|inlined.33 (result i32)
      (i32.load offset=4
       (get_local $0)
      )
     )
    )
   )
  )
  (block $break|0
   (set_local $3
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $3)
       (get_local $2)
      )
     )
    )
    (if
     (i32.ne
      (call $~lib/array/Array<i32>#__get
       (get_local $0)
       (get_local $3)
      )
      (call $~lib/array/Array<i32>#__get
       (get_local $1)
       (get_local $3)
      )
     )
     (return
      (i32.const 0)
     )
    )
    (set_local $3
     (i32.add
      (get_local $3)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (i32.const 1)
 )
 (func $~lib/internal/array/insertionSort<u32> (; 101 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (block $break|0
   (set_local $4
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $4)
       (get_local $2)
      )
     )
    )
    (block
     (set_local $5
      (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<u32,u32>|inlined.0 (result i32)
       (i32.load offset=8
        (i32.add
         (i32.add
          (get_local $0)
          (get_local $1)
         )
         (i32.shl
          (get_local $4)
          (i32.const 2)
         )
        )
       )
      )
     )
     (set_local $6
      (i32.sub
       (get_local $4)
       (i32.const 1)
      )
     )
     (block $break|1
      (loop $continue|1
       (if
        (i32.ge_s
         (get_local $6)
         (i32.const 0)
        )
        (block
         (block
          (set_local $7
           (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<u32,u32>|inlined.1 (result i32)
            (i32.load offset=8
             (i32.add
              (i32.add
               (get_local $0)
               (get_local $1)
              )
              (i32.shl
               (get_local $6)
               (i32.const 2)
              )
             )
            )
           )
          )
          (if
           (i32.lt_s
            (block (result i32)
             (set_global $~argc
              (i32.const 2)
             )
             (call_indirect (type $iii)
              (get_local $5)
              (get_local $7)
              (get_local $3)
             )
            )
            (i32.const 0)
           )
           (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<u32,u32>|inlined.0
            (set_local $8
             (i32.add
              (block (result i32)
               (set_local $8
                (get_local $6)
               )
               (set_local $6
                (i32.sub
                 (get_local $8)
                 (i32.const 1)
                )
               )
               (get_local $8)
              )
              (i32.const 1)
             )
            )
            (i32.store offset=8
             (i32.add
              (i32.add
               (get_local $0)
               (get_local $1)
              )
              (i32.shl
               (get_local $8)
               (i32.const 2)
              )
             )
             (get_local $7)
            )
           )
           (br $break|1)
          )
         )
         (br $continue|1)
        )
       )
      )
     )
     (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<u32,u32>|inlined.1
      (set_local $7
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (i32.store offset=8
       (i32.add
        (i32.add
         (get_local $0)
         (get_local $1)
        )
        (i32.shl
         (get_local $7)
         (i32.const 2)
        )
       )
       (get_local $5)
      )
     )
    )
    (set_local $4
     (i32.add
      (get_local $4)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
 )
 (func $~lib/internal/array/weakHeapSort<u32> (; 102 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (set_local $4
   (i32.shl
    (i32.shr_s
     (i32.add
      (get_local $2)
      (i32.const 31)
     )
     (i32.const 5)
    )
    (i32.const 2)
   )
  )
  (set_local $5
   (block $~lib/memory/memory.allocate|inlined.4 (result i32)
    (br $~lib/memory/memory.allocate|inlined.4
     (call $~lib/allocator/arena/__memory_allocate
      (get_local $4)
     )
    )
   )
  )
  (block $~lib/memory/memory.fill|inlined.7
   (set_local $6
    (i32.const 0)
   )
   (call $~lib/internal/memory/memset
    (get_local $5)
    (get_local $6)
    (get_local $4)
   )
  )
  (block $break|0
   (set_local $6
    (i32.sub
     (get_local $2)
     (i32.const 1)
    )
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.gt_s
       (get_local $6)
       (i32.const 0)
      )
     )
    )
    (block
     (set_local $7
      (get_local $6)
     )
     (block $break|1
      (loop $continue|1
       (if
        (i32.eq
         (i32.and
          (get_local $7)
          (i32.const 1)
         )
         (i32.and
          (i32.shr_u
           (i32.load
            (i32.add
             (get_local $5)
             (i32.shl
              (i32.shr_s
               (get_local $7)
               (i32.const 6)
              )
              (i32.const 2)
             )
            )
           )
           (i32.and
            (i32.shr_s
             (get_local $7)
             (i32.const 1)
            )
            (i32.const 31)
           )
          )
          (i32.const 1)
         )
        )
        (block
         (set_local $7
          (i32.shr_s
           (get_local $7)
           (i32.const 1)
          )
         )
         (br $continue|1)
        )
       )
      )
     )
     (set_local $8
      (i32.shr_s
       (get_local $7)
       (i32.const 1)
      )
     )
     (set_local $9
      (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<u32,u32>|inlined.2 (result i32)
       (i32.load offset=8
        (i32.add
         (i32.add
          (get_local $0)
          (get_local $1)
         )
         (i32.shl
          (get_local $8)
          (i32.const 2)
         )
        )
       )
      )
     )
     (set_local $10
      (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<u32,u32>|inlined.3 (result i32)
       (i32.load offset=8
        (i32.add
         (i32.add
          (get_local $0)
          (get_local $1)
         )
         (i32.shl
          (get_local $6)
          (i32.const 2)
         )
        )
       )
      )
     )
     (if
      (i32.lt_s
       (block (result i32)
        (set_global $~argc
         (i32.const 2)
        )
        (call_indirect (type $iii)
         (get_local $9)
         (get_local $10)
         (get_local $3)
        )
       )
       (i32.const 0)
      )
      (block
       (i32.store
        (i32.add
         (get_local $5)
         (i32.shl
          (i32.shr_s
           (get_local $6)
           (i32.const 5)
          )
          (i32.const 2)
         )
        )
        (i32.xor
         (i32.load
          (i32.add
           (get_local $5)
           (i32.shl
            (i32.shr_s
             (get_local $6)
             (i32.const 5)
            )
            (i32.const 2)
           )
          )
         )
         (i32.shl
          (i32.const 1)
          (i32.and
           (get_local $6)
           (i32.const 31)
          )
         )
        )
       )
       (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<u32,u32>|inlined.2
        (i32.store offset=8
         (i32.add
          (i32.add
           (get_local $0)
           (get_local $1)
          )
          (i32.shl
           (get_local $6)
           (i32.const 2)
          )
         )
         (get_local $9)
        )
       )
       (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<u32,u32>|inlined.3
        (i32.store offset=8
         (i32.add
          (i32.add
           (get_local $0)
           (get_local $1)
          )
          (i32.shl
           (get_local $8)
           (i32.const 2)
          )
         )
         (get_local $10)
        )
       )
      )
     )
    )
    (set_local $6
     (i32.sub
      (get_local $6)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (block $break|2
   (set_local $6
    (i32.sub
     (get_local $2)
     (i32.const 1)
    )
   )
   (loop $repeat|2
    (br_if $break|2
     (i32.eqz
      (i32.ge_s
       (get_local $6)
       (i32.const 2)
      )
     )
    )
    (block
     (set_local $10
      (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<u32,u32>|inlined.4 (result i32)
       (set_local $10
        (i32.const 0)
       )
       (i32.load offset=8
        (i32.add
         (i32.add
          (get_local $0)
          (get_local $1)
         )
         (i32.shl
          (get_local $10)
          (i32.const 2)
         )
        )
       )
      )
     )
     (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<u32,u32>|inlined.4
      (set_local $9
       (i32.const 0)
      )
      (set_local $8
       (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<u32,u32>|inlined.5 (result i32)
        (i32.load offset=8
         (i32.add
          (i32.add
           (get_local $0)
           (get_local $1)
          )
          (i32.shl
           (get_local $6)
           (i32.const 2)
          )
         )
        )
       )
      )
      (i32.store offset=8
       (i32.add
        (i32.add
         (get_local $0)
         (get_local $1)
        )
        (i32.shl
         (get_local $9)
         (i32.const 2)
        )
       )
       (get_local $8)
      )
     )
     (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<u32,u32>|inlined.5
      (i32.store offset=8
       (i32.add
        (i32.add
         (get_local $0)
         (get_local $1)
        )
        (i32.shl
         (get_local $6)
         (i32.const 2)
        )
       )
       (get_local $10)
      )
     )
     (set_local $8
      (i32.const 1)
     )
     (block $break|3
      (loop $continue|3
       (if
        (i32.lt_s
         (tee_local $9
          (i32.add
           (i32.shl
            (get_local $8)
            (i32.const 1)
           )
           (i32.and
            (i32.shr_u
             (i32.load
              (i32.add
               (get_local $5)
               (i32.shl
                (i32.shr_s
                 (get_local $8)
                 (i32.const 5)
                )
                (i32.const 2)
               )
              )
             )
             (i32.and
              (get_local $8)
              (i32.const 31)
             )
            )
            (i32.const 1)
           )
          )
         )
         (get_local $6)
        )
        (block
         (set_local $8
          (get_local $9)
         )
         (br $continue|3)
        )
       )
      )
     )
     (block $break|4
      (loop $continue|4
       (if
        (i32.gt_s
         (get_local $8)
         (i32.const 0)
        )
        (block
         (block
          (set_local $10
           (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<u32,u32>|inlined.6 (result i32)
            (set_local $7
             (i32.const 0)
            )
            (i32.load offset=8
             (i32.add
              (i32.add
               (get_local $0)
               (get_local $1)
              )
              (i32.shl
               (get_local $7)
               (i32.const 2)
              )
             )
            )
           )
          )
          (set_local $7
           (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<u32,u32>|inlined.7 (result i32)
            (i32.load offset=8
             (i32.add
              (i32.add
               (get_local $0)
               (get_local $1)
              )
              (i32.shl
               (get_local $8)
               (i32.const 2)
              )
             )
            )
           )
          )
          (if
           (i32.lt_s
            (block (result i32)
             (set_global $~argc
              (i32.const 2)
             )
             (call_indirect (type $iii)
              (get_local $10)
              (get_local $7)
              (get_local $3)
             )
            )
            (i32.const 0)
           )
           (block
            (i32.store
             (i32.add
              (get_local $5)
              (i32.shl
               (i32.shr_s
                (get_local $8)
                (i32.const 5)
               )
               (i32.const 2)
              )
             )
             (i32.xor
              (i32.load
               (i32.add
                (get_local $5)
                (i32.shl
                 (i32.shr_s
                  (get_local $8)
                  (i32.const 5)
                 )
                 (i32.const 2)
                )
               )
              )
              (i32.shl
               (i32.const 1)
               (i32.and
                (get_local $8)
                (i32.const 31)
               )
              )
             )
            )
            (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<u32,u32>|inlined.6
             (i32.store offset=8
              (i32.add
               (i32.add
                (get_local $0)
                (get_local $1)
               )
               (i32.shl
                (get_local $8)
                (i32.const 2)
               )
              )
              (get_local $10)
             )
            )
            (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<u32,u32>|inlined.7
             (set_local $11
              (i32.const 0)
             )
             (i32.store offset=8
              (i32.add
               (i32.add
                (get_local $0)
                (get_local $1)
               )
               (i32.shl
                (get_local $11)
                (i32.const 2)
               )
              )
              (get_local $7)
             )
            )
           )
          )
          (set_local $8
           (i32.shr_s
            (get_local $8)
            (i32.const 1)
           )
          )
         )
         (br $continue|4)
        )
       )
      )
     )
    )
    (set_local $6
     (i32.sub
      (get_local $6)
      (i32.const 1)
     )
    )
    (br $repeat|2)
   )
  )
  (block $~lib/memory/memory.free|inlined.3
   (block
    (call $~lib/allocator/arena/__memory_free
     (get_local $5)
    )
    (br $~lib/memory/memory.free|inlined.3)
   )
  )
  (set_local $12
   (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<u32,u32>|inlined.8 (result i32)
    (set_local $6
     (i32.const 1)
    )
    (i32.load offset=8
     (i32.add
      (i32.add
       (get_local $0)
       (get_local $1)
      )
      (i32.shl
       (get_local $6)
       (i32.const 2)
      )
     )
    )
   )
  )
  (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<u32,u32>|inlined.8
   (set_local $6
    (i32.const 1)
   )
   (set_local $9
    (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<u32,u32>|inlined.9 (result i32)
     (set_local $9
      (i32.const 0)
     )
     (i32.load offset=8
      (i32.add
       (i32.add
        (get_local $0)
        (get_local $1)
       )
       (i32.shl
        (get_local $9)
        (i32.const 2)
       )
      )
     )
    )
   )
   (i32.store offset=8
    (i32.add
     (i32.add
      (get_local $0)
      (get_local $1)
     )
     (i32.shl
      (get_local $6)
      (i32.const 2)
     )
    )
    (get_local $9)
   )
  )
  (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<u32,u32>|inlined.9
   (set_local $9
    (i32.const 0)
   )
   (i32.store offset=8
    (i32.add
     (i32.add
      (get_local $0)
      (get_local $1)
     )
     (i32.shl
      (get_local $9)
      (i32.const 2)
     )
    )
    (get_local $12)
   )
  )
 )
 (func $~lib/array/Array<u32>#sort (; 103 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (if
   (i32.eqz
    (get_local $1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 311)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  (set_local $2
   (i32.load offset=4
    (get_local $0)
   )
  )
  (if
   (i32.le_s
    (get_local $2)
    (i32.const 1)
   )
   (return
    (get_local $0)
   )
  )
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (if
   (i32.eq
    (get_local $2)
    (i32.const 2)
   )
   (block
    (set_local $4
     (block $~lib/internal/arraybuffer/loadUnsafe<u32,u32>|inlined.0 (result i32)
      (set_local $4
       (i32.const 1)
      )
      (i32.load offset=8
       (i32.add
        (get_local $3)
        (i32.shl
         (get_local $4)
         (i32.const 2)
        )
       )
      )
     )
    )
    (set_local $5
     (block $~lib/internal/arraybuffer/loadUnsafe<u32,u32>|inlined.1 (result i32)
      (set_local $5
       (i32.const 0)
      )
      (i32.load offset=8
       (i32.add
        (get_local $3)
        (i32.shl
         (get_local $5)
         (i32.const 2)
        )
       )
      )
     )
    )
    (if
     (i32.lt_s
      (block (result i32)
       (set_global $~argc
        (i32.const 2)
       )
       (call_indirect (type $iii)
        (get_local $4)
        (get_local $5)
        (get_local $1)
       )
      )
      (i32.const 0)
     )
     (block
      (block $~lib/internal/arraybuffer/storeUnsafe<u32,u32>|inlined.0
       (set_local $6
        (i32.const 1)
       )
       (i32.store offset=8
        (i32.add
         (get_local $3)
         (i32.shl
          (get_local $6)
          (i32.const 2)
         )
        )
        (get_local $5)
       )
      )
      (block $~lib/internal/arraybuffer/storeUnsafe<u32,u32>|inlined.1
       (set_local $6
        (i32.const 0)
       )
       (i32.store offset=8
        (i32.add
         (get_local $3)
         (i32.shl
          (get_local $6)
          (i32.const 2)
         )
        )
        (get_local $4)
       )
      )
     )
    )
    (return
     (get_local $0)
    )
   )
  )
  (if
   (i32.lt_s
    (get_local $2)
    (i32.const 256)
   )
   (call $~lib/internal/array/insertionSort<u32>
    (get_local $3)
    (i32.const 0)
    (get_local $2)
    (get_local $1)
   )
   (call $~lib/internal/array/weakHeapSort<u32>
    (get_local $3)
    (i32.const 0)
    (get_local $2)
    (get_local $1)
   )
  )
  (return
   (get_local $0)
  )
 )
 (func $~lib/array/Array<u32>#sort|trampoline~anonymous|45 (; 104 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.sub
   (i32.gt_u
    (get_local $0)
    (get_local $1)
   )
   (i32.lt_u
    (get_local $0)
    (get_local $1)
   )
  )
 )
 (func $~lib/array/Array<u32>#sort|trampoline (; 105 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $outOfRange
     (br_table $0of1 $1of1 $outOfRange
      (get_global $~argc)
     )
    )
    (unreachable)
   )
   (set_local $1
    (block $~lib/internal/array/defaultComparator<u32>|inlined.0 (result i32)
     (br $~lib/internal/array/defaultComparator<u32>|inlined.0
      (i32.const 45)
     )
    )
   )
  )
  (call $~lib/array/Array<u32>#sort
   (get_local $0)
   (get_local $1)
  )
 )
 (func $~lib/array/Array<u32>#__get (; 106 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (if (result i32)
   (i32.lt_u
    (get_local $1)
    (i32.shr_u
     (i32.load
      (get_local $2)
     )
     (i32.const 2)
    )
   )
   (block $~lib/internal/arraybuffer/loadUnsafe<u32,u32>|inlined.2 (result i32)
    (i32.load offset=8
     (i32.add
      (get_local $2)
      (i32.shl
       (get_local $1)
       (i32.const 2)
      )
     )
    )
   )
   (unreachable)
  )
 )
 (func $std/array/isArraysEqual<u32> (; 107 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (if
   (i32.eqz
    (get_local $2)
   )
   (block
    (if
     (i32.ne
      (block $~lib/array/Array<u32>#get:length|inlined.2 (result i32)
       (i32.load offset=4
        (get_local $0)
       )
      )
      (block $~lib/array/Array<u32>#get:length|inlined.3 (result i32)
       (i32.load offset=4
        (get_local $1)
       )
      )
     )
     (return
      (i32.const 0)
     )
    )
    (set_local $2
     (block $~lib/array/Array<u32>#get:length|inlined.4 (result i32)
      (i32.load offset=4
       (get_local $0)
      )
     )
    )
   )
  )
  (block $break|0
   (set_local $3
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $3)
       (get_local $2)
      )
     )
    )
    (if
     (i32.ne
      (call $~lib/array/Array<u32>#__get
       (get_local $0)
       (get_local $3)
      )
      (call $~lib/array/Array<u32>#__get
       (get_local $1)
       (get_local $3)
      )
     )
     (return
      (i32.const 0)
     )
    )
    (set_local $3
     (i32.add
      (get_local $3)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (i32.const 1)
 )
 (func $std/array/createReverseOrderedArray (; 108 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (set_local $1
   (call $~lib/array/Array<i32>#constructor
    (i32.const 0)
    (get_local $0)
   )
  )
  (block $break|0
   (set_local $2
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $2)
       (block $~lib/array/Array<i32>#get:length|inlined.35 (result i32)
        (i32.load offset=4
         (get_local $1)
        )
       )
      )
     )
    )
    (call $~lib/array/Array<i32>#__set
     (get_local $1)
     (get_local $2)
     (i32.sub
      (i32.sub
       (block $~lib/array/Array<i32>#get:length|inlined.36 (result i32)
        (i32.load offset=4
         (get_local $1)
        )
       )
       (i32.const 1)
      )
      (get_local $2)
     )
    )
    (set_local $2
     (i32.add
      (get_local $2)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $1)
 )
 (func $~lib/math/NativeMath.random (; 109 ;) (type $F) (result f64)
  (local $0 i64)
  (local $1 i64)
  (local $2 i64)
  (if
   (i32.eqz
    (get_global $~lib/math/random_seeded)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 136)
     (i32.const 1007)
     (i32.const 24)
    )
    (unreachable)
   )
  )
  (set_local $0
   (get_global $~lib/math/random_state0)
  )
  (set_local $1
   (get_global $~lib/math/random_state1)
  )
  (set_global $~lib/math/random_state0
   (get_local $1)
  )
  (set_local $0
   (i64.xor
    (get_local $0)
    (i64.shl
     (get_local $0)
     (i64.const 23)
    )
   )
  )
  (set_local $0
   (i64.xor
    (get_local $0)
    (i64.shr_u
     (get_local $0)
     (i64.const 17)
    )
   )
  )
  (set_local $0
   (i64.xor
    (get_local $0)
    (get_local $1)
   )
  )
  (set_local $0
   (i64.xor
    (get_local $0)
    (i64.shr_u
     (get_local $1)
     (i64.const 26)
    )
   )
  )
  (set_global $~lib/math/random_state1
   (get_local $0)
  )
  (set_local $2
   (i64.or
    (i64.and
     (i64.add
      (get_local $1)
      (get_local $0)
     )
     (i64.const 4503599627370495)
    )
    (i64.const 4607182418800017408)
   )
  )
  (f64.sub
   (f64.reinterpret/i64
    (get_local $2)
   )
   (f64.const 1)
  )
 )
 (func $std/array/createRandomOrderedArray (; 110 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (set_local $1
   (call $~lib/array/Array<i32>#constructor
    (i32.const 0)
    (get_local $0)
   )
  )
  (block $break|0
   (set_local $2
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $2)
       (block $~lib/array/Array<i32>#get:length|inlined.38 (result i32)
        (i32.load offset=4
         (get_local $1)
        )
       )
      )
     )
    )
    (call $~lib/array/Array<i32>#__set
     (get_local $1)
     (get_local $2)
     (i32.trunc_s/f64
      (f64.mul
       (call $~lib/math/NativeMath.random)
       (f64.convert_s/i32
        (block $~lib/array/Array<i32>#get:length|inlined.39 (result i32)
         (i32.load offset=4
          (get_local $1)
         )
        )
       )
      )
     )
    )
    (set_local $2
     (i32.add
      (get_local $2)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $1)
 )
 (func $std/array/assertSortedDefault<i32>~anonymous|46 (; 111 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.sub
   (get_local $0)
   (get_local $1)
  )
 )
 (func $std/array/isSorted<i32> (; 112 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (block $break|0
   (block
    (set_local $2
     (i32.const 1)
    )
    (set_local $3
     (block $~lib/array/Array<i32>#get:length|inlined.40 (result i32)
      (i32.load offset=4
       (get_local $0)
      )
     )
    )
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $2)
       (get_local $3)
      )
     )
    )
    (if
     (i32.gt_s
      (block (result i32)
       (set_global $~argc
        (i32.const 2)
       )
       (call_indirect (type $iii)
        (call $~lib/array/Array<i32>#__get
         (get_local $0)
         (i32.sub
          (get_local $2)
          (i32.const 1)
         )
        )
        (call $~lib/array/Array<i32>#__get
         (get_local $0)
         (get_local $2)
        )
        (get_local $1)
       )
      )
      (i32.const 0)
     )
     (return
      (i32.const 0)
     )
    )
    (set_local $2
     (i32.add
      (get_local $2)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (i32.const 1)
 )
 (func $std/array/assertSorted<i32> (; 113 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (if
   (i32.eqz
    (call $std/array/isSorted<i32>
     (call $~lib/array/Array<i32>#sort
      (get_local $0)
      (get_local $1)
     )
     (get_local $1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 608)
     (i32.const 2)
    )
    (unreachable)
   )
  )
 )
 (func $std/array/assertSortedDefault<i32> (; 114 ;) (type $iv) (param $0 i32)
  (call $std/array/assertSorted<i32>
   (get_local $0)
   (block $~lib/internal/array/defaultComparator<i32>|inlined.1 (result i32)
    (br $~lib/internal/array/defaultComparator<i32>|inlined.1
     (i32.const 46)
    )
   )
  )
 )
 (func $start~anonymous|47 (; 115 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.sub
   (get_local $0)
   (get_local $1)
  )
 )
 (func $start~anonymous|48 (; 116 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.sub
   (get_local $1)
   (get_local $0)
  )
 )
 (func $start~anonymous|49 (; 117 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.sub
   (get_local $0)
   (get_local $1)
  )
 )
 (func $start~anonymous|50 (; 118 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.sub
   (get_local $1)
   (get_local $0)
  )
 )
 (func $~lib/array/Array<Array<i32>>#constructor (; 119 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (if
   (i32.gt_u
    (get_local $1)
    (i32.const 268435454)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 23)
     (i32.const 39)
    )
    (unreachable)
   )
  )
  (set_local $2
   (i32.shl
    (get_local $1)
    (i32.const 2)
   )
  )
  (set_local $3
   (call $~lib/internal/arraybuffer/allocateUnsafe
    (get_local $2)
   )
  )
  (i32.store
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $4
        (call $~lib/memory/memory.allocate
         (i32.const 8)
        )
       )
       (i32.store
        (get_local $4)
        (i32.const 0)
       )
       (i32.store offset=4
        (get_local $4)
        (i32.const 0)
       )
       (get_local $4)
      )
     )
    )
   )
   (get_local $3)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $1)
  )
  (block $~lib/memory/memory.fill|inlined.8
   (set_local $4
    (i32.add
     (get_local $3)
     (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
    )
   )
   (set_local $5
    (i32.const 0)
   )
   (call $~lib/internal/memory/memset
    (get_local $4)
    (get_local $5)
    (get_local $2)
   )
  )
  (get_local $0)
 )
 (func $~lib/array/Array<Array<i32>>#__set (; 120 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (set_local $4
   (i32.shr_u
    (i32.load
     (get_local $3)
    )
    (i32.const 2)
   )
  )
  (if
   (i32.ge_u
    (get_local $1)
    (get_local $4)
   )
   (block
    (if
     (i32.ge_u
      (get_local $1)
      (i32.const 268435454)
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 8)
       (i32.const 87)
       (i32.const 41)
      )
      (unreachable)
     )
    )
    (set_local $3
     (call $~lib/internal/arraybuffer/reallocateUnsafe
      (get_local $3)
      (i32.shl
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
       (i32.const 2)
      )
     )
    )
    (i32.store
     (get_local $0)
     (get_local $3)
    )
    (i32.store offset=4
     (get_local $0)
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
   )
  )
  (block $~lib/internal/arraybuffer/storeUnsafe<Array<i32>,Array<i32>>|inlined.0
   (i32.store offset=8
    (i32.add
     (get_local $3)
     (i32.shl
      (get_local $1)
      (i32.const 2)
     )
    )
    (get_local $2)
   )
  )
 )
 (func $~lib/array/Array<Array<i32>>#__get (; 121 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (if (result i32)
   (i32.lt_u
    (get_local $1)
    (i32.shr_u
     (i32.load
      (get_local $2)
     )
     (i32.const 2)
    )
   )
   (block $~lib/internal/arraybuffer/loadUnsafe<Array<i32>,Array<i32>>|inlined.0 (result i32)
    (i32.load offset=8
     (i32.add
      (get_local $2)
      (i32.shl
       (get_local $1)
       (i32.const 2)
      )
     )
    )
   )
   (unreachable)
  )
 )
 (func $std/array/createReverseOrderedNestedArray (; 122 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (set_local $1
   (call $~lib/array/Array<Array<i32>>#constructor
    (i32.const 0)
    (get_local $0)
   )
  )
  (block $break|0
   (set_local $2
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $2)
       (block $~lib/array/Array<Array<i32>>#get:length|inlined.1 (result i32)
        (i32.load offset=4
         (get_local $1)
        )
       )
      )
     )
    )
    (block
     (call $~lib/array/Array<Array<i32>>#__set
      (get_local $1)
      (get_local $2)
      (call $~lib/array/Array<i32>#constructor
       (i32.const 0)
       (i32.const 1)
      )
     )
     (call $~lib/array/Array<i32>#__set
      (call $~lib/array/Array<Array<i32>>#__get
       (get_local $1)
       (get_local $2)
      )
      (i32.const 0)
      (i32.sub
       (i32.sub
        (block $~lib/array/Array<Array<i32>>#get:length|inlined.2 (result i32)
         (i32.load offset=4
          (get_local $1)
         )
        )
        (i32.const 1)
       )
       (get_local $2)
      )
     )
    )
    (set_local $2
     (i32.add
      (get_local $2)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $1)
 )
 (func $start~anonymous|51 (; 123 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.sub
   (call $~lib/array/Array<i32>#__get
    (get_local $0)
    (i32.const 0)
   )
   (call $~lib/array/Array<i32>#__get
    (get_local $1)
    (i32.const 0)
   )
  )
 )
 (func $~lib/internal/array/insertionSort<Array<i32>> (; 124 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (block $break|0
   (set_local $4
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $4)
       (get_local $2)
      )
     )
    )
    (block
     (set_local $5
      (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<Array<i32>,Array<i32>>|inlined.0 (result i32)
       (i32.load offset=8
        (i32.add
         (i32.add
          (get_local $0)
          (get_local $1)
         )
         (i32.shl
          (get_local $4)
          (i32.const 2)
         )
        )
       )
      )
     )
     (set_local $6
      (i32.sub
       (get_local $4)
       (i32.const 1)
      )
     )
     (block $break|1
      (loop $continue|1
       (if
        (i32.ge_s
         (get_local $6)
         (i32.const 0)
        )
        (block
         (block
          (set_local $7
           (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<Array<i32>,Array<i32>>|inlined.1 (result i32)
            (i32.load offset=8
             (i32.add
              (i32.add
               (get_local $0)
               (get_local $1)
              )
              (i32.shl
               (get_local $6)
               (i32.const 2)
              )
             )
            )
           )
          )
          (if
           (i32.lt_s
            (block (result i32)
             (set_global $~argc
              (i32.const 2)
             )
             (call_indirect (type $iii)
              (get_local $5)
              (get_local $7)
              (get_local $3)
             )
            )
            (i32.const 0)
           )
           (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<Array<i32>,Array<i32>>|inlined.0
            (set_local $8
             (i32.add
              (block (result i32)
               (set_local $8
                (get_local $6)
               )
               (set_local $6
                (i32.sub
                 (get_local $8)
                 (i32.const 1)
                )
               )
               (get_local $8)
              )
              (i32.const 1)
             )
            )
            (i32.store offset=8
             (i32.add
              (i32.add
               (get_local $0)
               (get_local $1)
              )
              (i32.shl
               (get_local $8)
               (i32.const 2)
              )
             )
             (get_local $7)
            )
           )
           (br $break|1)
          )
         )
         (br $continue|1)
        )
       )
      )
     )
     (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<Array<i32>,Array<i32>>|inlined.1
      (set_local $7
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (i32.store offset=8
       (i32.add
        (i32.add
         (get_local $0)
         (get_local $1)
        )
        (i32.shl
         (get_local $7)
         (i32.const 2)
        )
       )
       (get_local $5)
      )
     )
    )
    (set_local $4
     (i32.add
      (get_local $4)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
 )
 (func $~lib/array/Array<Array<i32>>#sort (; 125 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (if
   (i32.eqz
    (get_local $1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 311)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  (set_local $2
   (i32.load offset=4
    (get_local $0)
   )
  )
  (if
   (i32.le_s
    (get_local $2)
    (i32.const 1)
   )
   (return
    (get_local $0)
   )
  )
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (if
   (i32.eq
    (get_local $2)
    (i32.const 2)
   )
   (block
    (set_local $4
     (block $~lib/internal/arraybuffer/loadUnsafe<Array<i32>,Array<i32>>|inlined.1 (result i32)
      (set_local $4
       (i32.const 1)
      )
      (i32.load offset=8
       (i32.add
        (get_local $3)
        (i32.shl
         (get_local $4)
         (i32.const 2)
        )
       )
      )
     )
    )
    (set_local $5
     (block $~lib/internal/arraybuffer/loadUnsafe<Array<i32>,Array<i32>>|inlined.2 (result i32)
      (set_local $5
       (i32.const 0)
      )
      (i32.load offset=8
       (i32.add
        (get_local $3)
        (i32.shl
         (get_local $5)
         (i32.const 2)
        )
       )
      )
     )
    )
    (if
     (i32.lt_s
      (block (result i32)
       (set_global $~argc
        (i32.const 2)
       )
       (call_indirect (type $iii)
        (get_local $4)
        (get_local $5)
        (get_local $1)
       )
      )
      (i32.const 0)
     )
     (block
      (block $~lib/internal/arraybuffer/storeUnsafe<Array<i32>,Array<i32>>|inlined.1
       (set_local $6
        (i32.const 1)
       )
       (i32.store offset=8
        (i32.add
         (get_local $3)
         (i32.shl
          (get_local $6)
          (i32.const 2)
         )
        )
        (get_local $5)
       )
      )
      (block $~lib/internal/arraybuffer/storeUnsafe<Array<i32>,Array<i32>>|inlined.2
       (set_local $6
        (i32.const 0)
       )
       (i32.store offset=8
        (i32.add
         (get_local $3)
         (i32.shl
          (get_local $6)
          (i32.const 2)
         )
        )
        (get_local $4)
       )
      )
     )
    )
    (return
     (get_local $0)
    )
   )
  )
  (call $~lib/internal/array/insertionSort<Array<i32>>
   (get_local $3)
   (i32.const 0)
   (get_local $2)
   (get_local $1)
  )
  (return
   (get_local $0)
  )
 )
 (func $std/array/isSorted<Array<i32>> (; 126 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (block $break|0
   (block
    (set_local $2
     (i32.const 1)
    )
    (set_local $3
     (block $~lib/array/Array<Array<i32>>#get:length|inlined.3 (result i32)
      (i32.load offset=4
       (get_local $0)
      )
     )
    )
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $2)
       (get_local $3)
      )
     )
    )
    (if
     (i32.gt_s
      (block (result i32)
       (set_global $~argc
        (i32.const 2)
       )
       (call_indirect (type $iii)
        (call $~lib/array/Array<Array<i32>>#__get
         (get_local $0)
         (i32.sub
          (get_local $2)
          (i32.const 1)
         )
        )
        (call $~lib/array/Array<Array<i32>>#__get
         (get_local $0)
         (get_local $2)
        )
        (get_local $1)
       )
      )
      (i32.const 0)
     )
     (return
      (i32.const 0)
     )
    )
    (set_local $2
     (i32.add
      (get_local $2)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (i32.const 1)
 )
 (func $std/array/assertSorted<Array<i32>> (; 127 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (if
   (i32.eqz
    (call $std/array/isSorted<Array<i32>>
     (call $~lib/array/Array<Array<i32>>#sort
      (get_local $0)
      (get_local $1)
     )
     (get_local $1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 608)
     (i32.const 2)
    )
    (unreachable)
   )
  )
 )
 (func $~lib/array/Array<Proxy<i32>>#constructor (; 128 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (if
   (i32.gt_u
    (get_local $1)
    (i32.const 268435454)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 23)
     (i32.const 39)
    )
    (unreachable)
   )
  )
  (set_local $2
   (i32.shl
    (get_local $1)
    (i32.const 2)
   )
  )
  (set_local $3
   (call $~lib/internal/arraybuffer/allocateUnsafe
    (get_local $2)
   )
  )
  (i32.store
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $4
        (call $~lib/memory/memory.allocate
         (i32.const 8)
        )
       )
       (i32.store
        (get_local $4)
        (i32.const 0)
       )
       (i32.store offset=4
        (get_local $4)
        (i32.const 0)
       )
       (get_local $4)
      )
     )
    )
   )
   (get_local $3)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $1)
  )
  (block $~lib/memory/memory.fill|inlined.9
   (set_local $4
    (i32.add
     (get_local $3)
     (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
    )
   )
   (set_local $5
    (i32.const 0)
   )
   (call $~lib/internal/memory/memset
    (get_local $4)
    (get_local $5)
    (get_local $2)
   )
  )
  (get_local $0)
 )
 (func $std/array/Proxy<i32>#constructor (; 129 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (tee_local $0
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (tee_local $0
     (block (result i32)
      (set_local $2
       (call $~lib/memory/memory.allocate
        (i32.const 4)
       )
      )
      (i32.store
       (get_local $2)
       (get_local $1)
      )
      (get_local $2)
     )
    )
   )
  )
 )
 (func $~lib/array/Array<Proxy<i32>>#__set (; 130 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (set_local $4
   (i32.shr_u
    (i32.load
     (get_local $3)
    )
    (i32.const 2)
   )
  )
  (if
   (i32.ge_u
    (get_local $1)
    (get_local $4)
   )
   (block
    (if
     (i32.ge_u
      (get_local $1)
      (i32.const 268435454)
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 8)
       (i32.const 87)
       (i32.const 41)
      )
      (unreachable)
     )
    )
    (set_local $3
     (call $~lib/internal/arraybuffer/reallocateUnsafe
      (get_local $3)
      (i32.shl
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
       (i32.const 2)
      )
     )
    )
    (i32.store
     (get_local $0)
     (get_local $3)
    )
    (i32.store offset=4
     (get_local $0)
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
   )
  )
  (block $~lib/internal/arraybuffer/storeUnsafe<Proxy<i32>,Proxy<i32>>|inlined.0
   (i32.store offset=8
    (i32.add
     (get_local $3)
     (i32.shl
      (get_local $1)
      (i32.const 2)
     )
    )
    (get_local $2)
   )
  )
 )
 (func $std/array/createReverseOrderedElementsArray (; 131 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (set_local $1
   (call $~lib/array/Array<Proxy<i32>>#constructor
    (i32.const 0)
    (get_local $0)
   )
  )
  (block $break|0
   (set_local $2
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $2)
       (block $~lib/array/Array<Proxy<i32>>#get:length|inlined.1 (result i32)
        (i32.load offset=4
         (get_local $1)
        )
       )
      )
     )
    )
    (call $~lib/array/Array<Proxy<i32>>#__set
     (get_local $1)
     (get_local $2)
     (call $std/array/Proxy<i32>#constructor
      (i32.const 0)
      (i32.sub
       (i32.sub
        (block $~lib/array/Array<Proxy<i32>>#get:length|inlined.2 (result i32)
         (i32.load offset=4
          (get_local $1)
         )
        )
        (i32.const 1)
       )
       (get_local $2)
      )
     )
    )
    (set_local $2
     (i32.add
      (get_local $2)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $1)
 )
 (func $start~anonymous|52 (; 132 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.sub
   (i32.load
    (get_local $0)
   )
   (i32.load
    (get_local $1)
   )
  )
 )
 (func $~lib/internal/array/insertionSort<Proxy<i32>> (; 133 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (block $break|0
   (set_local $4
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $4)
       (get_local $2)
      )
     )
    )
    (block
     (set_local $5
      (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<Proxy<i32>,Proxy<i32>>|inlined.0 (result i32)
       (i32.load offset=8
        (i32.add
         (i32.add
          (get_local $0)
          (get_local $1)
         )
         (i32.shl
          (get_local $4)
          (i32.const 2)
         )
        )
       )
      )
     )
     (set_local $6
      (i32.sub
       (get_local $4)
       (i32.const 1)
      )
     )
     (block $break|1
      (loop $continue|1
       (if
        (i32.ge_s
         (get_local $6)
         (i32.const 0)
        )
        (block
         (block
          (set_local $7
           (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<Proxy<i32>,Proxy<i32>>|inlined.1 (result i32)
            (i32.load offset=8
             (i32.add
              (i32.add
               (get_local $0)
               (get_local $1)
              )
              (i32.shl
               (get_local $6)
               (i32.const 2)
              )
             )
            )
           )
          )
          (if
           (i32.lt_s
            (block (result i32)
             (set_global $~argc
              (i32.const 2)
             )
             (call_indirect (type $iii)
              (get_local $5)
              (get_local $7)
              (get_local $3)
             )
            )
            (i32.const 0)
           )
           (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<Proxy<i32>,Proxy<i32>>|inlined.0
            (set_local $8
             (i32.add
              (block (result i32)
               (set_local $8
                (get_local $6)
               )
               (set_local $6
                (i32.sub
                 (get_local $8)
                 (i32.const 1)
                )
               )
               (get_local $8)
              )
              (i32.const 1)
             )
            )
            (i32.store offset=8
             (i32.add
              (i32.add
               (get_local $0)
               (get_local $1)
              )
              (i32.shl
               (get_local $8)
               (i32.const 2)
              )
             )
             (get_local $7)
            )
           )
           (br $break|1)
          )
         )
         (br $continue|1)
        )
       )
      )
     )
     (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<Proxy<i32>,Proxy<i32>>|inlined.1
      (set_local $7
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (i32.store offset=8
       (i32.add
        (i32.add
         (get_local $0)
         (get_local $1)
        )
        (i32.shl
         (get_local $7)
         (i32.const 2)
        )
       )
       (get_local $5)
      )
     )
    )
    (set_local $4
     (i32.add
      (get_local $4)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
 )
 (func $~lib/array/Array<Proxy<i32>>#sort (; 134 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (if
   (i32.eqz
    (get_local $1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 311)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  (set_local $2
   (i32.load offset=4
    (get_local $0)
   )
  )
  (if
   (i32.le_s
    (get_local $2)
    (i32.const 1)
   )
   (return
    (get_local $0)
   )
  )
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (if
   (i32.eq
    (get_local $2)
    (i32.const 2)
   )
   (block
    (set_local $4
     (block $~lib/internal/arraybuffer/loadUnsafe<Proxy<i32>,Proxy<i32>>|inlined.0 (result i32)
      (set_local $4
       (i32.const 1)
      )
      (i32.load offset=8
       (i32.add
        (get_local $3)
        (i32.shl
         (get_local $4)
         (i32.const 2)
        )
       )
      )
     )
    )
    (set_local $5
     (block $~lib/internal/arraybuffer/loadUnsafe<Proxy<i32>,Proxy<i32>>|inlined.1 (result i32)
      (set_local $5
       (i32.const 0)
      )
      (i32.load offset=8
       (i32.add
        (get_local $3)
        (i32.shl
         (get_local $5)
         (i32.const 2)
        )
       )
      )
     )
    )
    (if
     (i32.lt_s
      (block (result i32)
       (set_global $~argc
        (i32.const 2)
       )
       (call_indirect (type $iii)
        (get_local $4)
        (get_local $5)
        (get_local $1)
       )
      )
      (i32.const 0)
     )
     (block
      (block $~lib/internal/arraybuffer/storeUnsafe<Proxy<i32>,Proxy<i32>>|inlined.1
       (set_local $6
        (i32.const 1)
       )
       (i32.store offset=8
        (i32.add
         (get_local $3)
         (i32.shl
          (get_local $6)
          (i32.const 2)
         )
        )
        (get_local $5)
       )
      )
      (block $~lib/internal/arraybuffer/storeUnsafe<Proxy<i32>,Proxy<i32>>|inlined.2
       (set_local $6
        (i32.const 0)
       )
       (i32.store offset=8
        (i32.add
         (get_local $3)
         (i32.shl
          (get_local $6)
          (i32.const 2)
         )
        )
        (get_local $4)
       )
      )
     )
    )
    (return
     (get_local $0)
    )
   )
  )
  (call $~lib/internal/array/insertionSort<Proxy<i32>>
   (get_local $3)
   (i32.const 0)
   (get_local $2)
   (get_local $1)
  )
  (return
   (get_local $0)
  )
 )
 (func $~lib/array/Array<Proxy<i32>>#__get (; 135 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (if (result i32)
   (i32.lt_u
    (get_local $1)
    (i32.shr_u
     (i32.load
      (get_local $2)
     )
     (i32.const 2)
    )
   )
   (block $~lib/internal/arraybuffer/loadUnsafe<Proxy<i32>,Proxy<i32>>|inlined.2 (result i32)
    (i32.load offset=8
     (i32.add
      (get_local $2)
      (i32.shl
       (get_local $1)
       (i32.const 2)
      )
     )
    )
   )
   (unreachable)
  )
 )
 (func $std/array/isSorted<Proxy<i32>> (; 136 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (block $break|0
   (block
    (set_local $2
     (i32.const 1)
    )
    (set_local $3
     (block $~lib/array/Array<Proxy<i32>>#get:length|inlined.3 (result i32)
      (i32.load offset=4
       (get_local $0)
      )
     )
    )
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $2)
       (get_local $3)
      )
     )
    )
    (if
     (i32.gt_s
      (block (result i32)
       (set_global $~argc
        (i32.const 2)
       )
       (call_indirect (type $iii)
        (call $~lib/array/Array<Proxy<i32>>#__get
         (get_local $0)
         (i32.sub
          (get_local $2)
          (i32.const 1)
         )
        )
        (call $~lib/array/Array<Proxy<i32>>#__get
         (get_local $0)
         (get_local $2)
        )
        (get_local $1)
       )
      )
      (i32.const 0)
     )
     (return
      (i32.const 0)
     )
    )
    (set_local $2
     (i32.add
      (get_local $2)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (i32.const 1)
 )
 (func $std/array/assertSorted<Proxy<i32>> (; 137 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (if
   (i32.eqz
    (call $std/array/isSorted<Proxy<i32>>
     (call $~lib/array/Array<Proxy<i32>>#sort
      (get_local $0)
      (get_local $1)
     )
     (get_local $1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 608)
     (i32.const 2)
    )
    (unreachable)
   )
  )
 )
 (func $~lib/internal/string/compareUnsafe (; 138 ;) (type $iiiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (set_local $5
   (i32.const 0)
  )
  (set_local $6
   (i32.add
    (get_local $0)
    (i32.shl
     (get_local $1)
     (i32.const 1)
    )
   )
  )
  (set_local $7
   (i32.add
    (get_local $2)
    (i32.shl
     (get_local $3)
     (i32.const 1)
    )
   )
  )
  (block $break|0
   (loop $continue|0
    (if
     (if (result i32)
      (get_local $4)
      (i32.eqz
       (tee_local $5
        (i32.sub
         (i32.load16_u offset=4
          (get_local $6)
         )
         (i32.load16_u offset=4
          (get_local $7)
         )
        )
       )
      )
      (get_local $4)
     )
     (block
      (block
       (set_local $4
        (i32.sub
         (get_local $4)
         (i32.const 1)
        )
       )
       (set_local $6
        (i32.add
         (get_local $6)
         (i32.const 1)
        )
       )
       (set_local $7
        (i32.add
         (get_local $7)
         (i32.const 1)
        )
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  (get_local $5)
 )
 (func $~lib/string/String.__gt (; 139 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (if
   (if (result i32)
    (tee_local $2
     (if (result i32)
      (tee_local $2
       (i32.eq
        (get_local $0)
        (get_local $1)
       )
      )
      (get_local $2)
      (i32.eq
       (get_local $0)
       (i32.const 0)
      )
     )
    )
    (get_local $2)
    (i32.eq
     (get_local $1)
     (i32.const 0)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (set_local $4
   (i32.load
    (get_local $1)
   )
  )
  (if
   (i32.eqz
    (get_local $3)
   )
   (return
    (i32.const 0)
   )
  )
  (if
   (i32.eqz
    (get_local $4)
   )
   (return
    (i32.const 1)
   )
  )
  (set_local $6
   (select
    (tee_local $2
     (get_local $3)
    )
    (tee_local $5
     (get_local $4)
    )
    (i32.lt_s
     (get_local $2)
     (get_local $5)
    )
   )
  )
  (i32.gt_s
   (call $~lib/internal/string/compareUnsafe
    (get_local $0)
    (i32.const 0)
    (get_local $1)
    (i32.const 0)
    (get_local $6)
   )
   (i32.const 0)
  )
 )
 (func $~lib/string/String.__lt (; 140 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (if
   (if (result i32)
    (tee_local $2
     (if (result i32)
      (tee_local $2
       (i32.eq
        (get_local $0)
        (get_local $1)
       )
      )
      (get_local $2)
      (i32.eq
       (get_local $0)
       (i32.const 0)
      )
     )
    )
    (get_local $2)
    (i32.eq
     (get_local $1)
     (i32.const 0)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (set_local $4
   (i32.load
    (get_local $1)
   )
  )
  (if
   (i32.eqz
    (get_local $4)
   )
   (return
    (i32.const 0)
   )
  )
  (if
   (i32.eqz
    (get_local $3)
   )
   (return
    (i32.const 1)
   )
  )
  (set_local $6
   (select
    (tee_local $2
     (get_local $3)
    )
    (tee_local $5
     (get_local $4)
    )
    (i32.lt_s
     (get_local $2)
     (get_local $5)
    )
   )
  )
  (i32.lt_s
   (call $~lib/internal/string/compareUnsafe
    (get_local $0)
    (i32.const 0)
    (get_local $1)
    (i32.const 0)
    (get_local $6)
   )
   (i32.const 0)
  )
 )
 (func $start~anonymous|53 (; 141 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.sub
   (call $~lib/string/String.__gt
    (get_local $0)
    (get_local $1)
   )
   (call $~lib/string/String.__lt
    (get_local $0)
    (get_local $1)
   )
  )
 )
 (func $~lib/internal/array/insertionSort<String> (; 142 ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (block $break|0
   (set_local $4
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $4)
       (get_local $2)
      )
     )
    )
    (block
     (set_local $5
      (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<String,String>|inlined.0 (result i32)
       (i32.load offset=8
        (i32.add
         (i32.add
          (get_local $0)
          (get_local $1)
         )
         (i32.shl
          (get_local $4)
          (i32.const 2)
         )
        )
       )
      )
     )
     (set_local $6
      (i32.sub
       (get_local $4)
       (i32.const 1)
      )
     )
     (block $break|1
      (loop $continue|1
       (if
        (i32.ge_s
         (get_local $6)
         (i32.const 0)
        )
        (block
         (block
          (set_local $7
           (block $~lib/internal/arraybuffer/loadUnsafeWithOffset<String,String>|inlined.1 (result i32)
            (i32.load offset=8
             (i32.add
              (i32.add
               (get_local $0)
               (get_local $1)
              )
              (i32.shl
               (get_local $6)
               (i32.const 2)
              )
             )
            )
           )
          )
          (if
           (i32.lt_s
            (block (result i32)
             (set_global $~argc
              (i32.const 2)
             )
             (call_indirect (type $iii)
              (get_local $5)
              (get_local $7)
              (get_local $3)
             )
            )
            (i32.const 0)
           )
           (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<String,String>|inlined.0
            (set_local $8
             (i32.add
              (block (result i32)
               (set_local $8
                (get_local $6)
               )
               (set_local $6
                (i32.sub
                 (get_local $8)
                 (i32.const 1)
                )
               )
               (get_local $8)
              )
              (i32.const 1)
             )
            )
            (i32.store offset=8
             (i32.add
              (i32.add
               (get_local $0)
               (get_local $1)
              )
              (i32.shl
               (get_local $8)
               (i32.const 2)
              )
             )
             (get_local $7)
            )
           )
           (br $break|1)
          )
         )
         (br $continue|1)
        )
       )
      )
     )
     (block $~lib/internal/arraybuffer/storeUnsafeWithOffset<String,String>|inlined.1
      (set_local $7
       (i32.add
        (get_local $6)
        (i32.const 1)
       )
      )
      (i32.store offset=8
       (i32.add
        (i32.add
         (get_local $0)
         (get_local $1)
        )
        (i32.shl
         (get_local $7)
         (i32.const 2)
        )
       )
       (get_local $5)
      )
     )
    )
    (set_local $4
     (i32.add
      (get_local $4)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
 )
 (func $~lib/array/Array<String>#sort (; 143 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (if
   (i32.eqz
    (get_local $1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 311)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  (set_local $2
   (i32.load offset=4
    (get_local $0)
   )
  )
  (if
   (i32.le_s
    (get_local $2)
    (i32.const 1)
   )
   (return
    (get_local $0)
   )
  )
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (if
   (i32.eq
    (get_local $2)
    (i32.const 2)
   )
   (block
    (set_local $4
     (block $~lib/internal/arraybuffer/loadUnsafe<String,String>|inlined.0 (result i32)
      (set_local $4
       (i32.const 1)
      )
      (i32.load offset=8
       (i32.add
        (get_local $3)
        (i32.shl
         (get_local $4)
         (i32.const 2)
        )
       )
      )
     )
    )
    (set_local $5
     (block $~lib/internal/arraybuffer/loadUnsafe<String,String>|inlined.1 (result i32)
      (set_local $5
       (i32.const 0)
      )
      (i32.load offset=8
       (i32.add
        (get_local $3)
        (i32.shl
         (get_local $5)
         (i32.const 2)
        )
       )
      )
     )
    )
    (if
     (i32.lt_s
      (block (result i32)
       (set_global $~argc
        (i32.const 2)
       )
       (call_indirect (type $iii)
        (get_local $4)
        (get_local $5)
        (get_local $1)
       )
      )
      (i32.const 0)
     )
     (block
      (block $~lib/internal/arraybuffer/storeUnsafe<String,String>|inlined.0
       (set_local $6
        (i32.const 1)
       )
       (i32.store offset=8
        (i32.add
         (get_local $3)
         (i32.shl
          (get_local $6)
          (i32.const 2)
         )
        )
        (get_local $5)
       )
      )
      (block $~lib/internal/arraybuffer/storeUnsafe<String,String>|inlined.1
       (set_local $6
        (i32.const 0)
       )
       (i32.store offset=8
        (i32.add
         (get_local $3)
         (i32.shl
          (get_local $6)
          (i32.const 2)
         )
        )
        (get_local $4)
       )
      )
     )
    )
    (return
     (get_local $0)
    )
   )
  )
  (call $~lib/internal/array/insertionSort<String>
   (get_local $3)
   (i32.const 0)
   (get_local $2)
   (get_local $1)
  )
  (return
   (get_local $0)
  )
 )
 (func $~lib/array/Array<String>#__get (; 144 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (if (result i32)
   (i32.lt_u
    (get_local $1)
    (i32.shr_u
     (i32.load
      (get_local $2)
     )
     (i32.const 2)
    )
   )
   (block $~lib/internal/arraybuffer/loadUnsafe<String,String>|inlined.2 (result i32)
    (i32.load offset=8
     (i32.add
      (get_local $2)
      (i32.shl
       (get_local $1)
       (i32.const 2)
      )
     )
    )
   )
   (unreachable)
  )
 )
 (func $std/array/isSorted<String> (; 145 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (block $break|0
   (block
    (set_local $2
     (i32.const 1)
    )
    (set_local $3
     (block $~lib/array/Array<String>#get:length|inlined.0 (result i32)
      (i32.load offset=4
       (get_local $0)
      )
     )
    )
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $2)
       (get_local $3)
      )
     )
    )
    (if
     (i32.gt_s
      (block (result i32)
       (set_global $~argc
        (i32.const 2)
       )
       (call_indirect (type $iii)
        (call $~lib/array/Array<String>#__get
         (get_local $0)
         (i32.sub
          (get_local $2)
          (i32.const 1)
         )
        )
        (call $~lib/array/Array<String>#__get
         (get_local $0)
         (get_local $2)
        )
        (get_local $1)
       )
      )
      (i32.const 0)
     )
     (return
      (i32.const 0)
     )
    )
    (set_local $2
     (i32.add
      (get_local $2)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (i32.const 1)
 )
 (func $std/array/assertSorted<String> (; 146 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (if
   (i32.eqz
    (call $std/array/isSorted<String>
     (call $~lib/array/Array<String>#sort
      (get_local $0)
      (get_local $1)
     )
     (get_local $1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 608)
     (i32.const 2)
    )
    (unreachable)
   )
  )
 )
 (func $~lib/string/String.__eq (; 147 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i32.eq
    (get_local $0)
    (get_local $1)
   )
   (return
    (i32.const 1)
   )
  )
  (if
   (if (result i32)
    (tee_local $2
     (i32.eq
      (get_local $0)
      (i32.const 0)
     )
    )
    (get_local $2)
    (i32.eq
     (get_local $1)
     (i32.const 0)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (if
   (i32.ne
    (get_local $3)
    (i32.load
     (get_local $1)
    )
   )
   (return
    (i32.const 0)
   )
  )
  (i32.eqz
   (call $~lib/internal/string/compareUnsafe
    (get_local $0)
    (i32.const 0)
    (get_local $1)
    (i32.const 0)
    (get_local $3)
   )
  )
 )
 (func $~lib/string/String.__ne (; 148 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.eqz
   (call $~lib/string/String.__eq
    (get_local $0)
    (get_local $1)
   )
  )
 )
 (func $std/array/isArraysEqual<String> (; 149 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (if
   (i32.eqz
    (get_local $2)
   )
   (block
    (if
     (i32.ne
      (block $~lib/array/Array<String>#get:length|inlined.3 (result i32)
       (i32.load offset=4
        (get_local $0)
       )
      )
      (block $~lib/array/Array<String>#get:length|inlined.4 (result i32)
       (i32.load offset=4
        (get_local $1)
       )
      )
     )
     (return
      (i32.const 0)
     )
    )
    (set_local $2
     (block $~lib/array/Array<String>#get:length|inlined.5 (result i32)
      (i32.load offset=4
       (get_local $0)
      )
     )
    )
   )
  )
  (block $break|0
   (set_local $3
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $3)
       (get_local $2)
      )
     )
    )
    (if
     (call $~lib/string/String.__ne
      (call $~lib/array/Array<String>#__get
       (get_local $0)
       (get_local $3)
      )
      (call $~lib/array/Array<String>#__get
       (get_local $1)
       (get_local $3)
      )
     )
     (return
      (i32.const 0)
     )
    )
    (set_local $3
     (i32.add
      (get_local $3)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (i32.const 1)
 )
 (func $~lib/array/Array<String>#constructor (; 150 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (if
   (i32.gt_u
    (get_local $1)
    (i32.const 268435454)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 23)
     (i32.const 39)
    )
    (unreachable)
   )
  )
  (set_local $2
   (i32.shl
    (get_local $1)
    (i32.const 2)
   )
  )
  (set_local $3
   (call $~lib/internal/arraybuffer/allocateUnsafe
    (get_local $2)
   )
  )
  (i32.store
   (tee_local $0
    (if (result i32)
     (get_local $0)
     (get_local $0)
     (tee_local $0
      (block (result i32)
       (set_local $4
        (call $~lib/memory/memory.allocate
         (i32.const 8)
        )
       )
       (i32.store
        (get_local $4)
        (i32.const 0)
       )
       (i32.store offset=4
        (get_local $4)
        (i32.const 0)
       )
       (get_local $4)
      )
     )
    )
   )
   (get_local $3)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $1)
  )
  (block $~lib/memory/memory.fill|inlined.10
   (set_local $4
    (i32.add
     (get_local $3)
     (get_global $~lib/internal/arraybuffer/HEADER_SIZE)
    )
   )
   (set_local $5
    (i32.const 0)
   )
   (call $~lib/internal/memory/memset
    (get_local $4)
    (get_local $5)
    (get_local $2)
   )
  )
  (get_local $0)
 )
 (func $~lib/internal/string/allocateUnsafe (; 151 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (if
   (i32.eqz
    (if (result i32)
     (tee_local $1
      (i32.gt_s
       (get_local $0)
       (i32.const 0)
      )
     )
     (i32.le_s
      (get_local $0)
      (get_global $~lib/internal/string/MAX_LENGTH)
     )
     (get_local $1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 1328)
     (i32.const 14)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (set_local $2
   (block $~lib/memory/memory.allocate|inlined.5 (result i32)
    (set_local $1
     (i32.add
      (get_global $~lib/internal/string/HEADER_SIZE)
      (i32.shl
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (br $~lib/memory/memory.allocate|inlined.5
     (call $~lib/allocator/arena/__memory_allocate
      (get_local $1)
     )
    )
   )
  )
  (i32.store
   (get_local $2)
   (get_local $0)
  )
  (get_local $2)
 )
 (func $~lib/string/String#charAt (; 152 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (if
   (i32.eqz
    (i32.ne
     (get_local $0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 1296)
     (i32.const 59)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  (if
   (i32.ge_u
    (get_local $1)
    (i32.load
     (get_local $0)
    )
   )
   (return
    (i32.const 1144)
   )
  )
  (set_local $2
   (call $~lib/internal/string/allocateUnsafe
    (i32.const 1)
   )
  )
  (i32.store16 offset=4
   (get_local $2)
   (i32.load16_u offset=4
    (i32.add
     (get_local $0)
     (i32.shl
      (get_local $1)
      (i32.const 1)
     )
    )
   )
  )
  (get_local $2)
 )
 (func $~lib/internal/string/copyUnsafe (; 153 ;) (type $iiiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block $~lib/memory/memory.copy|inlined.4
   (set_local $5
    (i32.add
     (i32.add
      (get_local $0)
      (i32.shl
       (get_local $1)
       (i32.const 1)
      )
     )
     (get_global $~lib/internal/string/HEADER_SIZE)
    )
   )
   (set_local $6
    (i32.add
     (i32.add
      (get_local $2)
      (i32.shl
       (get_local $3)
       (i32.const 1)
      )
     )
     (get_global $~lib/internal/string/HEADER_SIZE)
    )
   )
   (set_local $7
    (i32.shl
     (get_local $4)
     (i32.const 1)
    )
   )
   (call $~lib/internal/memory/memmove
    (get_local $5)
    (get_local $6)
    (get_local $7)
   )
  )
 )
 (func $~lib/string/String#concat (; 154 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (if
   (i32.eqz
    (i32.ne
     (get_local $0)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 1296)
     (i32.const 111)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  (if
   (i32.eq
    (get_local $1)
    (i32.const 0)
   )
   (set_local $1
    (i32.const 1384)
   )
  )
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (set_local $3
   (i32.load
    (get_local $1)
   )
  )
  (set_local $4
   (i32.add
    (get_local $2)
    (get_local $3)
   )
  )
  (if
   (i32.eq
    (get_local $4)
    (i32.const 0)
   )
   (return
    (i32.const 1144)
   )
  )
  (set_local $5
   (call $~lib/internal/string/allocateUnsafe
    (get_local $4)
   )
  )
  (call $~lib/internal/string/copyUnsafe
   (get_local $5)
   (i32.const 0)
   (get_local $0)
   (i32.const 0)
   (get_local $2)
  )
  (call $~lib/internal/string/copyUnsafe
   (get_local $5)
   (get_local $2)
   (get_local $1)
   (i32.const 0)
   (get_local $3)
  )
  (get_local $5)
 )
 (func $~lib/string/String.__concat (; 155 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (set_local $0
    (i32.const 1384)
   )
  )
  (call $~lib/string/String#concat
   (get_local $0)
   (get_local $1)
  )
 )
 (func $std/array/createRandomString (; 156 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f64)
  (set_local $1
   (i32.const 1144)
  )
  (block $break|0
   (set_local $2
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $2)
       (get_local $0)
      )
     )
    )
    (set_local $1
     (call $~lib/string/String.__concat
      (get_local $1)
      (call $~lib/string/String#charAt
       (get_global $std/array/charset)
       (i32.trunc_s/f64
        (block $~lib/math/NativeMath.floor|inlined.0 (result f64)
         (set_local $3
          (f64.mul
           (call $~lib/math/NativeMath.random)
           (f64.convert_s/i32
            (i32.load
             (get_global $std/array/charset)
            )
           )
          )
         )
         (f64.floor
          (get_local $3)
         )
        )
       )
      )
     )
    )
    (set_local $2
     (i32.add
      (get_local $2)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $1)
 )
 (func $~lib/array/Array<String>#__set (; 157 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (set_local $4
   (i32.shr_u
    (i32.load
     (get_local $3)
    )
    (i32.const 2)
   )
  )
  (if
   (i32.ge_u
    (get_local $1)
    (get_local $4)
   )
   (block
    (if
     (i32.ge_u
      (get_local $1)
      (i32.const 268435454)
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 8)
       (i32.const 87)
       (i32.const 41)
      )
      (unreachable)
     )
    )
    (set_local $3
     (call $~lib/internal/arraybuffer/reallocateUnsafe
      (get_local $3)
      (i32.shl
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
       (i32.const 2)
      )
     )
    )
    (i32.store
     (get_local $0)
     (get_local $3)
    )
    (i32.store offset=4
     (get_local $0)
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
   )
  )
  (block $~lib/internal/arraybuffer/storeUnsafe<String,String>|inlined.2
   (i32.store offset=8
    (i32.add
     (get_local $3)
     (i32.shl
      (get_local $1)
      (i32.const 2)
     )
    )
    (get_local $2)
   )
  )
 )
 (func $std/array/createRandomStringArray (; 158 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (set_local $1
   (call $~lib/array/Array<String>#constructor
    (i32.const 0)
    (get_local $0)
   )
  )
  (block $break|0
   (set_local $2
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_local $2)
       (block $~lib/array/Array<String>#get:length|inlined.7 (result i32)
        (i32.load offset=4
         (get_local $1)
        )
       )
      )
     )
    )
    (call $~lib/array/Array<String>#__set
     (get_local $1)
     (get_local $2)
     (call $std/array/createRandomString
      (i32.trunc_s/f64
       (f64.mul
        (call $~lib/math/NativeMath.random)
        (f64.const 32)
       )
      )
     )
    )
    (set_local $2
     (i32.add
      (get_local $2)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $1)
 )
 (func $start~anonymous|54 (; 159 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.sub
   (call $~lib/string/String.__gt
    (get_local $0)
    (get_local $1)
   )
   (call $~lib/string/String.__lt
    (get_local $0)
    (get_local $1)
   )
  )
 )
 (func $start (; 160 ;) (type $v)
  (local $0 i32)
  (set_global $~lib/allocator/arena/startOffset
   (i32.and
    (i32.add
     (get_global $HEAP_BASE)
     (get_global $~lib/internal/allocator/AL_MASK)
    )
    (i32.xor
     (get_global $~lib/internal/allocator/AL_MASK)
     (i32.const -1)
    )
   )
  )
  (set_global $~lib/allocator/arena/offset
   (get_global $~lib/allocator/arena/startOffset)
  )
  (set_global $std/array/arr
   (call $~lib/array/Array<i32>#constructor
    (i32.const 0)
    (i32.const 0)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<i32>#get:length|inlined.0 (result i32)
      (set_local $0
       (get_global $std/array/arr)
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 17)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $std/array/internalCapacity<i32>
      (get_global $std/array/arr)
     )
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 18)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#push
    (get_global $std/array/arr)
    (i32.const 42)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#__get
      (get_global $std/array/arr)
      (i32.const 0)
     )
     (i32.const 42)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 22)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<i32>#get:length|inlined.1 (result i32)
      (set_local $0
       (get_global $std/array/arr)
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 23)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $std/array/internalCapacity<i32>
      (get_global $std/array/arr)
     )
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 24)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 42)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 28)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<i32>#get:length|inlined.2 (result i32)
      (set_local $0
       (get_global $std/array/arr)
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 29)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $std/array/internalCapacity<i32>
      (get_global $std/array/arr)
     )
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 30)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#push
    (get_global $std/array/arr)
    (i32.const 43)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<i32>#get:length|inlined.3 (result i32)
      (set_local $0
       (get_global $std/array/arr)
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 34)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $std/array/internalCapacity<i32>
      (get_global $std/array/arr)
     )
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 35)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#__get
      (get_global $std/array/arr)
      (i32.const 0)
     )
     (i32.const 43)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 36)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#push
    (get_global $std/array/arr)
    (i32.const 44)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<i32>#get:length|inlined.4 (result i32)
      (set_local $0
       (get_global $std/array/arr)
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 40)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $std/array/internalCapacity<i32>
      (get_global $std/array/arr)
     )
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 41)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#__get
      (get_global $std/array/arr)
      (i32.const 0)
     )
     (i32.const 43)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 42)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#__get
      (get_global $std/array/arr)
      (i32.const 1)
     )
     (i32.const 44)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 43)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#push
    (get_global $std/array/arr)
    (i32.const 45)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<i32>#get:length|inlined.5 (result i32)
      (set_local $0
       (get_global $std/array/arr)
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 3)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 47)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $std/array/internalCapacity<i32>
      (get_global $std/array/arr)
     )
     (i32.const 3)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 48)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#__get
      (get_global $std/array/arr)
      (i32.const 0)
     )
     (i32.const 43)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 49)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#__get
      (get_global $std/array/arr)
      (i32.const 1)
     )
     (i32.const 44)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 50)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#__get
      (get_global $std/array/arr)
      (i32.const 2)
     )
     (i32.const 45)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 51)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#unshift
    (get_global $std/array/arr)
    (i32.const 42)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<i32>#get:length|inlined.6 (result i32)
      (set_local $0
       (get_global $std/array/arr)
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 4)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 57)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $std/array/internalCapacity<i32>
      (get_global $std/array/arr)
     )
     (i32.const 4)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 58)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#__get
      (get_global $std/array/arr)
      (i32.const 0)
     )
     (i32.const 42)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 59)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#__get
      (get_global $std/array/arr)
      (i32.const 1)
     )
     (i32.const 43)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 60)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#__get
      (get_global $std/array/arr)
      (i32.const 2)
     )
     (i32.const 44)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 61)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#__get
      (get_global $std/array/arr)
      (i32.const 3)
     )
     (i32.const 45)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 62)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#unshift
    (get_global $std/array/arr)
    (i32.const 41)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<i32>#get:length|inlined.7 (result i32)
      (set_local $0
       (get_global $std/array/arr)
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 5)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 66)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $std/array/internalCapacity<i32>
      (get_global $std/array/arr)
     )
     (i32.const 5)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 67)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#__get
      (get_global $std/array/arr)
      (i32.const 0)
     )
     (i32.const 41)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 68)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#__get
      (get_global $std/array/arr)
      (i32.const 1)
     )
     (i32.const 42)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 69)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#__get
      (get_global $std/array/arr)
      (i32.const 2)
     )
     (i32.const 43)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 70)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#__get
      (get_global $std/array/arr)
      (i32.const 3)
     )
     (i32.const 44)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 71)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#__get
      (get_global $std/array/arr)
      (i32.const 4)
     )
     (i32.const 45)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 72)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (call $~lib/array/Array<i32>#shift
    (get_global $std/array/arr)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 41)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 78)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<i32>#get:length|inlined.8 (result i32)
      (set_local $0
       (get_global $std/array/arr)
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 4)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 79)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $std/array/internalCapacity<i32>
      (get_global $std/array/arr)
     )
     (i32.const 5)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 80)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#__get
      (get_global $std/array/arr)
      (i32.const 0)
     )
     (i32.const 42)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 81)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#__get
      (get_global $std/array/arr)
      (i32.const 1)
     )
     (i32.const 43)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 82)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#__get
      (get_global $std/array/arr)
      (i32.const 2)
     )
     (i32.const 44)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 83)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#__get
      (get_global $std/array/arr)
      (i32.const 3)
     )
     (i32.const 45)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 84)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 45)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 88)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<i32>#get:length|inlined.9 (result i32)
      (set_local $0
       (get_global $std/array/arr)
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 3)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 89)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $std/array/internalCapacity<i32>
      (get_global $std/array/arr)
     )
     (i32.const 5)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 90)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#__get
      (get_global $std/array/arr)
      (i32.const 0)
     )
     (i32.const 42)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 91)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#__get
      (get_global $std/array/arr)
      (i32.const 1)
     )
     (i32.const 43)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 92)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#__get
      (get_global $std/array/arr)
      (i32.const 2)
     )
     (i32.const 44)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 93)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#reverse
    (get_global $std/array/arr)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<i32>#get:length|inlined.10 (result i32)
      (set_local $0
       (get_global $std/array/arr)
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 3)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 99)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $std/array/internalCapacity<i32>
      (get_global $std/array/arr)
     )
     (i32.const 5)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 100)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#__get
      (get_global $std/array/arr)
      (i32.const 0)
     )
     (i32.const 44)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 101)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#__get
      (get_global $std/array/arr)
      (i32.const 1)
     )
     (i32.const 43)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 102)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#__get
      (get_global $std/array/arr)
      (i32.const 2)
     )
     (i32.const 42)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 103)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#push
    (get_global $std/array/arr)
    (i32.const 43)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#push
    (get_global $std/array/arr)
    (i32.const 44)
   )
  )
  (set_global $std/array/i
   (call $~lib/array/Array<i32>#indexOf
    (get_global $std/array/arr)
    (i32.const 44)
    (i32.const 0)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 112)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (call $~lib/array/Array<i32>#indexOf
    (get_global $std/array/arr)
    (i32.const 42)
    (i32.const 0)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 116)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (call $~lib/array/Array<i32>#indexOf
    (get_global $std/array/arr)
    (i32.const 45)
    (i32.const 0)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const -1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 120)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (call $~lib/array/Array<i32>#indexOf
    (get_global $std/array/arr)
    (i32.const 43)
    (i32.const 100)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const -1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 124)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (call $~lib/array/Array<i32>#indexOf
    (get_global $std/array/arr)
    (i32.const 43)
    (i32.const -100)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 128)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (call $~lib/array/Array<i32>#indexOf
    (get_global $std/array/arr)
    (i32.const 43)
    (i32.const -2)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 3)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 132)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (call $~lib/array/Array<i32>#indexOf
    (get_global $std/array/arr)
    (i32.const 43)
    (i32.const -4)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 136)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (call $~lib/array/Array<i32>#indexOf
    (get_global $std/array/arr)
    (i32.const 43)
    (i32.const 0)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 140)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (call $~lib/array/Array<i32>#indexOf
    (get_global $std/array/arr)
    (i32.const 43)
    (i32.const 1)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 144)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (call $~lib/array/Array<i32>#indexOf
    (get_global $std/array/arr)
    (i32.const 43)
    (i32.const 2)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 3)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 148)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/includes
   (call $~lib/array/Array<i32>#includes
    (get_global $std/array/arr)
    (i32.const 44)
    (i32.const 0)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/includes)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 154)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/includes
   (call $~lib/array/Array<i32>#includes
    (get_global $std/array/arr)
    (i32.const 42)
    (i32.const 0)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/includes)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 158)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/includes
   (call $~lib/array/Array<i32>#includes
    (get_global $std/array/arr)
    (i32.const 45)
    (i32.const 0)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/includes)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 162)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/includes
   (call $~lib/array/Array<i32>#includes
    (get_global $std/array/arr)
    (i32.const 43)
    (i32.const 100)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/includes)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 166)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/includes
   (call $~lib/array/Array<i32>#includes
    (get_global $std/array/arr)
    (i32.const 43)
    (i32.const -100)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/includes)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 170)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/includes
   (call $~lib/array/Array<i32>#includes
    (get_global $std/array/arr)
    (i32.const 43)
    (i32.const -2)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/includes)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 174)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/includes
   (call $~lib/array/Array<i32>#includes
    (get_global $std/array/arr)
    (i32.const 43)
    (i32.const -4)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/includes)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 178)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/includes
   (call $~lib/array/Array<i32>#includes
    (get_global $std/array/arr)
    (i32.const 43)
    (i32.const 0)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/includes)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 182)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/includes
   (call $~lib/array/Array<i32>#includes
    (get_global $std/array/arr)
    (i32.const 43)
    (i32.const 1)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/includes)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 186)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/includes
   (call $~lib/array/Array<i32>#includes
    (get_global $std/array/arr)
    (i32.const 43)
    (i32.const 2)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/includes)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 190)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (call $~lib/array/Array<i32>#splice
   (get_global $std/array/arr)
   (i32.const 1)
   (i32.const 1)
  )
  (if
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<i32>#get:length|inlined.11 (result i32)
      (set_local $0
       (get_global $std/array/arr)
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 4)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 194)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $std/array/internalCapacity<i32>
      (get_global $std/array/arr)
     )
     (i32.const 5)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 195)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#__get
      (get_global $std/array/arr)
      (i32.const 0)
     )
     (i32.const 44)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 196)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#__get
      (get_global $std/array/arr)
      (i32.const 1)
     )
     (i32.const 42)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 197)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (call $~lib/array/Array<i32>#__set
   (get_global $std/array/arr)
   (i32.const 0)
   (i32.const 0)
  )
  (call $~lib/array/Array<i32>#__set
   (get_global $std/array/arr)
   (i32.const 1)
   (i32.const 1)
  )
  (call $~lib/array/Array<i32>#__set
   (get_global $std/array/arr)
   (i32.const 2)
   (i32.const 2)
  )
  (call $~lib/array/Array<i32>#__set
   (get_global $std/array/arr)
   (i32.const 3)
   (i32.const 3)
  )
  (set_global $std/array/i
   (call $~lib/array/Array<i32>#findIndex
    (get_global $std/array/arr)
    (i32.const 0)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 207)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (call $~lib/array/Array<i32>#findIndex
    (get_global $std/array/arr)
    (i32.const 1)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 210)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (call $~lib/array/Array<i32>#findIndex
    (get_global $std/array/arr)
    (i32.const 2)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const -1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 213)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (call $~lib/array/Array<i32>#findIndex
    (get_global $std/array/arr)
    (i32.const 3)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const -1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 221)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<i32>#get:length|inlined.12 (result i32)
      (set_local $0
       (get_global $std/array/arr)
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 8)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 222)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (call $~lib/array/Array<i32>#findIndex
    (get_global $std/array/arr)
    (i32.const 4)
   )
  )
  (if
   (i32.eqz
    (i32.ne
     (get_global $std/array/i)
     (i32.const -1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 224)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (set_global $std/array/i
   (call $~lib/array/Array<i32>#findIndex
    (get_global $std/array/arr)
    (i32.const 5)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const -1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 237)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<i32>#get:length|inlined.13 (result i32)
      (set_local $0
       (get_global $std/array/arr)
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 238)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#push
    (get_global $std/array/arr)
    (i32.const 2)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#push
    (get_global $std/array/arr)
    (i32.const 3)
   )
  )
  (set_global $std/array/every
   (call $~lib/array/Array<i32>#every
    (get_global $std/array/arr)
    (i32.const 6)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/every)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 246)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/every
   (call $~lib/array/Array<i32>#every
    (get_global $std/array/arr)
    (i32.const 7)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/every)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 249)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/every
   (call $~lib/array/Array<i32>#every
    (get_global $std/array/arr)
    (i32.const 8)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/every)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 257)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<i32>#get:length|inlined.14 (result i32)
      (set_local $0
       (get_global $std/array/arr)
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 8)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 258)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/every
   (call $~lib/array/Array<i32>#every
    (get_global $std/array/arr)
    (i32.const 9)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/every)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 260)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (set_global $std/array/every
   (call $~lib/array/Array<i32>#every
    (get_global $std/array/arr)
    (i32.const 10)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/every)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 273)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<i32>#get:length|inlined.15 (result i32)
      (set_local $0
       (get_global $std/array/arr)
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 274)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#push
    (get_global $std/array/arr)
    (i32.const 2)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#push
    (get_global $std/array/arr)
    (i32.const 3)
   )
  )
  (set_global $std/array/some
   (call $~lib/array/Array<i32>#some
    (get_global $std/array/arr)
    (i32.const 11)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/some)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 282)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/some
   (call $~lib/array/Array<i32>#some
    (get_global $std/array/arr)
    (i32.const 12)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/some)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 285)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/some
   (call $~lib/array/Array<i32>#some
    (get_global $std/array/arr)
    (i32.const 13)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/some)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 293)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<i32>#get:length|inlined.16 (result i32)
      (set_local $0
       (get_global $std/array/arr)
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 8)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 294)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/some
   (call $~lib/array/Array<i32>#some
    (get_global $std/array/arr)
    (i32.const 14)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/some)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 296)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (set_global $std/array/some
   (call $~lib/array/Array<i32>#some
    (get_global $std/array/arr)
    (i32.const 15)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/some)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 309)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<i32>#get:length|inlined.17 (result i32)
      (set_local $0
       (get_global $std/array/arr)
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 310)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#push
    (get_global $std/array/arr)
    (i32.const 2)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#push
    (get_global $std/array/arr)
    (i32.const 3)
   )
  )
  (set_global $std/array/i
   (i32.const 0)
  )
  (call $~lib/array/Array<i32>#forEach
   (get_global $std/array/arr)
   (i32.const 16)
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 6)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 319)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (i32.const 0)
  )
  (call $~lib/array/Array<i32>#forEach
   (get_global $std/array/arr)
   (i32.const 17)
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 6)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 328)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<i32>#get:length|inlined.18 (result i32)
      (set_local $0
       (get_global $std/array/arr)
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 8)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 329)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (i32.const 0)
  )
  (call $~lib/array/Array<i32>#forEach
   (get_global $std/array/arr)
   (i32.const 18)
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 406)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 332)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (set_global $std/array/i
   (i32.const 0)
  )
  (call $~lib/array/Array<i32>#forEach
   (get_global $std/array/arr)
   (i32.const 19)
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 346)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<i32>#get:length|inlined.19 (result i32)
      (set_local $0
       (get_global $std/array/arr)
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 347)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#push
    (get_global $std/array/arr)
    (i32.const 2)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#push
    (get_global $std/array/arr)
    (i32.const 3)
   )
  )
  (set_global $std/array/newArr
   (call $~lib/array/Array<i32>#map<f32>
    (get_global $std/array/arr)
    (i32.const 20)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<f32>#get:length|inlined.0 (result i32)
      (set_local $0
       (get_global $std/array/newArr)
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 4)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 356)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (f32.eq
     (call $~lib/array/Array<f32>#__get
      (get_global $std/array/newArr)
      (i32.const 0)
     )
     (f32.convert_s/i32
      (call $~lib/array/Array<i32>#__get
       (get_global $std/array/arr)
       (i32.const 0)
      )
     )
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 357)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (i32.const 0)
  )
  (drop
   (call $~lib/array/Array<i32>#map<i32>
    (get_global $std/array/arr)
    (i32.const 21)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 6)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 366)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<i32>#get:length|inlined.20 (result i32)
      (set_local $0
       (get_global $std/array/arr)
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 8)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 367)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (i32.const 0)
  )
  (drop
   (call $~lib/array/Array<i32>#map<i32>
    (get_global $std/array/arr)
    (i32.const 22)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 406)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 374)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (set_global $std/array/i
   (i32.const 0)
  )
  (drop
   (call $~lib/array/Array<i32>#map<i32>
    (get_global $std/array/arr)
    (i32.const 23)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 389)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<i32>#get:length|inlined.21 (result i32)
      (set_local $0
       (get_global $std/array/arr)
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 390)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#push
    (get_global $std/array/arr)
    (i32.const 2)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#push
    (get_global $std/array/arr)
    (i32.const 3)
   )
  )
  (set_global $std/array/filteredArr
   (call $~lib/array/Array<i32>#filter
    (get_global $std/array/arr)
    (i32.const 24)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<i32>#get:length|inlined.22 (result i32)
      (set_local $0
       (get_global $std/array/filteredArr)
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 398)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (i32.const 0)
  )
  (drop
   (call $~lib/array/Array<i32>#filter
    (get_global $std/array/arr)
    (i32.const 25)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 6)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 407)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<i32>#get:length|inlined.23 (result i32)
      (set_local $0
       (get_global $std/array/arr)
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 8)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 408)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (i32.const 0)
  )
  (drop
   (call $~lib/array/Array<i32>#filter
    (get_global $std/array/arr)
    (i32.const 26)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 406)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 415)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (set_global $std/array/i
   (i32.const 0)
  )
  (drop
   (call $~lib/array/Array<i32>#filter
    (get_global $std/array/arr)
    (i32.const 27)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 430)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<i32>#get:length|inlined.24 (result i32)
      (set_local $0
       (get_global $std/array/arr)
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 431)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#push
    (get_global $std/array/arr)
    (i32.const 2)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#push
    (get_global $std/array/arr)
    (i32.const 3)
   )
  )
  (set_global $std/array/i
   (call $~lib/array/Array<i32>#reduce<i32>
    (get_global $std/array/arr)
    (i32.const 28)
    (i32.const 0)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 6)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 439)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (call $~lib/array/Array<i32>#reduce<i32>
    (get_global $std/array/arr)
    (i32.const 29)
    (i32.const 4)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 10)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 443)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/boolVal
   (i32.and
    (call $~lib/array/Array<i32>#reduce<bool>
     (get_global $std/array/arr)
     (i32.const 30)
     (i32.const 0)
    )
    (i32.const 1)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/boolVal)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 446)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/boolVal
   (i32.and
    (call $~lib/array/Array<i32>#reduce<bool>
     (get_global $std/array/arr)
     (i32.const 31)
     (i32.const 0)
    )
    (i32.const 1)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/boolVal)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 449)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (call $~lib/array/Array<i32>#reduce<i32>
    (get_global $std/array/arr)
    (i32.const 32)
    (i32.const 0)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 6)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 457)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<i32>#get:length|inlined.25 (result i32)
      (set_local $0
       (get_global $std/array/arr)
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 8)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 458)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (call $~lib/array/Array<i32>#reduce<i32>
    (get_global $std/array/arr)
    (i32.const 33)
    (i32.const 0)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 10)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 460)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (set_global $std/array/i
   (call $~lib/array/Array<i32>#reduce<i32>
    (get_global $std/array/arr)
    (i32.const 34)
    (i32.const 0)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 473)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<i32>#get:length|inlined.26 (result i32)
      (set_local $0
       (get_global $std/array/arr)
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 474)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#push
    (get_global $std/array/arr)
    (i32.const 2)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#push
    (get_global $std/array/arr)
    (i32.const 3)
   )
  )
  (set_global $std/array/i
   (call $~lib/array/Array<i32>#reduceRight<i32>
    (get_global $std/array/arr)
    (i32.const 35)
    (i32.const 0)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 6)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 482)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (call $~lib/array/Array<i32>#reduceRight<i32>
    (get_global $std/array/arr)
    (i32.const 36)
    (i32.const 4)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 10)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 486)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/boolVal
   (i32.and
    (call $~lib/array/Array<i32>#reduceRight<bool>
     (get_global $std/array/arr)
     (i32.const 37)
     (i32.const 0)
    )
    (i32.const 1)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/boolVal)
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 489)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/boolVal
   (i32.and
    (call $~lib/array/Array<i32>#reduceRight<bool>
     (get_global $std/array/arr)
     (i32.const 38)
     (i32.const 0)
    )
    (i32.const 1)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/boolVal)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 492)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (call $~lib/array/Array<i32>#reduceRight<i32>
    (get_global $std/array/arr)
    (i32.const 39)
    (i32.const 0)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 6)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 500)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<i32>#get:length|inlined.27 (result i32)
      (set_local $0
       (get_global $std/array/arr)
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 8)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 501)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (call $~lib/array/Array<i32>#reduceRight<i32>
    (get_global $std/array/arr)
    (i32.const 40)
    (i32.const 0)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 10)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 503)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_global $std/array/arr)
   )
  )
  (set_global $std/array/i
   (call $~lib/array/Array<i32>#reduceRight<i32>
    (get_global $std/array/arr)
    (i32.const 41)
    (i32.const 0)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/array/i)
     (i32.const 6)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 516)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (block $~lib/array/Array<i32>#get:length|inlined.28 (result i32)
      (set_local $0
       (get_global $std/array/arr)
      )
      (i32.load offset=4
       (get_local $0)
      )
     )
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 517)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#push
    (get_global $std/array/arr)
    (i32.const 0)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#push
    (get_global $std/array/arr)
    (i32.const 1)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#push
    (get_global $std/array/arr)
    (i32.const 2)
   )
  )
  (drop
   (call $~lib/array/Array<i32>#push
    (get_global $std/array/arr)
    (i32.const 3)
   )
  )
  (call $~lib/math/NativeMath.seedRandom
   (i64.reinterpret/f64
    (call $~lib/math/JSMath.random)
   )
  )
  (drop
   (block (result i32)
    (set_global $~argc
     (i32.const 0)
    )
    (call $~lib/array/Array<f32>#sort|trampoline
     (get_global $std/array/f32ArrayTyped)
     (i32.const 0)
    )
   )
  )
  (if
   (i32.eqz
    (call $std/array/isArraysEqual<f32>
     (get_global $std/array/f32ArrayTyped)
     (i32.const 480)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 619)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (block (result i32)
    (set_global $~argc
     (i32.const 0)
    )
    (call $~lib/array/Array<f64>#sort|trampoline
     (get_global $std/array/f64ArrayTyped)
     (i32.const 0)
    )
   )
  )
  (if
   (i32.eqz
    (call $std/array/isArraysEqual<f64>
     (get_global $std/array/f64ArrayTyped)
     (i32.const 752)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 623)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (block (result i32)
    (set_global $~argc
     (i32.const 0)
    )
    (call $~lib/array/Array<i32>#sort|trampoline
     (get_global $std/array/i32ArrayTyped)
     (i32.const 0)
    )
   )
  )
  (if
   (i32.eqz
    (call $std/array/isArraysEqual<i32>
     (get_global $std/array/i32ArrayTyped)
     (i32.const 832)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 627)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (block (result i32)
    (set_global $~argc
     (i32.const 0)
    )
    (call $~lib/array/Array<u32>#sort|trampoline
     (get_global $std/array/u32ArrayTyped)
     (i32.const 0)
    )
   )
  )
  (if
   (i32.eqz
    (call $std/array/isArraysEqual<u32>
     (get_global $std/array/u32ArrayTyped)
     (i32.const 912)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 631)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/reversed64
   (call $std/array/createReverseOrderedArray
    (i32.const 64)
   )
  )
  (set_global $std/array/reversed128
   (call $std/array/createReverseOrderedArray
    (i32.const 128)
   )
  )
  (set_global $std/array/reversed1024
   (call $std/array/createReverseOrderedArray
    (i32.const 1024)
   )
  )
  (set_global $std/array/reversed10000
   (call $std/array/createReverseOrderedArray
    (i32.const 10000)
   )
  )
  (set_global $std/array/randomized512
   (call $std/array/createRandomOrderedArray
    (i32.const 512)
   )
  )
  (call $std/array/assertSortedDefault<i32>
   (get_global $std/array/reversed0)
  )
  (call $std/array/assertSortedDefault<i32>
   (get_global $std/array/reversed1)
  )
  (if
   (i32.eqz
    (call $std/array/isArraysEqual<i32>
     (get_global $std/array/reversed1)
     (i32.const 1080)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 651)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (call $std/array/assertSortedDefault<i32>
   (get_global $std/array/reversed2)
  )
  (if
   (i32.eqz
    (call $std/array/isArraysEqual<i32>
     (get_global $std/array/reversed2)
     (i32.const 1104)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 654)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (call $std/array/assertSortedDefault<i32>
   (get_global $std/array/reversed4)
  )
  (if
   (i32.eqz
    (call $std/array/isArraysEqual<i32>
     (get_global $std/array/reversed4)
     (get_global $std/array/expected4)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 657)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (call $std/array/assertSortedDefault<i32>
   (get_global $std/array/reversed64)
  )
  (if
   (i32.eqz
    (call $std/array/isArraysEqual<i32>
     (get_global $std/array/reversed64)
     (get_global $std/array/expected4)
     (i32.const 4)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 660)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (call $std/array/assertSortedDefault<i32>
   (get_global $std/array/reversed128)
  )
  (if
   (i32.eqz
    (call $std/array/isArraysEqual<i32>
     (get_global $std/array/reversed128)
     (get_global $std/array/expected4)
     (i32.const 4)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 663)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (call $std/array/assertSortedDefault<i32>
   (get_global $std/array/reversed1024)
  )
  (if
   (i32.eqz
    (call $std/array/isArraysEqual<i32>
     (get_global $std/array/reversed1024)
     (get_global $std/array/expected4)
     (i32.const 4)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 666)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (call $std/array/assertSortedDefault<i32>
   (get_global $std/array/reversed10000)
  )
  (if
   (i32.eqz
    (call $std/array/isArraysEqual<i32>
     (get_global $std/array/reversed10000)
     (get_global $std/array/expected4)
     (i32.const 4)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 669)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (call $std/array/assertSortedDefault<i32>
   (get_global $std/array/randomized512)
  )
  (set_global $std/array/randomized64
   (call $std/array/createRandomOrderedArray
    (i32.const 64)
   )
  )
  (set_global $std/array/randomized257
   (call $std/array/createRandomOrderedArray
    (i32.const 257)
   )
  )
  (call $std/array/assertSorted<i32>
   (get_global $std/array/randomized64)
   (i32.const 47)
  )
  (call $std/array/assertSorted<i32>
   (get_global $std/array/randomized64)
   (i32.const 48)
  )
  (call $std/array/assertSorted<i32>
   (get_global $std/array/randomized257)
   (i32.const 49)
  )
  (call $std/array/assertSorted<i32>
   (get_global $std/array/randomized257)
   (i32.const 50)
  )
  (set_global $std/array/reversedNested512
   (call $std/array/createReverseOrderedNestedArray
    (i32.const 512)
   )
  )
  (call $std/array/assertSorted<Array<i32>>
   (get_global $std/array/reversedNested512)
   (i32.const 51)
  )
  (set_global $std/array/reversedElements512
   (call $std/array/createReverseOrderedElementsArray
    (i32.const 512)
   )
  )
  (call $std/array/assertSorted<Proxy<i32>>
   (get_global $std/array/reversedElements512)
   (i32.const 52)
  )
  (call $std/array/assertSorted<String>
   (get_global $std/array/randomStringsActual)
   (i32.const 53)
  )
  (if
   (i32.eqz
    (call $std/array/isArraysEqual<String>
     (get_global $std/array/randomStringsActual)
     (get_global $std/array/randomStringsExpected)
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 104)
     (i32.const 698)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/randomStrings400
   (call $std/array/createRandomStringArray
    (i32.const 400)
   )
  )
  (call $std/array/assertSorted<String>
   (get_global $std/array/randomStrings400)
   (i32.const 54)
  )
 )
)
