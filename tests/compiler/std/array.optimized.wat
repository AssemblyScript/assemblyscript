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
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
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
 (table 55 55 anyfunc)
 (elem (i32.const 0) $start~anonymous|0 $start~anonymous|1 $start~anonymous|2 $start~anonymous|3 $start~anonymous|2 $start~anonymous|5 $start~anonymous|6 $start~anonymous|7 $start~anonymous|8 $start~anonymous|9 $start~anonymous|10 $start~anonymous|11 $start~anonymous|12 $start~anonymous|13 $start~anonymous|14 $start~anonymous|15 $start~anonymous|16 $start~anonymous|17 $start~anonymous|16 $start~anonymous|19 $start~anonymous|20 $start~anonymous|21 $start~anonymous|22 $start~anonymous|23 $start~anonymous|24 $start~anonymous|25 $start~anonymous|26 $start~anonymous|27 $start~anonymous|28 $start~anonymous|28 $start~anonymous|30 $start~anonymous|31 $start~anonymous|32 $start~anonymous|28 $start~anonymous|34 $start~anonymous|28 $start~anonymous|28 $start~anonymous|30 $start~anonymous|31 $start~anonymous|32 $start~anonymous|28 $start~anonymous|34 $~lib/array/Array<f32>#sort|trampoline~anonymous|42 $~lib/array/Array<f64>#sort|trampoline~anonymous|43 $~lib/array/Array<i32>#sort|trampoline~anonymous|44 $~lib/array/Array<u32>#sort|trampoline~anonymous|45 $~lib/array/Array<i32>#sort|trampoline~anonymous|44 $~lib/array/Array<i32>#sort|trampoline~anonymous|44 $start~anonymous|48 $~lib/array/Array<i32>#sort|trampoline~anonymous|44 $start~anonymous|48 $start~anonymous|51 $start~anonymous|52 $start~anonymous|53 $start~anonymous|53)
 (memory $0 1)
 (data (i32.const 8) "\0d\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 40) "\1c\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 104) "\0c\00\00\00s\00t\00d\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (data (i32.const 136) "\0c\00\00\00~\00l\00i\00b\00/\00m\00a\00t\00h\00.\00t\00s")
 (data (i32.const 168) "V\00\00\00A\00B\00C\00D\00E\00F\00G\00H\00I\00J\00K\00L\00M\00N\00O\00P\00Q\00R\00S\00T\00U\00V\00W\00X\00Y\00Z\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z\000\001\002\003\004\005\006\007\008\009\00_\00-\00,\00.\00+\00/\00\\\00[\00]\00{\00}\00(\00)\00<\00>\00*\00&\00$\00%\00^\00@\00#\00!\00?")
 (data (i32.const 344) " ")
 (data (i32.const 354) "\80?\00\00\c0\7f\00\00\80\ff\00\00\80?\00\00\00\00\00\00\80\bf\00\00\00\c0\00\00\80\7f")
 (data (i32.const 408) "X\01\00\00\08")
 (data (i32.const 416) " ")
 (data (i32.const 426) "\80\ff\00\00\00\c0\00\00\80\bf\00\00\00\00\00\00\80?\00\00\80?\00\00\80\7f\00\00\c0\7f")
 (data (i32.const 480) "\a0\01\00\00\08")
 (data (i32.const 488) "@")
 (data (i32.const 502) "\f0?\00\00\00\00\00\00\f8\7f\00\00\00\00\00\00\f0\ff\05\00\00\00\00\00\f0?")
 (data (i32.const 542) "\f0\bf\00\00\00\00\00\00\00\c0\00\00\00\00\00\00\f0\7f")
 (data (i32.const 616) "\e8\01\00\00\08")
 (data (i32.const 624) "@")
 (data (i32.const 638) "\f0\ff\00\00\00\00\00\00\00\c0\00\00\00\00\00\00\f0\bf")
 (data (i32.const 670) "\f0?\05\00\00\00\00\00\f0?\00\00\00\00\00\00\f0\7f\00\00\00\00\00\00\f8\7f")
 (data (i32.const 752) "p\02\00\00\08")
 (data (i32.const 760) "\14\00\00\00\00\00\00\00\01\00\00\00\fe\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\02")
 (data (i32.const 792) "\f8\02\00\00\05")
 (data (i32.const 800) "\14\00\00\00\00\00\00\00\fe\ff\ff\ff\ff\ff\ff\ff\00\00\00\00\01\00\00\00\02")
 (data (i32.const 832) " \03\00\00\05")
 (data (i32.const 840) "\14\00\00\00\00\00\00\00\01\00\00\00\ff\ff\ff\ff\fe\ff\ff\ff\00\00\00\00\02")
 (data (i32.const 872) "H\03\00\00\05")
 (data (i32.const 880) "\14")
 (data (i32.const 892) "\01\00\00\00\02\00\00\00\fe\ff\ff\ff\ff\ff\ff\ff")
 (data (i32.const 912) "p\03\00\00\05")
 (data (i32.const 928) "\98\03")
 (data (i32.const 936) "\04\00\00\00\00\00\00\00\01")
 (data (i32.const 952) "\a8\03\00\00\01")
 (data (i32.const 960) "\08\00\00\00\00\00\00\00\02\00\00\00\01")
 (data (i32.const 976) "\c0\03\00\00\02")
 (data (i32.const 984) "\10\00\00\00\00\00\00\00\03\00\00\00\02\00\00\00\01")
 (data (i32.const 1016) "\d8\03\00\00\04")
 (data (i32.const 1024) "\10")
 (data (i32.const 1036) "\01\00\00\00\02\00\00\00\03")
 (data (i32.const 1057) "\04\00\00\04")
 (data (i32.const 1064) "\04\00\00\00\00\00\00\00\01")
 (data (i32.const 1080) "(\04\00\00\01")
 (data (i32.const 1088) "\08\00\00\00\00\00\00\00\01\00\00\00\02")
 (data (i32.const 1104) "@\04\00\00\02")
 (data (i32.const 1112) "\01\00\00\00a")
 (data (i32.const 1120) "\01\00\00\00b")
 (data (i32.const 1128) "\02\00\00\00a\00b")
 (data (i32.const 1136) "\02\00\00\00b\00a")
 (data (i32.const 1152) "\1c\00\00\00\00\00\00\00X\04\00\00`\04\00\00X\04\00\00h\04\00\00p\04\00\00x\04")
 (data (i32.const 1216) "\80\04\00\00\07")
 (data (i32.const 1224) "\1c\00\00\00\00\00\00\00x\04\00\00X\04\00\00X\04\00\00h\04\00\00`\04\00\00p\04")
 (data (i32.const 1288) "\c8\04\00\00\07")
 (data (i32.const 1296) "\0e\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (data (i32.const 1328) "\17\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s")
 (data (i32.const 1384) "\04\00\00\00n\00u\00l\00l")
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $~lib/internal/arraybuffer/computeSize (; 2 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (i32.shl
   (i32.const 1)
   (i32.sub
    (i32.const 32)
    (i32.clz
     (i32.add
      (get_local $0)
      (i32.const 7)
     )
    )
   )
  )
 )
 (func $~lib/allocator/arena/__memory_allocate (; 3 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i32.gt_u
    (get_local $0)
    (i32.const 1073741824)
   )
   (unreachable)
  )
  (if
   (i32.gt_u
    (tee_local $2
     (i32.and
      (i32.add
       (i32.add
        (tee_local $1
         (get_global $~lib/allocator/arena/offset)
        )
        (select
         (get_local $0)
         (i32.const 1)
         (i32.gt_u
          (get_local $0)
          (i32.const 1)
         )
        )
       )
       (i32.const 7)
      )
      (i32.const -8)
     )
    )
    (i32.shl
     (tee_local $3
      (current_memory)
     )
     (i32.const 16)
    )
   )
   (if
    (i32.lt_s
     (grow_memory
      (select
       (get_local $3)
       (tee_local $0
        (i32.shr_u
         (i32.and
          (i32.add
           (i32.sub
            (get_local $2)
            (get_local $1)
           )
           (i32.const 65535)
          )
          (i32.const -65536)
         )
         (i32.const 16)
        )
       )
       (i32.gt_s
        (get_local $3)
        (get_local $0)
       )
      )
     )
     (i32.const 0)
    )
    (if
     (i32.lt_s
      (grow_memory
       (get_local $0)
      )
      (i32.const 0)
     )
     (unreachable)
    )
   )
  )
  (set_global $~lib/allocator/arena/offset
   (get_local $2)
  )
  (get_local $1)
 )
 (func $~lib/internal/arraybuffer/allocateUnsafe (; 4 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (if
   (i32.gt_u
    (get_local $0)
    (i32.const 1073741816)
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
  (i32.store
   (tee_local $1
    (call $~lib/allocator/arena/__memory_allocate
     (call $~lib/internal/arraybuffer/computeSize
      (get_local $0)
     )
    )
   )
   (get_local $0)
  )
  (get_local $1)
 )
 (func $~lib/memory/memory.allocate (; 5 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (call $~lib/allocator/arena/__memory_allocate
   (get_local $0)
  )
 )
 (func $~lib/internal/memory/memset (; 6 ;) (; has Stack IR ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i64)
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
    (tee_local $3
     (i32.add
      (get_local $0)
      (get_local $2)
     )
    )
    (i32.const 2)
   )
   (get_local $1)
  )
  (i32.store8
   (i32.sub
    (get_local $3)
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
  (set_local $2
   (i32.sub
    (get_local $2)
    (tee_local $3
     (i32.and
      (i32.sub
       (i32.const 0)
       (get_local $0)
      )
      (i32.const 3)
     )
    )
   )
  )
  (i32.store
   (tee_local $0
    (i32.add
     (get_local $0)
     (get_local $3)
    )
   )
   (tee_local $1
    (i32.mul
     (i32.and
      (get_local $1)
      (i32.const 255)
     )
     (i32.const 16843009)
    )
   )
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (tee_local $2
      (i32.and
       (get_local $2)
       (i32.const -4)
      )
     )
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
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (get_local $1)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (get_local $1)
  )
  (i32.store
   (i32.sub
    (tee_local $3
     (i32.add
      (get_local $0)
      (get_local $2)
     )
    )
    (i32.const 12)
   )
   (get_local $1)
  )
  (i32.store
   (i32.sub
    (get_local $3)
    (i32.const 8)
   )
   (get_local $1)
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
   (get_local $1)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 16)
   )
   (get_local $1)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 20)
   )
   (get_local $1)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 24)
   )
   (get_local $1)
  )
  (i32.store
   (i32.sub
    (tee_local $3
     (i32.add
      (get_local $0)
      (get_local $2)
     )
    )
    (i32.const 28)
   )
   (get_local $1)
  )
  (i32.store
   (i32.sub
    (get_local $3)
    (i32.const 24)
   )
   (get_local $1)
  )
  (i32.store
   (i32.sub
    (get_local $3)
    (i32.const 20)
   )
   (get_local $1)
  )
  (i32.store
   (i32.sub
    (get_local $3)
    (i32.const 16)
   )
   (get_local $1)
  )
  (set_local $0
   (i32.add
    (get_local $0)
    (tee_local $3
     (i32.add
      (i32.and
       (get_local $0)
       (i32.const 4)
      )
      (i32.const 24)
     )
    )
   )
  )
  (set_local $2
   (i32.sub
    (get_local $2)
    (get_local $3)
   )
  )
  (set_local $4
   (i64.or
    (tee_local $4
     (i64.extend_u/i32
      (get_local $1)
     )
    )
    (i64.shl
     (get_local $4)
     (i64.const 32)
    )
   )
  )
  (loop $continue|0
   (if
    (i32.ge_u
     (get_local $2)
     (i32.const 32)
    )
    (block
     (i64.store
      (get_local $0)
      (get_local $4)
     )
     (i64.store
      (i32.add
       (get_local $0)
       (i32.const 8)
      )
      (get_local $4)
     )
     (i64.store
      (i32.add
       (get_local $0)
       (i32.const 16)
      )
      (get_local $4)
     )
     (i64.store
      (i32.add
       (get_local $0)
       (i32.const 24)
      )
      (get_local $4)
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
     (br $continue|0)
    )
   )
  )
 )
 (func $~lib/array/Array<i32>#constructor (; 7 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
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
   (call $~lib/internal/arraybuffer/allocateUnsafe
    (tee_local $3
     (i32.shl
      (get_local $1)
      (i32.const 2)
     )
    )
   )
  )
  (if
   (i32.eqz
    (get_local $0)
   )
   (block
    (i32.store
     (tee_local $0
      (call $~lib/memory/memory.allocate
       (i32.const 8)
      )
     )
     (i32.const 0)
    )
    (i32.store offset=4
     (get_local $0)
     (i32.const 0)
    )
   )
  )
  (i32.store
   (get_local $0)
   (get_local $2)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $1)
  )
  (call $~lib/internal/memory/memset
   (i32.add
    (get_local $2)
    (i32.const 8)
   )
   (i32.const 0)
   (get_local $3)
  )
  (get_local $0)
 )
 (func $std/array/internalCapacity<i32> (; 8 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (i32.shr_s
   (i32.load
    (i32.load
     (get_local $0)
    )
   )
   (i32.const 2)
  )
 )
 (func $~lib/internal/memory/memcpy (; 9 ;) (; has Stack IR ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (loop $continue|0
   (if
    (tee_local $3
     (if (result i32)
      (get_local $2)
      (i32.and
       (get_local $1)
       (i32.const 3)
      )
      (get_local $2)
     )
    )
    (block
     (set_local $0
      (i32.add
       (tee_local $4
        (get_local $0)
       )
       (i32.const 1)
      )
     )
     (set_local $1
      (i32.add
       (tee_local $3
        (get_local $1)
       )
       (i32.const 1)
      )
     )
     (i32.store8
      (get_local $4)
      (i32.load8_u
       (get_local $3)
      )
     )
     (set_local $2
      (i32.sub
       (get_local $2)
       (i32.const 1)
      )
     )
     (br $continue|0)
    )
   )
  )
  (if
   (i32.eqz
    (i32.and
     (get_local $0)
     (i32.const 3)
    )
   )
   (block
    (loop $continue|1
     (if
      (i32.ge_u
       (get_local $2)
       (i32.const 16)
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
       (br $continue|1)
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
     (block
      (set_local $3
       (get_local $1)
      )
      (i32.store8
       (get_local $0)
       (i32.load8_u
        (get_local $1)
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
      (if
       (i32.ne
        (tee_local $3
         (i32.and
          (get_local $0)
          (i32.const 3)
         )
        )
        (i32.const 1)
       )
       (block
        (br_if $case1|2
         (i32.eq
          (get_local $3)
          (i32.const 2)
         )
        )
        (br_if $case2|2
         (i32.eq
          (get_local $3)
          (i32.const 3)
         )
        )
        (br $break|2)
       )
      )
      (set_local $5
       (i32.load
        (get_local $1)
       )
      )
      (i32.store8
       (get_local $0)
       (i32.load8_u
        (tee_local $3
         (get_local $1)
        )
       )
      )
      (set_local $0
       (tee_local $1
        (i32.add
         (get_local $0)
         (i32.const 1)
        )
       )
      )
      (i32.store8
       (get_local $1)
       (i32.load8_u
        (tee_local $1
         (i32.add
          (get_local $3)
          (i32.const 1)
         )
        )
       )
      )
      (set_local $0
       (i32.add
        (tee_local $4
         (i32.add
          (get_local $0)
          (i32.const 1)
         )
        )
        (i32.const 1)
       )
      )
      (set_local $1
       (i32.add
        (tee_local $3
         (i32.add
          (get_local $1)
          (i32.const 1)
         )
        )
        (i32.const 1)
       )
      )
      (i32.store8
       (get_local $4)
       (i32.load8_u
        (get_local $3)
       )
      )
      (set_local $2
       (i32.sub
        (get_local $2)
        (i32.const 3)
       )
      )
      (loop $continue|3
       (if
        (i32.ge_u
         (get_local $2)
         (i32.const 17)
        )
        (block
         (i32.store
          (get_local $0)
          (i32.or
           (i32.shr_u
            (get_local $5)
            (i32.const 24)
           )
           (i32.shl
            (tee_local $3
             (i32.load
              (i32.add
               (get_local $1)
               (i32.const 1)
              )
             )
            )
            (i32.const 8)
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
            (get_local $3)
            (i32.const 24)
           )
           (i32.shl
            (tee_local $5
             (i32.load
              (i32.add
               (get_local $1)
               (i32.const 5)
              )
             )
            )
            (i32.const 8)
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
            (get_local $5)
            (i32.const 24)
           )
           (i32.shl
            (tee_local $3
             (i32.load
              (i32.add
               (get_local $1)
               (i32.const 9)
              )
             )
            )
            (i32.const 8)
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
            (get_local $3)
            (i32.const 24)
           )
           (i32.shl
            (tee_local $5
             (i32.load
              (i32.add
               (get_local $1)
               (i32.const 13)
              )
             )
            )
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
         (br $continue|3)
        )
       )
      )
      (br $break|2)
     )
     (set_local $5
      (i32.load
       (get_local $1)
      )
     )
     (i32.store8
      (get_local $0)
      (i32.load8_u
       (get_local $1)
      )
     )
     (set_local $0
      (i32.add
       (tee_local $4
        (i32.add
         (get_local $0)
         (i32.const 1)
        )
       )
       (i32.const 1)
      )
     )
     (set_local $1
      (i32.add
       (tee_local $3
        (i32.add
         (get_local $1)
         (i32.const 1)
        )
       )
       (i32.const 1)
      )
     )
     (i32.store8
      (get_local $4)
      (i32.load8_u
       (get_local $3)
      )
     )
     (set_local $2
      (i32.sub
       (get_local $2)
       (i32.const 2)
      )
     )
     (loop $continue|4
      (if
       (i32.ge_u
        (get_local $2)
        (i32.const 18)
       )
       (block
        (i32.store
         (get_local $0)
         (i32.or
          (i32.shr_u
           (get_local $5)
           (i32.const 16)
          )
          (i32.shl
           (tee_local $3
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 2)
             )
            )
           )
           (i32.const 16)
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
           (get_local $3)
           (i32.const 16)
          )
          (i32.shl
           (tee_local $5
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 6)
             )
            )
           )
           (i32.const 16)
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
           (get_local $5)
           (i32.const 16)
          )
          (i32.shl
           (tee_local $3
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 10)
             )
            )
           )
           (i32.const 16)
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
           (get_local $3)
           (i32.const 16)
          )
          (i32.shl
           (tee_local $5
            (i32.load
             (i32.add
              (get_local $1)
              (i32.const 14)
             )
            )
           )
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
        (br $continue|4)
       )
      )
     )
     (br $break|2)
    )
    (set_local $5
     (i32.load
      (get_local $1)
     )
    )
    (set_local $0
     (i32.add
      (tee_local $4
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (set_local $1
     (i32.add
      (tee_local $3
       (get_local $1)
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $4)
     (i32.load8_u
      (get_local $3)
     )
    )
    (set_local $2
     (i32.sub
      (get_local $2)
      (i32.const 1)
     )
    )
    (loop $continue|5
     (if
      (i32.ge_u
       (get_local $2)
       (i32.const 19)
      )
      (block
       (i32.store
        (get_local $0)
        (i32.or
         (i32.shr_u
          (get_local $5)
          (i32.const 8)
         )
         (i32.shl
          (tee_local $3
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 3)
            )
           )
          )
          (i32.const 24)
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
          (get_local $3)
          (i32.const 8)
         )
         (i32.shl
          (tee_local $5
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 7)
            )
           )
          )
          (i32.const 24)
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
          (get_local $5)
          (i32.const 8)
         )
         (i32.shl
          (tee_local $3
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 11)
            )
           )
          )
          (i32.const 24)
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
          (get_local $3)
          (i32.const 8)
         )
         (i32.shl
          (tee_local $5
           (i32.load
            (i32.add
             (get_local $1)
             (i32.const 15)
            )
           )
          )
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
       (br $continue|5)
      )
     )
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
     (get_local $0)
     (i32.load8_u
      (tee_local $3
       (get_local $1)
      )
     )
    )
    (set_local $0
     (tee_local $1
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $1)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $3)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $4
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (set_local $1
     (i32.add
      (tee_local $3
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $4)
     (i32.load8_u
      (get_local $3)
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
     (get_local $0)
     (i32.load8_u
      (tee_local $3
       (get_local $1)
      )
     )
    )
    (set_local $0
     (tee_local $1
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $1)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $3)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $4
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (set_local $1
     (i32.add
      (tee_local $3
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $4)
     (i32.load8_u
      (get_local $3)
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
     (get_local $0)
     (i32.load8_u
      (tee_local $3
       (get_local $1)
      )
     )
    )
    (set_local $0
     (tee_local $1
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $1)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $3)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (tee_local $3
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
    )
    (i32.store8
     (get_local $3)
     (i32.load8_u
      (tee_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
    )
    (set_local $0
     (i32.add
      (tee_local $4
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (set_local $1
     (i32.add
      (tee_local $3
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $4)
     (i32.load8_u
      (get_local $3)
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
     (get_local $0)
     (i32.load8_u
      (get_local $1)
     )
    )
    (set_local $0
     (i32.add
      (tee_local $4
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (set_local $1
     (i32.add
      (tee_local $3
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (get_local $4)
     (i32.load8_u
      (get_local $3)
     )
    )
   )
  )
  (if
   (i32.and
    (get_local $2)
    (i32.const 1)
   )
   (block
    (set_local $3
     (get_local $1)
    )
    (i32.store8
     (get_local $0)
     (i32.load8_u
      (get_local $1)
     )
    )
   )
  )
 )
 (func $~lib/internal/memory/memmove (; 10 ;) (; has Stack IR ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.eq
    (get_local $0)
    (get_local $1)
   )
   (return)
  )
  (if
   (i32.eqz
    (tee_local $3
     (i32.le_u
      (i32.add
       (get_local $1)
       (get_local $2)
      )
      (get_local $0)
     )
    )
   )
   (set_local $3
    (i32.le_u
     (i32.add
      (get_local $0)
      (get_local $2)
     )
     (get_local $1)
    )
   )
  )
  (if
   (get_local $3)
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
      (loop $continue|0
       (if
        (i32.and
         (get_local $0)
         (i32.const 7)
        )
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
         (set_local $0
          (i32.add
           (tee_local $3
            (tee_local $4
             (get_local $0)
            )
           )
           (i32.const 1)
          )
         )
         (set_local $1
          (i32.add
           (tee_local $3
            (get_local $1)
           )
           (i32.const 1)
          )
         )
         (i32.store8
          (get_local $4)
          (i32.load8_u
           (get_local $3)
          )
         )
         (br $continue|0)
        )
       )
      )
      (loop $continue|1
       (if
        (i32.ge_u
         (get_local $2)
         (i32.const 8)
        )
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
         (br $continue|1)
        )
       )
      )
     )
    )
    (loop $continue|2
     (if
      (get_local $2)
      (block
       (set_local $0
        (i32.add
         (tee_local $3
          (tee_local $4
           (get_local $0)
          )
         )
         (i32.const 1)
        )
       )
       (set_local $1
        (i32.add
         (tee_local $3
          (get_local $1)
         )
         (i32.const 1)
        )
       )
       (i32.store8
        (get_local $4)
        (i32.load8_u
         (get_local $3)
        )
       )
       (set_local $2
        (i32.sub
         (get_local $2)
         (i32.const 1)
        )
       )
       (br $continue|2)
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
         (br $continue|3)
        )
       )
      )
      (loop $continue|4
       (if
        (i32.ge_u
         (get_local $2)
         (i32.const 8)
        )
        (block
         (i64.store
          (i32.add
           (get_local $0)
           (tee_local $2
            (i32.sub
             (get_local $2)
             (i32.const 8)
            )
           )
          )
          (i64.load
           (i32.add
            (get_local $1)
            (get_local $2)
           )
          )
         )
         (br $continue|4)
        )
       )
      )
     )
    )
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
 (func $~lib/internal/arraybuffer/reallocateUnsafe (; 11 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i32.gt_s
    (get_local $1)
    (tee_local $2
     (i32.load
      (get_local $0)
     )
    )
   )
   (block
    (if
     (i32.gt_s
      (get_local $1)
      (i32.const 1073741816)
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
       (i32.const 8)
      )
     )
     (block
      (i32.store
       (get_local $0)
       (get_local $1)
      )
      (call $~lib/internal/memory/memset
       (i32.add
        (i32.add
         (get_local $0)
         (i32.const 8)
        )
        (get_local $2)
       )
       (i32.const 0)
       (i32.sub
        (get_local $1)
        (get_local $2)
       )
      )
     )
     (block
      (call $~lib/internal/memory/memmove
       (i32.add
        (tee_local $3
         (call $~lib/internal/arraybuffer/allocateUnsafe
          (get_local $1)
         )
        )
        (i32.const 8)
       )
       (i32.add
        (get_local $0)
        (i32.const 8)
       )
       (get_local $2)
      )
      (call $~lib/internal/memory/memset
       (i32.add
        (i32.add
         (get_local $3)
         (i32.const 8)
        )
        (get_local $2)
       )
       (i32.const 0)
       (i32.sub
        (get_local $1)
        (get_local $2)
       )
      )
      (return
       (get_local $3)
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
      (i32.lt_s
       (get_local $1)
       (i32.const 0)
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
 (func $~lib/array/Array<i32>#push (; 12 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $3
   (i32.add
    (tee_local $2
     (i32.load offset=4
      (get_local $0)
     )
    )
    (i32.const 1)
   )
  )
  (if
   (i32.ge_u
    (get_local $2)
    (i32.shr_u
     (i32.load
      (tee_local $4
       (i32.load
        (get_local $0)
       )
      )
     )
     (i32.const 2)
    )
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
    (i32.store
     (get_local $0)
     (tee_local $4
      (call $~lib/internal/arraybuffer/reallocateUnsafe
       (get_local $4)
       (i32.shl
        (get_local $3)
        (i32.const 2)
       )
      )
     )
    )
   )
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $3)
  )
  (i32.store offset=8
   (i32.add
    (get_local $4)
    (i32.shl
     (get_local $2)
     (i32.const 2)
    )
   )
   (get_local $1)
  )
  (get_local $3)
 )
 (func $~lib/array/Array<i32>#__get (; 13 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (tee_local $0
   (if (result i32)
    (i32.lt_u
     (get_local $1)
     (i32.shr_u
      (i32.load
       (tee_local $0
        (i32.load
         (get_local $0)
        )
       )
      )
      (i32.const 2)
     )
    )
    (i32.load offset=8
     (i32.add
      (get_local $0)
      (i32.shl
       (get_local $1)
       (i32.const 2)
      )
     )
    )
    (unreachable)
   )
  )
 )
 (func $~lib/array/Array<i32>#pop (; 14 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (if
   (i32.lt_s
    (tee_local $1
     (i32.load offset=4
      (get_local $0)
     )
    )
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
  (set_local $2
   (i32.load offset=8
    (i32.add
     (i32.load
      (get_local $0)
     )
     (i32.shl
      (tee_local $1
       (i32.sub
        (get_local $1)
        (i32.const 1)
       )
      )
      (i32.const 2)
     )
    )
   )
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $1)
  )
  (get_local $2)
 )
 (func $~lib/array/Array<i32>#unshift (; 15 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $3
   (i32.add
    (tee_local $4
     (i32.load offset=4
      (get_local $0)
     )
    )
    (i32.const 1)
   )
  )
  (if
   (i32.ge_u
    (get_local $4)
    (tee_local $5
     (i32.shr_u
      (i32.load
       (tee_local $2
        (i32.load
         (get_local $0)
        )
       )
      )
      (i32.const 2)
     )
    )
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
    (set_local $5
     (i32.shr_u
      (i32.load
       (tee_local $2
        (call $~lib/internal/arraybuffer/reallocateUnsafe
         (get_local $2)
         (i32.shl
          (get_local $3)
          (i32.const 2)
         )
        )
       )
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
  (call $~lib/internal/memory/memmove
   (i32.add
    (get_local $2)
    (i32.const 12)
   )
   (i32.add
    (get_local $2)
    (i32.const 8)
   )
   (i32.shl
    (i32.sub
     (get_local $5)
     (i32.const 1)
    )
    (i32.const 2)
   )
  )
  (i32.store offset=8
   (get_local $2)
   (get_local $1)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $3)
  )
  (get_local $3)
 )
 (func $~lib/array/Array<i32>#shift (; 16 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i32.lt_s
    (tee_local $1
     (i32.load offset=4
      (get_local $0)
     )
    )
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
  (set_local $3
   (i32.load offset=8
    (tee_local $2
     (i32.load
      (get_local $0)
     )
    )
   )
  )
  (call $~lib/internal/memory/memmove
   (i32.add
    (get_local $2)
    (i32.const 8)
   )
   (i32.add
    (get_local $2)
    (i32.const 12)
   )
   (i32.shl
    (tee_local $1
     (i32.sub
      (get_local $1)
      (i32.const 1)
     )
    )
    (i32.const 2)
   )
  )
  (i32.store offset=8
   (i32.add
    (get_local $2)
    (i32.shl
     (get_local $1)
     (i32.const 2)
    )
   )
   (i32.const 0)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $1)
  )
  (get_local $3)
 )
 (func $~lib/array/Array<i32>#reverse (; 17 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $3
   (i32.load
    (get_local $0)
   )
  )
  (block $break|0
   (set_local $2
    (i32.sub
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 1)
    )
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $1)
      (get_local $2)
     )
    )
    (set_local $4
     (i32.load offset=8
      (i32.add
       (get_local $3)
       (i32.shl
        (get_local $1)
        (i32.const 2)
       )
      )
     )
    )
    (i32.store offset=8
     (i32.add
      (get_local $3)
      (i32.shl
       (get_local $1)
       (i32.const 2)
      )
     )
     (i32.load offset=8
      (i32.add
       (get_local $3)
       (i32.shl
        (get_local $2)
        (i32.const 2)
       )
      )
     )
    )
    (i32.store offset=8
     (i32.add
      (get_local $3)
      (i32.shl
       (get_local $2)
       (i32.const 2)
      )
     )
     (get_local $4)
    )
    (set_local $1
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
    (set_local $2
     (i32.sub
      (get_local $2)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $0)
 )
 (func $~lib/array/Array<i32>#indexOf (; 18 ;) (; has Stack IR ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.eqz
    (tee_local $3
     (i32.eqz
      (tee_local $4
       (i32.load offset=4
        (get_local $0)
       )
      )
     )
    )
   )
   (set_local $3
    (i32.ge_s
     (get_local $2)
     (get_local $4)
    )
   )
  )
  (if
   (get_local $3)
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
     (tee_local $3
      (i32.add
       (get_local $4)
       (get_local $2)
      )
     )
     (i32.const 0)
     (i32.gt_s
      (get_local $3)
      (i32.const 0)
     )
    )
   )
  )
  (set_local $0
   (i32.load
    (get_local $0)
   )
  )
  (loop $continue|0
   (if
    (i32.lt_s
     (get_local $2)
     (get_local $4)
    )
    (block
     (if
      (i32.eq
       (i32.load offset=8
        (i32.add
         (get_local $0)
         (i32.shl
          (get_local $2)
          (i32.const 2)
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
     (br $continue|0)
    )
   )
  )
  (i32.const -1)
 )
 (func $~lib/array/Array<i32>#includes (; 19 ;) (; has Stack IR ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.eqz
    (tee_local $3
     (i32.eqz
      (tee_local $4
       (i32.load offset=4
        (get_local $0)
       )
      )
     )
    )
   )
   (set_local $3
    (i32.ge_s
     (get_local $2)
     (get_local $4)
    )
   )
  )
  (if
   (get_local $3)
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
     (tee_local $3
      (i32.add
       (get_local $4)
       (get_local $2)
      )
     )
     (i32.const 0)
     (i32.gt_s
      (get_local $3)
      (i32.const 0)
     )
    )
   )
  )
  (set_local $0
   (i32.load
    (get_local $0)
   )
  )
  (loop $continue|0
   (if
    (i32.lt_s
     (get_local $2)
     (get_local $4)
    )
    (block
     (if
      (i32.eq
       (i32.load offset=8
        (i32.add
         (get_local $0)
         (i32.shl
          (get_local $2)
          (i32.const 2)
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
     (br $continue|0)
    )
   )
  )
  (i32.const 0)
 )
 (func $~lib/array/Array<i32>#splice (; 20 ;) (; has Stack IR ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
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
     (tee_local $1
      (i32.add
       (get_local $3)
       (get_local $1)
      )
     )
     (i32.const 0)
     (i32.gt_s
      (get_local $1)
      (i32.const 0)
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
  (call $~lib/internal/memory/memmove
   (i32.add
    (i32.add
     (tee_local $4
      (i32.load
       (get_local $0)
      )
     )
     (i32.const 8)
    )
    (i32.shl
     (get_local $1)
     (i32.const 2)
    )
   )
   (i32.add
    (i32.add
     (get_local $4)
     (i32.const 8)
    )
    (i32.shl
     (i32.add
      (get_local $1)
      (tee_local $2
       (select
        (get_local $2)
        (tee_local $1
         (i32.sub
          (get_local $3)
          (get_local $1)
         )
        )
        (i32.lt_s
         (get_local $2)
         (get_local $1)
        )
       )
      )
     )
     (i32.const 2)
    )
   )
   (i32.shl
    (get_local $2)
    (i32.const 2)
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
 (func $~lib/array/Array<i32>#__set (; 21 ;) (; has Stack IR ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.ge_u
    (get_local $1)
    (i32.shr_u
     (i32.load
      (tee_local $3
       (i32.load
        (get_local $0)
       )
      )
     )
     (i32.const 2)
    )
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
    (i32.store
     (get_local $0)
     (tee_local $3
      (call $~lib/internal/arraybuffer/reallocateUnsafe
       (get_local $3)
       (i32.shl
        (tee_local $4
         (i32.add
          (get_local $1)
          (i32.const 1)
         )
        )
        (i32.const 2)
       )
      )
     )
    )
    (i32.store offset=4
     (get_local $0)
     (get_local $4)
    )
   )
  )
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
 (func $start~anonymous|0 (; 22 ;) (; has Stack IR ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.eqz
   (get_local $0)
  )
 )
 (func $~lib/array/Array<i32>#findIndex (; 23 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $4
   (i32.load
    (get_local $0)
   )
  )
  (block $break|0
   (set_local $5
    (i32.load offset=4
     (get_local $0)
    )
   )
   (loop $repeat|0
    (if
     (tee_local $3
      (i32.lt_s
       (get_local $2)
       (get_local $5)
      )
     )
     (set_local $3
      (i32.lt_s
       (get_local $2)
       (i32.load offset=4
        (get_local $0)
       )
      )
     )
    )
    (br_if $break|0
     (i32.eqz
      (get_local $3)
     )
    )
    (set_global $~argc
     (i32.const 3)
    )
    (if
     (i32.and
      (call_indirect (type $iiii)
       (i32.load offset=8
        (i32.add
         (get_local $4)
         (i32.shl
          (get_local $2)
          (i32.const 2)
         )
        )
       )
       (get_local $2)
       (get_local $0)
       (get_local $1)
      )
      (i32.const 1)
     )
     (return
      (get_local $2)
     )
     (block
      (set_local $2
       (i32.add
        (get_local $2)
        (i32.const 1)
       )
      )
      (br $repeat|0)
     )
    )
   )
  )
  (i32.const -1)
 )
 (func $start~anonymous|1 (; 24 ;) (; has Stack IR ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.eq
   (get_local $0)
   (i32.const 1)
  )
 )
 (func $start~anonymous|2 (; 25 ;) (; has Stack IR ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.eq
   (get_local $0)
   (i32.const 100)
  )
 )
 (func $start~anonymous|3 (; 26 ;) (; has Stack IR ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $start~anonymous|5 (; 27 ;) (; has Stack IR ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $start~anonymous|6 (; 28 ;) (; has Stack IR ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.ge_s
   (get_local $0)
   (i32.const 0)
  )
 )
 (func $~lib/array/Array<i32>#every (; 29 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $4
   (i32.load
    (get_local $0)
   )
  )
  (block $break|0
   (set_local $5
    (i32.load offset=4
     (get_local $0)
    )
   )
   (loop $repeat|0
    (if
     (tee_local $3
      (i32.lt_s
       (get_local $2)
       (get_local $5)
      )
     )
     (set_local $3
      (i32.lt_s
       (get_local $2)
       (i32.load offset=4
        (get_local $0)
       )
      )
     )
    )
    (br_if $break|0
     (i32.eqz
      (get_local $3)
     )
    )
    (set_global $~argc
     (i32.const 3)
    )
    (if
     (i32.and
      (call_indirect (type $iiii)
       (i32.load offset=8
        (i32.add
         (get_local $4)
         (i32.shl
          (get_local $2)
          (i32.const 2)
         )
        )
       )
       (get_local $2)
       (get_local $0)
       (get_local $1)
      )
      (i32.const 1)
     )
     (block
      (set_local $2
       (i32.add
        (get_local $2)
        (i32.const 1)
       )
      )
      (br $repeat|0)
     )
     (return
      (i32.const 0)
     )
    )
   )
  )
  (i32.const 1)
 )
 (func $start~anonymous|7 (; 30 ;) (; has Stack IR ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.le_s
   (get_local $0)
   (i32.const 0)
  )
 )
 (func $start~anonymous|8 (; 31 ;) (; has Stack IR ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $start~anonymous|9 (; 32 ;) (; has Stack IR ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.lt_s
   (get_local $0)
   (i32.const 10)
  )
 )
 (func $start~anonymous|10 (; 33 ;) (; has Stack IR ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $start~anonymous|11 (; 34 ;) (; has Stack IR ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.ge_s
   (get_local $0)
   (i32.const 3)
  )
 )
 (func $~lib/array/Array<i32>#some (; 35 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $4
   (i32.load
    (get_local $0)
   )
  )
  (block $break|0
   (set_local $5
    (i32.load offset=4
     (get_local $0)
    )
   )
   (loop $repeat|0
    (if
     (tee_local $3
      (i32.lt_s
       (get_local $2)
       (get_local $5)
      )
     )
     (set_local $3
      (i32.lt_s
       (get_local $2)
       (i32.load offset=4
        (get_local $0)
       )
      )
     )
    )
    (br_if $break|0
     (i32.eqz
      (get_local $3)
     )
    )
    (set_global $~argc
     (i32.const 3)
    )
    (if
     (i32.and
      (call_indirect (type $iiii)
       (i32.load offset=8
        (i32.add
         (get_local $4)
         (i32.shl
          (get_local $2)
          (i32.const 2)
         )
        )
       )
       (get_local $2)
       (get_local $0)
       (get_local $1)
      )
      (i32.const 1)
     )
     (return
      (i32.const 1)
     )
     (block
      (set_local $2
       (i32.add
        (get_local $2)
        (i32.const 1)
       )
      )
      (br $repeat|0)
     )
    )
   )
  )
  (i32.const 0)
 )
 (func $start~anonymous|12 (; 36 ;) (; has Stack IR ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.le_s
   (get_local $0)
   (i32.const -1)
  )
 )
 (func $start~anonymous|13 (; 37 ;) (; has Stack IR ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $start~anonymous|14 (; 38 ;) (; has Stack IR ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.gt_s
   (get_local $0)
   (i32.const 10)
  )
 )
 (func $start~anonymous|15 (; 39 ;) (; has Stack IR ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $start~anonymous|16 (; 40 ;) (; has Stack IR ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (set_global $std/array/i
   (i32.add
    (get_global $std/array/i)
    (get_local $0)
   )
  )
 )
 (func $~lib/array/Array<i32>#forEach (; 41 ;) (; has Stack IR ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $4
   (i32.load
    (get_local $0)
   )
  )
  (block $break|0
   (set_local $5
    (i32.load offset=4
     (get_local $0)
    )
   )
   (loop $repeat|0
    (if
     (tee_local $3
      (i32.lt_s
       (get_local $2)
       (get_local $5)
      )
     )
     (set_local $3
      (i32.lt_s
       (get_local $2)
       (i32.load offset=4
        (get_local $0)
       )
      )
     )
    )
    (br_if $break|0
     (i32.eqz
      (get_local $3)
     )
    )
    (set_global $~argc
     (i32.const 3)
    )
    (call_indirect (type $iiiv)
     (i32.load offset=8
      (i32.add
       (get_local $4)
       (i32.shl
        (get_local $2)
        (i32.const 2)
       )
      )
     )
     (get_local $2)
     (get_local $0)
     (get_local $1)
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
 )
 (func $start~anonymous|17 (; 42 ;) (; has Stack IR ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $start~anonymous|19 (; 43 ;) (; has Stack IR ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $start~anonymous|20 (; 44 ;) (; has Stack IR ;) (type $iiif) (param $0 i32) (param $1 i32) (param $2 i32) (result f32)
  (f32.convert_s/i32
   (get_local $0)
  )
 )
 (func $~lib/array/Array<i32>#map<f32> (; 45 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (set_local $4
   (i32.load
    (get_local $0)
   )
  )
  (set_local $7
   (i32.load
    (tee_local $6
     (call $~lib/array/Array<i32>#constructor
      (i32.const 0)
      (tee_local $5
       (i32.load offset=4
        (get_local $0)
       )
      )
     )
    )
   )
  )
  (block $break|0
   (loop $repeat|0
    (if
     (tee_local $3
      (i32.lt_s
       (get_local $2)
       (get_local $5)
      )
     )
     (set_local $3
      (i32.lt_s
       (get_local $2)
       (i32.load offset=4
        (get_local $0)
       )
      )
     )
    )
    (br_if $break|0
     (i32.eqz
      (get_local $3)
     )
    )
    (set_global $~argc
     (i32.const 3)
    )
    (f32.store offset=8
     (i32.add
      (get_local $7)
      (i32.shl
       (get_local $2)
       (i32.const 2)
      )
     )
     (call_indirect (type $iiif)
      (i32.load offset=8
       (i32.add
        (get_local $4)
        (i32.shl
         (get_local $2)
         (i32.const 2)
        )
       )
      )
      (get_local $2)
      (get_local $0)
      (get_local $1)
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
  (get_local $6)
 )
 (func $~lib/array/Array<f32>#__get (; 46 ;) (; has Stack IR ;) (type $iif) (param $0 i32) (param $1 i32) (result f32)
  (if (result f32)
   (i32.lt_u
    (get_local $1)
    (i32.shr_u
     (i32.load
      (tee_local $0
       (i32.load
        (get_local $0)
       )
      )
     )
     (i32.const 2)
    )
   )
   (f32.load offset=8
    (i32.add
     (get_local $0)
     (i32.shl
      (get_local $1)
      (i32.const 2)
     )
    )
   )
   (unreachable)
  )
 )
 (func $start~anonymous|21 (; 47 ;) (; has Stack IR ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $~lib/array/Array<i32>#map<i32> (; 48 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (set_local $4
   (i32.load
    (get_local $0)
   )
  )
  (set_local $7
   (i32.load
    (tee_local $6
     (call $~lib/array/Array<i32>#constructor
      (i32.const 0)
      (tee_local $5
       (i32.load offset=4
        (get_local $0)
       )
      )
     )
    )
   )
  )
  (block $break|0
   (loop $repeat|0
    (if
     (tee_local $3
      (i32.lt_s
       (get_local $2)
       (get_local $5)
      )
     )
     (set_local $3
      (i32.lt_s
       (get_local $2)
       (i32.load offset=4
        (get_local $0)
       )
      )
     )
    )
    (br_if $break|0
     (i32.eqz
      (get_local $3)
     )
    )
    (set_global $~argc
     (i32.const 3)
    )
    (i32.store offset=8
     (i32.add
      (get_local $7)
      (i32.shl
       (get_local $2)
       (i32.const 2)
      )
     )
     (call_indirect (type $iiii)
      (i32.load offset=8
       (i32.add
        (get_local $4)
        (i32.shl
         (get_local $2)
         (i32.const 2)
        )
       )
      )
      (get_local $2)
      (get_local $0)
      (get_local $1)
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
  (get_local $6)
 )
 (func $start~anonymous|22 (; 49 ;) (; has Stack IR ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (set_global $std/array/i
   (i32.add
    (get_global $std/array/i)
    (get_local $0)
   )
  )
  (get_local $0)
 )
 (func $start~anonymous|23 (; 50 ;) (; has Stack IR ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $start~anonymous|24 (; 51 ;) (; has Stack IR ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.ge_s
   (get_local $0)
   (i32.const 2)
  )
 )
 (func $~lib/array/Array<i32>#filter (; 52 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $5
   (i32.load
    (get_local $0)
   )
  )
  (set_local $6
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
   (loop $repeat|0
    (if
     (tee_local $3
      (i32.lt_s
       (get_local $2)
       (get_local $6)
      )
     )
     (set_local $3
      (i32.lt_s
       (get_local $2)
       (i32.load offset=4
        (get_local $0)
       )
      )
     )
    )
    (br_if $break|0
     (i32.eqz
      (get_local $3)
     )
    )
    (set_local $3
     (i32.load offset=8
      (i32.add
       (get_local $5)
       (i32.shl
        (get_local $2)
        (i32.const 2)
       )
      )
     )
    )
    (set_global $~argc
     (i32.const 3)
    )
    (if
     (i32.and
      (call_indirect (type $iiii)
       (get_local $3)
       (get_local $2)
       (get_local $0)
       (get_local $1)
      )
      (i32.const 1)
     )
     (drop
      (call $~lib/array/Array<i32>#push
       (get_local $4)
       (get_local $3)
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
  (get_local $4)
 )
 (func $start~anonymous|25 (; 53 ;) (; has Stack IR ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $start~anonymous|26 (; 54 ;) (; has Stack IR ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $start~anonymous|27 (; 55 ;) (; has Stack IR ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
 (func $start~anonymous|28 (; 56 ;) (; has Stack IR ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (i32.add
   (get_local $0)
   (get_local $1)
  )
 )
 (func $~lib/array/Array<i32>#reduce<i32> (; 57 ;) (; has Stack IR ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (set_local $5
   (i32.load
    (get_local $0)
   )
  )
  (block $break|0
   (set_local $6
    (i32.load offset=4
     (get_local $0)
    )
   )
   (loop $repeat|0
    (if
     (tee_local $4
      (i32.lt_s
       (get_local $3)
       (get_local $6)
      )
     )
     (set_local $4
      (i32.lt_s
       (get_local $3)
       (i32.load offset=4
        (get_local $0)
       )
      )
     )
    )
    (br_if $break|0
     (i32.eqz
      (get_local $4)
     )
    )
    (set_global $~argc
     (i32.const 4)
    )
    (set_local $2
     (call_indirect (type $iiiii)
      (get_local $2)
      (i32.load offset=8
       (i32.add
        (get_local $5)
        (i32.shl
         (get_local $3)
         (i32.const 2)
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
  (get_local $2)
 )
 (func $start~anonymous|30 (; 58 ;) (; has Stack IR ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
 (func $start~anonymous|31 (; 59 ;) (; has Stack IR ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
 (func $start~anonymous|32 (; 60 ;) (; has Stack IR ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
 (func $start~anonymous|34 (; 61 ;) (; has Stack IR ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
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
 (func $~lib/array/Array<i32>#reduceRight<i32> (; 62 ;) (; has Stack IR ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $4
   (i32.load
    (get_local $0)
   )
  )
  (block $break|0
   (set_local $3
    (i32.sub
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 1)
    )
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.lt_s
      (get_local $3)
      (i32.const 0)
     )
    )
    (set_global $~argc
     (i32.const 4)
    )
    (set_local $2
     (call_indirect (type $iiiii)
      (get_local $2)
      (i32.load offset=8
       (i32.add
        (get_local $4)
        (i32.shl
         (get_local $3)
         (i32.const 2)
        )
       )
      )
      (get_local $3)
      (get_local $0)
      (get_local $1)
     )
    )
    (set_local $3
     (i32.sub
      (get_local $3)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $2)
 )
 (func $~lib/math/murmurHash3 (; 63 ;) (; has Stack IR ;) (type $II) (param $0 i64) (result i64)
  (i64.xor
   (tee_local $0
    (i64.mul
     (i64.xor
      (tee_local $0
       (i64.mul
        (i64.xor
         (get_local $0)
         (i64.shr_u
          (get_local $0)
          (i64.const 33)
         )
        )
        (i64.const -49064778989728563)
       )
      )
      (i64.shr_u
       (get_local $0)
       (i64.const 33)
      )
     )
     (i64.const -4265267296055464877)
    )
   )
   (i64.shr_u
    (get_local $0)
    (i64.const 33)
   )
  )
 )
 (func $~lib/math/NativeMath.seedRandom (; 64 ;) (; has Stack IR ;) (type $Iv) (param $0 i64)
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
 (func $~lib/internal/array/insertionSort<f32> (; 65 ;) (; has Stack IR ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 f32)
  (local $7 f32)
  (local $8 i32)
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $4)
      (get_local $2)
     )
    )
    (set_local $6
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
    (set_local $5
     (i32.sub
      (get_local $4)
      (i32.const 1)
     )
    )
    (block $break|1
     (loop $continue|1
      (if
       (i32.ge_s
        (get_local $5)
        (i32.const 0)
       )
       (block
        (set_local $7
         (f32.load offset=8
          (i32.add
           (i32.add
            (get_local $0)
            (get_local $1)
           )
           (i32.shl
            (get_local $5)
            (i32.const 2)
           )
          )
         )
        )
        (set_global $~argc
         (i32.const 2)
        )
        (br_if $break|1
         (i32.ge_s
          (call_indirect (type $ffi)
           (get_local $6)
           (get_local $7)
           (get_local $3)
          )
          (i32.const 0)
         )
        )
        (set_local $5
         (i32.sub
          (tee_local $8
           (get_local $5)
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
           (i32.add
            (get_local $8)
            (i32.const 1)
           )
           (i32.const 2)
          )
         )
         (get_local $7)
        )
        (br $continue|1)
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
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
       (i32.const 2)
      )
     )
     (get_local $6)
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
 (func $~lib/allocator/arena/__memory_free (; 66 ;) (; has Stack IR ;) (type $iv) (param $0 i32)
  (nop)
 )
 (func $~lib/internal/array/weakHeapSort<f32> (; 67 ;) (; has Stack IR ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 f32)
  (local $8 i32)
  (local $9 f32)
  (call $~lib/internal/memory/memset
   (tee_local $8
    (call $~lib/allocator/arena/__memory_allocate
     (tee_local $6
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
    )
   )
   (i32.const 0)
   (get_local $6)
  )
  (block $break|0
   (set_local $4
    (i32.sub
     (get_local $2)
     (i32.const 1)
    )
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.le_s
      (get_local $4)
      (i32.const 0)
     )
    )
    (set_local $6
     (get_local $4)
    )
    (loop $continue|1
     (if
      (i32.eq
       (i32.and
        (get_local $6)
        (i32.const 1)
       )
       (i32.and
        (i32.shr_u
         (i32.load
          (i32.add
           (get_local $8)
           (i32.shl
            (i32.shr_s
             (get_local $6)
             (i32.const 6)
            )
            (i32.const 2)
           )
          )
         )
         (i32.and
          (i32.shr_s
           (get_local $6)
           (i32.const 1)
          )
          (i32.const 31)
         )
        )
        (i32.const 1)
       )
      )
      (block
       (set_local $6
        (i32.shr_s
         (get_local $6)
         (i32.const 1)
        )
       )
       (br $continue|1)
      )
     )
    )
    (set_local $9
     (f32.load offset=8
      (i32.add
       (i32.add
        (get_local $0)
        (get_local $1)
       )
       (i32.shl
        (tee_local $5
         (i32.shr_s
          (get_local $6)
          (i32.const 1)
         )
        )
        (i32.const 2)
       )
      )
     )
    )
    (set_local $7
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
    (set_global $~argc
     (i32.const 2)
    )
    (if
     (i32.lt_s
      (call_indirect (type $ffi)
       (get_local $9)
       (get_local $7)
       (get_local $3)
      )
      (i32.const 0)
     )
     (block
      (i32.store
       (tee_local $6
        (i32.add
         (get_local $8)
         (i32.shl
          (i32.shr_s
           (get_local $4)
           (i32.const 5)
          )
          (i32.const 2)
         )
        )
       )
       (i32.xor
        (i32.load
         (get_local $6)
        )
        (i32.shl
         (i32.const 1)
         (i32.and
          (get_local $4)
          (i32.const 31)
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
         (get_local $4)
         (i32.const 2)
        )
       )
       (get_local $9)
      )
      (f32.store offset=8
       (i32.add
        (i32.add
         (get_local $0)
         (get_local $1)
        )
        (i32.shl
         (get_local $5)
         (i32.const 2)
        )
       )
       (get_local $7)
      )
     )
    )
    (set_local $4
     (i32.sub
      (get_local $4)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (block $break|2
   (set_local $4
    (i32.sub
     (get_local $2)
     (i32.const 1)
    )
   )
   (loop $repeat|2
    (br_if $break|2
     (i32.lt_s
      (get_local $4)
      (i32.const 2)
     )
    )
    (set_local $7
     (f32.load offset=8
      (i32.add
       (get_local $0)
       (get_local $1)
      )
     )
    )
    (f32.store offset=8
     (i32.add
      (get_local $0)
      (get_local $1)
     )
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
    (f32.store offset=8
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
     (get_local $7)
    )
    (set_local $5
     (i32.const 1)
    )
    (loop $continue|3
     (if
      (i32.lt_s
       (tee_local $6
        (i32.add
         (i32.shl
          (get_local $5)
          (i32.const 1)
         )
         (i32.and
          (i32.shr_u
           (i32.load
            (i32.add
             (get_local $8)
             (i32.shl
              (i32.shr_s
               (get_local $5)
               (i32.const 5)
              )
              (i32.const 2)
             )
            )
           )
           (i32.and
            (get_local $5)
            (i32.const 31)
           )
          )
          (i32.const 1)
         )
        )
       )
       (get_local $4)
      )
      (block
       (set_local $5
        (get_local $6)
       )
       (br $continue|3)
      )
     )
    )
    (loop $continue|4
     (if
      (i32.gt_s
       (get_local $5)
       (i32.const 0)
      )
      (block
       (set_local $7
        (f32.load offset=8
         (i32.add
          (get_local $0)
          (get_local $1)
         )
        )
       )
       (set_local $9
        (f32.load offset=8
         (i32.add
          (i32.add
           (get_local $0)
           (get_local $1)
          )
          (i32.shl
           (get_local $5)
           (i32.const 2)
          )
         )
        )
       )
       (set_global $~argc
        (i32.const 2)
       )
       (if
        (i32.lt_s
         (call_indirect (type $ffi)
          (get_local $7)
          (get_local $9)
          (get_local $3)
         )
         (i32.const 0)
        )
        (block
         (i32.store
          (tee_local $2
           (i32.add
            (get_local $8)
            (i32.shl
             (i32.shr_s
              (get_local $5)
              (i32.const 5)
             )
             (i32.const 2)
            )
           )
          )
          (i32.xor
           (i32.load
            (get_local $2)
           )
           (i32.shl
            (i32.const 1)
            (i32.and
             (get_local $5)
             (i32.const 31)
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
            (get_local $5)
            (i32.const 2)
           )
          )
          (get_local $7)
         )
         (f32.store offset=8
          (i32.add
           (get_local $0)
           (get_local $1)
          )
          (get_local $9)
         )
        )
       )
       (set_local $5
        (i32.shr_s
         (get_local $5)
         (i32.const 1)
        )
       )
       (br $continue|4)
      )
     )
    )
    (set_local $4
     (i32.sub
      (get_local $4)
      (i32.const 1)
     )
    )
    (br $repeat|2)
   )
  )
  (call $~lib/allocator/arena/__memory_free
   (get_local $8)
  )
  (set_local $7
   (f32.load offset=8
    (i32.add
     (i32.add
      (get_local $0)
      (get_local $1)
     )
     (i32.const 4)
    )
   )
  )
  (f32.store offset=8
   (i32.add
    (i32.add
     (get_local $0)
     (get_local $1)
    )
    (i32.const 4)
   )
   (f32.load offset=8
    (i32.add
     (get_local $0)
     (get_local $1)
    )
   )
  )
  (f32.store offset=8
   (i32.add
    (get_local $0)
    (get_local $1)
   )
   (get_local $7)
  )
 )
 (func $~lib/array/Array<f32>#sort (; 68 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f32)
  (local $5 f32)
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
  (if
   (i32.le_s
    (tee_local $3
     (i32.load offset=4
      (get_local $0)
     )
    )
    (i32.const 1)
   )
   (return
    (get_local $0)
   )
  )
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (if
   (i32.eq
    (get_local $3)
    (i32.const 2)
   )
   (block
    (set_local $4
     (f32.load offset=8
      (i32.add
       (get_local $2)
       (i32.const 4)
      )
     )
    )
    (set_local $5
     (f32.load offset=8
      (get_local $2)
     )
    )
    (set_global $~argc
     (i32.const 2)
    )
    (if
     (i32.lt_s
      (call_indirect (type $ffi)
       (get_local $4)
       (get_local $5)
       (get_local $1)
      )
      (i32.const 0)
     )
     (block
      (f32.store offset=8
       (i32.add
        (get_local $2)
        (i32.const 4)
       )
       (get_local $5)
      )
      (f32.store offset=8
       (get_local $2)
       (get_local $4)
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
    (get_local $3)
    (i32.const 256)
   )
   (call $~lib/internal/array/insertionSort<f32>
    (get_local $2)
    (i32.const 0)
    (get_local $3)
    (get_local $1)
   )
   (call $~lib/internal/array/weakHeapSort<f32>
    (get_local $2)
    (i32.const 0)
    (get_local $3)
    (get_local $1)
   )
  )
  (get_local $0)
 )
 (func $~lib/array/Array<f32>#sort|trampoline~anonymous|42 (; 69 ;) (; has Stack IR ;) (type $ffi) (param $0 f32) (param $1 f32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (i32.sub
   (i32.gt_s
    (tee_local $2
     (i32.xor
      (tee_local $2
       (i32.reinterpret/f32
        (get_local $0)
       )
      )
      (i32.shr_u
       (i32.shr_s
        (get_local $2)
        (i32.const 31)
       )
       (i32.const 1)
      )
     )
    )
    (tee_local $3
     (i32.xor
      (tee_local $3
       (i32.reinterpret/f32
        (get_local $1)
       )
      )
      (i32.shr_u
       (i32.shr_s
        (get_local $3)
        (i32.const 31)
       )
       (i32.const 1)
      )
     )
    )
   )
   (i32.lt_s
    (get_local $2)
    (get_local $3)
   )
  )
 )
 (func $~lib/array/Array<f32>#sort|trampoline (; 70 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
    (i32.const 42)
   )
  )
  (call $~lib/array/Array<f32>#sort
   (get_local $0)
   (get_local $1)
  )
 )
 (func $~lib/builtins/isNaN<f32> (; 71 ;) (; has Stack IR ;) (type $fi) (param $0 f32) (result i32)
  (f32.ne
   (get_local $0)
   (get_local $0)
  )
 )
 (func $std/array/isArraysEqual<f32> (; 72 ;) (; has Stack IR ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.eqz
    (get_local $2)
   )
   (block
    (if
     (i32.ne
      (i32.load offset=4
       (get_local $0)
      )
      (i32.load offset=4
       (get_local $1)
      )
     )
     (return
      (i32.const 0)
     )
    )
    (set_local $2
     (i32.load offset=4
      (get_local $0)
     )
    )
   )
  )
  (block $break|0
   (loop $repeat|0
    (block $continue|0
     (br_if $break|0
      (i32.ge_s
       (get_local $3)
       (get_local $2)
      )
     )
     (if
      (tee_local $4
       (call $~lib/builtins/isNaN<f32>
        (call $~lib/array/Array<f32>#__get
         (get_local $0)
         (get_local $3)
        )
       )
      )
      (set_local $4
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
      )
     )
     (br_if $continue|0
      (get_local $4)
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
 (func $~lib/internal/array/insertionSort<f64> (; 73 ;) (; has Stack IR ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 f64)
  (local $7 f64)
  (local $8 i32)
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $4)
      (get_local $2)
     )
    )
    (set_local $6
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
    (set_local $5
     (i32.sub
      (get_local $4)
      (i32.const 1)
     )
    )
    (block $break|1
     (loop $continue|1
      (if
       (i32.ge_s
        (get_local $5)
        (i32.const 0)
       )
       (block
        (set_local $7
         (f64.load offset=8
          (i32.add
           (i32.add
            (get_local $0)
            (get_local $1)
           )
           (i32.shl
            (get_local $5)
            (i32.const 3)
           )
          )
         )
        )
        (set_global $~argc
         (i32.const 2)
        )
        (br_if $break|1
         (i32.ge_s
          (call_indirect (type $FFi)
           (get_local $6)
           (get_local $7)
           (get_local $3)
          )
          (i32.const 0)
         )
        )
        (set_local $5
         (i32.sub
          (tee_local $8
           (get_local $5)
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
           (i32.add
            (get_local $8)
            (i32.const 1)
           )
           (i32.const 3)
          )
         )
         (get_local $7)
        )
        (br $continue|1)
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
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
       (i32.const 3)
      )
     )
     (get_local $6)
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
 (func $~lib/internal/array/weakHeapSort<f64> (; 74 ;) (; has Stack IR ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 f64)
  (local $8 i32)
  (local $9 f64)
  (call $~lib/internal/memory/memset
   (tee_local $8
    (call $~lib/allocator/arena/__memory_allocate
     (tee_local $6
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
    )
   )
   (i32.const 0)
   (get_local $6)
  )
  (block $break|0
   (set_local $4
    (i32.sub
     (get_local $2)
     (i32.const 1)
    )
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.le_s
      (get_local $4)
      (i32.const 0)
     )
    )
    (set_local $6
     (get_local $4)
    )
    (loop $continue|1
     (if
      (i32.eq
       (i32.and
        (get_local $6)
        (i32.const 1)
       )
       (i32.and
        (i32.shr_u
         (i32.load
          (i32.add
           (get_local $8)
           (i32.shl
            (i32.shr_s
             (get_local $6)
             (i32.const 6)
            )
            (i32.const 2)
           )
          )
         )
         (i32.and
          (i32.shr_s
           (get_local $6)
           (i32.const 1)
          )
          (i32.const 31)
         )
        )
        (i32.const 1)
       )
      )
      (block
       (set_local $6
        (i32.shr_s
         (get_local $6)
         (i32.const 1)
        )
       )
       (br $continue|1)
      )
     )
    )
    (set_local $9
     (f64.load offset=8
      (i32.add
       (i32.add
        (get_local $0)
        (get_local $1)
       )
       (i32.shl
        (tee_local $5
         (i32.shr_s
          (get_local $6)
          (i32.const 1)
         )
        )
        (i32.const 3)
       )
      )
     )
    )
    (set_local $7
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
    (set_global $~argc
     (i32.const 2)
    )
    (if
     (i32.lt_s
      (call_indirect (type $FFi)
       (get_local $9)
       (get_local $7)
       (get_local $3)
      )
      (i32.const 0)
     )
     (block
      (i32.store
       (tee_local $6
        (i32.add
         (get_local $8)
         (i32.shl
          (i32.shr_s
           (get_local $4)
           (i32.const 5)
          )
          (i32.const 2)
         )
        )
       )
       (i32.xor
        (i32.load
         (get_local $6)
        )
        (i32.shl
         (i32.const 1)
         (i32.and
          (get_local $4)
          (i32.const 31)
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
         (get_local $4)
         (i32.const 3)
        )
       )
       (get_local $9)
      )
      (f64.store offset=8
       (i32.add
        (i32.add
         (get_local $0)
         (get_local $1)
        )
        (i32.shl
         (get_local $5)
         (i32.const 3)
        )
       )
       (get_local $7)
      )
     )
    )
    (set_local $4
     (i32.sub
      (get_local $4)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (block $break|2
   (set_local $4
    (i32.sub
     (get_local $2)
     (i32.const 1)
    )
   )
   (loop $repeat|2
    (br_if $break|2
     (i32.lt_s
      (get_local $4)
      (i32.const 2)
     )
    )
    (set_local $7
     (f64.load offset=8
      (i32.add
       (get_local $0)
       (get_local $1)
      )
     )
    )
    (f64.store offset=8
     (i32.add
      (get_local $0)
      (get_local $1)
     )
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
    (f64.store offset=8
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
     (get_local $7)
    )
    (set_local $5
     (i32.const 1)
    )
    (loop $continue|3
     (if
      (i32.lt_s
       (tee_local $6
        (i32.add
         (i32.shl
          (get_local $5)
          (i32.const 1)
         )
         (i32.and
          (i32.shr_u
           (i32.load
            (i32.add
             (get_local $8)
             (i32.shl
              (i32.shr_s
               (get_local $5)
               (i32.const 5)
              )
              (i32.const 2)
             )
            )
           )
           (i32.and
            (get_local $5)
            (i32.const 31)
           )
          )
          (i32.const 1)
         )
        )
       )
       (get_local $4)
      )
      (block
       (set_local $5
        (get_local $6)
       )
       (br $continue|3)
      )
     )
    )
    (loop $continue|4
     (if
      (i32.gt_s
       (get_local $5)
       (i32.const 0)
      )
      (block
       (set_local $7
        (f64.load offset=8
         (i32.add
          (get_local $0)
          (get_local $1)
         )
        )
       )
       (set_local $9
        (f64.load offset=8
         (i32.add
          (i32.add
           (get_local $0)
           (get_local $1)
          )
          (i32.shl
           (get_local $5)
           (i32.const 3)
          )
         )
        )
       )
       (set_global $~argc
        (i32.const 2)
       )
       (if
        (i32.lt_s
         (call_indirect (type $FFi)
          (get_local $7)
          (get_local $9)
          (get_local $3)
         )
         (i32.const 0)
        )
        (block
         (i32.store
          (tee_local $2
           (i32.add
            (get_local $8)
            (i32.shl
             (i32.shr_s
              (get_local $5)
              (i32.const 5)
             )
             (i32.const 2)
            )
           )
          )
          (i32.xor
           (i32.load
            (get_local $2)
           )
           (i32.shl
            (i32.const 1)
            (i32.and
             (get_local $5)
             (i32.const 31)
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
            (get_local $5)
            (i32.const 3)
           )
          )
          (get_local $7)
         )
         (f64.store offset=8
          (i32.add
           (get_local $0)
           (get_local $1)
          )
          (get_local $9)
         )
        )
       )
       (set_local $5
        (i32.shr_s
         (get_local $5)
         (i32.const 1)
        )
       )
       (br $continue|4)
      )
     )
    )
    (set_local $4
     (i32.sub
      (get_local $4)
      (i32.const 1)
     )
    )
    (br $repeat|2)
   )
  )
  (call $~lib/allocator/arena/__memory_free
   (get_local $8)
  )
  (set_local $7
   (f64.load offset=8
    (i32.add
     (i32.add
      (get_local $0)
      (get_local $1)
     )
     (i32.const 8)
    )
   )
  )
  (f64.store offset=8
   (i32.add
    (i32.add
     (get_local $0)
     (get_local $1)
    )
    (i32.const 8)
   )
   (f64.load offset=8
    (i32.add
     (get_local $0)
     (get_local $1)
    )
   )
  )
  (f64.store offset=8
   (i32.add
    (get_local $0)
    (get_local $1)
   )
   (get_local $7)
  )
 )
 (func $~lib/array/Array<f64>#sort (; 75 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 f64)
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
  (if
   (i32.le_s
    (tee_local $3
     (i32.load offset=4
      (get_local $0)
     )
    )
    (i32.const 1)
   )
   (return
    (get_local $0)
   )
  )
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (if
   (i32.eq
    (get_local $3)
    (i32.const 2)
   )
   (block
    (set_local $4
     (f64.load offset=8
      (i32.add
       (get_local $2)
       (i32.const 8)
      )
     )
    )
    (set_local $5
     (f64.load offset=8
      (get_local $2)
     )
    )
    (set_global $~argc
     (i32.const 2)
    )
    (if
     (i32.lt_s
      (call_indirect (type $FFi)
       (get_local $4)
       (get_local $5)
       (get_local $1)
      )
      (i32.const 0)
     )
     (block
      (f64.store offset=8
       (i32.add
        (get_local $2)
        (i32.const 8)
       )
       (get_local $5)
      )
      (f64.store offset=8
       (get_local $2)
       (get_local $4)
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
    (get_local $3)
    (i32.const 256)
   )
   (call $~lib/internal/array/insertionSort<f64>
    (get_local $2)
    (i32.const 0)
    (get_local $3)
    (get_local $1)
   )
   (call $~lib/internal/array/weakHeapSort<f64>
    (get_local $2)
    (i32.const 0)
    (get_local $3)
    (get_local $1)
   )
  )
  (get_local $0)
 )
 (func $~lib/array/Array<f64>#sort|trampoline~anonymous|43 (; 76 ;) (; has Stack IR ;) (type $FFi) (param $0 f64) (param $1 f64) (result i32)
  (local $2 i64)
  (local $3 i64)
  (i32.sub
   (i64.gt_s
    (tee_local $2
     (i64.xor
      (tee_local $2
       (i64.reinterpret/f64
        (get_local $0)
       )
      )
      (i64.shr_u
       (i64.shr_s
        (get_local $2)
        (i64.const 63)
       )
       (i64.const 1)
      )
     )
    )
    (tee_local $3
     (i64.xor
      (tee_local $3
       (i64.reinterpret/f64
        (get_local $1)
       )
      )
      (i64.shr_u
       (i64.shr_s
        (get_local $3)
        (i64.const 63)
       )
       (i64.const 1)
      )
     )
    )
   )
   (i64.lt_s
    (get_local $2)
    (get_local $3)
   )
  )
 )
 (func $~lib/array/Array<f64>#sort|trampoline (; 77 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
    (i32.const 43)
   )
  )
  (call $~lib/array/Array<f64>#sort
   (get_local $0)
   (get_local $1)
  )
 )
 (func $~lib/array/Array<f64>#__get (; 78 ;) (; has Stack IR ;) (type $iiF) (param $0 i32) (param $1 i32) (result f64)
  (if (result f64)
   (i32.lt_u
    (get_local $1)
    (i32.shr_u
     (i32.load
      (tee_local $0
       (i32.load
        (get_local $0)
       )
      )
     )
     (i32.const 3)
    )
   )
   (f64.load offset=8
    (i32.add
     (get_local $0)
     (i32.shl
      (get_local $1)
      (i32.const 3)
     )
    )
   )
   (unreachable)
  )
 )
 (func $~lib/builtins/isNaN<f64> (; 79 ;) (; has Stack IR ;) (type $Fi) (param $0 f64) (result i32)
  (f64.ne
   (get_local $0)
   (get_local $0)
  )
 )
 (func $std/array/isArraysEqual<f64> (; 80 ;) (; has Stack IR ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.eqz
    (get_local $2)
   )
   (block
    (if
     (i32.ne
      (i32.load offset=4
       (get_local $0)
      )
      (i32.load offset=4
       (get_local $1)
      )
     )
     (return
      (i32.const 0)
     )
    )
    (set_local $2
     (i32.load offset=4
      (get_local $0)
     )
    )
   )
  )
  (block $break|0
   (loop $repeat|0
    (block $continue|0
     (br_if $break|0
      (i32.ge_s
       (get_local $3)
       (get_local $2)
      )
     )
     (if
      (tee_local $4
       (call $~lib/builtins/isNaN<f64>
        (call $~lib/array/Array<f64>#__get
         (get_local $0)
         (get_local $3)
        )
       )
      )
      (set_local $4
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
      )
     )
     (br_if $continue|0
      (get_local $4)
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
 (func $~lib/internal/array/insertionSort<i32> (; 81 ;) (; has Stack IR ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $4)
      (get_local $2)
     )
    )
    (set_local $7
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
    (set_local $5
     (i32.sub
      (get_local $4)
      (i32.const 1)
     )
    )
    (block $break|1
     (loop $continue|1
      (if
       (i32.ge_s
        (get_local $5)
        (i32.const 0)
       )
       (block
        (set_local $6
         (i32.load offset=8
          (i32.add
           (i32.add
            (get_local $0)
            (get_local $1)
           )
           (i32.shl
            (get_local $5)
            (i32.const 2)
           )
          )
         )
        )
        (set_global $~argc
         (i32.const 2)
        )
        (br_if $break|1
         (i32.ge_s
          (call_indirect (type $iii)
           (get_local $7)
           (tee_local $8
            (get_local $6)
           )
           (get_local $3)
          )
          (i32.const 0)
         )
        )
        (set_local $5
         (i32.sub
          (tee_local $6
           (get_local $5)
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
           (i32.add
            (get_local $6)
            (i32.const 1)
           )
           (i32.const 2)
          )
         )
         (get_local $8)
        )
        (br $continue|1)
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
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
       (i32.const 2)
      )
     )
     (get_local $7)
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
 (func $~lib/internal/array/weakHeapSort<i32> (; 82 ;) (; has Stack IR ;) (type $iiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (call $~lib/internal/memory/memset
   (tee_local $8
    (call $~lib/allocator/arena/__memory_allocate
     (tee_local $7
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
    )
   )
   (i32.const 0)
   (get_local $7)
  )
  (block $break|0
   (set_local $4
    (i32.sub
     (get_local $2)
     (i32.const 1)
    )
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.le_s
      (get_local $4)
      (i32.const 0)
     )
    )
    (set_local $5
     (get_local $4)
    )
    (loop $continue|1
     (if
      (i32.eq
       (i32.and
        (get_local $5)
        (i32.const 1)
       )
       (i32.and
        (i32.shr_u
         (i32.load
          (i32.add
           (get_local $8)
           (i32.shl
            (i32.shr_s
             (get_local $5)
             (i32.const 6)
            )
            (i32.const 2)
           )
          )
         )
         (i32.and
          (i32.shr_s
           (get_local $5)
           (i32.const 1)
          )
          (i32.const 31)
         )
        )
        (i32.const 1)
       )
      )
      (block
       (set_local $5
        (i32.shr_s
         (get_local $5)
         (i32.const 1)
        )
       )
       (br $continue|1)
      )
     )
    )
    (set_local $5
     (i32.load offset=8
      (i32.add
       (i32.add
        (get_local $0)
        (get_local $1)
       )
       (i32.shl
        (tee_local $6
         (i32.shr_s
          (get_local $5)
          (i32.const 1)
         )
        )
        (i32.const 2)
       )
      )
     )
    )
    (set_local $7
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
    (set_global $~argc
     (i32.const 2)
    )
    (if
     (i32.lt_s
      (call_indirect (type $iii)
       (get_local $5)
       (get_local $7)
       (get_local $3)
      )
      (i32.const 0)
     )
     (block
      (i32.store
       (tee_local $9
        (i32.add
         (get_local $8)
         (i32.shl
          (i32.shr_s
           (get_local $4)
           (i32.const 5)
          )
          (i32.const 2)
         )
        )
       )
       (i32.xor
        (i32.load
         (get_local $9)
        )
        (i32.shl
         (i32.const 1)
         (i32.and
          (get_local $4)
          (i32.const 31)
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
         (get_local $4)
         (i32.const 2)
        )
       )
       (get_local $5)
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
       (get_local $7)
      )
     )
    )
    (set_local $4
     (i32.sub
      (get_local $4)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (block $break|2
   (set_local $4
    (i32.sub
     (get_local $2)
     (i32.const 1)
    )
   )
   (loop $repeat|2
    (br_if $break|2
     (i32.lt_s
      (get_local $4)
      (i32.const 2)
     )
    )
    (set_local $7
     (i32.load offset=8
      (i32.add
       (get_local $0)
       (get_local $1)
      )
     )
    )
    (i32.store offset=8
     (i32.add
      (get_local $0)
      (get_local $1)
     )
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
    (i32.store offset=8
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
     (get_local $7)
    )
    (set_local $6
     (i32.const 1)
    )
    (loop $continue|3
     (if
      (i32.lt_s
       (tee_local $5
        (i32.add
         (i32.shl
          (get_local $6)
          (i32.const 1)
         )
         (i32.and
          (i32.shr_u
           (i32.load
            (i32.add
             (get_local $8)
             (i32.shl
              (i32.shr_s
               (get_local $6)
               (i32.const 5)
              )
              (i32.const 2)
             )
            )
           )
           (i32.and
            (get_local $6)
            (i32.const 31)
           )
          )
          (i32.const 1)
         )
        )
       )
       (get_local $4)
      )
      (block
       (set_local $6
        (get_local $5)
       )
       (br $continue|3)
      )
     )
    )
    (loop $continue|4
     (if
      (i32.gt_s
       (get_local $6)
       (i32.const 0)
      )
      (block
       (set_local $7
        (i32.load offset=8
         (i32.add
          (get_local $0)
          (get_local $1)
         )
        )
       )
       (set_local $5
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
       (set_global $~argc
        (i32.const 2)
       )
       (if
        (i32.lt_s
         (call_indirect (type $iii)
          (get_local $7)
          (get_local $5)
          (get_local $3)
         )
         (i32.const 0)
        )
        (block
         (i32.store
          (tee_local $2
           (i32.add
            (get_local $8)
            (i32.shl
             (i32.shr_s
              (get_local $6)
              (i32.const 5)
             )
             (i32.const 2)
            )
           )
          )
          (i32.xor
           (i32.load
            (get_local $2)
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
          (get_local $7)
         )
         (i32.store offset=8
          (i32.add
           (get_local $0)
           (get_local $1)
          )
          (get_local $5)
         )
        )
       )
       (set_local $6
        (i32.shr_s
         (get_local $6)
         (i32.const 1)
        )
       )
       (br $continue|4)
      )
     )
    )
    (set_local $4
     (i32.sub
      (get_local $4)
      (i32.const 1)
     )
    )
    (br $repeat|2)
   )
  )
  (call $~lib/allocator/arena/__memory_free
   (get_local $8)
  )
  (set_local $2
   (i32.load offset=8
    (i32.add
     (i32.add
      (get_local $0)
      (get_local $1)
     )
     (i32.const 4)
    )
   )
  )
  (i32.store offset=8
   (i32.add
    (i32.add
     (get_local $0)
     (get_local $1)
    )
    (i32.const 4)
   )
   (i32.load offset=8
    (i32.add
     (get_local $0)
     (get_local $1)
    )
   )
  )
  (i32.store offset=8
   (i32.add
    (get_local $0)
    (get_local $1)
   )
   (get_local $2)
  )
 )
 (func $~lib/array/Array<i32>#sort (; 83 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
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
  (if
   (i32.le_s
    (tee_local $2
     (i32.load offset=4
      (get_local $0)
     )
    )
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
    (set_local $2
     (i32.load offset=8
      (i32.add
       (get_local $3)
       (i32.const 4)
      )
     )
    )
    (set_local $4
     (i32.load offset=8
      (get_local $3)
     )
    )
    (set_global $~argc
     (i32.const 2)
    )
    (if
     (i32.lt_s
      (call_indirect (type $iii)
       (get_local $2)
       (get_local $4)
       (get_local $1)
      )
      (i32.const 0)
     )
     (block
      (i32.store offset=8
       (i32.add
        (get_local $3)
        (i32.const 4)
       )
       (get_local $4)
      )
      (i32.store offset=8
       (get_local $3)
       (get_local $2)
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
  (get_local $0)
 )
 (func $~lib/array/Array<i32>#sort|trampoline~anonymous|44 (; 84 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.sub
   (get_local $0)
   (get_local $1)
  )
 )
 (func $~lib/array/Array<i32>#sort|trampoline (; 85 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
    (i32.const 44)
   )
  )
  (call $~lib/array/Array<i32>#sort
   (get_local $0)
   (get_local $1)
  )
 )
 (func $std/array/isArraysEqual<i32> (; 86 ;) (; has Stack IR ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (if
   (i32.eqz
    (get_local $2)
   )
   (block
    (if
     (i32.ne
      (i32.load offset=4
       (get_local $0)
      )
      (i32.load offset=4
       (get_local $1)
      )
     )
     (return
      (i32.const 0)
     )
    )
    (set_local $2
     (i32.load offset=4
      (get_local $0)
     )
    )
   )
  )
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $3)
      (get_local $2)
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
     (block
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
  )
  (i32.const 1)
 )
 (func $~lib/array/Array<u32>#sort|trampoline~anonymous|45 (; 87 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/array/Array<u32>#sort|trampoline (; 88 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
    (i32.const 45)
   )
  )
  (call $~lib/array/Array<i32>#sort
   (get_local $0)
   (get_local $1)
  )
 )
 (func $std/array/createReverseOrderedArray (; 89 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (set_local $1
   (call $~lib/array/Array<i32>#constructor
    (i32.const 0)
    (get_local $0)
   )
  )
  (block $break|0
   (set_local $0
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $0)
      (i32.load offset=4
       (get_local $1)
      )
     )
    )
    (call $~lib/array/Array<i32>#__set
     (get_local $1)
     (get_local $0)
     (i32.sub
      (i32.sub
       (i32.load offset=4
        (get_local $1)
       )
       (i32.const 1)
      )
      (get_local $0)
     )
    )
    (set_local $0
     (i32.add
      (get_local $0)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $1)
 )
 (func $~lib/math/NativeMath.random (; 90 ;) (; has Stack IR ;) (type $F) (result f64)
  (local $0 i64)
  (local $1 i64)
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
  (set_global $~lib/math/random_state0
   (tee_local $1
    (get_global $~lib/math/random_state1)
   )
  )
  (set_global $~lib/math/random_state1
   (tee_local $0
    (i64.xor
     (i64.xor
      (i64.xor
       (tee_local $0
        (i64.xor
         (get_local $0)
         (i64.shl
          (get_local $0)
          (i64.const 23)
         )
        )
       )
       (i64.shr_u
        (get_local $0)
        (i64.const 17)
       )
      )
      (get_local $1)
     )
     (i64.shr_u
      (get_local $1)
      (i64.const 26)
     )
    )
   )
  )
  (f64.sub
   (f64.reinterpret/i64
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
   (f64.const 1)
  )
 )
 (func $std/array/createRandomOrderedArray (; 91 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (set_local $0
   (call $~lib/array/Array<i32>#constructor
    (i32.const 0)
    (get_local $0)
   )
  )
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $1)
      (i32.load offset=4
       (get_local $0)
      )
     )
    )
    (call $~lib/array/Array<i32>#__set
     (get_local $0)
     (get_local $1)
     (i32.trunc_s/f64
      (f64.mul
       (call $~lib/math/NativeMath.random)
       (f64.convert_s/i32
        (i32.load offset=4
         (get_local $0)
        )
       )
      )
     )
    )
    (set_local $1
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $0)
 )
 (func $std/array/isSorted<i32> (; 92 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (block $break|0
   (set_local $2
    (i32.const 1)
   )
   (set_local $3
    (i32.load offset=4
     (get_local $0)
    )
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $2)
      (get_local $3)
     )
    )
    (set_global $~argc
     (i32.const 2)
    )
    (if
     (i32.gt_s
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
      (i32.const 0)
     )
     (return
      (i32.const 0)
     )
     (block
      (set_local $2
       (i32.add
        (get_local $2)
        (i32.const 1)
       )
      )
      (br $repeat|0)
     )
    )
   )
  )
  (i32.const 1)
 )
 (func $std/array/assertSorted<i32> (; 93 ;) (; has Stack IR ;) (type $iiv) (param $0 i32) (param $1 i32)
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
 (func $std/array/assertSortedDefault<i32> (; 94 ;) (; has Stack IR ;) (type $iv) (param $0 i32)
  (call $std/array/assertSorted<i32>
   (get_local $0)
   (i32.const 46)
  )
 )
 (func $start~anonymous|48 (; 95 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.sub
   (get_local $1)
   (get_local $0)
  )
 )
 (func $std/array/createReverseOrderedNestedArray (; 96 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (set_local $1
   (call $~lib/array/Array<i32>#constructor
    (i32.const 0)
    (get_local $0)
   )
  )
  (block $break|0
   (set_local $0
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $0)
      (i32.load offset=4
       (get_local $1)
      )
     )
    )
    (call $~lib/array/Array<i32>#__set
     (get_local $1)
     (get_local $0)
     (call $~lib/array/Array<i32>#constructor
      (i32.const 0)
      (i32.const 1)
     )
    )
    (call $~lib/array/Array<i32>#__set
     (call $~lib/array/Array<i32>#__get
      (get_local $1)
      (get_local $0)
     )
     (i32.const 0)
     (i32.sub
      (i32.sub
       (i32.load offset=4
        (get_local $1)
       )
       (i32.const 1)
      )
      (get_local $0)
     )
    )
    (set_local $0
     (i32.add
      (get_local $0)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $1)
 )
 (func $start~anonymous|51 (; 97 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/array/Array<Array<i32>>#sort (; 98 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
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
  (if
   (i32.le_s
    (tee_local $2
     (i32.load offset=4
      (get_local $0)
     )
    )
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
    (set_local $2
     (i32.load offset=8
      (i32.add
       (get_local $3)
       (i32.const 4)
      )
     )
    )
    (set_local $4
     (i32.load offset=8
      (get_local $3)
     )
    )
    (set_global $~argc
     (i32.const 2)
    )
    (if
     (i32.lt_s
      (call_indirect (type $iii)
       (get_local $2)
       (get_local $4)
       (get_local $1)
      )
      (i32.const 0)
     )
     (block
      (i32.store offset=8
       (i32.add
        (get_local $3)
        (i32.const 4)
       )
       (get_local $4)
      )
      (i32.store offset=8
       (get_local $3)
       (get_local $2)
      )
     )
    )
    (return
     (get_local $0)
    )
   )
  )
  (call $~lib/internal/array/insertionSort<i32>
   (get_local $3)
   (i32.const 0)
   (get_local $2)
   (get_local $1)
  )
  (get_local $0)
 )
 (func $std/array/assertSorted<Array<i32>> (; 99 ;) (; has Stack IR ;) (type $iiv) (param $0 i32) (param $1 i32)
  (if
   (i32.eqz
    (call $std/array/isSorted<i32>
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
 (func $std/array/Proxy<i32>#constructor (; 100 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (i32.store
    (tee_local $0
     (call $~lib/memory/memory.allocate
      (i32.const 4)
     )
    )
    (get_local $1)
   )
  )
  (get_local $0)
 )
 (func $std/array/createReverseOrderedElementsArray (; 101 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (set_local $1
   (call $~lib/array/Array<i32>#constructor
    (i32.const 0)
    (get_local $0)
   )
  )
  (block $break|0
   (set_local $0
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $0)
      (i32.load offset=4
       (get_local $1)
      )
     )
    )
    (call $~lib/array/Array<i32>#__set
     (get_local $1)
     (get_local $0)
     (call $std/array/Proxy<i32>#constructor
      (i32.const 0)
      (i32.sub
       (i32.sub
        (i32.load offset=4
         (get_local $1)
        )
        (i32.const 1)
       )
       (get_local $0)
      )
     )
    )
    (set_local $0
     (i32.add
      (get_local $0)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $1)
 )
 (func $start~anonymous|52 (; 102 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.sub
   (i32.load
    (get_local $0)
   )
   (i32.load
    (get_local $1)
   )
  )
 )
 (func $~lib/internal/string/compareUnsafe (; 103 ;) (; has Stack IR ;) (type $iiiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (set_local $1
   (i32.add
    (get_local $0)
    (i32.shl
     (get_local $1)
     (i32.const 1)
    )
   )
  )
  (set_local $2
   (i32.add
    (get_local $2)
    (i32.shl
     (get_local $3)
     (i32.const 1)
    )
   )
  )
  (loop $continue|0
   (if
    (tee_local $0
     (if (result i32)
      (get_local $4)
      (i32.eqz
       (tee_local $5
        (i32.sub
         (i32.load16_u offset=4
          (get_local $1)
         )
         (i32.load16_u offset=4
          (get_local $2)
         )
        )
       )
      )
      (get_local $4)
     )
    )
    (block
     (set_local $4
      (i32.sub
       (get_local $4)
       (i32.const 1)
      )
     )
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
     )
     (set_local $2
      (i32.add
       (get_local $2)
       (i32.const 1)
      )
     )
     (br $continue|0)
    )
   )
  )
  (get_local $5)
 )
 (func $~lib/string/String.__gt (; 104 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i32.eqz
    (tee_local $2
     (i32.eq
      (get_local $0)
      (get_local $1)
     )
    )
   )
   (set_local $2
    (i32.eqz
     (get_local $0)
    )
   )
  )
  (if
   (i32.eqz
    (get_local $2)
   )
   (set_local $2
    (i32.eqz
     (get_local $1)
    )
   )
  )
  (if
   (get_local $2)
   (return
    (i32.const 0)
   )
  )
  (set_local $3
   (i32.load
    (get_local $1)
   )
  )
  (if
   (i32.eqz
    (tee_local $2
     (i32.load
      (get_local $0)
     )
    )
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
  (i32.gt_s
   (call $~lib/internal/string/compareUnsafe
    (get_local $0)
    (i32.const 0)
    (get_local $1)
    (i32.const 0)
    (select
     (get_local $2)
     (get_local $3)
     (i32.lt_s
      (get_local $2)
      (get_local $3)
     )
    )
   )
   (i32.const 0)
  )
 )
 (func $~lib/string/String.__lt (; 105 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i32.eqz
    (tee_local $2
     (i32.eq
      (get_local $0)
      (get_local $1)
     )
    )
   )
   (set_local $2
    (i32.eqz
     (get_local $0)
    )
   )
  )
  (if
   (i32.eqz
    (get_local $2)
   )
   (set_local $2
    (i32.eqz
     (get_local $1)
    )
   )
  )
  (if
   (get_local $2)
   (return
    (i32.const 0)
   )
  )
  (set_local $2
   (i32.load
    (get_local $0)
   )
  )
  (if
   (i32.eqz
    (tee_local $3
     (i32.load
      (get_local $1)
     )
    )
   )
   (return
    (i32.const 0)
   )
  )
  (if
   (i32.eqz
    (get_local $2)
   )
   (return
    (i32.const 1)
   )
  )
  (i32.lt_s
   (call $~lib/internal/string/compareUnsafe
    (get_local $0)
    (i32.const 0)
    (get_local $1)
    (i32.const 0)
    (select
     (get_local $2)
     (get_local $3)
     (i32.lt_s
      (get_local $2)
      (get_local $3)
     )
    )
   )
   (i32.const 0)
  )
 )
 (func $start~anonymous|53 (; 106 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/string/String.__eq (; 107 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
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
   (i32.eqz
    (tee_local $2
     (i32.eqz
      (get_local $0)
     )
    )
   )
   (set_local $2
    (i32.eqz
     (get_local $1)
    )
   )
  )
  (if
   (get_local $2)
   (return
    (i32.const 0)
   )
  )
  (if
   (i32.ne
    (tee_local $2
     (i32.load
      (get_local $0)
     )
    )
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
    (get_local $2)
   )
  )
 )
 (func $~lib/string/String.__ne (; 108 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.eqz
   (call $~lib/string/String.__eq
    (get_local $0)
    (get_local $1)
   )
  )
 )
 (func $std/array/isArraysEqual<String> (; 109 ;) (; has Stack IR ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (if
   (i32.eqz
    (get_local $2)
   )
   (block
    (if
     (i32.ne
      (i32.load offset=4
       (get_local $0)
      )
      (i32.load offset=4
       (get_local $1)
      )
     )
     (return
      (i32.const 0)
     )
    )
    (set_local $2
     (i32.load offset=4
      (get_local $0)
     )
    )
   )
  )
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $3)
      (get_local $2)
     )
    )
    (if
     (call $~lib/string/String.__ne
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
     (block
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
  )
  (i32.const 1)
 )
 (func $~lib/internal/string/allocateUnsafe (; 110 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (if
   (tee_local $1
    (i32.gt_s
     (get_local $0)
     (i32.const 0)
    )
   )
   (set_local $1
    (i32.le_s
     (get_local $0)
     (i32.const 536870910)
    )
   )
  )
  (if
   (i32.eqz
    (get_local $1)
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
  (i32.store
   (tee_local $1
    (call $~lib/allocator/arena/__memory_allocate
     (i32.add
      (i32.shl
       (get_local $0)
       (i32.const 1)
      )
      (i32.const 4)
     )
    )
   )
   (get_local $0)
  )
  (get_local $1)
 )
 (func $~lib/string/String#charAt (; 111 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 1296)
     (i32.const 54)
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
  (i32.store16 offset=4
   (tee_local $2
    (call $~lib/internal/string/allocateUnsafe
     (i32.const 1)
    )
   )
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
 (func $~lib/internal/string/copyUnsafe (; 112 ;) (; has Stack IR ;) (type $iiiiiv) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  (call $~lib/internal/memory/memmove
   (i32.add
    (i32.add
     (get_local $0)
     (i32.shl
      (get_local $1)
      (i32.const 1)
     )
    )
    (i32.const 4)
   )
   (i32.add
    (i32.add
     (get_local $2)
     (i32.shl
      (get_local $3)
      (i32.const 1)
     )
    )
    (i32.const 4)
   )
   (i32.shl
    (get_local $4)
    (i32.const 1)
   )
  )
 )
 (func $~lib/string/String#concat (; 113 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 1296)
     (i32.const 106)
     (i32.const 4)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (get_local $1)
   )
   (set_local $1
    (i32.const 1384)
   )
  )
  (if
   (i32.eqz
    (tee_local $2
     (i32.add
      (tee_local $3
       (i32.load
        (get_local $0)
       )
      )
      (tee_local $4
       (i32.load
        (get_local $1)
       )
      )
     )
    )
   )
   (return
    (i32.const 1144)
   )
  )
  (call $~lib/internal/string/copyUnsafe
   (tee_local $2
    (call $~lib/internal/string/allocateUnsafe
     (get_local $2)
    )
   )
   (i32.const 0)
   (get_local $0)
   (i32.const 0)
   (get_local $3)
  )
  (call $~lib/internal/string/copyUnsafe
   (get_local $2)
   (get_local $3)
   (get_local $1)
   (i32.const 0)
   (get_local $4)
  )
  (get_local $2)
 )
 (func $~lib/string/String.__concat (; 114 ;) (; has Stack IR ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $std/array/createRandomString (; 115 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (set_local $1
   (i32.const 1144)
  )
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $2)
      (get_local $0)
     )
    )
    (set_local $1
     (call $~lib/string/String.__concat
      (get_local $1)
      (call $~lib/string/String#charAt
       (i32.const 168)
       (i32.trunc_s/f64
        (f64.floor
         (f64.mul
          (call $~lib/math/NativeMath.random)
          (f64.convert_s/i32
           (i32.load
            (i32.const 168)
           )
          )
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
 (func $std/array/createRandomStringArray (; 116 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (set_local $1
   (call $~lib/array/Array<i32>#constructor
    (i32.const 0)
    (get_local $0)
   )
  )
  (block $break|0
   (set_local $0
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $0)
      (i32.load offset=4
       (get_local $1)
      )
     )
    )
    (call $~lib/array/Array<i32>#__set
     (get_local $1)
     (get_local $0)
     (call $std/array/createRandomString
      (i32.trunc_s/f64
       (f64.mul
        (call $~lib/math/NativeMath.random)
        (f64.const 32)
       )
      )
     )
    )
    (set_local $0
     (i32.add
      (get_local $0)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $1)
 )
 (func $start (; 117 ;) (; has Stack IR ;) (type $v)
  (set_global $~lib/allocator/arena/startOffset
   (i32.const 1400)
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
   (i32.load offset=4
    (get_global $std/array/arr)
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
   (call $std/array/internalCapacity<i32>
    (get_global $std/array/arr)
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
   (i32.ne
    (call $~lib/array/Array<i32>#__get
     (get_global $std/array/arr)
     (i32.const 0)
    )
    (i32.const 42)
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
   (i32.ne
    (i32.load offset=4
     (get_global $std/array/arr)
    )
    (i32.const 1)
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
   (i32.ne
    (call $std/array/internalCapacity<i32>
     (get_global $std/array/arr)
    )
    (i32.const 1)
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
   (i32.ne
    (get_global $std/array/i)
    (i32.const 42)
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
   (i32.load offset=4
    (get_global $std/array/arr)
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
   (i32.ne
    (call $std/array/internalCapacity<i32>
     (get_global $std/array/arr)
    )
    (i32.const 1)
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
   (i32.ne
    (i32.load offset=4
     (get_global $std/array/arr)
    )
    (i32.const 1)
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
   (i32.ne
    (call $std/array/internalCapacity<i32>
     (get_global $std/array/arr)
    )
    (i32.const 1)
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
   (i32.ne
    (call $~lib/array/Array<i32>#__get
     (get_global $std/array/arr)
     (i32.const 0)
    )
    (i32.const 43)
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
   (i32.ne
    (i32.load offset=4
     (get_global $std/array/arr)
    )
    (i32.const 2)
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
   (i32.ne
    (call $std/array/internalCapacity<i32>
     (get_global $std/array/arr)
    )
    (i32.const 2)
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
   (i32.ne
    (call $~lib/array/Array<i32>#__get
     (get_global $std/array/arr)
     (i32.const 0)
    )
    (i32.const 43)
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
   (i32.ne
    (call $~lib/array/Array<i32>#__get
     (get_global $std/array/arr)
     (i32.const 1)
    )
    (i32.const 44)
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
   (i32.ne
    (i32.load offset=4
     (get_global $std/array/arr)
    )
    (i32.const 3)
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
   (i32.ne
    (call $std/array/internalCapacity<i32>
     (get_global $std/array/arr)
    )
    (i32.const 3)
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
   (i32.ne
    (call $~lib/array/Array<i32>#__get
     (get_global $std/array/arr)
     (i32.const 0)
    )
    (i32.const 43)
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
   (i32.ne
    (call $~lib/array/Array<i32>#__get
     (get_global $std/array/arr)
     (i32.const 1)
    )
    (i32.const 44)
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
   (i32.ne
    (call $~lib/array/Array<i32>#__get
     (get_global $std/array/arr)
     (i32.const 2)
    )
    (i32.const 45)
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
   (i32.ne
    (i32.load offset=4
     (get_global $std/array/arr)
    )
    (i32.const 4)
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
   (i32.ne
    (call $std/array/internalCapacity<i32>
     (get_global $std/array/arr)
    )
    (i32.const 4)
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
   (i32.ne
    (call $~lib/array/Array<i32>#__get
     (get_global $std/array/arr)
     (i32.const 0)
    )
    (i32.const 42)
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
   (i32.ne
    (call $~lib/array/Array<i32>#__get
     (get_global $std/array/arr)
     (i32.const 1)
    )
    (i32.const 43)
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
   (i32.ne
    (call $~lib/array/Array<i32>#__get
     (get_global $std/array/arr)
     (i32.const 2)
    )
    (i32.const 44)
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
   (i32.ne
    (call $~lib/array/Array<i32>#__get
     (get_global $std/array/arr)
     (i32.const 3)
    )
    (i32.const 45)
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
   (i32.ne
    (i32.load offset=4
     (get_global $std/array/arr)
    )
    (i32.const 5)
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
   (i32.ne
    (call $std/array/internalCapacity<i32>
     (get_global $std/array/arr)
    )
    (i32.const 5)
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
   (i32.ne
    (call $~lib/array/Array<i32>#__get
     (get_global $std/array/arr)
     (i32.const 0)
    )
    (i32.const 41)
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
   (i32.ne
    (call $~lib/array/Array<i32>#__get
     (get_global $std/array/arr)
     (i32.const 1)
    )
    (i32.const 42)
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
   (i32.ne
    (call $~lib/array/Array<i32>#__get
     (get_global $std/array/arr)
     (i32.const 2)
    )
    (i32.const 43)
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
   (i32.ne
    (call $~lib/array/Array<i32>#__get
     (get_global $std/array/arr)
     (i32.const 3)
    )
    (i32.const 44)
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
   (i32.ne
    (call $~lib/array/Array<i32>#__get
     (get_global $std/array/arr)
     (i32.const 4)
    )
    (i32.const 45)
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
   (i32.ne
    (get_global $std/array/i)
    (i32.const 41)
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
   (i32.ne
    (i32.load offset=4
     (get_global $std/array/arr)
    )
    (i32.const 4)
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
   (i32.ne
    (call $std/array/internalCapacity<i32>
     (get_global $std/array/arr)
    )
    (i32.const 5)
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
   (i32.ne
    (call $~lib/array/Array<i32>#__get
     (get_global $std/array/arr)
     (i32.const 0)
    )
    (i32.const 42)
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
   (i32.ne
    (call $~lib/array/Array<i32>#__get
     (get_global $std/array/arr)
     (i32.const 1)
    )
    (i32.const 43)
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
   (i32.ne
    (call $~lib/array/Array<i32>#__get
     (get_global $std/array/arr)
     (i32.const 2)
    )
    (i32.const 44)
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
   (i32.ne
    (call $~lib/array/Array<i32>#__get
     (get_global $std/array/arr)
     (i32.const 3)
    )
    (i32.const 45)
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
   (i32.ne
    (get_global $std/array/i)
    (i32.const 45)
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
   (i32.ne
    (i32.load offset=4
     (get_global $std/array/arr)
    )
    (i32.const 3)
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
   (i32.ne
    (call $std/array/internalCapacity<i32>
     (get_global $std/array/arr)
    )
    (i32.const 5)
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
   (i32.ne
    (call $~lib/array/Array<i32>#__get
     (get_global $std/array/arr)
     (i32.const 0)
    )
    (i32.const 42)
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
   (i32.ne
    (call $~lib/array/Array<i32>#__get
     (get_global $std/array/arr)
     (i32.const 1)
    )
    (i32.const 43)
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
   (i32.ne
    (call $~lib/array/Array<i32>#__get
     (get_global $std/array/arr)
     (i32.const 2)
    )
    (i32.const 44)
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
   (i32.ne
    (i32.load offset=4
     (get_global $std/array/arr)
    )
    (i32.const 3)
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
   (i32.ne
    (call $std/array/internalCapacity<i32>
     (get_global $std/array/arr)
    )
    (i32.const 5)
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
   (i32.ne
    (call $~lib/array/Array<i32>#__get
     (get_global $std/array/arr)
     (i32.const 0)
    )
    (i32.const 44)
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
   (i32.ne
    (call $~lib/array/Array<i32>#__get
     (get_global $std/array/arr)
     (i32.const 1)
    )
    (i32.const 43)
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
   (i32.ne
    (call $~lib/array/Array<i32>#__get
     (get_global $std/array/arr)
     (i32.const 2)
    )
    (i32.const 42)
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
   (get_global $std/array/i)
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
   (i32.ne
    (get_global $std/array/i)
    (i32.const 2)
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
   (i32.ne
    (get_global $std/array/i)
    (i32.const -1)
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
   (i32.ne
    (get_global $std/array/i)
    (i32.const -1)
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
   (i32.ne
    (get_global $std/array/i)
    (i32.const 1)
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
   (i32.ne
    (get_global $std/array/i)
    (i32.const 3)
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
   (i32.ne
    (get_global $std/array/i)
    (i32.const 1)
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
   (i32.ne
    (get_global $std/array/i)
    (i32.const 1)
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
   (i32.ne
    (get_global $std/array/i)
    (i32.const 1)
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
   (i32.ne
    (get_global $std/array/i)
    (i32.const 3)
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
   (i32.ne
    (get_global $std/array/includes)
    (i32.const 1)
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
   (i32.ne
    (get_global $std/array/includes)
    (i32.const 1)
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
   (get_global $std/array/includes)
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
   (get_global $std/array/includes)
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
   (i32.ne
    (get_global $std/array/includes)
    (i32.const 1)
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
   (i32.ne
    (get_global $std/array/includes)
    (i32.const 1)
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
   (i32.ne
    (get_global $std/array/includes)
    (i32.const 1)
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
   (i32.ne
    (get_global $std/array/includes)
    (i32.const 1)
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
   (i32.ne
    (get_global $std/array/includes)
    (i32.const 1)
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
   (i32.ne
    (get_global $std/array/includes)
    (i32.const 1)
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
   (i32.ne
    (i32.load offset=4
     (get_global $std/array/arr)
    )
    (i32.const 4)
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
   (i32.ne
    (call $std/array/internalCapacity<i32>
     (get_global $std/array/arr)
    )
    (i32.const 5)
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
   (i32.ne
    (call $~lib/array/Array<i32>#__get
     (get_global $std/array/arr)
     (i32.const 0)
    )
    (i32.const 44)
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
   (i32.ne
    (call $~lib/array/Array<i32>#__get
     (get_global $std/array/arr)
     (i32.const 1)
    )
    (i32.const 42)
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
   (get_global $std/array/i)
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
   (i32.ne
    (get_global $std/array/i)
    (i32.const 1)
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
   (i32.ne
    (get_global $std/array/i)
    (i32.const -1)
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
   (i32.ne
    (get_global $std/array/i)
    (i32.const -1)
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
   (i32.ne
    (i32.load offset=4
     (get_global $std/array/arr)
    )
    (i32.const 8)
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
   (i32.eq
    (get_global $std/array/i)
    (i32.const -1)
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
   (i32.ne
    (get_global $std/array/i)
    (i32.const -1)
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
   (i32.ne
    (i32.load offset=4
     (get_global $std/array/arr)
    )
    (i32.const 2)
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
   (i32.ne
    (get_global $std/array/every)
    (i32.const 1)
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
   (get_global $std/array/every)
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
   (i32.ne
    (get_global $std/array/every)
    (i32.const 1)
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
   (i32.ne
    (i32.load offset=4
     (get_global $std/array/arr)
    )
    (i32.const 8)
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
   (get_global $std/array/every)
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
   (i32.ne
    (get_global $std/array/every)
    (i32.const 1)
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
   (i32.ne
    (i32.load offset=4
     (get_global $std/array/arr)
    )
    (i32.const 2)
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
   (i32.ne
    (get_global $std/array/some)
    (i32.const 1)
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
   (get_global $std/array/some)
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
   (get_global $std/array/some)
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
   (i32.ne
    (i32.load offset=4
     (get_global $std/array/arr)
    )
    (i32.const 8)
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
   (i32.ne
    (get_global $std/array/some)
    (i32.const 1)
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
   (get_global $std/array/some)
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
   (i32.ne
    (i32.load offset=4
     (get_global $std/array/arr)
    )
    (i32.const 2)
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
   (i32.ne
    (get_global $std/array/i)
    (i32.const 6)
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
   (i32.ne
    (get_global $std/array/i)
    (i32.const 6)
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
   (i32.ne
    (i32.load offset=4
     (get_global $std/array/arr)
    )
    (i32.const 8)
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
   (i32.ne
    (get_global $std/array/i)
    (i32.const 406)
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
   (i32.ne
    (get_global $std/array/i)
    (i32.const 1)
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
   (i32.ne
    (i32.load offset=4
     (get_global $std/array/arr)
    )
    (i32.const 2)
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
   (i32.ne
    (i32.load offset=4
     (get_global $std/array/newArr)
    )
    (i32.const 4)
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
   (f32.ne
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
   (i32.ne
    (get_global $std/array/i)
    (i32.const 6)
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
   (i32.ne
    (i32.load offset=4
     (get_global $std/array/arr)
    )
    (i32.const 8)
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
   (i32.ne
    (get_global $std/array/i)
    (i32.const 406)
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
   (i32.ne
    (get_global $std/array/i)
    (i32.const 1)
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
   (i32.ne
    (i32.load offset=4
     (get_global $std/array/arr)
    )
    (i32.const 2)
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
   (i32.ne
    (i32.load offset=4
     (get_global $std/array/filteredArr)
    )
    (i32.const 2)
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
   (i32.ne
    (get_global $std/array/i)
    (i32.const 6)
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
   (i32.ne
    (i32.load offset=4
     (get_global $std/array/arr)
    )
    (i32.const 8)
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
   (i32.ne
    (get_global $std/array/i)
    (i32.const 406)
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
   (i32.ne
    (get_global $std/array/i)
    (i32.const 1)
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
   (i32.ne
    (i32.load offset=4
     (get_global $std/array/arr)
    )
    (i32.const 2)
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
   (i32.ne
    (get_global $std/array/i)
    (i32.const 6)
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
   (i32.ne
    (get_global $std/array/i)
    (i32.const 10)
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
    (call $~lib/array/Array<i32>#reduce<i32>
     (get_global $std/array/arr)
     (i32.const 30)
     (i32.const 0)
    )
    (i32.const 1)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/boolVal)
    (i32.const 1)
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
    (call $~lib/array/Array<i32>#reduce<i32>
     (get_global $std/array/arr)
     (i32.const 31)
     (i32.const 0)
    )
    (i32.const 1)
   )
  )
  (if
   (get_global $std/array/boolVal)
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
   (i32.ne
    (get_global $std/array/i)
    (i32.const 6)
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
   (i32.ne
    (i32.load offset=4
     (get_global $std/array/arr)
    )
    (i32.const 8)
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
   (i32.ne
    (get_global $std/array/i)
    (i32.const 10)
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
   (i32.ne
    (get_global $std/array/i)
    (i32.const 1)
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
   (i32.ne
    (i32.load offset=4
     (get_global $std/array/arr)
    )
    (i32.const 2)
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
   (i32.ne
    (get_global $std/array/i)
    (i32.const 6)
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
   (i32.ne
    (get_global $std/array/i)
    (i32.const 10)
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
    (call $~lib/array/Array<i32>#reduceRight<i32>
     (get_global $std/array/arr)
     (i32.const 37)
     (i32.const 0)
    )
    (i32.const 1)
   )
  )
  (if
   (i32.ne
    (get_global $std/array/boolVal)
    (i32.const 1)
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
    (call $~lib/array/Array<i32>#reduceRight<i32>
     (get_global $std/array/arr)
     (i32.const 38)
     (i32.const 0)
    )
    (i32.const 1)
   )
  )
  (if
   (get_global $std/array/boolVal)
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
   (i32.ne
    (get_global $std/array/i)
    (i32.const 6)
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
   (i32.ne
    (i32.load offset=4
     (get_global $std/array/arr)
    )
    (i32.const 8)
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
   (i32.ne
    (get_global $std/array/i)
    (i32.const 10)
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
   (i32.ne
    (get_global $std/array/i)
    (i32.const 6)
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
   (i32.load offset=4
    (get_global $std/array/arr)
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
  (set_global $~argc
   (i32.const 0)
  )
  (drop
   (call $~lib/array/Array<f32>#sort|trampoline
    (get_global $std/array/f32ArrayTyped)
    (i32.const 0)
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
  (set_global $~argc
   (i32.const 0)
  )
  (drop
   (call $~lib/array/Array<f64>#sort|trampoline
    (get_global $std/array/f64ArrayTyped)
    (i32.const 0)
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
  (set_global $~argc
   (i32.const 0)
  )
  (drop
   (call $~lib/array/Array<i32>#sort|trampoline
    (get_global $std/array/i32ArrayTyped)
    (i32.const 0)
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
  (set_global $~argc
   (i32.const 0)
  )
  (drop
   (call $~lib/array/Array<u32>#sort|trampoline
    (get_global $std/array/u32ArrayTyped)
    (i32.const 0)
   )
  )
  (if
   (i32.eqz
    (call $std/array/isArraysEqual<i32>
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
  (call $std/array/assertSorted<Array<i32>>
   (get_global $std/array/reversedElements512)
   (i32.const 52)
  )
  (call $std/array/assertSorted<Array<i32>>
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
  (call $std/array/assertSorted<Array<i32>>
   (get_global $std/array/randomStrings400)
   (i32.const 54)
  )
 )
)
