(module
 (type $i (func (result i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $ii (func (param i32) (result i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iiiii (func (param i32 i32 i32 i32) (result i32)))
 (type $F (func (result f64)))
 (type $Iv (func (param i64)))
 (type $II (func (param i64) (result i64)))
 (type $iv (func (param i32)))
 (type $iiv (func (param i32 i32)))
 (type $v (func))
 (import "env" "abort" (func $abort (param i32 i32 i32 i32)))
 (import "JSMath" "random" (func $~lib/math/JSMath.random (result f64)))
 (global $~lib/internal/allocator/AL_BITS i32 (i32.const 3))
 (global $~lib/internal/allocator/AL_SIZE i32 (i32.const 8))
 (global $~lib/internal/allocator/AL_MASK i32 (i32.const 7))
 (global $~lib/internal/allocator/MAX_SIZE_32 i32 (i32.const 1073741824))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $~lib/internal/arraybuffer/HEADER_SIZE i32 (i32.const 8))
 (global $~lib/internal/arraybuffer/MAX_BLENGTH i32 (i32.const 1073741816))
 (global $~argc (mut i32) (i32.const 0))
 (global $std/array/arr (mut i32) (i32.const 0))
 (global $std/array/i (mut i32) (i32.const 0))
 (global $std/array/includes (mut i32) (i32.const 0))
 (global $std/array/every (mut i32) (i32.const 0))
 (global $std/array/some (mut i32) (i32.const 0))
 (global $std/array/boolVal (mut i32) (i32.const 0))
 (global $~lib/math/random_seeded (mut i32) (i32.const 0))
 (global $~lib/math/random_state0 (mut i64) (i64.const 0))
 (global $~lib/math/random_state1 (mut i64) (i64.const 0))
 (global $std/array/charset i32 (i32.const 152))
 (global $std/array/reversed0 (mut i32) (i32.const 328))
 (global $std/array/reversed1 (mut i32) (i32.const 344))
 (global $std/array/reversed2 (mut i32) (i32.const 368))
 (global $std/array/reversed4 (mut i32) (i32.const 392))
 (global $std/array/expected4 (mut i32) (i32.const 432))
 (global $std/array/reversed64 (mut i32) (i32.const 0))
 (global $std/array/reversed128 (mut i32) (i32.const 0))
 (global $std/array/reversed1024 (mut i32) (i32.const 0))
 (global $std/array/reversed10000 (mut i32) (i32.const 0))
 (global $std/array/randomized512 (mut i32) (i32.const 0))
 (global $std/array/randomized64 (mut i32) (i32.const 0))
 (global $std/array/randomized257 (mut i32) (i32.const 0))
 (global $std/array/reversedNested512 (mut i32) (i32.const 0))
 (global $std/array/reversedElements512 (mut i32) (i32.const 0))
 (global $std/array/randomStringsActual (mut i32) (i32.const 560))
 (global $std/array/randomStringsExpected (mut i32) (i32.const 632))
 (global $~lib/internal/string/HEADER_SIZE i32 (i32.const 4))
 (global $~lib/internal/string/EMPTY i32 (i32.const 552))
 (global $~lib/internal/string/MAX_LENGTH i32 (i32.const 536870910))
 (global $std/array/randomStrings400 (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 800))
 (table 32 32 anyfunc)
 (elem (i32.const 0) $start~anonymous|0 $start~anonymous|1 $start~anonymous|2 $start~anonymous|3 $start~anonymous|4 $start~anonymous|5 $start~anonymous|6 $start~anonymous|7 $start~anonymous|8 $start~anonymous|9 $start~anonymous|10 $start~anonymous|11 $start~anonymous|12 $start~anonymous|13 $start~anonymous|14 $start~anonymous|15 $start~anonymous|16 $start~anonymous|17 $start~anonymous|18 $start~anonymous|19 $start~anonymous|20 $start~anonymous|21 $start~anonymous|22 $std/array/assertSortedDefault<i32>~anonymous|23 $start~anonymous|24 $start~anonymous|25 $start~anonymous|26 $start~anonymous|27 $start~anonymous|28 $start~anonymous|29 $start~anonymous|30 $start~anonymous|31)
 (memory $0 1)
 (data (i32.const 4) "\0d\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 36) "\1c\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (data (i32.const 96) "\0c\00\00\00s\00t\00d\00/\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 124) "\0c\00\00\00~\00l\00i\00b\00/\00m\00a\00t\00h\00.\00t\00s\00")
 (data (i32.const 152) "V\00\00\00A\00B\00C\00D\00E\00F\00G\00H\00I\00J\00K\00L\00M\00N\00O\00P\00Q\00R\00S\00T\00U\00V\00W\00X\00Y\00Z\00a\00b\00c\00d\00e\00f\00g\00h\00i\00j\00k\00l\00m\00n\00o\00p\00q\00r\00s\00t\00u\00v\00w\00x\00y\00z\000\001\002\003\004\005\006\007\008\009\00_\00-\00,\00.\00+\00/\00\\\00[\00]\00{\00}\00(\00)\00<\00>\00*\00&\00$\00%\00^\00@\00#\00!\00?\00")
 (data (i32.const 328) "P\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 344) "`\01\00\00\01\00\00\00\04\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00")
 (data (i32.const 368) "x\01\00\00\02\00\00\00\08\00\00\00\00\00\00\00\02\00\00\00\01\00\00\00")
 (data (i32.const 392) "\90\01\00\00\04\00\00\00\10\00\00\00\00\00\00\00\03\00\00\00\02\00\00\00\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 432) "\b8\01\00\00\04\00\00\00\10\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00\03\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 472) "\e0\01\00\00\01\00\00\00\04\00\00\00\00\00\00\00\01\00\00\00\00\00\00\00")
 (data (i32.const 496) "\f8\01\00\00\02\00\00\00\08\00\00\00\00\00\00\00\01\00\00\00\02\00\00\00")
 (data (i32.const 520) "\01\00\00\00a\00")
 (data (i32.const 528) "\01\00\00\00b\00")
 (data (i32.const 536) "\02\00\00\00a\00b\00")
 (data (i32.const 544) "\02\00\00\00b\00a\00")
 (data (i32.const 552) "\00\00\00\00")
 (data (i32.const 560) "8\02\00\00\07\00\00\00\1c\00\00\00\00\00\00\00\08\02\00\00\10\02\00\00\08\02\00\00\18\02\00\00 \02\00\00(\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 632) "\80\02\00\00\07\00\00\00\1c\00\00\00\00\00\00\00(\02\00\00\08\02\00\00\08\02\00\00\18\02\00\00\10\02\00\00 \02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00")
 (data (i32.const 704) "\0e\00\00\00~\00l\00i\00b\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 736) "\17\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00s\00t\00r\00i\00n\00g\00.\00t\00s\00")
 (data (i32.const 788) "\04\00\00\00n\00u\00l\00l\00")
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $~lib/internal/arraybuffer/computeSize (; 2 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (i32.shl
    (i32.const 1)
    (i32.sub
     (i32.const 32)
     (i32.clz
      (i32.sub
       (i32.add
        (get_local $0)
        (i32.const 8)
       )
       (i32.const 1)
      )
     )
    )
   )
  )
 )
 (func $~lib/allocator/arena/allocate_memory (; 3 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (if
   (get_local $0)
   (block
    (if
     (i32.gt_u
      (get_local $0)
      (i32.const 1073741824)
     )
     (unreachable)
    )
    (set_local $1
     (get_global $~lib/allocator/arena/offset)
    )
    (set_local $2
     (i32.and
      (i32.add
       (i32.add
        (get_local $1)
        (get_local $0)
       )
       (i32.const 7)
      )
      (i32.xor
       (i32.const 7)
       (i32.const -1)
      )
     )
    )
    (set_local $3
     (current_memory)
    )
    (if
     (i32.gt_u
      (get_local $2)
      (i32.shl
       (get_local $3)
       (i32.const 16)
      )
     )
     (block
      (set_local $4
       (i32.shr_u
        (i32.and
         (i32.add
          (i32.sub
           (get_local $2)
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
      (set_local $5
       (select
        (tee_local $5
         (get_local $3)
        )
        (tee_local $6
         (get_local $4)
        )
        (i32.gt_s
         (get_local $5)
         (get_local $6)
        )
       )
      )
      (if
       (i32.lt_s
        (grow_memory
         (get_local $5)
        )
        (i32.const 0)
       )
       (if
        (i32.lt_s
         (grow_memory
          (get_local $4)
         )
         (i32.const 0)
        )
        (unreachable)
       )
      )
     )
    )
    (set_global $~lib/allocator/arena/offset
     (get_local $2)
    )
    (return
     (get_local $1)
    )
   )
  )
  (return
   (i32.const 0)
  )
 )
 (func $~lib/internal/arraybuffer/allocUnsafe (; 4 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (if
   (i32.eqz
    (i32.le_u
     (get_local $0)
     (i32.const 1073741816)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 36)
     (i32.const 22)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (set_local $1
   (call $~lib/allocator/arena/allocate_memory
    (call $~lib/internal/arraybuffer/computeSize
     (get_local $0)
    )
   )
  )
  (i32.store
   (get_local $1)
   (get_local $0)
  )
  (return
   (get_local $1)
  )
 )
 (func $~lib/array/Array<i32>#constructor (; 5 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (block
   (nop)
   (if
    (i32.gt_u
     (get_local $1)
     (i32.const 268435454)
    )
    (block
     (call $abort
      (i32.const 0)
      (i32.const 4)
      (i32.const 23)
      (i32.const 39)
     )
     (unreachable)
    )
   )
   (i32.store
    (tee_local $0
     (if (result i32)
      (get_local $0)
      (get_local $0)
      (tee_local $0
       (block (result i32)
        (set_local $2
         (call $~lib/allocator/arena/allocate_memory
          (i32.const 8)
         )
        )
        (i32.store
         (get_local $2)
         (i32.const 0)
        )
        (i32.store offset=4
         (get_local $2)
         (i32.const 0)
        )
        (get_local $2)
       )
      )
     )
    )
    (call $~lib/internal/arraybuffer/allocUnsafe
     (i32.shl
      (get_local $1)
      (i32.const 2)
     )
    )
   )
   (i32.store offset=4
    (get_local $0)
    (get_local $1)
   )
  )
  (get_local $0)
 )
 (func $~lib/array/Array<i32>#constructor|trampoline (; 6 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $oob
     (br_table $0of1 $1of1 $oob
      (get_global $~argc)
     )
    )
    (unreachable)
   )
   (set_local $1
    (i32.const 0)
   )
  )
  (call $~lib/array/Array<i32>#constructor
   (get_local $0)
   (get_local $1)
  )
 )
 (func $~lib/array/Array<i32>#get:length (; 7 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (i32.load offset=4
    (get_local $0)
   )
  )
 )
 (func $std/array/internalCapacity<i32> (; 8 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (set_local $1
   (i32.load
    (get_local $0)
   )
  )
  (return
   (i32.shr_s
    (i32.load
     (get_local $1)
    )
    (i32.const 2)
   )
  )
 )
 (func $~lib/memory/set_memory (; 9 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
    (get_local $1)
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
 (func $~lib/memory/copy_memory (; 10 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (nop)
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
 (func $~lib/memory/move_memory (; 11 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (if
   (i32.eq
    (get_local $0)
    (get_local $1)
   )
   (return)
  )
  (if
   (i32.and
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
    (i32.const 1)
   )
   (block
    (call $~lib/memory/copy_memory
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
        )
        (br $continue|5)
       )
      )
     )
    )
   )
  )
 )
 (func $~lib/internal/arraybuffer/reallocUnsafe (; 12 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
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
       (i32.const 1073741816)
      )
     )
     (block
      (call $abort
       (i32.const 0)
       (i32.const 36)
       (i32.const 32)
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
      (call $~lib/memory/set_memory
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
      (set_local $3
       (call $~lib/internal/arraybuffer/allocUnsafe
        (get_local $1)
       )
      )
      (call $~lib/memory/move_memory
       (i32.add
        (get_local $3)
        (i32.const 8)
       )
       (i32.add
        (get_local $0)
        (i32.const 8)
       )
       (get_local $2)
      )
      (call $~lib/memory/set_memory
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
      (i32.eqz
       (i32.ge_s
        (get_local $1)
        (i32.const 0)
       )
      )
      (block
       (call $abort
        (i32.const 0)
        (i32.const 36)
        (i32.const 56)
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
  (return
   (get_local $0)
  )
 )
 (func $~lib/array/Array<i32>#push (; 13 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
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
    (nop)
    (if
     (i32.ge_u
      (get_local $2)
      (i32.const 268435454)
     )
     (block
      (call $abort
       (i32.const 0)
       (i32.const 4)
       (i32.const 127)
       (i32.const 42)
      )
      (unreachable)
     )
    )
    (set_local $3
     (call $~lib/internal/arraybuffer/reallocUnsafe
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
  (nop)
  (block $~lib/internal/arraybuffer/storeUnsafe<i32>|inlined.0
   (set_local $6
    (get_local $3)
   )
   (set_local $7
    (get_local $2)
   )
   (set_local $8
    (get_local $1)
   )
   (i32.store offset=8
    (i32.add
     (get_local $6)
     (i32.shl
      (get_local $7)
      (i32.const 2)
     )
    )
    (get_local $8)
   )
  )
  (return
   (get_local $5)
  )
 )
 (func $~lib/array/Array<i32>#__get (; 14 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
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
  (if
   (i32.ge_u
    (get_local $1)
    (get_local $3)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 64)
     (i32.const 37)
    )
    (unreachable)
   )
  )
  (return
   (block $~lib/internal/arraybuffer/loadUnsafe<i32>|inlined.0 (result i32)
    (set_local $4
     (get_local $2)
    )
    (set_local $5
     (get_local $1)
    )
    (br $~lib/internal/arraybuffer/loadUnsafe<i32>|inlined.0
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
   )
  )
 )
 (func $~lib/array/Array<i32>#pop (; 15 ;) (type $ii) (param $0 i32) (result i32)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 139)
     (i32.const 20)
    )
    (unreachable)
   )
  )
  (set_local $4
   (block $~lib/internal/arraybuffer/loadUnsafe<i32>|inlined.1 (result i32)
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
    (br $~lib/internal/arraybuffer/loadUnsafe<i32>|inlined.1
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
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $1)
  )
  (return
   (get_local $4)
  )
 )
 (func $~lib/array/Array<i32>#unshift (; 16 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
    (nop)
    (if
     (i32.ge_u
      (get_local $4)
      (i32.const 268435454)
     )
     (block
      (call $abort
       (i32.const 0)
       (i32.const 4)
       (i32.const 188)
       (i32.const 42)
      )
      (unreachable)
     )
    )
    (set_local $2
     (call $~lib/internal/arraybuffer/reallocUnsafe
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
  (call $~lib/memory/move_memory
   (i32.add
    (i32.add
     (get_local $2)
     (i32.const 8)
    )
    (i32.const 4)
   )
   (i32.add
    (get_local $2)
    (i32.const 8)
   )
   (i32.shl
    (i32.sub
     (get_local $3)
     (i32.const 1)
    )
    (i32.const 2)
   )
  )
  (nop)
  (block $~lib/internal/arraybuffer/storeUnsafe<i32>|inlined.1
   (set_local $6
    (get_local $2)
   )
   (set_local $7
    (i32.const 0)
   )
   (set_local $8
    (get_local $1)
   )
   (i32.store offset=8
    (i32.add
     (get_local $6)
     (i32.shl
      (get_local $7)
      (i32.const 2)
     )
    )
    (get_local $8)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $5)
  )
  (return
   (get_local $5)
  )
 )
 (func $~lib/array/Array<i32>#shift (; 17 ;) (type $ii) (param $0 i32) (result i32)
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
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 159)
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
  (set_local $5
   (block $~lib/internal/arraybuffer/loadUnsafe<i32>|inlined.2 (result i32)
    (set_local $3
     (get_local $2)
    )
    (set_local $4
     (i32.const 0)
    )
    (br $~lib/internal/arraybuffer/loadUnsafe<i32>|inlined.2
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
  )
  (set_local $6
   (i32.sub
    (get_local $1)
    (i32.const 1)
   )
  )
  (call $~lib/memory/move_memory
   (i32.add
    (get_local $2)
    (i32.const 8)
   )
   (i32.add
    (i32.add
     (get_local $2)
     (i32.const 8)
    )
    (i32.const 4)
   )
   (i32.shl
    (get_local $6)
    (i32.const 2)
   )
  )
  (block $~lib/internal/arraybuffer/storeUnsafe<i32>|inlined.2
   (set_local $4
    (get_local $2)
   )
   (set_local $3
    (get_local $6)
   )
   (set_local $7
    (i32.const 0)
   )
   (i32.store offset=8
    (i32.add
     (get_local $4)
     (i32.shl
      (get_local $3)
      (i32.const 2)
     )
    )
    (get_local $7)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $6)
  )
  (return
   (get_local $5)
  )
 )
 (func $~lib/array/Array<i32>#reverse (; 18 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
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
   (loop $continue|0
    (if
     (i32.lt_s
      (get_local $2)
      (get_local $3)
     )
     (block
      (block
       (set_local $5
        (block $~lib/internal/arraybuffer/loadUnsafe<i32>|inlined.3 (result i32)
         (set_local $4
          (get_local $1)
         )
         (set_local $5
          (get_local $2)
         )
         (br $~lib/internal/arraybuffer/loadUnsafe<i32>|inlined.3
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
        )
       )
       (block $~lib/internal/arraybuffer/storeUnsafe<i32>|inlined.3
        (set_local $4
         (get_local $1)
        )
        (set_local $6
         (get_local $2)
        )
        (set_local $7
         (block $~lib/internal/arraybuffer/loadUnsafe<i32>|inlined.4 (result i32)
          (set_local $8
           (get_local $1)
          )
          (set_local $9
           (get_local $3)
          )
          (br $~lib/internal/arraybuffer/loadUnsafe<i32>|inlined.4
           (i32.load offset=8
            (i32.add
             (get_local $8)
             (i32.shl
              (get_local $9)
              (i32.const 2)
             )
            )
           )
          )
         )
        )
        (i32.store offset=8
         (i32.add
          (get_local $4)
          (i32.shl
           (get_local $6)
           (i32.const 2)
          )
         )
         (get_local $7)
        )
       )
       (block $~lib/internal/arraybuffer/storeUnsafe<i32>|inlined.4
        (set_local $7
         (get_local $1)
        )
        (set_local $6
         (get_local $3)
        )
        (set_local $4
         (get_local $5)
        )
        (i32.store offset=8
         (i32.add
          (get_local $7)
          (i32.shl
           (get_local $6)
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
      (br $continue|0)
     )
    )
   )
  )
  (return
   (get_local $0)
  )
 )
 (func $~lib/array/Array<i32>#indexOf (; 19 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   (i32.and
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
    (i32.const 1)
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
         (block $~lib/internal/arraybuffer/loadUnsafe<i32>|inlined.5 (result i32)
          (set_local $4
           (get_local $6)
          )
          (set_local $5
           (get_local $2)
          )
          (br $~lib/internal/arraybuffer/loadUnsafe<i32>|inlined.5
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
  (return
   (i32.const -1)
  )
 )
 (func $~lib/array/Array<i32>#indexOf|trampoline (; 20 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $oob
     (br_table $0of1 $1of1 $oob
      (i32.sub
       (get_global $~argc)
       (i32.const 1)
      )
     )
    )
    (unreachable)
   )
   (set_local $2
    (i32.const 0)
   )
  )
  (call $~lib/array/Array<i32>#indexOf
   (get_local $0)
   (get_local $1)
   (get_local $2)
  )
 )
 (func $~lib/array/Array<i32>#includes (; 21 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
   (i32.and
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
    (i32.const 1)
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
         (block $~lib/internal/arraybuffer/loadUnsafe<i32>|inlined.6 (result i32)
          (set_local $4
           (get_local $6)
          )
          (set_local $5
           (get_local $2)
          )
          (br $~lib/internal/arraybuffer/loadUnsafe<i32>|inlined.6
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
  (return
   (i32.const 0)
  )
 )
 (func $~lib/array/Array<i32>#includes|trampoline (; 22 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $oob
     (br_table $0of1 $1of1 $oob
      (i32.sub
       (get_global $~argc)
       (i32.const 1)
      )
     )
    )
    (unreachable)
   )
   (set_local $2
    (i32.const 0)
   )
  )
  (call $~lib/array/Array<i32>#includes
   (get_local $0)
   (get_local $1)
   (get_local $2)
  )
 )
 (func $~lib/array/Array<i32>#splice (; 23 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
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
  (call $~lib/memory/move_memory
   (i32.add
    (i32.add
     (get_local $6)
     (i32.const 8)
    )
    (i32.shl
     (get_local $1)
     (i32.const 2)
    )
   )
   (i32.add
    (i32.add
     (get_local $6)
     (i32.const 8)
    )
    (i32.shl
     (i32.add
      (get_local $1)
      (get_local $2)
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
 (func $~lib/array/Array<i32>#__set (; 24 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
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
    (nop)
    (if
     (i32.ge_u
      (get_local $1)
      (i32.const 268435454)
     )
     (block
      (call $abort
       (i32.const 0)
       (i32.const 4)
       (i32.const 75)
       (i32.const 41)
      )
      (unreachable)
     )
    )
    (set_local $3
     (call $~lib/internal/arraybuffer/reallocUnsafe
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
  (block $~lib/internal/arraybuffer/storeUnsafe<i32>|inlined.5
   (set_local $5
    (get_local $3)
   )
   (set_local $6
    (get_local $1)
   )
   (set_local $7
    (get_local $2)
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
 )
 (func $start~anonymous|0 (; 25 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.eq
   (get_local $0)
   (i32.const 0)
  )
 )
 (func $~lib/array/Array<i32>#findIndex (; 26 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
   (loop $continue|0
    (if
     (i32.and
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
      (i32.const 1)
     )
     (block
      (block
       (if
        (block (result i32)
         (set_global $~argc
          (i32.const 3)
         )
         (call_indirect (type $iiii)
          (block $~lib/internal/arraybuffer/loadUnsafe<i32>|inlined.7 (result i32)
           (set_local $5
            (get_local $2)
           )
           (set_local $6
            (get_local $3)
           )
           (br $~lib/internal/arraybuffer/loadUnsafe<i32>|inlined.7
            (i32.load offset=8
             (i32.add
              (get_local $5)
              (i32.shl
               (get_local $6)
               (i32.const 2)
              )
             )
            )
           )
          )
          (get_local $3)
          (get_local $0)
          (get_local $1)
         )
        )
        (return
         (get_local $3)
        )
       )
      )
      (set_local $3
       (i32.add
        (get_local $3)
        (i32.const 1)
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  (return
   (i32.const -1)
  )
 )
 (func $start~anonymous|1 (; 27 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.eq
   (get_local $0)
   (i32.const 1)
  )
 )
 (func $start~anonymous|2 (; 28 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.eq
   (get_local $0)
   (i32.const 100)
  )
 )
 (func $start~anonymous|3 (; 29 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (drop
   (call $~lib/array/Array<i32>#push
    (get_local $2)
    (i32.const 100)
   )
  )
  (return
   (i32.eq
    (get_local $0)
    (i32.const 100)
   )
  )
 )
 (func $start~anonymous|4 (; 30 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.eq
   (get_local $0)
   (i32.const 100)
  )
 )
 (func $start~anonymous|5 (; 31 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_local $2)
   )
  )
  (return
   (i32.eq
    (get_local $0)
    (i32.const 100)
   )
  )
 )
 (func $start~anonymous|6 (; 32 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.ge_s
   (get_local $0)
   (i32.const 0)
  )
 )
 (func $~lib/array/Array<i32>#every (; 33 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
   (loop $continue|0
    (if
     (i32.and
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
      (i32.const 1)
     )
     (block
      (block
       (if
        (i32.eqz
         (block (result i32)
          (set_global $~argc
           (i32.const 3)
          )
          (call_indirect (type $iiii)
           (block $~lib/internal/arraybuffer/loadUnsafe<i32>|inlined.8 (result i32)
            (set_local $5
             (get_local $2)
            )
            (set_local $6
             (get_local $3)
            )
            (br $~lib/internal/arraybuffer/loadUnsafe<i32>|inlined.8
             (i32.load offset=8
              (i32.add
               (get_local $5)
               (i32.shl
                (get_local $6)
                (i32.const 2)
               )
              )
             )
            )
           )
           (get_local $3)
           (get_local $0)
           (get_local $1)
          )
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
      (br $continue|0)
     )
    )
   )
  )
  (return
   (i32.const 1)
  )
 )
 (func $start~anonymous|7 (; 34 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.le_s
   (get_local $0)
   (i32.const 0)
  )
 )
 (func $start~anonymous|8 (; 35 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (drop
   (call $~lib/array/Array<i32>#push
    (get_local $2)
    (i32.const 100)
   )
  )
  (return
   (i32.lt_s
    (get_local $0)
    (i32.const 10)
   )
  )
 )
 (func $start~anonymous|9 (; 36 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.lt_s
   (get_local $0)
   (i32.const 10)
  )
 )
 (func $start~anonymous|10 (; 37 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_local $2)
   )
  )
  (return
   (i32.lt_s
    (get_local $0)
    (i32.const 3)
   )
  )
 )
 (func $start~anonymous|11 (; 38 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.ge_s
   (get_local $0)
   (i32.const 3)
  )
 )
 (func $~lib/array/Array<i32>#some (; 39 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
   (loop $continue|0
    (if
     (i32.and
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
      (i32.const 1)
     )
     (block
      (block
       (if
        (block (result i32)
         (set_global $~argc
          (i32.const 3)
         )
         (call_indirect (type $iiii)
          (block $~lib/internal/arraybuffer/loadUnsafe<i32>|inlined.9 (result i32)
           (set_local $5
            (get_local $2)
           )
           (set_local $6
            (get_local $3)
           )
           (br $~lib/internal/arraybuffer/loadUnsafe<i32>|inlined.9
            (i32.load offset=8
             (i32.add
              (get_local $5)
              (i32.shl
               (get_local $6)
               (i32.const 2)
              )
             )
            )
           )
          )
          (get_local $3)
          (get_local $0)
          (get_local $1)
         )
        )
        (return
         (i32.const 1)
        )
       )
      )
      (set_local $3
       (i32.add
        (get_local $3)
        (i32.const 1)
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  (return
   (i32.const 0)
  )
 )
 (func $start~anonymous|12 (; 40 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.le_s
   (get_local $0)
   (i32.const -1)
  )
 )
 (func $start~anonymous|13 (; 41 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (drop
   (call $~lib/array/Array<i32>#push
    (get_local $2)
    (i32.const 100)
   )
  )
  (return
   (i32.gt_s
    (get_local $0)
    (i32.const 10)
   )
  )
 )
 (func $start~anonymous|14 (; 42 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.gt_s
   (get_local $0)
   (i32.const 10)
  )
 )
 (func $start~anonymous|15 (; 43 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_local $2)
   )
  )
  (return
   (i32.gt_s
    (get_local $0)
    (i32.const 3)
   )
  )
 )
 (func $start~anonymous|16 (; 44 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (i32.add
   (get_local $0)
   (get_local $1)
  )
 )
 (func $~lib/array/Array<i32>#reduce<i32> (; 45 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
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
   (loop $continue|0
    (if
     (i32.and
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
      (i32.const 1)
     )
     (block
      (block
       (set_local $3
        (block (result i32)
         (set_global $~argc
          (i32.const 4)
         )
         (call_indirect (type $iiiii)
          (get_local $3)
          (block $~lib/internal/arraybuffer/loadUnsafe<i32>|inlined.10 (result i32)
           (set_local $7
            (get_local $4)
           )
           (set_local $8
            (get_local $5)
           )
           (br $~lib/internal/arraybuffer/loadUnsafe<i32>|inlined.10
            (i32.load offset=8
             (i32.add
              (get_local $7)
              (i32.shl
               (get_local $8)
               (i32.const 2)
              )
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
      )
      (set_local $5
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  (return
   (get_local $3)
  )
 )
 (func $start~anonymous|17 (; 46 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (i32.add
   (get_local $0)
   (get_local $1)
  )
 )
 (func $start~anonymous|18 (; 47 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (i32.and
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (i32.gt_s
     (get_local $1)
     (i32.const 2)
    )
   )
   (i32.const 1)
  )
 )
 (func $~lib/array/Array<i32>#reduce<bool> (; 48 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
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
   (loop $continue|0
    (if
     (i32.and
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
      (i32.const 1)
     )
     (block
      (block
       (set_local $3
        (block (result i32)
         (set_global $~argc
          (i32.const 4)
         )
         (call_indirect (type $iiiii)
          (get_local $3)
          (block $~lib/internal/arraybuffer/loadUnsafe<i32>|inlined.11 (result i32)
           (set_local $7
            (get_local $4)
           )
           (set_local $8
            (get_local $5)
           )
           (br $~lib/internal/arraybuffer/loadUnsafe<i32>|inlined.11
            (i32.load offset=8
             (i32.add
              (get_local $7)
              (i32.shl
               (get_local $8)
               (i32.const 2)
              )
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
      )
      (set_local $5
       (i32.add
        (get_local $5)
        (i32.const 1)
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  (return
   (get_local $3)
  )
 )
 (func $start~anonymous|19 (; 49 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (i32.and
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (i32.gt_s
     (get_local $1)
     (i32.const 100)
    )
   )
   (i32.const 1)
  )
 )
 (func $start~anonymous|20 (; 50 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (drop
   (call $~lib/array/Array<i32>#push
    (get_local $3)
    (i32.const 1)
   )
  )
  (return
   (i32.add
    (get_local $0)
    (get_local $1)
   )
  )
 )
 (func $start~anonymous|21 (; 51 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (i32.add
   (get_local $0)
   (get_local $1)
  )
 )
 (func $start~anonymous|22 (; 52 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (drop
   (call $~lib/array/Array<i32>#pop
    (get_local $3)
   )
  )
  (return
   (i32.add
    (get_local $0)
    (get_local $1)
   )
  )
 )
 (func $~lib/math/murmurHash3 (; 53 ;) (type $II) (param $0 i64) (result i64)
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
  (return
   (get_local $0)
  )
 )
 (func $~lib/math/NativeMath.seedRandom (; 54 ;) (type $Iv) (param $0 i64)
  (if
   (i64.eqz
    (get_local $0)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 124)
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
 (func $std/array/createReverseOrderedArray (; 55 ;) (type $ii) (param $0 i32) (result i32)
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
   (loop $continue|0
    (if
     (i32.lt_s
      (get_local $2)
      (call $~lib/array/Array<i32>#get:length
       (get_local $1)
      )
     )
     (block
      (block
       (call $~lib/array/Array<i32>#__set
        (get_local $1)
        (get_local $2)
        (i32.sub
         (i32.sub
          (call $~lib/array/Array<i32>#get:length
           (get_local $1)
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
      (br $continue|0)
     )
    )
   )
  )
  (return
   (get_local $1)
  )
 )
 (func $~lib/math/NativeMath.random (; 56 ;) (type $F) (result f64)
  (local $0 i64)
  (local $1 i64)
  (local $2 i64)
  (if
   (i32.eqz
    (get_global $~lib/math/random_seeded)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 124)
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
  (return
   (f64.sub
    (f64.reinterpret/i64
     (get_local $2)
    )
    (f64.const 1)
   )
  )
 )
 (func $std/array/createRandomOrderedArray (; 57 ;) (type $ii) (param $0 i32) (result i32)
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
   (loop $continue|0
    (if
     (i32.lt_s
      (get_local $2)
      (call $~lib/array/Array<i32>#get:length
       (get_local $1)
      )
     )
     (block
      (block
       (call $~lib/array/Array<i32>#__set
        (get_local $1)
        (get_local $2)
        (i32.trunc_s/f64
         (f64.mul
          (call $~lib/math/NativeMath.random)
          (f64.convert_s/i32
           (call $~lib/array/Array<i32>#get:length
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
      (br $continue|0)
     )
    )
   )
  )
  (return
   (get_local $1)
  )
 )
 (func $std/array/assertSortedDefault<i32>~anonymous|23 (; 58 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.sub
   (i32.gt_s
    (get_local $0)
    (get_local $1)
   )
   (i32.lt_s
    (get_local $0)
    (get_local $1)
   )
  )
 )
 (func $~lib/internal/array/insertionSort<i32> (; 59 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
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
     (call $~lib/array/Array<i32>#get:length
      (get_local $0)
     )
    )
   )
   (loop $continue|0
    (if
     (i32.lt_s
      (get_local $3)
      (get_local $4)
     )
     (block
      (block
       (set_local $6
        (block $~lib/internal/arraybuffer/loadUnsafe<i32>|inlined.14 (result i32)
         (set_local $5
          (get_local $2)
         )
         (set_local $6
          (get_local $3)
         )
         (br $~lib/internal/arraybuffer/loadUnsafe<i32>|inlined.14
          (i32.load offset=8
           (i32.add
            (get_local $5)
            (i32.shl
             (get_local $6)
             (i32.const 2)
            )
           )
          )
         )
        )
       )
       (set_local $5
        (i32.sub
         (get_local $3)
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
           (block
            (set_local $8
             (block $~lib/internal/arraybuffer/loadUnsafe<i32>|inlined.15 (result i32)
              (set_local $7
               (get_local $2)
              )
              (set_local $8
               (get_local $5)
              )
              (br $~lib/internal/arraybuffer/loadUnsafe<i32>|inlined.15
               (i32.load offset=8
                (i32.add
                 (get_local $7)
                 (i32.shl
                  (get_local $8)
                  (i32.const 2)
                 )
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
                (get_local $6)
                (get_local $8)
                (get_local $1)
               )
              )
              (i32.const 0)
             )
             (block $~lib/internal/arraybuffer/storeUnsafe<i32>|inlined.8
              (set_local $7
               (get_local $2)
              )
              (set_local $9
               (i32.add
                (block (result i32)
                 (set_local $10
                  (get_local $5)
                 )
                 (set_local $5
                  (i32.sub
                   (get_local $10)
                   (i32.const 1)
                  )
                 )
                 (get_local $10)
                )
                (i32.const 1)
               )
              )
              (set_local $10
               (get_local $8)
              )
              (i32.store offset=8
               (i32.add
                (get_local $7)
                (i32.shl
                 (get_local $9)
                 (i32.const 2)
                )
               )
               (get_local $10)
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
       (block $~lib/internal/arraybuffer/storeUnsafe<i32>|inlined.9
        (set_local $8
         (get_local $2)
        )
        (set_local $10
         (i32.add
          (get_local $5)
          (i32.const 1)
         )
        )
        (set_local $9
         (get_local $6)
        )
        (i32.store offset=8
         (i32.add
          (get_local $8)
          (i32.shl
           (get_local $10)
           (i32.const 2)
          )
         )
         (get_local $9)
        )
       )
      )
      (set_local $3
       (i32.add
        (get_local $3)
        (i32.const 1)
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  (return
   (get_local $0)
  )
 )
 (func $~lib/allocator/arena/free_memory (; 60 ;) (type $iv) (param $0 i32)
 )
 (func $~lib/internal/array/weakHeapSort<i32> (; 61 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  (nop)
  (set_local $2
   (call $~lib/array/Array<i32>#get:length
    (get_local $0)
   )
  )
  (set_local $3
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
  (set_local $4
   (call $~lib/allocator/arena/allocate_memory
    (get_local $3)
   )
  )
  (call $~lib/memory/set_memory
   (get_local $4)
   (i32.const 0)
   (get_local $3)
  )
  (set_local $5
   (i32.load
    (get_local $0)
   )
  )
  (block $break|0
   (set_local $6
    (i32.sub
     (get_local $2)
     (i32.const 1)
    )
   )
   (loop $continue|0
    (if
     (i32.gt_s
      (get_local $6)
      (i32.const 0)
     )
     (block
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
            (i32.shr_s
             (i32.load
              (i32.add
               (get_local $4)
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
       (set_local $10
        (block $~lib/internal/arraybuffer/loadUnsafe<i32>|inlined.16 (result i32)
         (set_local $9
          (get_local $5)
         )
         (set_local $10
          (get_local $8)
         )
         (br $~lib/internal/arraybuffer/loadUnsafe<i32>|inlined.16
          (i32.load offset=8
           (i32.add
            (get_local $9)
            (i32.shl
             (get_local $10)
             (i32.const 2)
            )
           )
          )
         )
        )
       )
       (set_local $11
        (block $~lib/internal/arraybuffer/loadUnsafe<i32>|inlined.17 (result i32)
         (set_local $9
          (get_local $5)
         )
         (set_local $11
          (get_local $6)
         )
         (br $~lib/internal/arraybuffer/loadUnsafe<i32>|inlined.17
          (i32.load offset=8
           (i32.add
            (get_local $9)
            (i32.shl
             (get_local $11)
             (i32.const 2)
            )
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
           (get_local $11)
           (get_local $1)
          )
         )
         (i32.const 0)
        )
        (block
         (i32.store
          (i32.add
           (get_local $4)
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
             (get_local $4)
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
         (block $~lib/internal/arraybuffer/storeUnsafe<i32>|inlined.10
          (set_local $9
           (get_local $5)
          )
          (set_local $12
           (get_local $6)
          )
          (set_local $13
           (get_local $10)
          )
          (i32.store offset=8
           (i32.add
            (get_local $9)
            (i32.shl
             (get_local $12)
             (i32.const 2)
            )
           )
           (get_local $13)
          )
         )
         (block $~lib/internal/arraybuffer/storeUnsafe<i32>|inlined.11
          (set_local $13
           (get_local $5)
          )
          (set_local $12
           (get_local $8)
          )
          (set_local $9
           (get_local $11)
          )
          (i32.store offset=8
           (i32.add
            (get_local $13)
            (i32.shl
             (get_local $12)
             (i32.const 2)
            )
           )
           (get_local $9)
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
      (br $continue|0)
     )
    )
   )
  )
  (block $break|2
   (set_local $6
    (i32.sub
     (get_local $2)
     (i32.const 1)
    )
   )
   (loop $continue|2
    (if
     (i32.ge_s
      (get_local $6)
      (i32.const 2)
     )
     (block
      (block
       (set_local $10
        (block $~lib/internal/arraybuffer/loadUnsafe<i32>|inlined.18 (result i32)
         (set_local $11
          (get_local $5)
         )
         (set_local $10
          (i32.const 0)
         )
         (br $~lib/internal/arraybuffer/loadUnsafe<i32>|inlined.18
          (i32.load offset=8
           (i32.add
            (get_local $11)
            (i32.shl
             (get_local $10)
             (i32.const 2)
            )
           )
          )
         )
        )
       )
       (block $~lib/internal/arraybuffer/storeUnsafe<i32>|inlined.12
        (set_local $11
         (get_local $5)
        )
        (set_local $8
         (i32.const 0)
        )
        (set_local $7
         (block $~lib/internal/arraybuffer/loadUnsafe<i32>|inlined.19 (result i32)
          (set_local $9
           (get_local $5)
          )
          (set_local $12
           (get_local $6)
          )
          (br $~lib/internal/arraybuffer/loadUnsafe<i32>|inlined.19
           (i32.load offset=8
            (i32.add
             (get_local $9)
             (i32.shl
              (get_local $12)
              (i32.const 2)
             )
            )
           )
          )
         )
        )
        (i32.store offset=8
         (i32.add
          (get_local $11)
          (i32.shl
           (get_local $8)
           (i32.const 2)
          )
         )
         (get_local $7)
        )
       )
       (block $~lib/internal/arraybuffer/storeUnsafe<i32>|inlined.13
        (set_local $7
         (get_local $5)
        )
        (set_local $8
         (get_local $6)
        )
        (set_local $11
         (get_local $10)
        )
        (i32.store offset=8
         (i32.add
          (get_local $7)
          (i32.shl
           (get_local $8)
           (i32.const 2)
          )
         )
         (get_local $11)
        )
       )
       (set_local $11
        (i32.const 1)
       )
       (block $break|3
        (loop $continue|3
         (if
          (i32.lt_s
           (tee_local $8
            (i32.add
             (i32.shl
              (get_local $11)
              (i32.const 1)
             )
             (i32.and
              (i32.shr_s
               (i32.load
                (i32.add
                 (get_local $4)
                 (i32.shl
                  (i32.shr_s
                   (get_local $11)
                   (i32.const 5)
                  )
                  (i32.const 2)
                 )
                )
               )
               (i32.and
                (get_local $11)
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
           (set_local $11
            (get_local $8)
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
           (get_local $11)
           (i32.const 0)
          )
          (block
           (block
            (set_local $10
             (block $~lib/internal/arraybuffer/loadUnsafe<i32>|inlined.20 (result i32)
              (set_local $7
               (get_local $5)
              )
              (set_local $12
               (i32.const 0)
              )
              (br $~lib/internal/arraybuffer/loadUnsafe<i32>|inlined.20
               (i32.load offset=8
                (i32.add
                 (get_local $7)
                 (i32.shl
                  (get_local $12)
                  (i32.const 2)
                 )
                )
               )
              )
             )
            )
            (set_local $7
             (block $~lib/internal/arraybuffer/loadUnsafe<i32>|inlined.21 (result i32)
              (set_local $12
               (get_local $5)
              )
              (set_local $7
               (get_local $11)
              )
              (br $~lib/internal/arraybuffer/loadUnsafe<i32>|inlined.21
               (i32.load offset=8
                (i32.add
                 (get_local $12)
                 (i32.shl
                  (get_local $7)
                  (i32.const 2)
                 )
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
                (get_local $1)
               )
              )
              (i32.const 0)
             )
             (block
              (i32.store
               (i32.add
                (get_local $4)
                (i32.shl
                 (i32.shr_s
                  (get_local $11)
                  (i32.const 5)
                 )
                 (i32.const 2)
                )
               )
               (i32.xor
                (i32.load
                 (i32.add
                  (get_local $4)
                  (i32.shl
                   (i32.shr_s
                    (get_local $11)
                    (i32.const 5)
                   )
                   (i32.const 2)
                  )
                 )
                )
                (i32.shl
                 (i32.const 1)
                 (i32.and
                  (get_local $11)
                  (i32.const 31)
                 )
                )
               )
              )
              (block $~lib/internal/arraybuffer/storeUnsafe<i32>|inlined.14
               (set_local $12
                (get_local $5)
               )
               (set_local $9
                (get_local $11)
               )
               (set_local $13
                (get_local $10)
               )
               (i32.store offset=8
                (i32.add
                 (get_local $12)
                 (i32.shl
                  (get_local $9)
                  (i32.const 2)
                 )
                )
                (get_local $13)
               )
              )
              (block $~lib/internal/arraybuffer/storeUnsafe<i32>|inlined.15
               (set_local $13
                (get_local $5)
               )
               (set_local $9
                (i32.const 0)
               )
               (set_local $12
                (get_local $7)
               )
               (i32.store offset=8
                (i32.add
                 (get_local $13)
                 (i32.shl
                  (get_local $9)
                  (i32.const 2)
                 )
                )
                (get_local $12)
               )
              )
             )
            )
            (set_local $11
             (i32.shr_s
              (get_local $11)
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
      (br $continue|2)
     )
    )
   )
  )
  (call $~lib/allocator/arena/free_memory
   (get_local $4)
  )
  (set_local $14
   (block $~lib/internal/arraybuffer/loadUnsafe<i32>|inlined.22 (result i32)
    (set_local $6
     (get_local $5)
    )
    (set_local $8
     (i32.const 1)
    )
    (br $~lib/internal/arraybuffer/loadUnsafe<i32>|inlined.22
     (i32.load offset=8
      (i32.add
       (get_local $6)
       (i32.shl
        (get_local $8)
        (i32.const 2)
       )
      )
     )
    )
   )
  )
  (block $~lib/internal/arraybuffer/storeUnsafe<i32>|inlined.16
   (set_local $8
    (get_local $5)
   )
   (set_local $6
    (i32.const 1)
   )
   (set_local $11
    (block $~lib/internal/arraybuffer/loadUnsafe<i32>|inlined.23 (result i32)
     (set_local $10
      (get_local $5)
     )
     (set_local $7
      (i32.const 0)
     )
     (br $~lib/internal/arraybuffer/loadUnsafe<i32>|inlined.23
      (i32.load offset=8
       (i32.add
        (get_local $10)
        (i32.shl
         (get_local $7)
         (i32.const 2)
        )
       )
      )
     )
    )
   )
   (i32.store offset=8
    (i32.add
     (get_local $8)
     (i32.shl
      (get_local $6)
      (i32.const 2)
     )
    )
    (get_local $11)
   )
  )
  (block $~lib/internal/arraybuffer/storeUnsafe<i32>|inlined.17
   (set_local $11
    (get_local $5)
   )
   (set_local $6
    (i32.const 0)
   )
   (set_local $8
    (get_local $14)
   )
   (i32.store offset=8
    (i32.add
     (get_local $11)
     (i32.shl
      (get_local $6)
      (i32.const 2)
     )
    )
    (get_local $8)
   )
  )
  (return
   (get_local $0)
  )
 )
 (func $~lib/array/Array<i32>#sort (; 62 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
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
     (block $~lib/internal/arraybuffer/loadUnsafe<i32>|inlined.12 (result i32)
      (set_local $4
       (get_local $3)
      )
      (set_local $5
       (i32.const 1)
      )
      (br $~lib/internal/arraybuffer/loadUnsafe<i32>|inlined.12
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
     )
    )
    (set_local $6
     (block $~lib/internal/arraybuffer/loadUnsafe<i32>|inlined.13 (result i32)
      (set_local $4
       (get_local $3)
      )
      (set_local $6
       (i32.const 0)
      )
      (br $~lib/internal/arraybuffer/loadUnsafe<i32>|inlined.13
       (i32.load offset=8
        (i32.add
         (get_local $4)
         (i32.shl
          (get_local $6)
          (i32.const 2)
         )
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
        (get_local $6)
        (get_local $1)
       )
      )
      (i32.const 0)
     )
     (block
      (block $~lib/internal/arraybuffer/storeUnsafe<i32>|inlined.6
       (set_local $4
        (get_local $3)
       )
       (set_local $7
        (i32.const 1)
       )
       (set_local $8
        (get_local $6)
       )
       (i32.store offset=8
        (i32.add
         (get_local $4)
         (i32.shl
          (get_local $7)
          (i32.const 2)
         )
        )
        (get_local $8)
       )
      )
      (block $~lib/internal/arraybuffer/storeUnsafe<i32>|inlined.7
       (set_local $8
        (get_local $3)
       )
       (set_local $7
        (i32.const 0)
       )
       (set_local $4
        (get_local $5)
       )
       (i32.store offset=8
        (i32.add
         (get_local $8)
         (i32.shl
          (get_local $7)
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
  (return
   (if (result i32)
    (i32.lt_s
     (get_local $2)
     (i32.const 256)
    )
    (call $~lib/internal/array/insertionSort<i32>
     (get_local $0)
     (get_local $1)
    )
    (call $~lib/internal/array/weakHeapSort<i32>
     (get_local $0)
     (get_local $1)
    )
   )
  )
 )
 (func $std/array/isSorted<i32> (; 63 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (block $break|0
   (block
    (set_local $2
     (i32.const 1)
    )
    (set_local $3
     (call $~lib/array/Array<i32>#get:length
      (get_local $0)
     )
    )
   )
   (loop $continue|0
    (if
     (i32.lt_s
      (get_local $2)
      (get_local $3)
     )
     (block
      (block
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
  )
  (return
   (i32.const 1)
  )
 )
 (func $std/array/assertSorted<i32> (; 64 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
     (i32.const 436)
     (i32.const 2)
    )
    (unreachable)
   )
  )
 )
 (func $std/array/assertSortedDefault<i32> (; 65 ;) (type $iv) (param $0 i32)
  (call $std/array/assertSorted<i32>
   (get_local $0)
   (block $~lib/internal/array/defaultComparator<i32>|inlined.0 (result i32)
    (br $~lib/internal/array/defaultComparator<i32>|inlined.0
     (i32.const 23)
    )
   )
  )
 )
 (func $std/array/isArraysEqual<i32> (; 66 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (if
   (i32.eqz
    (get_local $2)
   )
   (block
    (if
     (i32.ne
      (call $~lib/array/Array<i32>#get:length
       (get_local $0)
      )
      (call $~lib/array/Array<i32>#get:length
       (get_local $1)
      )
     )
     (return
      (i32.const 0)
     )
    )
    (set_local $2
     (call $~lib/array/Array<i32>#get:length
      (get_local $0)
     )
    )
   )
  )
  (block $break|0
   (set_local $3
    (i32.const 0)
   )
   (loop $continue|0
    (if
     (i32.lt_s
      (get_local $3)
      (get_local $2)
     )
     (block
      (block
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
      )
      (set_local $3
       (i32.add
        (get_local $3)
        (i32.const 1)
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  (return
   (i32.const 1)
  )
 )
 (func $std/array/isArraysEqual<i32>|trampoline (; 67 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $oob
     (br_table $0of1 $1of1 $oob
      (i32.sub
       (get_global $~argc)
       (i32.const 2)
      )
     )
    )
    (unreachable)
   )
   (set_local $2
    (i32.const 0)
   )
  )
  (call $std/array/isArraysEqual<i32>
   (get_local $0)
   (get_local $1)
   (get_local $2)
  )
 )
 (func $start~anonymous|24 (; 68 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.sub
   (get_local $0)
   (get_local $1)
  )
 )
 (func $start~anonymous|25 (; 69 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.sub
   (get_local $1)
   (get_local $0)
  )
 )
 (func $start~anonymous|26 (; 70 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.sub
   (get_local $0)
   (get_local $1)
  )
 )
 (func $start~anonymous|27 (; 71 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.sub
   (get_local $1)
   (get_local $0)
  )
 )
 (func $~lib/array/Array<Array<i32>>#constructor (; 72 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (block
   (nop)
   (if
    (i32.gt_u
     (get_local $1)
     (i32.const 268435454)
    )
    (block
     (call $abort
      (i32.const 0)
      (i32.const 4)
      (i32.const 23)
      (i32.const 39)
     )
     (unreachable)
    )
   )
   (i32.store
    (tee_local $0
     (if (result i32)
      (get_local $0)
      (get_local $0)
      (tee_local $0
       (block (result i32)
        (set_local $2
         (call $~lib/allocator/arena/allocate_memory
          (i32.const 8)
         )
        )
        (i32.store
         (get_local $2)
         (i32.const 0)
        )
        (i32.store offset=4
         (get_local $2)
         (i32.const 0)
        )
        (get_local $2)
       )
      )
     )
    )
    (call $~lib/internal/arraybuffer/allocUnsafe
     (i32.shl
      (get_local $1)
      (i32.const 2)
     )
    )
   )
   (i32.store offset=4
    (get_local $0)
    (get_local $1)
   )
  )
  (get_local $0)
 )
 (func $~lib/array/Array<Array<i32>>#get:length (; 73 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (i32.load offset=4
    (get_local $0)
   )
  )
 )
 (func $~lib/array/Array<Array<i32>>#__set (; 74 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
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
    (nop)
    (if
     (i32.ge_u
      (get_local $1)
      (i32.const 268435454)
     )
     (block
      (call $abort
       (i32.const 0)
       (i32.const 4)
       (i32.const 75)
       (i32.const 41)
      )
      (unreachable)
     )
    )
    (set_local $3
     (call $~lib/internal/arraybuffer/reallocUnsafe
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
  (block $~lib/internal/arraybuffer/storeUnsafe<Array<i32>>|inlined.0
   (set_local $5
    (get_local $3)
   )
   (set_local $6
    (get_local $1)
   )
   (set_local $7
    (get_local $2)
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
 )
 (func $~lib/array/Array<Array<i32>>#__get (; 75 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
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
  (if
   (i32.ge_u
    (get_local $1)
    (get_local $3)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 64)
     (i32.const 37)
    )
    (unreachable)
   )
  )
  (return
   (block $~lib/internal/arraybuffer/loadUnsafe<Array<i32>>|inlined.0 (result i32)
    (set_local $4
     (get_local $2)
    )
    (set_local $5
     (get_local $1)
    )
    (br $~lib/internal/arraybuffer/loadUnsafe<Array<i32>>|inlined.0
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
   )
  )
 )
 (func $std/array/createReverseOrderedNestedArray (; 76 ;) (type $ii) (param $0 i32) (result i32)
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
   (loop $continue|0
    (if
     (i32.lt_s
      (get_local $2)
      (call $~lib/array/Array<Array<i32>>#get:length
       (get_local $1)
      )
     )
     (block
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
          (call $~lib/array/Array<Array<i32>>#get:length
           (get_local $1)
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
      (br $continue|0)
     )
    )
   )
  )
  (return
   (get_local $1)
  )
 )
 (func $start~anonymous|28 (; 77 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/internal/array/insertionSort<Array<i32>> (; 78 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
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
     (call $~lib/array/Array<Array<i32>>#get:length
      (get_local $0)
     )
    )
   )
   (loop $continue|0
    (if
     (i32.lt_s
      (get_local $3)
      (get_local $4)
     )
     (block
      (block
       (set_local $6
        (block $~lib/internal/arraybuffer/loadUnsafe<Array<i32>>|inlined.3 (result i32)
         (set_local $5
          (get_local $2)
         )
         (set_local $6
          (get_local $3)
         )
         (br $~lib/internal/arraybuffer/loadUnsafe<Array<i32>>|inlined.3
          (i32.load offset=8
           (i32.add
            (get_local $5)
            (i32.shl
             (get_local $6)
             (i32.const 2)
            )
           )
          )
         )
        )
       )
       (set_local $5
        (i32.sub
         (get_local $3)
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
           (block
            (set_local $8
             (block $~lib/internal/arraybuffer/loadUnsafe<Array<i32>>|inlined.4 (result i32)
              (set_local $7
               (get_local $2)
              )
              (set_local $8
               (get_local $5)
              )
              (br $~lib/internal/arraybuffer/loadUnsafe<Array<i32>>|inlined.4
               (i32.load offset=8
                (i32.add
                 (get_local $7)
                 (i32.shl
                  (get_local $8)
                  (i32.const 2)
                 )
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
                (get_local $6)
                (get_local $8)
                (get_local $1)
               )
              )
              (i32.const 0)
             )
             (block $~lib/internal/arraybuffer/storeUnsafe<Array<i32>>|inlined.3
              (set_local $7
               (get_local $2)
              )
              (set_local $9
               (i32.add
                (block (result i32)
                 (set_local $10
                  (get_local $5)
                 )
                 (set_local $5
                  (i32.sub
                   (get_local $10)
                   (i32.const 1)
                  )
                 )
                 (get_local $10)
                )
                (i32.const 1)
               )
              )
              (set_local $10
               (get_local $8)
              )
              (i32.store offset=8
               (i32.add
                (get_local $7)
                (i32.shl
                 (get_local $9)
                 (i32.const 2)
                )
               )
               (get_local $10)
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
       (block $~lib/internal/arraybuffer/storeUnsafe<Array<i32>>|inlined.4
        (set_local $8
         (get_local $2)
        )
        (set_local $10
         (i32.add
          (get_local $5)
          (i32.const 1)
         )
        )
        (set_local $9
         (get_local $6)
        )
        (i32.store offset=8
         (i32.add
          (get_local $8)
          (i32.shl
           (get_local $10)
           (i32.const 2)
          )
         )
         (get_local $9)
        )
       )
      )
      (set_local $3
       (i32.add
        (get_local $3)
        (i32.const 1)
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  (return
   (get_local $0)
  )
 )
 (func $~lib/internal/array/weakHeapSort<Array<i32>> (; 79 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  (nop)
  (set_local $2
   (call $~lib/array/Array<Array<i32>>#get:length
    (get_local $0)
   )
  )
  (set_local $3
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
  (set_local $4
   (call $~lib/allocator/arena/allocate_memory
    (get_local $3)
   )
  )
  (call $~lib/memory/set_memory
   (get_local $4)
   (i32.const 0)
   (get_local $3)
  )
  (set_local $5
   (i32.load
    (get_local $0)
   )
  )
  (block $break|0
   (set_local $6
    (i32.sub
     (get_local $2)
     (i32.const 1)
    )
   )
   (loop $continue|0
    (if
     (i32.gt_s
      (get_local $6)
      (i32.const 0)
     )
     (block
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
            (i32.shr_s
             (i32.load
              (i32.add
               (get_local $4)
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
       (set_local $10
        (block $~lib/internal/arraybuffer/loadUnsafe<Array<i32>>|inlined.5 (result i32)
         (set_local $9
          (get_local $5)
         )
         (set_local $10
          (get_local $8)
         )
         (br $~lib/internal/arraybuffer/loadUnsafe<Array<i32>>|inlined.5
          (i32.load offset=8
           (i32.add
            (get_local $9)
            (i32.shl
             (get_local $10)
             (i32.const 2)
            )
           )
          )
         )
        )
       )
       (set_local $11
        (block $~lib/internal/arraybuffer/loadUnsafe<Array<i32>>|inlined.6 (result i32)
         (set_local $9
          (get_local $5)
         )
         (set_local $11
          (get_local $6)
         )
         (br $~lib/internal/arraybuffer/loadUnsafe<Array<i32>>|inlined.6
          (i32.load offset=8
           (i32.add
            (get_local $9)
            (i32.shl
             (get_local $11)
             (i32.const 2)
            )
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
           (get_local $11)
           (get_local $1)
          )
         )
         (i32.const 0)
        )
        (block
         (i32.store
          (i32.add
           (get_local $4)
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
             (get_local $4)
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
         (block $~lib/internal/arraybuffer/storeUnsafe<Array<i32>>|inlined.5
          (set_local $9
           (get_local $5)
          )
          (set_local $12
           (get_local $6)
          )
          (set_local $13
           (get_local $10)
          )
          (i32.store offset=8
           (i32.add
            (get_local $9)
            (i32.shl
             (get_local $12)
             (i32.const 2)
            )
           )
           (get_local $13)
          )
         )
         (block $~lib/internal/arraybuffer/storeUnsafe<Array<i32>>|inlined.6
          (set_local $13
           (get_local $5)
          )
          (set_local $12
           (get_local $8)
          )
          (set_local $9
           (get_local $11)
          )
          (i32.store offset=8
           (i32.add
            (get_local $13)
            (i32.shl
             (get_local $12)
             (i32.const 2)
            )
           )
           (get_local $9)
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
      (br $continue|0)
     )
    )
   )
  )
  (block $break|2
   (set_local $6
    (i32.sub
     (get_local $2)
     (i32.const 1)
    )
   )
   (loop $continue|2
    (if
     (i32.ge_s
      (get_local $6)
      (i32.const 2)
     )
     (block
      (block
       (set_local $10
        (block $~lib/internal/arraybuffer/loadUnsafe<Array<i32>>|inlined.7 (result i32)
         (set_local $11
          (get_local $5)
         )
         (set_local $10
          (i32.const 0)
         )
         (br $~lib/internal/arraybuffer/loadUnsafe<Array<i32>>|inlined.7
          (i32.load offset=8
           (i32.add
            (get_local $11)
            (i32.shl
             (get_local $10)
             (i32.const 2)
            )
           )
          )
         )
        )
       )
       (block $~lib/internal/arraybuffer/storeUnsafe<Array<i32>>|inlined.7
        (set_local $11
         (get_local $5)
        )
        (set_local $8
         (i32.const 0)
        )
        (set_local $7
         (block $~lib/internal/arraybuffer/loadUnsafe<Array<i32>>|inlined.8 (result i32)
          (set_local $9
           (get_local $5)
          )
          (set_local $12
           (get_local $6)
          )
          (br $~lib/internal/arraybuffer/loadUnsafe<Array<i32>>|inlined.8
           (i32.load offset=8
            (i32.add
             (get_local $9)
             (i32.shl
              (get_local $12)
              (i32.const 2)
             )
            )
           )
          )
         )
        )
        (i32.store offset=8
         (i32.add
          (get_local $11)
          (i32.shl
           (get_local $8)
           (i32.const 2)
          )
         )
         (get_local $7)
        )
       )
       (block $~lib/internal/arraybuffer/storeUnsafe<Array<i32>>|inlined.8
        (set_local $7
         (get_local $5)
        )
        (set_local $8
         (get_local $6)
        )
        (set_local $11
         (get_local $10)
        )
        (i32.store offset=8
         (i32.add
          (get_local $7)
          (i32.shl
           (get_local $8)
           (i32.const 2)
          )
         )
         (get_local $11)
        )
       )
       (set_local $11
        (i32.const 1)
       )
       (block $break|3
        (loop $continue|3
         (if
          (i32.lt_s
           (tee_local $8
            (i32.add
             (i32.shl
              (get_local $11)
              (i32.const 1)
             )
             (i32.and
              (i32.shr_s
               (i32.load
                (i32.add
                 (get_local $4)
                 (i32.shl
                  (i32.shr_s
                   (get_local $11)
                   (i32.const 5)
                  )
                  (i32.const 2)
                 )
                )
               )
               (i32.and
                (get_local $11)
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
           (set_local $11
            (get_local $8)
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
           (get_local $11)
           (i32.const 0)
          )
          (block
           (block
            (set_local $10
             (block $~lib/internal/arraybuffer/loadUnsafe<Array<i32>>|inlined.9 (result i32)
              (set_local $7
               (get_local $5)
              )
              (set_local $12
               (i32.const 0)
              )
              (br $~lib/internal/arraybuffer/loadUnsafe<Array<i32>>|inlined.9
               (i32.load offset=8
                (i32.add
                 (get_local $7)
                 (i32.shl
                  (get_local $12)
                  (i32.const 2)
                 )
                )
               )
              )
             )
            )
            (set_local $7
             (block $~lib/internal/arraybuffer/loadUnsafe<Array<i32>>|inlined.10 (result i32)
              (set_local $12
               (get_local $5)
              )
              (set_local $7
               (get_local $11)
              )
              (br $~lib/internal/arraybuffer/loadUnsafe<Array<i32>>|inlined.10
               (i32.load offset=8
                (i32.add
                 (get_local $12)
                 (i32.shl
                  (get_local $7)
                  (i32.const 2)
                 )
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
                (get_local $1)
               )
              )
              (i32.const 0)
             )
             (block
              (i32.store
               (i32.add
                (get_local $4)
                (i32.shl
                 (i32.shr_s
                  (get_local $11)
                  (i32.const 5)
                 )
                 (i32.const 2)
                )
               )
               (i32.xor
                (i32.load
                 (i32.add
                  (get_local $4)
                  (i32.shl
                   (i32.shr_s
                    (get_local $11)
                    (i32.const 5)
                   )
                   (i32.const 2)
                  )
                 )
                )
                (i32.shl
                 (i32.const 1)
                 (i32.and
                  (get_local $11)
                  (i32.const 31)
                 )
                )
               )
              )
              (block $~lib/internal/arraybuffer/storeUnsafe<Array<i32>>|inlined.9
               (set_local $12
                (get_local $5)
               )
               (set_local $9
                (get_local $11)
               )
               (set_local $13
                (get_local $10)
               )
               (i32.store offset=8
                (i32.add
                 (get_local $12)
                 (i32.shl
                  (get_local $9)
                  (i32.const 2)
                 )
                )
                (get_local $13)
               )
              )
              (block $~lib/internal/arraybuffer/storeUnsafe<Array<i32>>|inlined.10
               (set_local $13
                (get_local $5)
               )
               (set_local $9
                (i32.const 0)
               )
               (set_local $12
                (get_local $7)
               )
               (i32.store offset=8
                (i32.add
                 (get_local $13)
                 (i32.shl
                  (get_local $9)
                  (i32.const 2)
                 )
                )
                (get_local $12)
               )
              )
             )
            )
            (set_local $11
             (i32.shr_s
              (get_local $11)
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
      (br $continue|2)
     )
    )
   )
  )
  (call $~lib/allocator/arena/free_memory
   (get_local $4)
  )
  (set_local $14
   (block $~lib/internal/arraybuffer/loadUnsafe<Array<i32>>|inlined.11 (result i32)
    (set_local $6
     (get_local $5)
    )
    (set_local $8
     (i32.const 1)
    )
    (br $~lib/internal/arraybuffer/loadUnsafe<Array<i32>>|inlined.11
     (i32.load offset=8
      (i32.add
       (get_local $6)
       (i32.shl
        (get_local $8)
        (i32.const 2)
       )
      )
     )
    )
   )
  )
  (block $~lib/internal/arraybuffer/storeUnsafe<Array<i32>>|inlined.11
   (set_local $8
    (get_local $5)
   )
   (set_local $6
    (i32.const 1)
   )
   (set_local $11
    (block $~lib/internal/arraybuffer/loadUnsafe<Array<i32>>|inlined.12 (result i32)
     (set_local $10
      (get_local $5)
     )
     (set_local $7
      (i32.const 0)
     )
     (br $~lib/internal/arraybuffer/loadUnsafe<Array<i32>>|inlined.12
      (i32.load offset=8
       (i32.add
        (get_local $10)
        (i32.shl
         (get_local $7)
         (i32.const 2)
        )
       )
      )
     )
    )
   )
   (i32.store offset=8
    (i32.add
     (get_local $8)
     (i32.shl
      (get_local $6)
      (i32.const 2)
     )
    )
    (get_local $11)
   )
  )
  (block $~lib/internal/arraybuffer/storeUnsafe<Array<i32>>|inlined.12
   (set_local $11
    (get_local $5)
   )
   (set_local $6
    (i32.const 0)
   )
   (set_local $8
    (get_local $14)
   )
   (i32.store offset=8
    (i32.add
     (get_local $11)
     (i32.shl
      (get_local $6)
      (i32.const 2)
     )
    )
    (get_local $8)
   )
  )
  (return
   (get_local $0)
  )
 )
 (func $~lib/array/Array<Array<i32>>#sort (; 80 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
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
     (block $~lib/internal/arraybuffer/loadUnsafe<Array<i32>>|inlined.1 (result i32)
      (set_local $4
       (get_local $3)
      )
      (set_local $5
       (i32.const 1)
      )
      (br $~lib/internal/arraybuffer/loadUnsafe<Array<i32>>|inlined.1
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
     )
    )
    (set_local $6
     (block $~lib/internal/arraybuffer/loadUnsafe<Array<i32>>|inlined.2 (result i32)
      (set_local $4
       (get_local $3)
      )
      (set_local $6
       (i32.const 0)
      )
      (br $~lib/internal/arraybuffer/loadUnsafe<Array<i32>>|inlined.2
       (i32.load offset=8
        (i32.add
         (get_local $4)
         (i32.shl
          (get_local $6)
          (i32.const 2)
         )
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
        (get_local $6)
        (get_local $1)
       )
      )
      (i32.const 0)
     )
     (block
      (block $~lib/internal/arraybuffer/storeUnsafe<Array<i32>>|inlined.1
       (set_local $4
        (get_local $3)
       )
       (set_local $7
        (i32.const 1)
       )
       (set_local $8
        (get_local $6)
       )
       (i32.store offset=8
        (i32.add
         (get_local $4)
         (i32.shl
          (get_local $7)
          (i32.const 2)
         )
        )
        (get_local $8)
       )
      )
      (block $~lib/internal/arraybuffer/storeUnsafe<Array<i32>>|inlined.2
       (set_local $8
        (get_local $3)
       )
       (set_local $7
        (i32.const 0)
       )
       (set_local $4
        (get_local $5)
       )
       (i32.store offset=8
        (i32.add
         (get_local $8)
         (i32.shl
          (get_local $7)
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
  (return
   (if (result i32)
    (i32.lt_s
     (get_local $2)
     (i32.const 256)
    )
    (call $~lib/internal/array/insertionSort<Array<i32>>
     (get_local $0)
     (get_local $1)
    )
    (call $~lib/internal/array/weakHeapSort<Array<i32>>
     (get_local $0)
     (get_local $1)
    )
   )
  )
 )
 (func $std/array/isSorted<Array<i32>> (; 81 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (block $break|0
   (block
    (set_local $2
     (i32.const 1)
    )
    (set_local $3
     (call $~lib/array/Array<Array<i32>>#get:length
      (get_local $0)
     )
    )
   )
   (loop $continue|0
    (if
     (i32.lt_s
      (get_local $2)
      (get_local $3)
     )
     (block
      (block
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
  )
  (return
   (i32.const 1)
  )
 )
 (func $std/array/assertSorted<Array<i32>> (; 82 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
     (i32.const 436)
     (i32.const 2)
    )
    (unreachable)
   )
  )
 )
 (func $~lib/array/Array<Proxy<i32>>#constructor (; 83 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (block
   (nop)
   (if
    (i32.gt_u
     (get_local $1)
     (i32.const 268435454)
    )
    (block
     (call $abort
      (i32.const 0)
      (i32.const 4)
      (i32.const 23)
      (i32.const 39)
     )
     (unreachable)
    )
   )
   (i32.store
    (tee_local $0
     (if (result i32)
      (get_local $0)
      (get_local $0)
      (tee_local $0
       (block (result i32)
        (set_local $2
         (call $~lib/allocator/arena/allocate_memory
          (i32.const 8)
         )
        )
        (i32.store
         (get_local $2)
         (i32.const 0)
        )
        (i32.store offset=4
         (get_local $2)
         (i32.const 0)
        )
        (get_local $2)
       )
      )
     )
    )
    (call $~lib/internal/arraybuffer/allocUnsafe
     (i32.shl
      (get_local $1)
      (i32.const 2)
     )
    )
   )
   (i32.store offset=4
    (get_local $0)
    (get_local $1)
   )
  )
  (get_local $0)
 )
 (func $~lib/array/Array<Proxy<i32>>#get:length (; 84 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (i32.load offset=4
    (get_local $0)
   )
  )
 )
 (func $std/array/Proxy<i32>#constructor (; 85 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (block
  )
  (tee_local $0
   (if (result i32)
    (get_local $0)
    (get_local $0)
    (tee_local $0
     (block (result i32)
      (set_local $2
       (call $~lib/allocator/arena/allocate_memory
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
 (func $~lib/array/Array<Proxy<i32>>#__set (; 86 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
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
    (nop)
    (if
     (i32.ge_u
      (get_local $1)
      (i32.const 268435454)
     )
     (block
      (call $abort
       (i32.const 0)
       (i32.const 4)
       (i32.const 75)
       (i32.const 41)
      )
      (unreachable)
     )
    )
    (set_local $3
     (call $~lib/internal/arraybuffer/reallocUnsafe
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
  (block $~lib/internal/arraybuffer/storeUnsafe<Proxy<i32>>|inlined.0
   (set_local $5
    (get_local $3)
   )
   (set_local $6
    (get_local $1)
   )
   (set_local $7
    (get_local $2)
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
 )
 (func $std/array/createReverseOrderedElementsArray (; 87 ;) (type $ii) (param $0 i32) (result i32)
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
   (loop $continue|0
    (if
     (i32.lt_s
      (get_local $2)
      (call $~lib/array/Array<Proxy<i32>>#get:length
       (get_local $1)
      )
     )
     (block
      (block
       (call $~lib/array/Array<Proxy<i32>>#__set
        (get_local $1)
        (get_local $2)
        (call $std/array/Proxy<i32>#constructor
         (i32.const 0)
         (i32.sub
          (i32.sub
           (call $~lib/array/Array<Proxy<i32>>#get:length
            (get_local $1)
           )
           (i32.const 1)
          )
          (get_local $2)
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
      (br $continue|0)
     )
    )
   )
  )
  (return
   (get_local $1)
  )
 )
 (func $start~anonymous|29 (; 88 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.sub
   (i32.load
    (get_local $0)
   )
   (i32.load
    (get_local $1)
   )
  )
 )
 (func $~lib/internal/array/insertionSort<Proxy<i32>> (; 89 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
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
     (call $~lib/array/Array<Proxy<i32>>#get:length
      (get_local $0)
     )
    )
   )
   (loop $continue|0
    (if
     (i32.lt_s
      (get_local $3)
      (get_local $4)
     )
     (block
      (block
       (set_local $6
        (block $~lib/internal/arraybuffer/loadUnsafe<Proxy<i32>>|inlined.2 (result i32)
         (set_local $5
          (get_local $2)
         )
         (set_local $6
          (get_local $3)
         )
         (br $~lib/internal/arraybuffer/loadUnsafe<Proxy<i32>>|inlined.2
          (i32.load offset=8
           (i32.add
            (get_local $5)
            (i32.shl
             (get_local $6)
             (i32.const 2)
            )
           )
          )
         )
        )
       )
       (set_local $5
        (i32.sub
         (get_local $3)
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
           (block
            (set_local $8
             (block $~lib/internal/arraybuffer/loadUnsafe<Proxy<i32>>|inlined.3 (result i32)
              (set_local $7
               (get_local $2)
              )
              (set_local $8
               (get_local $5)
              )
              (br $~lib/internal/arraybuffer/loadUnsafe<Proxy<i32>>|inlined.3
               (i32.load offset=8
                (i32.add
                 (get_local $7)
                 (i32.shl
                  (get_local $8)
                  (i32.const 2)
                 )
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
                (get_local $6)
                (get_local $8)
                (get_local $1)
               )
              )
              (i32.const 0)
             )
             (block $~lib/internal/arraybuffer/storeUnsafe<Proxy<i32>>|inlined.3
              (set_local $7
               (get_local $2)
              )
              (set_local $9
               (i32.add
                (block (result i32)
                 (set_local $10
                  (get_local $5)
                 )
                 (set_local $5
                  (i32.sub
                   (get_local $10)
                   (i32.const 1)
                  )
                 )
                 (get_local $10)
                )
                (i32.const 1)
               )
              )
              (set_local $10
               (get_local $8)
              )
              (i32.store offset=8
               (i32.add
                (get_local $7)
                (i32.shl
                 (get_local $9)
                 (i32.const 2)
                )
               )
               (get_local $10)
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
       (block $~lib/internal/arraybuffer/storeUnsafe<Proxy<i32>>|inlined.4
        (set_local $8
         (get_local $2)
        )
        (set_local $10
         (i32.add
          (get_local $5)
          (i32.const 1)
         )
        )
        (set_local $9
         (get_local $6)
        )
        (i32.store offset=8
         (i32.add
          (get_local $8)
          (i32.shl
           (get_local $10)
           (i32.const 2)
          )
         )
         (get_local $9)
        )
       )
      )
      (set_local $3
       (i32.add
        (get_local $3)
        (i32.const 1)
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  (return
   (get_local $0)
  )
 )
 (func $~lib/internal/array/weakHeapSort<Proxy<i32>> (; 90 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  (nop)
  (set_local $2
   (call $~lib/array/Array<Proxy<i32>>#get:length
    (get_local $0)
   )
  )
  (set_local $3
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
  (set_local $4
   (call $~lib/allocator/arena/allocate_memory
    (get_local $3)
   )
  )
  (call $~lib/memory/set_memory
   (get_local $4)
   (i32.const 0)
   (get_local $3)
  )
  (set_local $5
   (i32.load
    (get_local $0)
   )
  )
  (block $break|0
   (set_local $6
    (i32.sub
     (get_local $2)
     (i32.const 1)
    )
   )
   (loop $continue|0
    (if
     (i32.gt_s
      (get_local $6)
      (i32.const 0)
     )
     (block
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
            (i32.shr_s
             (i32.load
              (i32.add
               (get_local $4)
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
       (set_local $10
        (block $~lib/internal/arraybuffer/loadUnsafe<Proxy<i32>>|inlined.4 (result i32)
         (set_local $9
          (get_local $5)
         )
         (set_local $10
          (get_local $8)
         )
         (br $~lib/internal/arraybuffer/loadUnsafe<Proxy<i32>>|inlined.4
          (i32.load offset=8
           (i32.add
            (get_local $9)
            (i32.shl
             (get_local $10)
             (i32.const 2)
            )
           )
          )
         )
        )
       )
       (set_local $11
        (block $~lib/internal/arraybuffer/loadUnsafe<Proxy<i32>>|inlined.5 (result i32)
         (set_local $9
          (get_local $5)
         )
         (set_local $11
          (get_local $6)
         )
         (br $~lib/internal/arraybuffer/loadUnsafe<Proxy<i32>>|inlined.5
          (i32.load offset=8
           (i32.add
            (get_local $9)
            (i32.shl
             (get_local $11)
             (i32.const 2)
            )
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
           (get_local $11)
           (get_local $1)
          )
         )
         (i32.const 0)
        )
        (block
         (i32.store
          (i32.add
           (get_local $4)
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
             (get_local $4)
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
         (block $~lib/internal/arraybuffer/storeUnsafe<Proxy<i32>>|inlined.5
          (set_local $9
           (get_local $5)
          )
          (set_local $12
           (get_local $6)
          )
          (set_local $13
           (get_local $10)
          )
          (i32.store offset=8
           (i32.add
            (get_local $9)
            (i32.shl
             (get_local $12)
             (i32.const 2)
            )
           )
           (get_local $13)
          )
         )
         (block $~lib/internal/arraybuffer/storeUnsafe<Proxy<i32>>|inlined.6
          (set_local $13
           (get_local $5)
          )
          (set_local $12
           (get_local $8)
          )
          (set_local $9
           (get_local $11)
          )
          (i32.store offset=8
           (i32.add
            (get_local $13)
            (i32.shl
             (get_local $12)
             (i32.const 2)
            )
           )
           (get_local $9)
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
      (br $continue|0)
     )
    )
   )
  )
  (block $break|2
   (set_local $6
    (i32.sub
     (get_local $2)
     (i32.const 1)
    )
   )
   (loop $continue|2
    (if
     (i32.ge_s
      (get_local $6)
      (i32.const 2)
     )
     (block
      (block
       (set_local $10
        (block $~lib/internal/arraybuffer/loadUnsafe<Proxy<i32>>|inlined.6 (result i32)
         (set_local $11
          (get_local $5)
         )
         (set_local $10
          (i32.const 0)
         )
         (br $~lib/internal/arraybuffer/loadUnsafe<Proxy<i32>>|inlined.6
          (i32.load offset=8
           (i32.add
            (get_local $11)
            (i32.shl
             (get_local $10)
             (i32.const 2)
            )
           )
          )
         )
        )
       )
       (block $~lib/internal/arraybuffer/storeUnsafe<Proxy<i32>>|inlined.7
        (set_local $11
         (get_local $5)
        )
        (set_local $8
         (i32.const 0)
        )
        (set_local $7
         (block $~lib/internal/arraybuffer/loadUnsafe<Proxy<i32>>|inlined.7 (result i32)
          (set_local $9
           (get_local $5)
          )
          (set_local $12
           (get_local $6)
          )
          (br $~lib/internal/arraybuffer/loadUnsafe<Proxy<i32>>|inlined.7
           (i32.load offset=8
            (i32.add
             (get_local $9)
             (i32.shl
              (get_local $12)
              (i32.const 2)
             )
            )
           )
          )
         )
        )
        (i32.store offset=8
         (i32.add
          (get_local $11)
          (i32.shl
           (get_local $8)
           (i32.const 2)
          )
         )
         (get_local $7)
        )
       )
       (block $~lib/internal/arraybuffer/storeUnsafe<Proxy<i32>>|inlined.8
        (set_local $7
         (get_local $5)
        )
        (set_local $8
         (get_local $6)
        )
        (set_local $11
         (get_local $10)
        )
        (i32.store offset=8
         (i32.add
          (get_local $7)
          (i32.shl
           (get_local $8)
           (i32.const 2)
          )
         )
         (get_local $11)
        )
       )
       (set_local $11
        (i32.const 1)
       )
       (block $break|3
        (loop $continue|3
         (if
          (i32.lt_s
           (tee_local $8
            (i32.add
             (i32.shl
              (get_local $11)
              (i32.const 1)
             )
             (i32.and
              (i32.shr_s
               (i32.load
                (i32.add
                 (get_local $4)
                 (i32.shl
                  (i32.shr_s
                   (get_local $11)
                   (i32.const 5)
                  )
                  (i32.const 2)
                 )
                )
               )
               (i32.and
                (get_local $11)
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
           (set_local $11
            (get_local $8)
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
           (get_local $11)
           (i32.const 0)
          )
          (block
           (block
            (set_local $10
             (block $~lib/internal/arraybuffer/loadUnsafe<Proxy<i32>>|inlined.8 (result i32)
              (set_local $7
               (get_local $5)
              )
              (set_local $12
               (i32.const 0)
              )
              (br $~lib/internal/arraybuffer/loadUnsafe<Proxy<i32>>|inlined.8
               (i32.load offset=8
                (i32.add
                 (get_local $7)
                 (i32.shl
                  (get_local $12)
                  (i32.const 2)
                 )
                )
               )
              )
             )
            )
            (set_local $7
             (block $~lib/internal/arraybuffer/loadUnsafe<Proxy<i32>>|inlined.9 (result i32)
              (set_local $12
               (get_local $5)
              )
              (set_local $7
               (get_local $11)
              )
              (br $~lib/internal/arraybuffer/loadUnsafe<Proxy<i32>>|inlined.9
               (i32.load offset=8
                (i32.add
                 (get_local $12)
                 (i32.shl
                  (get_local $7)
                  (i32.const 2)
                 )
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
                (get_local $1)
               )
              )
              (i32.const 0)
             )
             (block
              (i32.store
               (i32.add
                (get_local $4)
                (i32.shl
                 (i32.shr_s
                  (get_local $11)
                  (i32.const 5)
                 )
                 (i32.const 2)
                )
               )
               (i32.xor
                (i32.load
                 (i32.add
                  (get_local $4)
                  (i32.shl
                   (i32.shr_s
                    (get_local $11)
                    (i32.const 5)
                   )
                   (i32.const 2)
                  )
                 )
                )
                (i32.shl
                 (i32.const 1)
                 (i32.and
                  (get_local $11)
                  (i32.const 31)
                 )
                )
               )
              )
              (block $~lib/internal/arraybuffer/storeUnsafe<Proxy<i32>>|inlined.9
               (set_local $12
                (get_local $5)
               )
               (set_local $9
                (get_local $11)
               )
               (set_local $13
                (get_local $10)
               )
               (i32.store offset=8
                (i32.add
                 (get_local $12)
                 (i32.shl
                  (get_local $9)
                  (i32.const 2)
                 )
                )
                (get_local $13)
               )
              )
              (block $~lib/internal/arraybuffer/storeUnsafe<Proxy<i32>>|inlined.10
               (set_local $13
                (get_local $5)
               )
               (set_local $9
                (i32.const 0)
               )
               (set_local $12
                (get_local $7)
               )
               (i32.store offset=8
                (i32.add
                 (get_local $13)
                 (i32.shl
                  (get_local $9)
                  (i32.const 2)
                 )
                )
                (get_local $12)
               )
              )
             )
            )
            (set_local $11
             (i32.shr_s
              (get_local $11)
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
      (br $continue|2)
     )
    )
   )
  )
  (call $~lib/allocator/arena/free_memory
   (get_local $4)
  )
  (set_local $14
   (block $~lib/internal/arraybuffer/loadUnsafe<Proxy<i32>>|inlined.10 (result i32)
    (set_local $6
     (get_local $5)
    )
    (set_local $8
     (i32.const 1)
    )
    (br $~lib/internal/arraybuffer/loadUnsafe<Proxy<i32>>|inlined.10
     (i32.load offset=8
      (i32.add
       (get_local $6)
       (i32.shl
        (get_local $8)
        (i32.const 2)
       )
      )
     )
    )
   )
  )
  (block $~lib/internal/arraybuffer/storeUnsafe<Proxy<i32>>|inlined.11
   (set_local $8
    (get_local $5)
   )
   (set_local $6
    (i32.const 1)
   )
   (set_local $11
    (block $~lib/internal/arraybuffer/loadUnsafe<Proxy<i32>>|inlined.11 (result i32)
     (set_local $10
      (get_local $5)
     )
     (set_local $7
      (i32.const 0)
     )
     (br $~lib/internal/arraybuffer/loadUnsafe<Proxy<i32>>|inlined.11
      (i32.load offset=8
       (i32.add
        (get_local $10)
        (i32.shl
         (get_local $7)
         (i32.const 2)
        )
       )
      )
     )
    )
   )
   (i32.store offset=8
    (i32.add
     (get_local $8)
     (i32.shl
      (get_local $6)
      (i32.const 2)
     )
    )
    (get_local $11)
   )
  )
  (block $~lib/internal/arraybuffer/storeUnsafe<Proxy<i32>>|inlined.12
   (set_local $11
    (get_local $5)
   )
   (set_local $6
    (i32.const 0)
   )
   (set_local $8
    (get_local $14)
   )
   (i32.store offset=8
    (i32.add
     (get_local $11)
     (i32.shl
      (get_local $6)
      (i32.const 2)
     )
    )
    (get_local $8)
   )
  )
  (return
   (get_local $0)
  )
 )
 (func $~lib/array/Array<Proxy<i32>>#sort (; 91 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
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
     (block $~lib/internal/arraybuffer/loadUnsafe<Proxy<i32>>|inlined.0 (result i32)
      (set_local $4
       (get_local $3)
      )
      (set_local $5
       (i32.const 1)
      )
      (br $~lib/internal/arraybuffer/loadUnsafe<Proxy<i32>>|inlined.0
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
     )
    )
    (set_local $6
     (block $~lib/internal/arraybuffer/loadUnsafe<Proxy<i32>>|inlined.1 (result i32)
      (set_local $4
       (get_local $3)
      )
      (set_local $6
       (i32.const 0)
      )
      (br $~lib/internal/arraybuffer/loadUnsafe<Proxy<i32>>|inlined.1
       (i32.load offset=8
        (i32.add
         (get_local $4)
         (i32.shl
          (get_local $6)
          (i32.const 2)
         )
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
        (get_local $6)
        (get_local $1)
       )
      )
      (i32.const 0)
     )
     (block
      (block $~lib/internal/arraybuffer/storeUnsafe<Proxy<i32>>|inlined.1
       (set_local $4
        (get_local $3)
       )
       (set_local $7
        (i32.const 1)
       )
       (set_local $8
        (get_local $6)
       )
       (i32.store offset=8
        (i32.add
         (get_local $4)
         (i32.shl
          (get_local $7)
          (i32.const 2)
         )
        )
        (get_local $8)
       )
      )
      (block $~lib/internal/arraybuffer/storeUnsafe<Proxy<i32>>|inlined.2
       (set_local $8
        (get_local $3)
       )
       (set_local $7
        (i32.const 0)
       )
       (set_local $4
        (get_local $5)
       )
       (i32.store offset=8
        (i32.add
         (get_local $8)
         (i32.shl
          (get_local $7)
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
  (return
   (if (result i32)
    (i32.lt_s
     (get_local $2)
     (i32.const 256)
    )
    (call $~lib/internal/array/insertionSort<Proxy<i32>>
     (get_local $0)
     (get_local $1)
    )
    (call $~lib/internal/array/weakHeapSort<Proxy<i32>>
     (get_local $0)
     (get_local $1)
    )
   )
  )
 )
 (func $~lib/array/Array<Proxy<i32>>#__get (; 92 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
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
  (if
   (i32.ge_u
    (get_local $1)
    (get_local $3)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 64)
     (i32.const 37)
    )
    (unreachable)
   )
  )
  (return
   (block $~lib/internal/arraybuffer/loadUnsafe<Proxy<i32>>|inlined.12 (result i32)
    (set_local $4
     (get_local $2)
    )
    (set_local $5
     (get_local $1)
    )
    (br $~lib/internal/arraybuffer/loadUnsafe<Proxy<i32>>|inlined.12
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
   )
  )
 )
 (func $std/array/isSorted<Proxy<i32>> (; 93 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (block $break|0
   (block
    (set_local $2
     (i32.const 1)
    )
    (set_local $3
     (call $~lib/array/Array<Proxy<i32>>#get:length
      (get_local $0)
     )
    )
   )
   (loop $continue|0
    (if
     (i32.lt_s
      (get_local $2)
      (get_local $3)
     )
     (block
      (block
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
  )
  (return
   (i32.const 1)
  )
 )
 (func $std/array/assertSorted<Proxy<i32>> (; 94 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
     (i32.const 436)
     (i32.const 2)
    )
    (unreachable)
   )
  )
 )
 (func $~lib/memory/compare_memory (; 95 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (if
   (i32.eq
    (get_local $0)
    (get_local $1)
   )
   (return
    (i32.const 0)
   )
  )
  (block $break|0
   (loop $continue|0
    (if
     (if (result i32)
      (get_local $2)
      (i32.eq
       (i32.load8_u
        (get_local $0)
       )
       (i32.load8_u
        (get_local $1)
       )
      )
      (get_local $2)
     )
     (block
      (block
       (set_local $2
        (i32.sub
         (get_local $2)
         (i32.const 1)
        )
       )
       (set_local $0
        (i32.add
         (get_local $0)
         (i32.const 1)
        )
       )
       (set_local $1
        (i32.add
         (get_local $1)
         (i32.const 1)
        )
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  (return
   (if (result i32)
    (get_local $2)
    (i32.sub
     (i32.load8_u
      (get_local $0)
     )
     (i32.load8_u
      (get_local $1)
     )
    )
    (i32.const 0)
   )
  )
 )
 (func $~lib/string/String.__gt (; 96 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (if
   (i32.and
    (if (result i32)
     (tee_local $2
      (i32.and
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
       (i32.const 1)
      )
     )
     (get_local $2)
     (i32.eq
      (get_local $1)
      (i32.const 0)
     )
    )
    (i32.const 1)
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
  (return
   (i32.gt_s
    (call $~lib/memory/compare_memory
     (i32.add
      (get_local $0)
      (i32.const 4)
     )
     (i32.add
      (get_local $1)
      (i32.const 4)
     )
     (i32.shl
      (get_local $6)
      (i32.const 1)
     )
    )
    (i32.const 0)
   )
  )
 )
 (func $~lib/string/String.__lt (; 97 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (if
   (i32.and
    (if (result i32)
     (tee_local $2
      (i32.and
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
       (i32.const 1)
      )
     )
     (get_local $2)
     (i32.eq
      (get_local $1)
      (i32.const 0)
     )
    )
    (i32.const 1)
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
  (return
   (i32.lt_s
    (call $~lib/memory/compare_memory
     (i32.add
      (get_local $0)
      (i32.const 4)
     )
     (i32.add
      (get_local $1)
      (i32.const 4)
     )
     (i32.shl
      (get_local $6)
      (i32.const 1)
     )
    )
    (i32.const 0)
   )
  )
 )
 (func $start~anonymous|30 (; 98 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/array/Array<String>#get:length (; 99 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (i32.load offset=4
    (get_local $0)
   )
  )
 )
 (func $~lib/internal/array/insertionSort<String> (; 100 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
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
     (call $~lib/array/Array<String>#get:length
      (get_local $0)
     )
    )
   )
   (loop $continue|0
    (if
     (i32.lt_s
      (get_local $3)
      (get_local $4)
     )
     (block
      (block
       (set_local $6
        (block $~lib/internal/arraybuffer/loadUnsafe<String>|inlined.2 (result i32)
         (set_local $5
          (get_local $2)
         )
         (set_local $6
          (get_local $3)
         )
         (br $~lib/internal/arraybuffer/loadUnsafe<String>|inlined.2
          (i32.load offset=8
           (i32.add
            (get_local $5)
            (i32.shl
             (get_local $6)
             (i32.const 2)
            )
           )
          )
         )
        )
       )
       (set_local $5
        (i32.sub
         (get_local $3)
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
           (block
            (set_local $8
             (block $~lib/internal/arraybuffer/loadUnsafe<String>|inlined.3 (result i32)
              (set_local $7
               (get_local $2)
              )
              (set_local $8
               (get_local $5)
              )
              (br $~lib/internal/arraybuffer/loadUnsafe<String>|inlined.3
               (i32.load offset=8
                (i32.add
                 (get_local $7)
                 (i32.shl
                  (get_local $8)
                  (i32.const 2)
                 )
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
                (get_local $6)
                (get_local $8)
                (get_local $1)
               )
              )
              (i32.const 0)
             )
             (block $~lib/internal/arraybuffer/storeUnsafe<String>|inlined.2
              (set_local $7
               (get_local $2)
              )
              (set_local $9
               (i32.add
                (block (result i32)
                 (set_local $10
                  (get_local $5)
                 )
                 (set_local $5
                  (i32.sub
                   (get_local $10)
                   (i32.const 1)
                  )
                 )
                 (get_local $10)
                )
                (i32.const 1)
               )
              )
              (set_local $10
               (get_local $8)
              )
              (i32.store offset=8
               (i32.add
                (get_local $7)
                (i32.shl
                 (get_local $9)
                 (i32.const 2)
                )
               )
               (get_local $10)
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
       (block $~lib/internal/arraybuffer/storeUnsafe<String>|inlined.3
        (set_local $8
         (get_local $2)
        )
        (set_local $10
         (i32.add
          (get_local $5)
          (i32.const 1)
         )
        )
        (set_local $9
         (get_local $6)
        )
        (i32.store offset=8
         (i32.add
          (get_local $8)
          (i32.shl
           (get_local $10)
           (i32.const 2)
          )
         )
         (get_local $9)
        )
       )
      )
      (set_local $3
       (i32.add
        (get_local $3)
        (i32.const 1)
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  (return
   (get_local $0)
  )
 )
 (func $~lib/internal/array/weakHeapSort<String> (; 101 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
  (nop)
  (set_local $2
   (call $~lib/array/Array<String>#get:length
    (get_local $0)
   )
  )
  (set_local $3
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
  (set_local $4
   (call $~lib/allocator/arena/allocate_memory
    (get_local $3)
   )
  )
  (call $~lib/memory/set_memory
   (get_local $4)
   (i32.const 0)
   (get_local $3)
  )
  (set_local $5
   (i32.load
    (get_local $0)
   )
  )
  (block $break|0
   (set_local $6
    (i32.sub
     (get_local $2)
     (i32.const 1)
    )
   )
   (loop $continue|0
    (if
     (i32.gt_s
      (get_local $6)
      (i32.const 0)
     )
     (block
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
            (i32.shr_s
             (i32.load
              (i32.add
               (get_local $4)
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
       (set_local $10
        (block $~lib/internal/arraybuffer/loadUnsafe<String>|inlined.4 (result i32)
         (set_local $9
          (get_local $5)
         )
         (set_local $10
          (get_local $8)
         )
         (br $~lib/internal/arraybuffer/loadUnsafe<String>|inlined.4
          (i32.load offset=8
           (i32.add
            (get_local $9)
            (i32.shl
             (get_local $10)
             (i32.const 2)
            )
           )
          )
         )
        )
       )
       (set_local $11
        (block $~lib/internal/arraybuffer/loadUnsafe<String>|inlined.5 (result i32)
         (set_local $9
          (get_local $5)
         )
         (set_local $11
          (get_local $6)
         )
         (br $~lib/internal/arraybuffer/loadUnsafe<String>|inlined.5
          (i32.load offset=8
           (i32.add
            (get_local $9)
            (i32.shl
             (get_local $11)
             (i32.const 2)
            )
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
           (get_local $11)
           (get_local $1)
          )
         )
         (i32.const 0)
        )
        (block
         (i32.store
          (i32.add
           (get_local $4)
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
             (get_local $4)
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
         (block $~lib/internal/arraybuffer/storeUnsafe<String>|inlined.4
          (set_local $9
           (get_local $5)
          )
          (set_local $12
           (get_local $6)
          )
          (set_local $13
           (get_local $10)
          )
          (i32.store offset=8
           (i32.add
            (get_local $9)
            (i32.shl
             (get_local $12)
             (i32.const 2)
            )
           )
           (get_local $13)
          )
         )
         (block $~lib/internal/arraybuffer/storeUnsafe<String>|inlined.5
          (set_local $13
           (get_local $5)
          )
          (set_local $12
           (get_local $8)
          )
          (set_local $9
           (get_local $11)
          )
          (i32.store offset=8
           (i32.add
            (get_local $13)
            (i32.shl
             (get_local $12)
             (i32.const 2)
            )
           )
           (get_local $9)
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
      (br $continue|0)
     )
    )
   )
  )
  (block $break|2
   (set_local $6
    (i32.sub
     (get_local $2)
     (i32.const 1)
    )
   )
   (loop $continue|2
    (if
     (i32.ge_s
      (get_local $6)
      (i32.const 2)
     )
     (block
      (block
       (set_local $10
        (block $~lib/internal/arraybuffer/loadUnsafe<String>|inlined.6 (result i32)
         (set_local $11
          (get_local $5)
         )
         (set_local $10
          (i32.const 0)
         )
         (br $~lib/internal/arraybuffer/loadUnsafe<String>|inlined.6
          (i32.load offset=8
           (i32.add
            (get_local $11)
            (i32.shl
             (get_local $10)
             (i32.const 2)
            )
           )
          )
         )
        )
       )
       (block $~lib/internal/arraybuffer/storeUnsafe<String>|inlined.6
        (set_local $11
         (get_local $5)
        )
        (set_local $8
         (i32.const 0)
        )
        (set_local $7
         (block $~lib/internal/arraybuffer/loadUnsafe<String>|inlined.7 (result i32)
          (set_local $9
           (get_local $5)
          )
          (set_local $12
           (get_local $6)
          )
          (br $~lib/internal/arraybuffer/loadUnsafe<String>|inlined.7
           (i32.load offset=8
            (i32.add
             (get_local $9)
             (i32.shl
              (get_local $12)
              (i32.const 2)
             )
            )
           )
          )
         )
        )
        (i32.store offset=8
         (i32.add
          (get_local $11)
          (i32.shl
           (get_local $8)
           (i32.const 2)
          )
         )
         (get_local $7)
        )
       )
       (block $~lib/internal/arraybuffer/storeUnsafe<String>|inlined.7
        (set_local $7
         (get_local $5)
        )
        (set_local $8
         (get_local $6)
        )
        (set_local $11
         (get_local $10)
        )
        (i32.store offset=8
         (i32.add
          (get_local $7)
          (i32.shl
           (get_local $8)
           (i32.const 2)
          )
         )
         (get_local $11)
        )
       )
       (set_local $11
        (i32.const 1)
       )
       (block $break|3
        (loop $continue|3
         (if
          (i32.lt_s
           (tee_local $8
            (i32.add
             (i32.shl
              (get_local $11)
              (i32.const 1)
             )
             (i32.and
              (i32.shr_s
               (i32.load
                (i32.add
                 (get_local $4)
                 (i32.shl
                  (i32.shr_s
                   (get_local $11)
                   (i32.const 5)
                  )
                  (i32.const 2)
                 )
                )
               )
               (i32.and
                (get_local $11)
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
           (set_local $11
            (get_local $8)
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
           (get_local $11)
           (i32.const 0)
          )
          (block
           (block
            (set_local $10
             (block $~lib/internal/arraybuffer/loadUnsafe<String>|inlined.8 (result i32)
              (set_local $7
               (get_local $5)
              )
              (set_local $12
               (i32.const 0)
              )
              (br $~lib/internal/arraybuffer/loadUnsafe<String>|inlined.8
               (i32.load offset=8
                (i32.add
                 (get_local $7)
                 (i32.shl
                  (get_local $12)
                  (i32.const 2)
                 )
                )
               )
              )
             )
            )
            (set_local $7
             (block $~lib/internal/arraybuffer/loadUnsafe<String>|inlined.9 (result i32)
              (set_local $12
               (get_local $5)
              )
              (set_local $7
               (get_local $11)
              )
              (br $~lib/internal/arraybuffer/loadUnsafe<String>|inlined.9
               (i32.load offset=8
                (i32.add
                 (get_local $12)
                 (i32.shl
                  (get_local $7)
                  (i32.const 2)
                 )
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
                (get_local $1)
               )
              )
              (i32.const 0)
             )
             (block
              (i32.store
               (i32.add
                (get_local $4)
                (i32.shl
                 (i32.shr_s
                  (get_local $11)
                  (i32.const 5)
                 )
                 (i32.const 2)
                )
               )
               (i32.xor
                (i32.load
                 (i32.add
                  (get_local $4)
                  (i32.shl
                   (i32.shr_s
                    (get_local $11)
                    (i32.const 5)
                   )
                   (i32.const 2)
                  )
                 )
                )
                (i32.shl
                 (i32.const 1)
                 (i32.and
                  (get_local $11)
                  (i32.const 31)
                 )
                )
               )
              )
              (block $~lib/internal/arraybuffer/storeUnsafe<String>|inlined.8
               (set_local $12
                (get_local $5)
               )
               (set_local $9
                (get_local $11)
               )
               (set_local $13
                (get_local $10)
               )
               (i32.store offset=8
                (i32.add
                 (get_local $12)
                 (i32.shl
                  (get_local $9)
                  (i32.const 2)
                 )
                )
                (get_local $13)
               )
              )
              (block $~lib/internal/arraybuffer/storeUnsafe<String>|inlined.9
               (set_local $13
                (get_local $5)
               )
               (set_local $9
                (i32.const 0)
               )
               (set_local $12
                (get_local $7)
               )
               (i32.store offset=8
                (i32.add
                 (get_local $13)
                 (i32.shl
                  (get_local $9)
                  (i32.const 2)
                 )
                )
                (get_local $12)
               )
              )
             )
            )
            (set_local $11
             (i32.shr_s
              (get_local $11)
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
      (br $continue|2)
     )
    )
   )
  )
  (call $~lib/allocator/arena/free_memory
   (get_local $4)
  )
  (set_local $14
   (block $~lib/internal/arraybuffer/loadUnsafe<String>|inlined.10 (result i32)
    (set_local $6
     (get_local $5)
    )
    (set_local $8
     (i32.const 1)
    )
    (br $~lib/internal/arraybuffer/loadUnsafe<String>|inlined.10
     (i32.load offset=8
      (i32.add
       (get_local $6)
       (i32.shl
        (get_local $8)
        (i32.const 2)
       )
      )
     )
    )
   )
  )
  (block $~lib/internal/arraybuffer/storeUnsafe<String>|inlined.10
   (set_local $8
    (get_local $5)
   )
   (set_local $6
    (i32.const 1)
   )
   (set_local $11
    (block $~lib/internal/arraybuffer/loadUnsafe<String>|inlined.11 (result i32)
     (set_local $10
      (get_local $5)
     )
     (set_local $7
      (i32.const 0)
     )
     (br $~lib/internal/arraybuffer/loadUnsafe<String>|inlined.11
      (i32.load offset=8
       (i32.add
        (get_local $10)
        (i32.shl
         (get_local $7)
         (i32.const 2)
        )
       )
      )
     )
    )
   )
   (i32.store offset=8
    (i32.add
     (get_local $8)
     (i32.shl
      (get_local $6)
      (i32.const 2)
     )
    )
    (get_local $11)
   )
  )
  (block $~lib/internal/arraybuffer/storeUnsafe<String>|inlined.11
   (set_local $11
    (get_local $5)
   )
   (set_local $6
    (i32.const 0)
   )
   (set_local $8
    (get_local $14)
   )
   (i32.store offset=8
    (i32.add
     (get_local $11)
     (i32.shl
      (get_local $6)
      (i32.const 2)
     )
    )
    (get_local $8)
   )
  )
  (return
   (get_local $0)
  )
 )
 (func $~lib/array/Array<String>#sort (; 102 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
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
     (block $~lib/internal/arraybuffer/loadUnsafe<String>|inlined.0 (result i32)
      (set_local $4
       (get_local $3)
      )
      (set_local $5
       (i32.const 1)
      )
      (br $~lib/internal/arraybuffer/loadUnsafe<String>|inlined.0
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
     )
    )
    (set_local $6
     (block $~lib/internal/arraybuffer/loadUnsafe<String>|inlined.1 (result i32)
      (set_local $4
       (get_local $3)
      )
      (set_local $6
       (i32.const 0)
      )
      (br $~lib/internal/arraybuffer/loadUnsafe<String>|inlined.1
       (i32.load offset=8
        (i32.add
         (get_local $4)
         (i32.shl
          (get_local $6)
          (i32.const 2)
         )
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
        (get_local $6)
        (get_local $1)
       )
      )
      (i32.const 0)
     )
     (block
      (block $~lib/internal/arraybuffer/storeUnsafe<String>|inlined.0
       (set_local $4
        (get_local $3)
       )
       (set_local $7
        (i32.const 1)
       )
       (set_local $8
        (get_local $6)
       )
       (i32.store offset=8
        (i32.add
         (get_local $4)
         (i32.shl
          (get_local $7)
          (i32.const 2)
         )
        )
        (get_local $8)
       )
      )
      (block $~lib/internal/arraybuffer/storeUnsafe<String>|inlined.1
       (set_local $8
        (get_local $3)
       )
       (set_local $7
        (i32.const 0)
       )
       (set_local $4
        (get_local $5)
       )
       (i32.store offset=8
        (i32.add
         (get_local $8)
         (i32.shl
          (get_local $7)
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
  (return
   (if (result i32)
    (i32.lt_s
     (get_local $2)
     (i32.const 256)
    )
    (call $~lib/internal/array/insertionSort<String>
     (get_local $0)
     (get_local $1)
    )
    (call $~lib/internal/array/weakHeapSort<String>
     (get_local $0)
     (get_local $1)
    )
   )
  )
 )
 (func $~lib/array/Array<String>#__get (; 103 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
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
  (if
   (i32.ge_u
    (get_local $1)
    (get_local $3)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 64)
     (i32.const 37)
    )
    (unreachable)
   )
  )
  (return
   (block $~lib/internal/arraybuffer/loadUnsafe<String>|inlined.12 (result i32)
    (set_local $4
     (get_local $2)
    )
    (set_local $5
     (get_local $1)
    )
    (br $~lib/internal/arraybuffer/loadUnsafe<String>|inlined.12
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
   )
  )
 )
 (func $std/array/isSorted<String> (; 104 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (block $break|0
   (block
    (set_local $2
     (i32.const 1)
    )
    (set_local $3
     (call $~lib/array/Array<String>#get:length
      (get_local $0)
     )
    )
   )
   (loop $continue|0
    (if
     (i32.lt_s
      (get_local $2)
      (get_local $3)
     )
     (block
      (block
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
  )
  (return
   (i32.const 1)
  )
 )
 (func $std/array/assertSorted<String> (; 105 ;) (type $iiv) (param $0 i32) (param $1 i32)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
     (i32.const 436)
     (i32.const 2)
    )
    (unreachable)
   )
  )
 )
 (func $~lib/string/String.__eq (; 106 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
   (i32.and
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
    (i32.const 1)
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
  (return
   (i32.eqz
    (call $~lib/memory/compare_memory
     (i32.add
      (get_local $0)
      (i32.const 4)
     )
     (i32.add
      (get_local $1)
      (i32.const 4)
     )
     (i32.shl
      (get_local $3)
      (i32.const 1)
     )
    )
   )
  )
 )
 (func $~lib/string/String.__ne (; 107 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (return
   (i32.eqz
    (call $~lib/string/String.__eq
     (get_local $0)
     (get_local $1)
    )
   )
  )
 )
 (func $std/array/isArraysEqual<String> (; 108 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (if
   (i32.eqz
    (get_local $2)
   )
   (block
    (if
     (i32.ne
      (call $~lib/array/Array<String>#get:length
       (get_local $0)
      )
      (call $~lib/array/Array<String>#get:length
       (get_local $1)
      )
     )
     (return
      (i32.const 0)
     )
    )
    (set_local $2
     (call $~lib/array/Array<String>#get:length
      (get_local $0)
     )
    )
   )
  )
  (block $break|0
   (set_local $3
    (i32.const 0)
   )
   (loop $continue|0
    (if
     (i32.lt_s
      (get_local $3)
      (get_local $2)
     )
     (block
      (block
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
      )
      (set_local $3
       (i32.add
        (get_local $3)
        (i32.const 1)
       )
      )
      (br $continue|0)
     )
    )
   )
  )
  (return
   (i32.const 1)
  )
 )
 (func $std/array/isArraysEqual<String>|trampoline (; 109 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (block $1of1
   (block $0of1
    (block $oob
     (br_table $0of1 $1of1 $oob
      (i32.sub
       (get_global $~argc)
       (i32.const 2)
      )
     )
    )
    (unreachable)
   )
   (set_local $2
    (i32.const 0)
   )
  )
  (call $std/array/isArraysEqual<String>
   (get_local $0)
   (get_local $1)
   (get_local $2)
  )
 )
 (func $~lib/array/Array<String>#constructor (; 110 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (block
   (nop)
   (if
    (i32.gt_u
     (get_local $1)
     (i32.const 268435454)
    )
    (block
     (call $abort
      (i32.const 0)
      (i32.const 4)
      (i32.const 23)
      (i32.const 39)
     )
     (unreachable)
    )
   )
   (i32.store
    (tee_local $0
     (if (result i32)
      (get_local $0)
      (get_local $0)
      (tee_local $0
       (block (result i32)
        (set_local $2
         (call $~lib/allocator/arena/allocate_memory
          (i32.const 8)
         )
        )
        (i32.store
         (get_local $2)
         (i32.const 0)
        )
        (i32.store offset=4
         (get_local $2)
         (i32.const 0)
        )
        (get_local $2)
       )
      )
     )
    )
    (call $~lib/internal/arraybuffer/allocUnsafe
     (i32.shl
      (get_local $1)
      (i32.const 2)
     )
    )
   )
   (i32.store offset=4
    (get_local $0)
    (get_local $1)
   )
  )
  (get_local $0)
 )
 (func $~lib/internal/string/allocate (; 111 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (if
   (i32.eqz
    (i32.and
     (if (result i32)
      (tee_local $1
       (i32.gt_s
        (get_local $0)
        (i32.const 0)
       )
      )
      (i32.le_s
       (get_local $0)
       (i32.const 536870910)
      )
      (get_local $1)
     )
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 736)
     (i32.const 20)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (set_local $2
   (call $~lib/allocator/arena/allocate_memory
    (i32.add
     (i32.const 4)
     (i32.shl
      (get_local $0)
      (i32.const 1)
     )
    )
   )
  )
  (i32.store
   (get_local $2)
   (get_local $0)
  )
  (return
   (get_local $2)
  )
 )
 (func $~lib/string/String#charAt (; 112 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (if
   (i32.eqz
    (i32.ne
     (get_local $0)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 704)
     (i32.const 18)
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
    (i32.const 552)
   )
  )
  (set_local $2
   (call $~lib/internal/string/allocate
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
  (return
   (get_local $2)
  )
 )
 (func $~lib/string/String#concat (; 113 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
    (call $abort
     (i32.const 0)
     (i32.const 704)
     (i32.const 74)
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
    (i32.const 788)
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
    (i32.const 552)
   )
  )
  (set_local $5
   (call $~lib/internal/string/allocate
    (get_local $4)
   )
  )
  (call $~lib/memory/move_memory
   (i32.add
    (get_local $5)
    (i32.const 4)
   )
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (i32.shl
    (get_local $2)
    (i32.const 1)
   )
  )
  (call $~lib/memory/move_memory
   (i32.add
    (i32.add
     (get_local $5)
     (i32.const 4)
    )
    (i32.shl
     (get_local $2)
     (i32.const 1)
    )
   )
   (i32.add
    (get_local $1)
    (i32.const 4)
   )
   (i32.shl
    (get_local $3)
    (i32.const 1)
   )
  )
  (return
   (get_local $5)
  )
 )
 (func $~lib/string/String.__concat (; 114 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (set_local $0
    (i32.const 788)
   )
  )
  (return
   (call $~lib/string/String#concat
    (get_local $0)
    (get_local $1)
   )
  )
 )
 (func $std/array/createRandomString (; 115 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 f64)
  (set_local $1
   (i32.const 552)
  )
  (block $break|0
   (set_local $2
    (i32.const 0)
   )
   (loop $continue|0
    (if
     (i32.lt_s
      (get_local $2)
      (get_local $0)
     )
     (block
      (block
       (set_local $1
        (call $~lib/string/String.__concat
         (get_local $1)
         (call $~lib/string/String#charAt
          (i32.const 152)
          (i32.trunc_s/f64
           (block $~lib/math/NativeMath.floor|inlined.0 (result f64)
            (set_local $3
             (f64.mul
              (call $~lib/math/NativeMath.random)
              (f64.convert_s/i32
               (i32.load
                (i32.const 152)
               )
              )
             )
            )
            (br $~lib/math/NativeMath.floor|inlined.0
             (f64.floor
              (get_local $3)
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
      (br $continue|0)
     )
    )
   )
  )
  (return
   (get_local $1)
  )
 )
 (func $~lib/array/Array<String>#__set (; 116 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
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
    (nop)
    (if
     (i32.ge_u
      (get_local $1)
      (i32.const 268435454)
     )
     (block
      (call $abort
       (i32.const 0)
       (i32.const 4)
       (i32.const 75)
       (i32.const 41)
      )
      (unreachable)
     )
    )
    (set_local $3
     (call $~lib/internal/arraybuffer/reallocUnsafe
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
  (block $~lib/internal/arraybuffer/storeUnsafe<String>|inlined.12
   (set_local $5
    (get_local $3)
   )
   (set_local $6
    (get_local $1)
   )
   (set_local $7
    (get_local $2)
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
 )
 (func $std/array/createRandomStringArray (; 117 ;) (type $ii) (param $0 i32) (result i32)
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
   (loop $continue|0
    (if
     (i32.lt_s
      (get_local $2)
      (call $~lib/array/Array<String>#get:length
       (get_local $1)
      )
     )
     (block
      (block
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
  )
  (return
   (get_local $1)
  )
 )
 (func $start~anonymous|31 (; 118 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $start (; 119 ;) (type $v)
  (set_global $~lib/allocator/arena/startOffset
   (i32.and
    (i32.add
     (get_global $HEAP_BASE)
     (i32.const 7)
    )
    (i32.xor
     (i32.const 7)
     (i32.const -1)
    )
   )
  )
  (set_global $~lib/allocator/arena/offset
   (get_global $~lib/allocator/arena/startOffset)
  )
  (set_global $std/array/arr
   (block (result i32)
    (set_global $~argc
     (i32.const 0)
    )
    (call $~lib/array/Array<i32>#constructor|trampoline
     (i32.const 0)
     (i32.const 0)
    )
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#get:length
      (get_global $std/array/arr)
     )
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
     (i32.const 22)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#get:length
      (get_global $std/array/arr)
     )
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
     (i32.const 28)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#get:length
      (get_global $std/array/arr)
     )
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
     (call $~lib/array/Array<i32>#get:length
      (get_global $std/array/arr)
     )
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
     (call $~lib/array/Array<i32>#get:length
      (get_global $std/array/arr)
     )
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
     (call $~lib/array/Array<i32>#get:length
      (get_global $std/array/arr)
     )
     (i32.const 3)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
     (call $~lib/array/Array<i32>#get:length
      (get_global $std/array/arr)
     )
     (i32.const 4)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
     (call $~lib/array/Array<i32>#get:length
      (get_global $std/array/arr)
     )
     (i32.const 5)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
     (i32.const 78)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#get:length
      (get_global $std/array/arr)
     )
     (i32.const 4)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
     (i32.const 88)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#get:length
      (get_global $std/array/arr)
     )
     (i32.const 3)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
     (call $~lib/array/Array<i32>#get:length
      (get_global $std/array/arr)
     )
     (i32.const 3)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
   (block (result i32)
    (set_global $~argc
     (i32.const 1)
    )
    (call $~lib/array/Array<i32>#indexOf|trampoline
     (get_global $std/array/arr)
     (i32.const 44)
     (i32.const 0)
    )
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
     (i32.const 112)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (block (result i32)
    (set_global $~argc
     (i32.const 1)
    )
    (call $~lib/array/Array<i32>#indexOf|trampoline
     (get_global $std/array/arr)
     (i32.const 42)
     (i32.const 0)
    )
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
     (i32.const 116)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (block (result i32)
    (set_global $~argc
     (i32.const 1)
    )
    (call $~lib/array/Array<i32>#indexOf|trampoline
     (get_global $std/array/arr)
     (i32.const 45)
     (i32.const 0)
    )
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
     (i32.const 148)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/includes
   (block (result i32)
    (set_global $~argc
     (i32.const 1)
    )
    (call $~lib/array/Array<i32>#includes|trampoline
     (get_global $std/array/arr)
     (i32.const 44)
     (i32.const 0)
    )
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
     (i32.const 154)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/includes
   (block (result i32)
    (set_global $~argc
     (i32.const 1)
    )
    (call $~lib/array/Array<i32>#includes|trampoline
     (get_global $std/array/arr)
     (i32.const 42)
     (i32.const 0)
    )
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
     (i32.const 158)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/includes
   (block (result i32)
    (set_global $~argc
     (i32.const 1)
    )
    (call $~lib/array/Array<i32>#includes|trampoline
     (get_global $std/array/arr)
     (i32.const 45)
     (i32.const 0)
    )
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
     (call $~lib/array/Array<i32>#get:length
      (get_global $std/array/arr)
     )
     (i32.const 4)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
     (i32.const 221)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#get:length
      (get_global $std/array/arr)
     )
     (i32.const 8)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
     (i32.const 237)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#get:length
      (get_global $std/array/arr)
     )
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
     (i32.const 257)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#get:length
      (get_global $std/array/arr)
     )
     (i32.const 8)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
     (i32.const 273)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#get:length
      (get_global $std/array/arr)
     )
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
     (i32.const 293)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#get:length
      (get_global $std/array/arr)
     )
     (i32.const 8)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
     (i32.const 309)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#get:length
      (get_global $std/array/arr)
     )
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 96)
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
   (call $~lib/array/Array<i32>#reduce<i32>
    (get_global $std/array/arr)
    (i32.const 16)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
     (i32.const 318)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (call $~lib/array/Array<i32>#reduce<i32>
    (get_global $std/array/arr)
    (i32.const 17)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
     (i32.const 322)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/boolVal
   (call $~lib/array/Array<i32>#reduce<bool>
    (get_global $std/array/arr)
    (i32.const 18)
    (i32.const 0)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
     (i32.const 325)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/boolVal
   (call $~lib/array/Array<i32>#reduce<bool>
    (get_global $std/array/arr)
    (i32.const 19)
    (i32.const 0)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
     (i32.const 328)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (call $~lib/array/Array<i32>#reduce<i32>
    (get_global $std/array/arr)
    (i32.const 20)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
     (i32.const 336)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#get:length
      (get_global $std/array/arr)
     )
     (i32.const 8)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 96)
     (i32.const 337)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/array/i
   (call $~lib/array/Array<i32>#reduce<i32>
    (get_global $std/array/arr)
    (i32.const 21)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
     (i32.const 339)
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
    (i32.const 22)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
     (i32.const 352)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/array/Array<i32>#get:length
      (get_global $std/array/arr)
     )
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 96)
     (i32.const 353)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (call $~lib/math/NativeMath.seedRandom
   (i64.reinterpret/f64
    (call $~lib/math/JSMath.random)
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
    (block (result i32)
     (set_global $~argc
      (i32.const 2)
     )
     (call $std/array/isArraysEqual<i32>|trampoline
      (get_global $std/array/reversed1)
      (i32.const 472)
      (i32.const 0)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 96)
     (i32.const 462)
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
    (block (result i32)
     (set_global $~argc
      (i32.const 2)
     )
     (call $std/array/isArraysEqual<i32>|trampoline
      (get_global $std/array/reversed2)
      (i32.const 496)
      (i32.const 0)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 96)
     (i32.const 465)
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
    (block (result i32)
     (set_global $~argc
      (i32.const 2)
     )
     (call $std/array/isArraysEqual<i32>|trampoline
      (get_global $std/array/reversed4)
      (get_global $std/array/expected4)
      (i32.const 0)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 96)
     (i32.const 468)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
     (i32.const 471)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
     (i32.const 474)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
     (i32.const 477)
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
    (call $abort
     (i32.const 0)
     (i32.const 96)
     (i32.const 480)
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
   (i32.const 24)
  )
  (call $std/array/assertSorted<i32>
   (get_global $std/array/randomized64)
   (i32.const 25)
  )
  (call $std/array/assertSorted<i32>
   (get_global $std/array/randomized257)
   (i32.const 26)
  )
  (call $std/array/assertSorted<i32>
   (get_global $std/array/randomized257)
   (i32.const 27)
  )
  (set_global $std/array/reversedNested512
   (call $std/array/createReverseOrderedNestedArray
    (i32.const 512)
   )
  )
  (call $std/array/assertSorted<Array<i32>>
   (get_global $std/array/reversedNested512)
   (i32.const 28)
  )
  (set_global $std/array/reversedElements512
   (call $std/array/createReverseOrderedElementsArray
    (i32.const 512)
   )
  )
  (call $std/array/assertSorted<Proxy<i32>>
   (get_global $std/array/reversedElements512)
   (i32.const 29)
  )
  (call $std/array/assertSorted<String>
   (get_global $std/array/randomStringsActual)
   (i32.const 30)
  )
  (if
   (i32.eqz
    (block (result i32)
     (set_global $~argc
      (i32.const 2)
     )
     (call $std/array/isArraysEqual<String>|trampoline
      (get_global $std/array/randomStringsActual)
      (get_global $std/array/randomStringsExpected)
      (i32.const 0)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 96)
     (i32.const 509)
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
   (i32.const 31)
  )
 )
)
