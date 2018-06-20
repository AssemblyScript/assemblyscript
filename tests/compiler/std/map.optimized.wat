(module
 (type $ii (func (param i32) (result i32)))
 (type $iv (func (param i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iiv (func (param i32 i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $std/map/map (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 96))
 (memory $0 1)
 (data (i32.const 12) "\1c\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 72) "\n\00\00\00s\00t\00d\00/\00m\00a\00p\00.\00t\00s")
 (export "memory" (memory $0))
 (start $start)
 (func $~lib/allocator/arena/allocate_memory (; 1 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
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
    (if
     (i32.gt_u
      (tee_local $0
       (i32.and
        (i32.add
         (i32.add
          (tee_local $1
           (get_global $~lib/allocator/arena/offset)
          )
          (get_local $0)
         )
         (i32.const 7)
        )
        (i32.const -8)
       )
      )
      (i32.shl
       (tee_local $2
        (current_memory)
       )
       (i32.const 16)
      )
     )
     (if
      (i32.lt_s
       (grow_memory
        (select
         (get_local $2)
         (tee_local $3
          (i32.shr_u
           (i32.and
            (i32.add
             (i32.sub
              (get_local $0)
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
          (get_local $2)
          (get_local $3)
         )
        )
       )
       (i32.const 0)
      )
      (if
       (i32.lt_s
        (grow_memory
         (get_local $3)
        )
        (i32.const 0)
       )
       (unreachable)
      )
     )
    )
    (set_global $~lib/allocator/arena/offset
     (get_local $0)
    )
    (return
     (get_local $1)
    )
   )
  )
  (i32.const 0)
 )
 (func $~lib/internal/arraybuffer/computeSize (; 2 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $~lib/internal/arraybuffer/allocUnsafe (; 3 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (if
   (i32.gt_u
    (get_local $0)
    (i32.const 1073741816)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 12)
     (i32.const 22)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (i32.store
   (tee_local $1
    (call $~lib/allocator/arena/allocate_memory
     (call $~lib/internal/arraybuffer/computeSize
      (get_local $0)
     )
    )
   )
   (get_local $0)
  )
  (get_local $1)
 )
 (func $~lib/memory/set_memory (; 4 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
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
 (func $std/map/Map<i32,i32>#clear (; 5 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (call $~lib/memory/set_memory
   (i32.add
    (tee_local $1
     (call $~lib/internal/arraybuffer/allocUnsafe
      (i32.const 80)
     )
    )
    (i32.const 8)
   )
   (i32.const 0)
   (i32.const 16)
  )
  (i32.store
   (get_local $0)
   (get_local $1)
  )
  (i32.store offset=4
   (get_local $0)
   (i32.const 3)
  )
  (i32.store offset=8
   (get_local $0)
   (i32.const 4)
  )
  (i32.store offset=12
   (get_local $0)
   (i32.const 0)
  )
  (i32.store offset=16
   (get_local $0)
   (i32.const 0)
  )
 )
 (func $std/map/Map<i32,i32>#constructor (; 6 ;) (type $ii) (param $0 i32) (result i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (block
    (i32.store
     (tee_local $0
      (call $~lib/allocator/arena/allocate_memory
       (i32.const 20)
      )
     )
     (i32.const 0)
    )
    (i32.store offset=4
     (get_local $0)
     (i32.const 0)
    )
    (i32.store offset=8
     (get_local $0)
     (i32.const 0)
    )
    (i32.store offset=12
     (get_local $0)
     (i32.const 0)
    )
    (i32.store offset=16
     (get_local $0)
     (i32.const 0)
    )
   )
  )
  (call $std/map/Map<i32,i32>#clear
   (get_local $0)
  )
  (get_local $0)
 )
 (func $~lib/internal/hash/hash32 (; 7 ;) (type $ii) (param $0 i32) (result i32)
  (i32.mul
   (i32.xor
    (i32.mul
     (i32.xor
      (i32.mul
       (i32.xor
        (i32.mul
         (i32.xor
          (i32.and
           (get_local $0)
           (i32.const 255)
          )
          (i32.const -2128831035)
         )
         (i32.const 16777619)
        )
        (i32.and
         (i32.shr_u
          (get_local $0)
          (i32.const 8)
         )
         (i32.const 255)
        )
       )
       (i32.const 16777619)
      )
      (i32.and
       (i32.shr_u
        (get_local $0)
        (i32.const 16)
       )
       (i32.const 255)
      )
     )
     (i32.const 16777619)
    )
    (i32.shr_u
     (get_local $0)
     (i32.const 24)
    )
   )
   (i32.const 16777619)
  )
 )
 (func $~lib/internal/hash/hash<i32> (; 8 ;) (type $ii) (param $0 i32) (result i32)
  (call $~lib/internal/hash/hash32
   (get_local $0)
  )
 )
 (func $std/map/Map<i32,i32>#find (; 9 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (set_local $2
   (i32.load offset=8
    (i32.add
     (i32.load
      (get_local $0)
     )
     (i32.shl
      (i32.and
       (get_local $2)
       (i32.load offset=4
        (get_local $0)
       )
      )
      (i32.const 2)
     )
    )
   )
  )
  (loop $continue|0
   (if
    (get_local $2)
    (block
     (if
      (tee_local $0
       (i32.eqz
        (i32.and
         (i32.load offset=8
          (get_local $2)
         )
         (i32.const 1)
        )
       )
      )
      (set_local $0
       (i32.eq
        (i32.load
         (get_local $2)
        )
        (get_local $1)
       )
      )
     )
     (if
      (get_local $0)
      (return
       (get_local $2)
      )
     )
     (set_local $2
      (i32.and
       (i32.load offset=8
        (get_local $2)
       )
       (i32.const -2)
      )
     )
     (br $continue|0)
    )
   )
  )
  (i32.const 0)
 )
 (func $std/map/Map<i32,i32>#rehash (; 10 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (set_local $4
   (i32.trunc_s/f64
    (f64.mul
     (f64.convert_s/i32
      (tee_local $2
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
     )
     (f64.const 2.6666666666666665)
    )
   )
  )
  (call $~lib/memory/set_memory
   (tee_local $3
    (i32.add
     (tee_local $5
      (call $~lib/internal/arraybuffer/allocUnsafe
       (i32.add
        (tee_local $2
         (i32.shl
          (get_local $2)
          (i32.const 2)
         )
        )
        (i32.shl
         (get_local $4)
         (i32.const 4)
        )
       )
      )
     )
     (i32.const 8)
    )
   )
   (i32.const 0)
   (get_local $2)
  )
  (set_local $3
   (i32.add
    (get_local $3)
    (get_local $2)
   )
  )
  (set_local $6
   (i32.add
    (tee_local $2
     (i32.add
      (i32.add
       (i32.load
        (get_local $0)
       )
       (i32.shl
        (i32.load offset=4
         (get_local $0)
        )
        (i32.const 2)
       )
      )
      (i32.const 12)
     )
    )
    (i32.shl
     (i32.load offset=12
      (get_local $0)
     )
     (i32.const 4)
    )
   )
  )
  (loop $continue|0
   (if
    (i32.ne
     (get_local $2)
     (get_local $6)
    )
    (block
     (if
      (i32.eqz
       (i32.and
        (i32.load offset=8
         (get_local $2)
        )
        (i32.const 1)
       )
      )
      (block
       (i32.store
        (get_local $3)
        (i32.load
         (get_local $2)
        )
       )
       (i32.store offset=4
        (get_local $3)
        (i32.load offset=4
         (get_local $2)
        )
       )
       (i32.store offset=8
        (get_local $3)
        (i32.load offset=8
         (tee_local $7
          (i32.add
           (get_local $5)
           (i32.shl
            (i32.and
             (call $~lib/internal/hash/hash<i32>
              (i32.load
               (get_local $2)
              )
             )
             (get_local $1)
            )
            (i32.const 2)
           )
          )
         )
        )
       )
       (i32.store offset=8
        (get_local $7)
        (get_local $3)
       )
       (set_local $3
        (i32.add
         (get_local $3)
         (i32.const 16)
        )
       )
      )
     )
     (set_local $2
      (i32.add
       (get_local $2)
       (i32.const 16)
      )
     )
     (br $continue|0)
    )
   )
  )
  (i32.store
   (get_local $0)
   (get_local $5)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $1)
  )
  (i32.store offset=8
   (get_local $0)
   (get_local $4)
  )
  (i32.store offset=12
   (get_local $0)
   (i32.load offset=16
    (get_local $0)
   )
  )
 )
 (func $std/map/Map<i32,i32>#set (; 11 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (if
   (tee_local $3
    (call $std/map/Map<i32,i32>#find
     (get_local $0)
     (get_local $1)
     (tee_local $4
      (call $~lib/internal/hash/hash<i32>
       (get_local $1)
      )
     )
    )
   )
   (i32.store offset=4
    (get_local $3)
    (get_local $2)
   )
   (block
    (if
     (i32.eq
      (i32.load offset=12
       (get_local $0)
      )
      (tee_local $3
       (i32.load offset=8
        (get_local $0)
       )
      )
     )
     (block
      (call $std/map/Map<i32,i32>#rehash
       (get_local $0)
       (tee_local $3
        (if (result i32)
         (i32.ge_s
          (i32.load offset=16
           (get_local $0)
          )
          (i32.trunc_s/f64
           (f64.mul
            (f64.convert_s/i32
             (get_local $3)
            )
            (f64.const 0.75)
           )
          )
         )
         (i32.or
          (i32.shl
           (i32.load offset=4
            (get_local $0)
           )
           (i32.const 1)
          )
          (i32.const 1)
         )
         (i32.load offset=4
          (get_local $0)
         )
        )
       )
      )
      (drop
       (i32.load offset=8
        (get_local $0)
       )
      )
     )
    )
    (set_local $6
     (i32.add
      (tee_local $5
       (i32.add
        (i32.load
         (get_local $0)
        )
        (i32.const 8)
       )
      )
      (i32.shl
       (i32.add
        (i32.load offset=4
         (get_local $0)
        )
        (i32.const 1)
       )
       (i32.const 2)
      )
     )
    )
    (i32.store offset=12
     (get_local $0)
     (i32.add
      (tee_local $3
       (i32.load offset=12
        (get_local $0)
       )
      )
      (i32.const 1)
     )
    )
    (i32.store
     (tee_local $3
      (i32.add
       (get_local $6)
       (i32.shl
        (get_local $3)
        (i32.const 4)
       )
      )
     )
     (get_local $1)
    )
    (i32.store offset=4
     (get_local $3)
     (get_local $2)
    )
    (drop
     (i32.load offset=4
      (get_local $0)
     )
    )
    (i32.store offset=8
     (get_local $3)
     (i32.load
      (tee_local $1
       (i32.add
        (get_local $5)
        (i32.shl
         (i32.and
          (get_local $4)
          (i32.load offset=4
           (get_local $0)
          )
         )
         (i32.const 2)
        )
       )
      )
     )
    )
    (i32.store
     (get_local $1)
     (get_local $3)
    )
    (i32.store offset=16
     (get_local $0)
     (i32.add
      (i32.load offset=16
       (get_local $0)
      )
      (i32.const 1)
     )
    )
   )
  )
 )
 (func $std/map/Map<i32,i32>#has (; 12 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.ne
   (call $std/map/Map<i32,i32>#find
    (get_local $0)
    (get_local $1)
    (call $~lib/internal/hash/hash<i32>
     (get_local $1)
    )
   )
   (i32.const 0)
  )
 )
 (func $std/map/Map<i32,i32>#get (; 13 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (tee_local $0
   (if (result i32)
    (tee_local $0
     (call $std/map/Map<i32,i32>#find
      (get_local $0)
      (get_local $1)
      (call $~lib/internal/hash/hash<i32>
       (get_local $1)
      )
     )
    )
    (i32.load offset=4
     (get_local $0)
    )
    (unreachable)
   )
  )
 )
 (func $std/map/Map<i32,i32>#get:size (; 14 ;) (type $ii) (param $0 i32) (result i32)
  (i32.load offset=16
   (get_local $0)
  )
 )
 (func $std/map/Map<i32,i32>#delete (; 15 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (if
   (i32.eqz
    (tee_local $1
     (call $std/map/Map<i32,i32>#find
      (get_local $0)
      (get_local $1)
      (call $~lib/internal/hash/hash<i32>
       (get_local $1)
      )
     )
    )
   )
   (return
    (i32.const 0)
   )
  )
  (i32.store offset=16
   (get_local $0)
   (i32.sub
    (i32.load offset=16
     (get_local $0)
    )
    (i32.const 1)
   )
  )
  (i32.store offset=8
   (get_local $1)
   (i32.or
    (i32.load offset=8
     (get_local $1)
    )
    (i32.const 1)
   )
  )
  (if
   (tee_local $1
    (i32.gt_u
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 4)
    )
   )
   (set_local $1
    (i32.lt_s
     (i32.load offset=16
      (get_local $0)
     )
     (i32.trunc_s/f64
      (f64.mul
       (f64.convert_s/i32
        (i32.load offset=12
         (get_local $0)
        )
       )
       (f64.const 0.75)
      )
     )
    )
   )
  )
  (if
   (get_local $1)
   (call $std/map/Map<i32,i32>#rehash
    (get_local $0)
    (i32.shr_u
     (i32.load offset=4
      (get_local $0)
     )
     (i32.const 1)
    )
   )
  )
  (i32.const 1)
 )
 (func $start (; 16 ;) (type $v)
  (local $0 i32)
  (set_global $~lib/allocator/arena/startOffset
   (i32.and
    (i32.add
     (get_global $HEAP_BASE)
     (i32.const 7)
    )
    (i32.const -8)
   )
  )
  (set_global $~lib/allocator/arena/offset
   (get_global $~lib/allocator/arena/startOffset)
  )
  (set_global $std/map/map
   (call $std/map/Map<i32,i32>#constructor
    (i32.const 0)
   )
  )
  (block $break|0
   (set_local $0
    (i32.const 1)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.gt_s
      (get_local $0)
      (i32.const 200)
     )
    )
    (call $std/map/Map<i32,i32>#set
     (get_global $std/map/map)
     (get_local $0)
     (i32.add
      (get_local $0)
      (i32.const 100)
     )
    )
    (if
     (i32.eqz
      (call $std/map/Map<i32,i32>#has
       (get_global $std/map/map)
       (get_local $0)
      )
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 72)
       (i32.const 178)
       (i32.const 2)
      )
      (unreachable)
     )
    )
    (if
     (call $std/map/Map<i32,i32>#has
      (get_global $std/map/map)
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 72)
       (i32.const 179)
       (i32.const 2)
      )
      (unreachable)
     )
    )
    (if
     (i32.ne
      (call $std/map/Map<i32,i32>#get
       (get_global $std/map/map)
       (get_local $0)
      )
      (i32.add
       (get_local $0)
       (i32.const 100)
      )
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 72)
       (i32.const 180)
       (i32.const 2)
      )
      (unreachable)
     )
     (block
      (set_local $0
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
      )
      (br $repeat|0)
     )
    )
   )
  )
  (if
   (i32.ne
    (call $std/map/Map<i32,i32>#get:size
     (get_global $std/map/map)
    )
    (i32.const 200)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 72)
     (i32.const 182)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (block $break|1
   (set_local $0
    (i32.const 50)
   )
   (loop $repeat|1
    (br_if $break|1
     (i32.gt_s
      (get_local $0)
      (i32.const 100)
     )
    )
    (if
     (i32.eqz
      (call $std/map/Map<i32,i32>#has
       (get_global $std/map/map)
       (get_local $0)
      )
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 72)
       (i32.const 186)
       (i32.const 2)
      )
      (unreachable)
     )
    )
    (if
     (i32.ne
      (call $std/map/Map<i32,i32>#get
       (get_global $std/map/map)
       (get_local $0)
      )
      (i32.add
       (get_local $0)
       (i32.const 100)
      )
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 72)
       (i32.const 187)
       (i32.const 2)
      )
      (unreachable)
     )
    )
    (call $std/map/Map<i32,i32>#set
     (get_global $std/map/map)
     (get_local $0)
     (i32.add
      (get_local $0)
      (i32.const 100)
     )
    )
    (if
     (i32.eqz
      (call $std/map/Map<i32,i32>#has
       (get_global $std/map/map)
       (get_local $0)
      )
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 72)
       (i32.const 189)
       (i32.const 2)
      )
      (unreachable)
     )
    )
    (if
     (i32.ne
      (call $std/map/Map<i32,i32>#get
       (get_global $std/map/map)
       (get_local $0)
      )
      (i32.add
       (get_local $0)
       (i32.const 100)
      )
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 72)
       (i32.const 190)
       (i32.const 2)
      )
      (unreachable)
     )
     (block
      (set_local $0
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
      )
      (br $repeat|1)
     )
    )
   )
  )
  (if
   (i32.ne
    (call $std/map/Map<i32,i32>#get:size
     (get_global $std/map/map)
    )
    (i32.const 200)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 72)
     (i32.const 192)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (block $break|2
   (set_local $0
    (i32.const 1)
   )
   (loop $repeat|2
    (br_if $break|2
     (i32.gt_s
      (get_local $0)
      (i32.const 100)
     )
    )
    (if
     (i32.eqz
      (call $std/map/Map<i32,i32>#has
       (get_global $std/map/map)
       (get_local $0)
      )
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 72)
       (i32.const 196)
       (i32.const 2)
      )
      (unreachable)
     )
    )
    (if
     (i32.ne
      (call $std/map/Map<i32,i32>#get
       (get_global $std/map/map)
       (get_local $0)
      )
      (i32.add
       (get_local $0)
       (i32.const 100)
      )
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 72)
       (i32.const 197)
       (i32.const 2)
      )
      (unreachable)
     )
    )
    (drop
     (call $std/map/Map<i32,i32>#delete
      (get_global $std/map/map)
      (get_local $0)
     )
    )
    (if
     (call $std/map/Map<i32,i32>#has
      (get_global $std/map/map)
      (get_local $0)
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 72)
       (i32.const 199)
       (i32.const 2)
      )
      (unreachable)
     )
    )
    (if
     (call $std/map/Map<i32,i32>#has
      (get_global $std/map/map)
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
     (block
      (set_local $0
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
      )
      (br $repeat|2)
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 72)
       (i32.const 200)
       (i32.const 2)
      )
      (unreachable)
     )
    )
   )
  )
  (if
   (i32.ne
    (call $std/map/Map<i32,i32>#get:size
     (get_global $std/map/map)
    )
    (i32.const 100)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 72)
     (i32.const 202)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (call $std/map/Map<i32,i32>#clear
   (get_global $std/map/map)
  )
  (if
   (call $std/map/Map<i32,i32>#get:size
    (get_global $std/map/map)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 72)
     (i32.const 206)
     (i32.const 0)
    )
    (unreachable)
   )
  )
 )
)
