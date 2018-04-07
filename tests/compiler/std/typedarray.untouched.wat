(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $i (func (result i32)))
 (type $iv (func (param i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $ii (func (param i32) (result i32)))
 (type $v (func))
 (import "env" "abort" (func $abort (param i32 i32 i32 i32)))
 (global $~lib/internal/allocator/AL_BITS i32 (i32.const 3))
 (global $~lib/internal/allocator/AL_SIZE i32 (i32.const 8))
 (global $~lib/internal/allocator/AL_MASK i32 (i32.const 7))
 (global $~lib/internal/allocator/MAX_SIZE_32 i32 (i32.const 1073741824))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $~lib/internal/arraybuffer/HEADER_SIZE i32 (i32.const 8))
 (global $~lib/internal/arraybuffer/MAX_BLENGTH i32 (i32.const 1073741816))
 (global $std/typedarray/MAX_F64LENGTH i32 (i32.const 134217727))
 (global $HEAP_BASE i32 (i32.const 104))
 (memory $0 1)
 (data (i32.const 4) "\11\00\00\00s\00t\00d\00/\00t\00y\00p\00e\00d\00a\00r\00r\00a\00y\00.\00t\00s\00")
 (data (i32.const 44) "\1c\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s\00")
 (export "memory" (memory $0))
 (start $start)
 (func $~lib/internal/arraybuffer/computeSize (; 1 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $~lib/allocator/arena/allocate_memory (; 2 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (nop)
  (if
   (if (result i32)
    (get_local $0)
    (i32.lt_u
     (get_local $0)
     (i32.const 1073741824)
    )
    (get_local $0)
   )
   (block
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
 (func $~lib/internal/arraybuffer/allocate (; 3 ;) (type $ii) (param $0 i32) (result i32)
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
     (i32.const 44)
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
 (func $~lib/internal/typedarray/TypedArray<i8>#constructor (; 4 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (block
   (nop)
   (if
    (i32.gt_u
     (get_local $1)
     (i32.const 1073741816)
    )
    (unreachable)
   )
   (set_local $2
    (i32.shl
     (get_local $1)
     (i32.const 0)
    )
   )
   (i32.store
    (tee_local $0
     (if (result i32)
      (get_local $0)
      (get_local $0)
      (tee_local $0
       (block (result i32)
        (set_local $3
         (call $~lib/allocator/arena/allocate_memory
          (i32.const 12)
         )
        )
        (i32.store
         (get_local $3)
         (i32.const 0)
        )
        (i32.store offset=4
         (get_local $3)
         (i32.const 0)
        )
        (i32.store offset=8
         (get_local $3)
         (i32.const 0)
        )
        (get_local $3)
       )
      )
     )
    )
    (call $~lib/internal/arraybuffer/allocate
     (get_local $2)
    )
   )
   (i32.store offset=4
    (get_local $0)
    (i32.const 0)
   )
   (i32.store offset=8
    (get_local $0)
    (get_local $2)
   )
  )
  (get_local $0)
 )
 (func $~lib/internal/typedarray/TypedArray<i8>#get:length (; 5 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (i32.shr_s
    (i32.load offset=8
     (get_local $0)
    )
    (i32.const 0)
   )
  )
 )
 (func $~lib/internal/typedarray/TypedArray<u8>#constructor (; 6 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (block
   (nop)
   (if
    (i32.gt_u
     (get_local $1)
     (i32.const 1073741816)
    )
    (unreachable)
   )
   (set_local $2
    (i32.shl
     (get_local $1)
     (i32.const 0)
    )
   )
   (i32.store
    (tee_local $0
     (if (result i32)
      (get_local $0)
      (get_local $0)
      (tee_local $0
       (block (result i32)
        (set_local $3
         (call $~lib/allocator/arena/allocate_memory
          (i32.const 12)
         )
        )
        (i32.store
         (get_local $3)
         (i32.const 0)
        )
        (i32.store offset=4
         (get_local $3)
         (i32.const 0)
        )
        (i32.store offset=8
         (get_local $3)
         (i32.const 0)
        )
        (get_local $3)
       )
      )
     )
    )
    (call $~lib/internal/arraybuffer/allocate
     (get_local $2)
    )
   )
   (i32.store offset=4
    (get_local $0)
    (i32.const 0)
   )
   (i32.store offset=8
    (get_local $0)
    (get_local $2)
   )
  )
  (get_local $0)
 )
 (func $~lib/internal/typedarray/TypedArray<u8>#get:length (; 7 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (i32.shr_s
    (i32.load offset=8
     (get_local $0)
    )
    (i32.const 0)
   )
  )
 )
 (func $~lib/internal/typedarray/TypedArray<i16>#constructor (; 8 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (block
   (nop)
   (if
    (i32.gt_u
     (get_local $1)
     (i32.const 536870908)
    )
    (unreachable)
   )
   (set_local $2
    (i32.shl
     (get_local $1)
     (i32.const 1)
    )
   )
   (i32.store
    (tee_local $0
     (if (result i32)
      (get_local $0)
      (get_local $0)
      (tee_local $0
       (block (result i32)
        (set_local $3
         (call $~lib/allocator/arena/allocate_memory
          (i32.const 12)
         )
        )
        (i32.store
         (get_local $3)
         (i32.const 0)
        )
        (i32.store offset=4
         (get_local $3)
         (i32.const 0)
        )
        (i32.store offset=8
         (get_local $3)
         (i32.const 0)
        )
        (get_local $3)
       )
      )
     )
    )
    (call $~lib/internal/arraybuffer/allocate
     (get_local $2)
    )
   )
   (i32.store offset=4
    (get_local $0)
    (i32.const 0)
   )
   (i32.store offset=8
    (get_local $0)
    (get_local $2)
   )
  )
  (get_local $0)
 )
 (func $~lib/internal/typedarray/TypedArray<i16>#get:length (; 9 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (i32.shr_s
    (i32.load offset=8
     (get_local $0)
    )
    (i32.const 1)
   )
  )
 )
 (func $~lib/internal/typedarray/TypedArray<u16>#constructor (; 10 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (block
   (nop)
   (if
    (i32.gt_u
     (get_local $1)
     (i32.const 536870908)
    )
    (unreachable)
   )
   (set_local $2
    (i32.shl
     (get_local $1)
     (i32.const 1)
    )
   )
   (i32.store
    (tee_local $0
     (if (result i32)
      (get_local $0)
      (get_local $0)
      (tee_local $0
       (block (result i32)
        (set_local $3
         (call $~lib/allocator/arena/allocate_memory
          (i32.const 12)
         )
        )
        (i32.store
         (get_local $3)
         (i32.const 0)
        )
        (i32.store offset=4
         (get_local $3)
         (i32.const 0)
        )
        (i32.store offset=8
         (get_local $3)
         (i32.const 0)
        )
        (get_local $3)
       )
      )
     )
    )
    (call $~lib/internal/arraybuffer/allocate
     (get_local $2)
    )
   )
   (i32.store offset=4
    (get_local $0)
    (i32.const 0)
   )
   (i32.store offset=8
    (get_local $0)
    (get_local $2)
   )
  )
  (get_local $0)
 )
 (func $~lib/internal/typedarray/TypedArray<u16>#get:length (; 11 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (i32.shr_s
    (i32.load offset=8
     (get_local $0)
    )
    (i32.const 1)
   )
  )
 )
 (func $~lib/internal/typedarray/TypedArray<i32>#constructor (; 12 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (block
   (nop)
   (if
    (i32.gt_u
     (get_local $1)
     (i32.const 268435454)
    )
    (unreachable)
   )
   (set_local $2
    (i32.shl
     (get_local $1)
     (i32.const 2)
    )
   )
   (i32.store
    (tee_local $0
     (if (result i32)
      (get_local $0)
      (get_local $0)
      (tee_local $0
       (block (result i32)
        (set_local $3
         (call $~lib/allocator/arena/allocate_memory
          (i32.const 12)
         )
        )
        (i32.store
         (get_local $3)
         (i32.const 0)
        )
        (i32.store offset=4
         (get_local $3)
         (i32.const 0)
        )
        (i32.store offset=8
         (get_local $3)
         (i32.const 0)
        )
        (get_local $3)
       )
      )
     )
    )
    (call $~lib/internal/arraybuffer/allocate
     (get_local $2)
    )
   )
   (i32.store offset=4
    (get_local $0)
    (i32.const 0)
   )
   (i32.store offset=8
    (get_local $0)
    (get_local $2)
   )
  )
  (get_local $0)
 )
 (func $~lib/internal/typedarray/TypedArray<i32>#get:length (; 13 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (i32.shr_s
    (i32.load offset=8
     (get_local $0)
    )
    (i32.const 2)
   )
  )
 )
 (func $~lib/internal/typedarray/TypedArray<u32>#constructor (; 14 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (block
   (nop)
   (if
    (i32.gt_u
     (get_local $1)
     (i32.const 268435454)
    )
    (unreachable)
   )
   (set_local $2
    (i32.shl
     (get_local $1)
     (i32.const 2)
    )
   )
   (i32.store
    (tee_local $0
     (if (result i32)
      (get_local $0)
      (get_local $0)
      (tee_local $0
       (block (result i32)
        (set_local $3
         (call $~lib/allocator/arena/allocate_memory
          (i32.const 12)
         )
        )
        (i32.store
         (get_local $3)
         (i32.const 0)
        )
        (i32.store offset=4
         (get_local $3)
         (i32.const 0)
        )
        (i32.store offset=8
         (get_local $3)
         (i32.const 0)
        )
        (get_local $3)
       )
      )
     )
    )
    (call $~lib/internal/arraybuffer/allocate
     (get_local $2)
    )
   )
   (i32.store offset=4
    (get_local $0)
    (i32.const 0)
   )
   (i32.store offset=8
    (get_local $0)
    (get_local $2)
   )
  )
  (get_local $0)
 )
 (func $~lib/internal/typedarray/TypedArray<u32>#get:length (; 15 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (i32.shr_s
    (i32.load offset=8
     (get_local $0)
    )
    (i32.const 2)
   )
  )
 )
 (func $~lib/internal/typedarray/TypedArray<i64>#constructor (; 16 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (block
   (nop)
   (if
    (i32.gt_u
     (get_local $1)
     (i32.const 134217727)
    )
    (unreachable)
   )
   (set_local $2
    (i32.shl
     (get_local $1)
     (i32.const 3)
    )
   )
   (i32.store
    (tee_local $0
     (if (result i32)
      (get_local $0)
      (get_local $0)
      (tee_local $0
       (block (result i32)
        (set_local $3
         (call $~lib/allocator/arena/allocate_memory
          (i32.const 12)
         )
        )
        (i32.store
         (get_local $3)
         (i32.const 0)
        )
        (i32.store offset=4
         (get_local $3)
         (i32.const 0)
        )
        (i32.store offset=8
         (get_local $3)
         (i32.const 0)
        )
        (get_local $3)
       )
      )
     )
    )
    (call $~lib/internal/arraybuffer/allocate
     (get_local $2)
    )
   )
   (i32.store offset=4
    (get_local $0)
    (i32.const 0)
   )
   (i32.store offset=8
    (get_local $0)
    (get_local $2)
   )
  )
  (get_local $0)
 )
 (func $~lib/internal/typedarray/TypedArray<i64>#get:length (; 17 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (i32.shr_s
    (i32.load offset=8
     (get_local $0)
    )
    (i32.const 3)
   )
  )
 )
 (func $~lib/internal/typedarray/TypedArray<u64>#constructor (; 18 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (block
   (nop)
   (if
    (i32.gt_u
     (get_local $1)
     (i32.const 134217727)
    )
    (unreachable)
   )
   (set_local $2
    (i32.shl
     (get_local $1)
     (i32.const 3)
    )
   )
   (i32.store
    (tee_local $0
     (if (result i32)
      (get_local $0)
      (get_local $0)
      (tee_local $0
       (block (result i32)
        (set_local $3
         (call $~lib/allocator/arena/allocate_memory
          (i32.const 12)
         )
        )
        (i32.store
         (get_local $3)
         (i32.const 0)
        )
        (i32.store offset=4
         (get_local $3)
         (i32.const 0)
        )
        (i32.store offset=8
         (get_local $3)
         (i32.const 0)
        )
        (get_local $3)
       )
      )
     )
    )
    (call $~lib/internal/arraybuffer/allocate
     (get_local $2)
    )
   )
   (i32.store offset=4
    (get_local $0)
    (i32.const 0)
   )
   (i32.store offset=8
    (get_local $0)
    (get_local $2)
   )
  )
  (get_local $0)
 )
 (func $~lib/internal/typedarray/TypedArray<u64>#get:length (; 19 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (i32.shr_s
    (i32.load offset=8
     (get_local $0)
    )
    (i32.const 3)
   )
  )
 )
 (func $~lib/internal/typedarray/TypedArray<f32>#constructor (; 20 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (block
   (nop)
   (if
    (i32.gt_u
     (get_local $1)
     (i32.const 268435454)
    )
    (unreachable)
   )
   (set_local $2
    (i32.shl
     (get_local $1)
     (i32.const 2)
    )
   )
   (i32.store
    (tee_local $0
     (if (result i32)
      (get_local $0)
      (get_local $0)
      (tee_local $0
       (block (result i32)
        (set_local $3
         (call $~lib/allocator/arena/allocate_memory
          (i32.const 12)
         )
        )
        (i32.store
         (get_local $3)
         (i32.const 0)
        )
        (i32.store offset=4
         (get_local $3)
         (i32.const 0)
        )
        (i32.store offset=8
         (get_local $3)
         (i32.const 0)
        )
        (get_local $3)
       )
      )
     )
    )
    (call $~lib/internal/arraybuffer/allocate
     (get_local $2)
    )
   )
   (i32.store offset=4
    (get_local $0)
    (i32.const 0)
   )
   (i32.store offset=8
    (get_local $0)
    (get_local $2)
   )
  )
  (get_local $0)
 )
 (func $~lib/internal/typedarray/TypedArray<f32>#get:length (; 21 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (i32.shr_s
    (i32.load offset=8
     (get_local $0)
    )
    (i32.const 2)
   )
  )
 )
 (func $~lib/internal/typedarray/TypedArray<f64>#constructor (; 22 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (block
   (nop)
   (if
    (i32.gt_u
     (get_local $1)
     (i32.const 134217727)
    )
    (unreachable)
   )
   (set_local $2
    (i32.shl
     (get_local $1)
     (i32.const 3)
    )
   )
   (i32.store
    (tee_local $0
     (if (result i32)
      (get_local $0)
      (get_local $0)
      (tee_local $0
       (block (result i32)
        (set_local $3
         (call $~lib/allocator/arena/allocate_memory
          (i32.const 12)
         )
        )
        (i32.store
         (get_local $3)
         (i32.const 0)
        )
        (i32.store offset=4
         (get_local $3)
         (i32.const 0)
        )
        (i32.store offset=8
         (get_local $3)
         (i32.const 0)
        )
        (get_local $3)
       )
      )
     )
    )
    (call $~lib/internal/arraybuffer/allocate
     (get_local $2)
    )
   )
   (i32.store offset=4
    (get_local $0)
    (i32.const 0)
   )
   (i32.store offset=8
    (get_local $0)
    (get_local $2)
   )
  )
  (get_local $0)
 )
 (func $~lib/internal/typedarray/TypedArray<f64>#get:length (; 23 ;) (type $ii) (param $0 i32) (result i32)
  (return
   (i32.shr_s
    (i32.load offset=8
     (get_local $0)
    )
    (i32.const 3)
   )
  )
 )
 (func $std/typedarray/testInstantiate (; 24 ;) (type $iv) (param $0 i32)
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
  (set_local $1
   (call $~lib/internal/typedarray/TypedArray<i8>#constructor
    (i32.const 0)
    (get_local $0)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.load offset=4
      (get_local $1)
     )
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 17)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.load offset=8
      (get_local $1)
     )
     (i32.mul
      (get_local $0)
      (i32.const 1)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 18)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/internal/typedarray/TypedArray<i8>#get:length
      (get_local $1)
     )
     (get_local $0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 19)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (set_local $2
   (call $~lib/internal/typedarray/TypedArray<u8>#constructor
    (i32.const 0)
    (get_local $0)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.load offset=4
      (get_local $2)
     )
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 22)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.load offset=8
      (get_local $2)
     )
     (i32.mul
      (get_local $0)
      (i32.const 1)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 23)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/internal/typedarray/TypedArray<u8>#get:length
      (get_local $2)
     )
     (get_local $0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 24)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (set_local $3
   (call $~lib/internal/typedarray/TypedArray<i16>#constructor
    (i32.const 0)
    (get_local $0)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.load offset=4
      (get_local $3)
     )
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 27)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.load offset=8
      (get_local $3)
     )
     (i32.mul
      (get_local $0)
      (i32.const 2)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 28)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/internal/typedarray/TypedArray<i16>#get:length
      (get_local $3)
     )
     (get_local $0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 29)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (set_local $4
   (call $~lib/internal/typedarray/TypedArray<u16>#constructor
    (i32.const 0)
    (get_local $0)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.load offset=4
      (get_local $4)
     )
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 32)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.load offset=8
      (get_local $4)
     )
     (i32.mul
      (get_local $0)
      (i32.const 2)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 33)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/internal/typedarray/TypedArray<u16>#get:length
      (get_local $4)
     )
     (get_local $0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 34)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (set_local $5
   (call $~lib/internal/typedarray/TypedArray<i32>#constructor
    (i32.const 0)
    (get_local $0)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.load offset=4
      (get_local $5)
     )
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 37)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.load offset=8
      (get_local $5)
     )
     (i32.mul
      (get_local $0)
      (i32.const 4)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 38)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/internal/typedarray/TypedArray<i32>#get:length
      (get_local $5)
     )
     (get_local $0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 39)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (set_local $6
   (call $~lib/internal/typedarray/TypedArray<u32>#constructor
    (i32.const 0)
    (get_local $0)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.load offset=4
      (get_local $6)
     )
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 42)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.load offset=8
      (get_local $6)
     )
     (i32.mul
      (get_local $0)
      (i32.const 4)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 43)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/internal/typedarray/TypedArray<u32>#get:length
      (get_local $6)
     )
     (get_local $0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 44)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (set_local $7
   (call $~lib/internal/typedarray/TypedArray<i64>#constructor
    (i32.const 0)
    (get_local $0)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.load offset=4
      (get_local $7)
     )
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 47)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.load offset=8
      (get_local $7)
     )
     (i32.mul
      (get_local $0)
      (i32.const 8)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 48)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/internal/typedarray/TypedArray<i64>#get:length
      (get_local $7)
     )
     (get_local $0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 49)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (set_local $8
   (call $~lib/internal/typedarray/TypedArray<u64>#constructor
    (i32.const 0)
    (get_local $0)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.load offset=4
      (get_local $8)
     )
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 52)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.load offset=8
      (get_local $8)
     )
     (i32.mul
      (get_local $0)
      (i32.const 8)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 53)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/internal/typedarray/TypedArray<u64>#get:length
      (get_local $8)
     )
     (get_local $0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 54)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (set_local $9
   (call $~lib/internal/typedarray/TypedArray<f32>#constructor
    (i32.const 0)
    (get_local $0)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.load offset=4
      (get_local $9)
     )
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 57)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.load offset=8
      (get_local $9)
     )
     (i32.mul
      (get_local $0)
      (i32.const 4)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 58)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/internal/typedarray/TypedArray<f32>#get:length
      (get_local $9)
     )
     (get_local $0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 59)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (set_local $10
   (call $~lib/internal/typedarray/TypedArray<f64>#constructor
    (i32.const 0)
    (get_local $0)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.load offset=4
      (get_local $10)
     )
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 62)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.load offset=8
      (get_local $10)
     )
     (i32.mul
      (get_local $0)
      (i32.const 8)
     )
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 63)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/internal/typedarray/TypedArray<f64>#get:length
      (get_local $10)
     )
     (get_local $0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 64)
     (i32.const 2)
    )
    (unreachable)
   )
  )
 )
 (func $start (; 25 ;) (type $v)
  (if
   (i32.eqz
    (i32.eq
     (i32.const 1)
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 1)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 1)
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 2)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 2)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 3)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 2)
     (i32.const 2)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 4)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 4)
     (i32.const 4)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 5)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 4)
     (i32.const 4)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 6)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 8)
     (i32.const 8)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 7)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 8)
     (i32.const 8)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 8)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 4)
     (i32.const 4)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 9)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.const 8)
     (i32.const 8)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 10)
     (i32.const 0)
    )
    (unreachable)
   )
  )
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
  (call $std/typedarray/testInstantiate
   (i32.const 0)
  )
  (call $std/typedarray/testInstantiate
   (i32.const 5)
  )
  (drop
   (call $~lib/internal/typedarray/TypedArray<f64>#constructor
    (i32.const 0)
    (i32.const 134217727)
   )
  )
 )
)
