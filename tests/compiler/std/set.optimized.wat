(module
 (type $v (func))
 (type $ii (func (param i32) (result i32)))
 (type $iv (func (param i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $iiv (func (param i32 i32)))
 (type $iIi (func (param i32 i64) (result i32)))
 (type $Ii (func (param i64) (result i32)))
 (type $iIii (func (param i32 i64 i32) (result i32)))
 (type $iIv (func (param i32 i64)))
 (type $ifi (func (param i32 f32) (result i32)))
 (type $fi (func (param f32) (result i32)))
 (type $ifii (func (param i32 f32 i32) (result i32)))
 (type $ifv (func (param i32 f32)))
 (type $iFi (func (param i32 f64) (result i32)))
 (type $Fi (func (param f64) (result i32)))
 (type $iFii (func (param i32 f64 i32) (result i32)))
 (type $iFv (func (param i32 f64)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 136))
 (memory $0 1)
 (data (i32.const 8) "\13\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 52) "\1c\00\00\00~\00l\00i\00b\00/\00i\00n\00t\00e\00r\00n\00a\00l\00/\00a\00r\00r\00a\00y\00b\00u\00f\00f\00e\00r\00.\00t\00s")
 (data (i32.const 112) "\n\00\00\00s\00t\00d\00/\00s\00e\00t\00.\00t\00s")
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
     (i32.const 52)
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
 (func $~lib/arraybuffer/ArrayBuffer#constructor (; 5 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (if
   (i32.gt_u
    (get_local $1)
    (i32.const 1073741816)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 13)
     (i32.const 40)
    )
    (unreachable)
   )
  )
  (set_local $3
   (call $~lib/internal/arraybuffer/allocUnsafe
    (get_local $1)
   )
  )
  (if
   (i32.eqz
    (i32.and
     (get_local $2)
     (i32.const 1)
    )
   )
   (call $~lib/memory/set_memory
    (i32.add
     (get_local $3)
     (i32.const 8)
    )
    (i32.const 0)
    (get_local $1)
   )
  )
  (get_local $3)
 )
 (func $~lib/set/Set<i8>#clear (; 6 ;) (type $iv) (param $0 i32)
  (i32.store
   (get_local $0)
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.const 16)
    (i32.const 0)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (i32.const 3)
  )
  (i32.store offset=8
   (get_local $0)
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.const 32)
    (i32.const 1)
   )
  )
  (i32.store offset=12
   (get_local $0)
   (i32.const 4)
  )
  (i32.store offset=16
   (get_local $0)
   (i32.const 0)
  )
  (i32.store offset=20
   (get_local $0)
   (i32.const 0)
  )
 )
 (func $~lib/set/Set<i8>#constructor (; 7 ;) (type $ii) (param $0 i32) (result i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (block
    (i32.store
     (tee_local $0
      (call $~lib/allocator/arena/allocate_memory
       (i32.const 24)
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
    (i32.store offset=20
     (get_local $0)
     (i32.const 0)
    )
   )
  )
  (call $~lib/set/Set<i8>#clear
   (get_local $0)
  )
  (get_local $0)
 )
 (func $~lib/internal/hash/hash8 (; 8 ;) (type $ii) (param $0 i32) (result i32)
  (i32.mul
   (i32.xor
    (get_local $0)
    (i32.const -2128831035)
   )
   (i32.const 16777619)
  )
 )
 (func $~lib/internal/hash/hash<i8> (; 9 ;) (type $ii) (param $0 i32) (result i32)
  (call $~lib/internal/hash/hash8
   (i32.shr_s
    (i32.shl
     (get_local $0)
     (i32.const 24)
    )
    (i32.const 24)
   )
  )
 )
 (func $~lib/set/Set<i8>#find (; 10 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
         (i32.load offset=4
          (get_local $2)
         )
         (i32.const 1)
        )
       )
      )
      (set_local $0
       (i32.eq
        (i32.load8_u
         (get_local $2)
        )
        (i32.and
         (get_local $1)
         (i32.const 255)
        )
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
       (i32.load offset=4
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
 (func $~lib/set/Set<i8>#has (; 11 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.ne
   (call $~lib/set/Set<i8>#find
    (get_local $0)
    (get_local $1)
    (call $~lib/internal/hash/hash<i8>
     (get_local $1)
    )
   )
   (i32.const 0)
  )
 )
 (func $~lib/set/Set<i8>#rehash (; 12 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (set_local $4
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.shl
     (tee_local $2
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
     )
     (i32.const 2)
    )
    (i32.const 0)
   )
  )
  (set_local $5
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.shl
     (tee_local $7
      (i32.trunc_s/f64
       (f64.mul
        (f64.convert_s/i32
         (get_local $2)
        )
        (f64.const 2.6666666666666665)
       )
      )
     )
     (i32.const 3)
    )
    (i32.const 1)
   )
  )
  (set_local $8
   (i32.add
    (tee_local $2
     (i32.add
      (i32.load offset=8
       (get_local $0)
      )
      (i32.const 8)
     )
    )
    (i32.shl
     (i32.load offset=16
      (get_local $0)
     )
     (i32.const 3)
    )
   )
  )
  (set_local $3
   (i32.add
    (get_local $5)
    (i32.const 8)
   )
  )
  (loop $continue|0
   (if
    (i32.ne
     (get_local $2)
     (get_local $8)
    )
    (block
     (if
      (i32.eqz
       (i32.and
        (i32.load offset=4
         (get_local $2)
        )
        (i32.const 1)
       )
      )
      (block
       (i32.store8
        (get_local $3)
        (i32.load8_s
         (get_local $2)
        )
       )
       (i32.store offset=4
        (get_local $3)
        (i32.load offset=8
         (tee_local $6
          (i32.add
           (get_local $4)
           (i32.shl
            (i32.and
             (tee_local $6
              (call $~lib/internal/hash/hash8
               (i32.load8_s
                (get_local $2)
               )
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
        (get_local $6)
        (get_local $3)
       )
       (set_local $3
        (i32.add
         (get_local $3)
         (i32.const 8)
        )
       )
      )
     )
     (set_local $2
      (i32.add
       (get_local $2)
       (i32.const 8)
      )
     )
     (br $continue|0)
    )
   )
  )
  (i32.store
   (get_local $0)
   (get_local $4)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $1)
  )
  (i32.store offset=8
   (get_local $0)
   (get_local $5)
  )
  (i32.store offset=12
   (get_local $0)
   (get_local $7)
  )
  (i32.store offset=16
   (get_local $0)
   (i32.load offset=20
    (get_local $0)
   )
  )
 )
 (func $~lib/set/Set<i8>#add (; 13 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.eqz
    (call $~lib/set/Set<i8>#find
     (get_local $0)
     (get_local $1)
     (tee_local $4
      (call $~lib/internal/hash/hash<i8>
       (get_local $1)
      )
     )
    )
   )
   (block
    (if
     (i32.eq
      (i32.load offset=16
       (get_local $0)
      )
      (i32.load offset=12
       (get_local $0)
      )
     )
     (call $~lib/set/Set<i8>#rehash
      (get_local $0)
      (tee_local $2
       (if (result i32)
        (i32.lt_s
         (i32.load offset=20
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
        (i32.load offset=4
         (get_local $0)
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
       )
      )
     )
    )
    (set_local $2
     (i32.load offset=8
      (get_local $0)
     )
    )
    (i32.store offset=16
     (get_local $0)
     (i32.add
      (tee_local $3
       (i32.load offset=16
        (get_local $0)
       )
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (tee_local $2
      (i32.add
       (i32.add
        (get_local $2)
        (i32.const 8)
       )
       (i32.shl
        (get_local $3)
        (i32.const 3)
       )
      )
     )
     (get_local $1)
    )
    (i32.store offset=20
     (get_local $0)
     (i32.add
      (i32.load offset=20
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store offset=4
     (get_local $2)
     (i32.load offset=8
      (tee_local $3
       (i32.add
        (i32.load
         (get_local $0)
        )
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
    (i32.store offset=8
     (get_local $3)
     (get_local $2)
    )
   )
  )
 )
 (func $~lib/set/Set<i8>#get:size (; 14 ;) (type $ii) (param $0 i32) (result i32)
  (i32.load offset=20
   (get_local $0)
  )
 )
 (func $~lib/set/Set<i8>#delete (; 15 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (if
   (i32.eqz
    (tee_local $0
     (call $~lib/set/Set<i8>#find
      (tee_local $2
       (get_local $0)
      )
      (get_local $1)
      (tee_local $0
       (call $~lib/internal/hash/hash8
        (i32.shr_s
         (i32.shl
          (get_local $1)
          (i32.const 24)
         )
         (i32.const 24)
        )
       )
      )
     )
    )
   )
   (return
    (i32.const 0)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (i32.or
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 1)
   )
  )
  (i32.store offset=20
   (get_local $2)
   (i32.sub
    (i32.load offset=20
     (get_local $2)
    )
    (i32.const 1)
   )
  )
  (if
   (tee_local $0
    (i32.ge_u
     (i32.add
      (tee_local $1
       (i32.shr_u
        (i32.load offset=4
         (get_local $2)
        )
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
     (select
      (i32.const 4)
      (tee_local $0
       (i32.load offset=20
        (get_local $2)
       )
      )
      (i32.gt_u
       (i32.const 4)
       (get_local $0)
      )
     )
    )
   )
   (set_local $0
    (i32.lt_s
     (i32.load offset=20
      (get_local $2)
     )
     (i32.trunc_s/f64
      (f64.mul
       (f64.convert_s/i32
        (i32.load offset=12
         (get_local $2)
        )
       )
       (f64.const 0.75)
      )
     )
    )
   )
  )
  (if
   (get_local $0)
   (call $~lib/set/Set<i8>#rehash
    (get_local $2)
    (get_local $1)
   )
  )
  (i32.const 1)
 )
 (func $std/set/test<i8> (; 16 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (set_local $1
   (call $~lib/set/Set<i8>#constructor
    (i32.const 0)
   )
  )
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $0)
      (i32.const 100)
     )
    )
    (if
     (call $~lib/set/Set<i8>#has
      (get_local $1)
      (get_local $0)
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 8)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    (call $~lib/set/Set<i8>#add
     (get_local $1)
     (get_local $0)
    )
    (if
     (call $~lib/set/Set<i8>#has
      (get_local $1)
      (get_local $0)
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
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 10)
       (i32.const 4)
      )
      (unreachable)
     )
    )
   )
  )
  (if
   (i32.ne
    (call $~lib/set/Set<i8>#get:size
     (get_local $1)
    )
    (i32.const 100)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 12)
     (i32.const 2)
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
     (i32.ge_s
      (get_local $0)
      (i32.const 100)
     )
    )
    (if
     (i32.eqz
      (call $~lib/set/Set<i8>#has
       (get_local $1)
       (get_local $0)
      )
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 16)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    (call $~lib/set/Set<i8>#add
     (get_local $1)
     (get_local $0)
    )
    (if
     (call $~lib/set/Set<i8>#has
      (get_local $1)
      (get_local $0)
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
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 18)
       (i32.const 4)
      )
      (unreachable)
     )
    )
   )
  )
  (if
   (i32.ne
    (call $~lib/set/Set<i8>#get:size
     (get_local $1)
    )
    (i32.const 100)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 20)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|2
   (set_local $0
    (i32.const 0)
   )
   (loop $repeat|2
    (br_if $break|2
     (i32.ge_s
      (get_local $0)
      (i32.const 50)
     )
    )
    (if
     (i32.eqz
      (call $~lib/set/Set<i8>#has
       (get_local $1)
       (get_local $0)
      )
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 24)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    (drop
     (call $~lib/set/Set<i8>#delete
      (get_local $1)
      (get_local $0)
     )
    )
    (if
     (call $~lib/set/Set<i8>#has
      (get_local $1)
      (get_local $0)
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 26)
       (i32.const 4)
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
      (br $repeat|2)
     )
    )
   )
  )
  (if
   (i32.ne
    (call $~lib/set/Set<i8>#get:size
     (get_local $1)
    )
    (i32.const 50)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 28)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|3
   (set_local $0
    (i32.const 0)
   )
   (loop $repeat|3
    (br_if $break|3
     (i32.ge_s
      (get_local $0)
      (i32.const 50)
     )
    )
    (if
     (call $~lib/set/Set<i8>#has
      (get_local $1)
      (get_local $0)
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 32)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    (call $~lib/set/Set<i8>#add
     (get_local $1)
     (get_local $0)
    )
    (if
     (i32.eqz
      (call $~lib/set/Set<i8>#has
       (get_local $1)
       (get_local $0)
      )
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 34)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    (drop
     (call $~lib/set/Set<i8>#delete
      (get_local $1)
      (get_local $0)
     )
    )
    (if
     (call $~lib/set/Set<i8>#has
      (get_local $1)
      (get_local $0)
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 36)
       (i32.const 4)
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
      (br $repeat|3)
     )
    )
   )
  )
  (if
   (i32.ne
    (call $~lib/set/Set<i8>#get:size
     (get_local $1)
    )
    (i32.const 50)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 38)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (call $~lib/set/Set<i8>#clear
   (get_local $1)
  )
  (if
   (call $~lib/set/Set<i8>#get:size
    (get_local $1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 42)
     (i32.const 2)
    )
    (unreachable)
   )
  )
 )
 (func $~lib/internal/hash/hash<u8> (; 17 ;) (type $ii) (param $0 i32) (result i32)
  (call $~lib/internal/hash/hash8
   (i32.and
    (get_local $0)
    (i32.const 255)
   )
  )
 )
 (func $~lib/set/Set<u8>#has (; 18 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.ne
   (call $~lib/set/Set<i8>#find
    (get_local $0)
    (get_local $1)
    (call $~lib/internal/hash/hash<u8>
     (get_local $1)
    )
   )
   (i32.const 0)
  )
 )
 (func $~lib/set/Set<u8>#rehash (; 19 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (set_local $4
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.shl
     (tee_local $2
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
     )
     (i32.const 2)
    )
    (i32.const 0)
   )
  )
  (set_local $5
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.shl
     (tee_local $7
      (i32.trunc_s/f64
       (f64.mul
        (f64.convert_s/i32
         (get_local $2)
        )
        (f64.const 2.6666666666666665)
       )
      )
     )
     (i32.const 3)
    )
    (i32.const 1)
   )
  )
  (set_local $8
   (i32.add
    (tee_local $2
     (i32.add
      (i32.load offset=8
       (get_local $0)
      )
      (i32.const 8)
     )
    )
    (i32.shl
     (i32.load offset=16
      (get_local $0)
     )
     (i32.const 3)
    )
   )
  )
  (set_local $3
   (i32.add
    (get_local $5)
    (i32.const 8)
   )
  )
  (loop $continue|0
   (if
    (i32.ne
     (get_local $2)
     (get_local $8)
    )
    (block
     (if
      (i32.eqz
       (i32.and
        (i32.load offset=4
         (get_local $2)
        )
        (i32.const 1)
       )
      )
      (block
       (i32.store8
        (get_local $3)
        (i32.load8_u
         (get_local $2)
        )
       )
       (i32.store offset=4
        (get_local $3)
        (i32.load offset=8
         (tee_local $6
          (i32.add
           (get_local $4)
           (i32.shl
            (i32.and
             (tee_local $6
              (call $~lib/internal/hash/hash8
               (i32.load8_u
                (get_local $2)
               )
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
        (get_local $6)
        (get_local $3)
       )
       (set_local $3
        (i32.add
         (get_local $3)
         (i32.const 8)
        )
       )
      )
     )
     (set_local $2
      (i32.add
       (get_local $2)
       (i32.const 8)
      )
     )
     (br $continue|0)
    )
   )
  )
  (i32.store
   (get_local $0)
   (get_local $4)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $1)
  )
  (i32.store offset=8
   (get_local $0)
   (get_local $5)
  )
  (i32.store offset=12
   (get_local $0)
   (get_local $7)
  )
  (i32.store offset=16
   (get_local $0)
   (i32.load offset=20
    (get_local $0)
   )
  )
 )
 (func $~lib/set/Set<u8>#add (; 20 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.eqz
    (call $~lib/set/Set<i8>#find
     (get_local $0)
     (get_local $1)
     (tee_local $4
      (call $~lib/internal/hash/hash<u8>
       (get_local $1)
      )
     )
    )
   )
   (block
    (if
     (i32.eq
      (i32.load offset=16
       (get_local $0)
      )
      (i32.load offset=12
       (get_local $0)
      )
     )
     (call $~lib/set/Set<u8>#rehash
      (get_local $0)
      (tee_local $2
       (if (result i32)
        (i32.lt_s
         (i32.load offset=20
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
        (i32.load offset=4
         (get_local $0)
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
       )
      )
     )
    )
    (set_local $2
     (i32.load offset=8
      (get_local $0)
     )
    )
    (i32.store offset=16
     (get_local $0)
     (i32.add
      (tee_local $3
       (i32.load offset=16
        (get_local $0)
       )
      )
      (i32.const 1)
     )
    )
    (i32.store8
     (tee_local $2
      (i32.add
       (i32.add
        (get_local $2)
        (i32.const 8)
       )
       (i32.shl
        (get_local $3)
        (i32.const 3)
       )
      )
     )
     (get_local $1)
    )
    (i32.store offset=20
     (get_local $0)
     (i32.add
      (i32.load offset=20
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store offset=4
     (get_local $2)
     (i32.load offset=8
      (tee_local $3
       (i32.add
        (i32.load
         (get_local $0)
        )
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
    (i32.store offset=8
     (get_local $3)
     (get_local $2)
    )
   )
  )
 )
 (func $~lib/set/Set<u8>#delete (; 21 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (if
   (i32.eqz
    (tee_local $0
     (call $~lib/set/Set<i8>#find
      (tee_local $2
       (get_local $0)
      )
      (get_local $1)
      (tee_local $0
       (call $~lib/internal/hash/hash8
        (i32.and
         (get_local $1)
         (i32.const 255)
        )
       )
      )
     )
    )
   )
   (return
    (i32.const 0)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (i32.or
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 1)
   )
  )
  (i32.store offset=20
   (get_local $2)
   (i32.sub
    (i32.load offset=20
     (get_local $2)
    )
    (i32.const 1)
   )
  )
  (if
   (tee_local $0
    (i32.ge_u
     (i32.add
      (tee_local $1
       (i32.shr_u
        (i32.load offset=4
         (get_local $2)
        )
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
     (select
      (i32.const 4)
      (tee_local $0
       (i32.load offset=20
        (get_local $2)
       )
      )
      (i32.gt_u
       (i32.const 4)
       (get_local $0)
      )
     )
    )
   )
   (set_local $0
    (i32.lt_s
     (i32.load offset=20
      (get_local $2)
     )
     (i32.trunc_s/f64
      (f64.mul
       (f64.convert_s/i32
        (i32.load offset=12
         (get_local $2)
        )
       )
       (f64.const 0.75)
      )
     )
    )
   )
  )
  (if
   (get_local $0)
   (call $~lib/set/Set<u8>#rehash
    (get_local $2)
    (get_local $1)
   )
  )
  (i32.const 1)
 )
 (func $std/set/test<u8> (; 22 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (set_local $1
   (call $~lib/set/Set<i8>#constructor
    (i32.const 0)
   )
  )
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_u
      (get_local $0)
      (i32.const 100)
     )
    )
    (if
     (call $~lib/set/Set<u8>#has
      (get_local $1)
      (get_local $0)
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 8)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    (call $~lib/set/Set<u8>#add
     (get_local $1)
     (get_local $0)
    )
    (if
     (call $~lib/set/Set<u8>#has
      (get_local $1)
      (get_local $0)
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
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 10)
       (i32.const 4)
      )
      (unreachable)
     )
    )
   )
  )
  (if
   (i32.ne
    (call $~lib/set/Set<i8>#get:size
     (get_local $1)
    )
    (i32.const 100)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 12)
     (i32.const 2)
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
     (i32.ge_u
      (get_local $0)
      (i32.const 100)
     )
    )
    (if
     (i32.eqz
      (call $~lib/set/Set<u8>#has
       (get_local $1)
       (get_local $0)
      )
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 16)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    (call $~lib/set/Set<u8>#add
     (get_local $1)
     (get_local $0)
    )
    (if
     (call $~lib/set/Set<u8>#has
      (get_local $1)
      (get_local $0)
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
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 18)
       (i32.const 4)
      )
      (unreachable)
     )
    )
   )
  )
  (if
   (i32.ne
    (call $~lib/set/Set<i8>#get:size
     (get_local $1)
    )
    (i32.const 100)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 20)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|2
   (set_local $0
    (i32.const 0)
   )
   (loop $repeat|2
    (br_if $break|2
     (i32.ge_u
      (get_local $0)
      (i32.const 50)
     )
    )
    (if
     (i32.eqz
      (call $~lib/set/Set<u8>#has
       (get_local $1)
       (get_local $0)
      )
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 24)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    (drop
     (call $~lib/set/Set<u8>#delete
      (get_local $1)
      (get_local $0)
     )
    )
    (if
     (call $~lib/set/Set<u8>#has
      (get_local $1)
      (get_local $0)
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 26)
       (i32.const 4)
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
      (br $repeat|2)
     )
    )
   )
  )
  (if
   (i32.ne
    (call $~lib/set/Set<i8>#get:size
     (get_local $1)
    )
    (i32.const 50)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 28)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|3
   (set_local $0
    (i32.const 0)
   )
   (loop $repeat|3
    (br_if $break|3
     (i32.ge_u
      (get_local $0)
      (i32.const 50)
     )
    )
    (if
     (call $~lib/set/Set<u8>#has
      (get_local $1)
      (get_local $0)
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 32)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    (call $~lib/set/Set<u8>#add
     (get_local $1)
     (get_local $0)
    )
    (if
     (i32.eqz
      (call $~lib/set/Set<u8>#has
       (get_local $1)
       (get_local $0)
      )
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 34)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    (drop
     (call $~lib/set/Set<u8>#delete
      (get_local $1)
      (get_local $0)
     )
    )
    (if
     (call $~lib/set/Set<u8>#has
      (get_local $1)
      (get_local $0)
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 36)
       (i32.const 4)
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
      (br $repeat|3)
     )
    )
   )
  )
  (if
   (i32.ne
    (call $~lib/set/Set<i8>#get:size
     (get_local $1)
    )
    (i32.const 50)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 38)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (call $~lib/set/Set<i8>#clear
   (get_local $1)
  )
  (if
   (call $~lib/set/Set<i8>#get:size
    (get_local $1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 42)
     (i32.const 2)
    )
    (unreachable)
   )
  )
 )
 (func $~lib/internal/hash/hash16 (; 23 ;) (type $ii) (param $0 i32) (result i32)
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
    (i32.shr_u
     (get_local $0)
     (i32.const 8)
    )
   )
   (i32.const 16777619)
  )
 )
 (func $~lib/internal/hash/hash<i16> (; 24 ;) (type $ii) (param $0 i32) (result i32)
  (call $~lib/internal/hash/hash16
   (i32.shr_s
    (i32.shl
     (get_local $0)
     (i32.const 16)
    )
    (i32.const 16)
   )
  )
 )
 (func $~lib/set/Set<i16>#find (; 25 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
         (i32.load offset=4
          (get_local $2)
         )
         (i32.const 1)
        )
       )
      )
      (set_local $0
       (i32.eq
        (i32.load16_u
         (get_local $2)
        )
        (i32.and
         (get_local $1)
         (i32.const 65535)
        )
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
       (i32.load offset=4
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
 (func $~lib/set/Set<i16>#has (; 26 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.ne
   (call $~lib/set/Set<i16>#find
    (get_local $0)
    (get_local $1)
    (call $~lib/internal/hash/hash<i16>
     (get_local $1)
    )
   )
   (i32.const 0)
  )
 )
 (func $~lib/set/Set<i16>#rehash (; 27 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (set_local $4
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.shl
     (tee_local $2
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
     )
     (i32.const 2)
    )
    (i32.const 0)
   )
  )
  (set_local $5
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.shl
     (tee_local $7
      (i32.trunc_s/f64
       (f64.mul
        (f64.convert_s/i32
         (get_local $2)
        )
        (f64.const 2.6666666666666665)
       )
      )
     )
     (i32.const 3)
    )
    (i32.const 1)
   )
  )
  (set_local $8
   (i32.add
    (tee_local $2
     (i32.add
      (i32.load offset=8
       (get_local $0)
      )
      (i32.const 8)
     )
    )
    (i32.shl
     (i32.load offset=16
      (get_local $0)
     )
     (i32.const 3)
    )
   )
  )
  (set_local $3
   (i32.add
    (get_local $5)
    (i32.const 8)
   )
  )
  (loop $continue|0
   (if
    (i32.ne
     (get_local $2)
     (get_local $8)
    )
    (block
     (if
      (i32.eqz
       (i32.and
        (i32.load offset=4
         (get_local $2)
        )
        (i32.const 1)
       )
      )
      (block
       (i32.store16
        (get_local $3)
        (i32.load16_s
         (get_local $2)
        )
       )
       (i32.store offset=4
        (get_local $3)
        (i32.load offset=8
         (tee_local $6
          (i32.add
           (get_local $4)
           (i32.shl
            (i32.and
             (tee_local $6
              (call $~lib/internal/hash/hash16
               (i32.load16_s
                (get_local $2)
               )
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
        (get_local $6)
        (get_local $3)
       )
       (set_local $3
        (i32.add
         (get_local $3)
         (i32.const 8)
        )
       )
      )
     )
     (set_local $2
      (i32.add
       (get_local $2)
       (i32.const 8)
      )
     )
     (br $continue|0)
    )
   )
  )
  (i32.store
   (get_local $0)
   (get_local $4)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $1)
  )
  (i32.store offset=8
   (get_local $0)
   (get_local $5)
  )
  (i32.store offset=12
   (get_local $0)
   (get_local $7)
  )
  (i32.store offset=16
   (get_local $0)
   (i32.load offset=20
    (get_local $0)
   )
  )
 )
 (func $~lib/set/Set<i16>#add (; 28 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.eqz
    (call $~lib/set/Set<i16>#find
     (get_local $0)
     (get_local $1)
     (tee_local $4
      (call $~lib/internal/hash/hash<i16>
       (get_local $1)
      )
     )
    )
   )
   (block
    (if
     (i32.eq
      (i32.load offset=16
       (get_local $0)
      )
      (i32.load offset=12
       (get_local $0)
      )
     )
     (call $~lib/set/Set<i16>#rehash
      (get_local $0)
      (tee_local $2
       (if (result i32)
        (i32.lt_s
         (i32.load offset=20
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
        (i32.load offset=4
         (get_local $0)
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
       )
      )
     )
    )
    (set_local $2
     (i32.load offset=8
      (get_local $0)
     )
    )
    (i32.store offset=16
     (get_local $0)
     (i32.add
      (tee_local $3
       (i32.load offset=16
        (get_local $0)
       )
      )
      (i32.const 1)
     )
    )
    (i32.store16
     (tee_local $2
      (i32.add
       (i32.add
        (get_local $2)
        (i32.const 8)
       )
       (i32.shl
        (get_local $3)
        (i32.const 3)
       )
      )
     )
     (get_local $1)
    )
    (i32.store offset=20
     (get_local $0)
     (i32.add
      (i32.load offset=20
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store offset=4
     (get_local $2)
     (i32.load offset=8
      (tee_local $3
       (i32.add
        (i32.load
         (get_local $0)
        )
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
    (i32.store offset=8
     (get_local $3)
     (get_local $2)
    )
   )
  )
 )
 (func $~lib/set/Set<i16>#delete (; 29 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (if
   (i32.eqz
    (tee_local $0
     (call $~lib/set/Set<i16>#find
      (tee_local $2
       (get_local $0)
      )
      (get_local $1)
      (tee_local $0
       (call $~lib/internal/hash/hash16
        (i32.shr_s
         (i32.shl
          (get_local $1)
          (i32.const 16)
         )
         (i32.const 16)
        )
       )
      )
     )
    )
   )
   (return
    (i32.const 0)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (i32.or
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 1)
   )
  )
  (i32.store offset=20
   (get_local $2)
   (i32.sub
    (i32.load offset=20
     (get_local $2)
    )
    (i32.const 1)
   )
  )
  (if
   (tee_local $0
    (i32.ge_u
     (i32.add
      (tee_local $1
       (i32.shr_u
        (i32.load offset=4
         (get_local $2)
        )
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
     (select
      (i32.const 4)
      (tee_local $0
       (i32.load offset=20
        (get_local $2)
       )
      )
      (i32.gt_u
       (i32.const 4)
       (get_local $0)
      )
     )
    )
   )
   (set_local $0
    (i32.lt_s
     (i32.load offset=20
      (get_local $2)
     )
     (i32.trunc_s/f64
      (f64.mul
       (f64.convert_s/i32
        (i32.load offset=12
         (get_local $2)
        )
       )
       (f64.const 0.75)
      )
     )
    )
   )
  )
  (if
   (get_local $0)
   (call $~lib/set/Set<i16>#rehash
    (get_local $2)
    (get_local $1)
   )
  )
  (i32.const 1)
 )
 (func $std/set/test<i16> (; 30 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (set_local $1
   (call $~lib/set/Set<i8>#constructor
    (i32.const 0)
   )
  )
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $0)
      (i32.const 100)
     )
    )
    (if
     (call $~lib/set/Set<i16>#has
      (get_local $1)
      (get_local $0)
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 8)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    (call $~lib/set/Set<i16>#add
     (get_local $1)
     (get_local $0)
    )
    (if
     (call $~lib/set/Set<i16>#has
      (get_local $1)
      (get_local $0)
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
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 10)
       (i32.const 4)
      )
      (unreachable)
     )
    )
   )
  )
  (if
   (i32.ne
    (call $~lib/set/Set<i8>#get:size
     (get_local $1)
    )
    (i32.const 100)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 12)
     (i32.const 2)
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
     (i32.ge_s
      (get_local $0)
      (i32.const 100)
     )
    )
    (if
     (i32.eqz
      (call $~lib/set/Set<i16>#has
       (get_local $1)
       (get_local $0)
      )
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 16)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    (call $~lib/set/Set<i16>#add
     (get_local $1)
     (get_local $0)
    )
    (if
     (call $~lib/set/Set<i16>#has
      (get_local $1)
      (get_local $0)
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
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 18)
       (i32.const 4)
      )
      (unreachable)
     )
    )
   )
  )
  (if
   (i32.ne
    (call $~lib/set/Set<i8>#get:size
     (get_local $1)
    )
    (i32.const 100)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 20)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|2
   (set_local $0
    (i32.const 0)
   )
   (loop $repeat|2
    (br_if $break|2
     (i32.ge_s
      (get_local $0)
      (i32.const 50)
     )
    )
    (if
     (i32.eqz
      (call $~lib/set/Set<i16>#has
       (get_local $1)
       (get_local $0)
      )
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 24)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    (drop
     (call $~lib/set/Set<i16>#delete
      (get_local $1)
      (get_local $0)
     )
    )
    (if
     (call $~lib/set/Set<i16>#has
      (get_local $1)
      (get_local $0)
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 26)
       (i32.const 4)
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
      (br $repeat|2)
     )
    )
   )
  )
  (if
   (i32.ne
    (call $~lib/set/Set<i8>#get:size
     (get_local $1)
    )
    (i32.const 50)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 28)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|3
   (set_local $0
    (i32.const 0)
   )
   (loop $repeat|3
    (br_if $break|3
     (i32.ge_s
      (get_local $0)
      (i32.const 50)
     )
    )
    (if
     (call $~lib/set/Set<i16>#has
      (get_local $1)
      (get_local $0)
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 32)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    (call $~lib/set/Set<i16>#add
     (get_local $1)
     (get_local $0)
    )
    (if
     (i32.eqz
      (call $~lib/set/Set<i16>#has
       (get_local $1)
       (get_local $0)
      )
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 34)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    (drop
     (call $~lib/set/Set<i16>#delete
      (get_local $1)
      (get_local $0)
     )
    )
    (if
     (call $~lib/set/Set<i16>#has
      (get_local $1)
      (get_local $0)
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 36)
       (i32.const 4)
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
      (br $repeat|3)
     )
    )
   )
  )
  (if
   (i32.ne
    (call $~lib/set/Set<i8>#get:size
     (get_local $1)
    )
    (i32.const 50)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 38)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (call $~lib/set/Set<i8>#clear
   (get_local $1)
  )
  (if
   (call $~lib/set/Set<i8>#get:size
    (get_local $1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 42)
     (i32.const 2)
    )
    (unreachable)
   )
  )
 )
 (func $~lib/internal/hash/hash<u16> (; 31 ;) (type $ii) (param $0 i32) (result i32)
  (call $~lib/internal/hash/hash16
   (i32.and
    (get_local $0)
    (i32.const 65535)
   )
  )
 )
 (func $~lib/set/Set<u16>#has (; 32 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.ne
   (call $~lib/set/Set<i16>#find
    (get_local $0)
    (get_local $1)
    (call $~lib/internal/hash/hash<u16>
     (get_local $1)
    )
   )
   (i32.const 0)
  )
 )
 (func $~lib/set/Set<u16>#rehash (; 33 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (set_local $4
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.shl
     (tee_local $2
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
     )
     (i32.const 2)
    )
    (i32.const 0)
   )
  )
  (set_local $5
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.shl
     (tee_local $7
      (i32.trunc_s/f64
       (f64.mul
        (f64.convert_s/i32
         (get_local $2)
        )
        (f64.const 2.6666666666666665)
       )
      )
     )
     (i32.const 3)
    )
    (i32.const 1)
   )
  )
  (set_local $8
   (i32.add
    (tee_local $2
     (i32.add
      (i32.load offset=8
       (get_local $0)
      )
      (i32.const 8)
     )
    )
    (i32.shl
     (i32.load offset=16
      (get_local $0)
     )
     (i32.const 3)
    )
   )
  )
  (set_local $3
   (i32.add
    (get_local $5)
    (i32.const 8)
   )
  )
  (loop $continue|0
   (if
    (i32.ne
     (get_local $2)
     (get_local $8)
    )
    (block
     (if
      (i32.eqz
       (i32.and
        (i32.load offset=4
         (get_local $2)
        )
        (i32.const 1)
       )
      )
      (block
       (i32.store16
        (get_local $3)
        (i32.load16_u
         (get_local $2)
        )
       )
       (i32.store offset=4
        (get_local $3)
        (i32.load offset=8
         (tee_local $6
          (i32.add
           (get_local $4)
           (i32.shl
            (i32.and
             (tee_local $6
              (call $~lib/internal/hash/hash16
               (i32.load16_u
                (get_local $2)
               )
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
        (get_local $6)
        (get_local $3)
       )
       (set_local $3
        (i32.add
         (get_local $3)
         (i32.const 8)
        )
       )
      )
     )
     (set_local $2
      (i32.add
       (get_local $2)
       (i32.const 8)
      )
     )
     (br $continue|0)
    )
   )
  )
  (i32.store
   (get_local $0)
   (get_local $4)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $1)
  )
  (i32.store offset=8
   (get_local $0)
   (get_local $5)
  )
  (i32.store offset=12
   (get_local $0)
   (get_local $7)
  )
  (i32.store offset=16
   (get_local $0)
   (i32.load offset=20
    (get_local $0)
   )
  )
 )
 (func $~lib/set/Set<u16>#add (; 34 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.eqz
    (call $~lib/set/Set<i16>#find
     (get_local $0)
     (get_local $1)
     (tee_local $4
      (call $~lib/internal/hash/hash<u16>
       (get_local $1)
      )
     )
    )
   )
   (block
    (if
     (i32.eq
      (i32.load offset=16
       (get_local $0)
      )
      (i32.load offset=12
       (get_local $0)
      )
     )
     (call $~lib/set/Set<u16>#rehash
      (get_local $0)
      (tee_local $2
       (if (result i32)
        (i32.lt_s
         (i32.load offset=20
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
        (i32.load offset=4
         (get_local $0)
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
       )
      )
     )
    )
    (set_local $2
     (i32.load offset=8
      (get_local $0)
     )
    )
    (i32.store offset=16
     (get_local $0)
     (i32.add
      (tee_local $3
       (i32.load offset=16
        (get_local $0)
       )
      )
      (i32.const 1)
     )
    )
    (i32.store16
     (tee_local $2
      (i32.add
       (i32.add
        (get_local $2)
        (i32.const 8)
       )
       (i32.shl
        (get_local $3)
        (i32.const 3)
       )
      )
     )
     (get_local $1)
    )
    (i32.store offset=20
     (get_local $0)
     (i32.add
      (i32.load offset=20
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store offset=4
     (get_local $2)
     (i32.load offset=8
      (tee_local $3
       (i32.add
        (i32.load
         (get_local $0)
        )
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
    (i32.store offset=8
     (get_local $3)
     (get_local $2)
    )
   )
  )
 )
 (func $~lib/set/Set<u16>#delete (; 35 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (if
   (i32.eqz
    (tee_local $0
     (call $~lib/set/Set<i16>#find
      (tee_local $2
       (get_local $0)
      )
      (get_local $1)
      (tee_local $0
       (call $~lib/internal/hash/hash16
        (i32.and
         (get_local $1)
         (i32.const 65535)
        )
       )
      )
     )
    )
   )
   (return
    (i32.const 0)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (i32.or
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 1)
   )
  )
  (i32.store offset=20
   (get_local $2)
   (i32.sub
    (i32.load offset=20
     (get_local $2)
    )
    (i32.const 1)
   )
  )
  (if
   (tee_local $0
    (i32.ge_u
     (i32.add
      (tee_local $1
       (i32.shr_u
        (i32.load offset=4
         (get_local $2)
        )
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
     (select
      (i32.const 4)
      (tee_local $0
       (i32.load offset=20
        (get_local $2)
       )
      )
      (i32.gt_u
       (i32.const 4)
       (get_local $0)
      )
     )
    )
   )
   (set_local $0
    (i32.lt_s
     (i32.load offset=20
      (get_local $2)
     )
     (i32.trunc_s/f64
      (f64.mul
       (f64.convert_s/i32
        (i32.load offset=12
         (get_local $2)
        )
       )
       (f64.const 0.75)
      )
     )
    )
   )
  )
  (if
   (get_local $0)
   (call $~lib/set/Set<u16>#rehash
    (get_local $2)
    (get_local $1)
   )
  )
  (i32.const 1)
 )
 (func $std/set/test<u16> (; 36 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (set_local $1
   (call $~lib/set/Set<i8>#constructor
    (i32.const 0)
   )
  )
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_u
      (get_local $0)
      (i32.const 100)
     )
    )
    (if
     (call $~lib/set/Set<u16>#has
      (get_local $1)
      (get_local $0)
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 8)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    (call $~lib/set/Set<u16>#add
     (get_local $1)
     (get_local $0)
    )
    (if
     (call $~lib/set/Set<u16>#has
      (get_local $1)
      (get_local $0)
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
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 10)
       (i32.const 4)
      )
      (unreachable)
     )
    )
   )
  )
  (if
   (i32.ne
    (call $~lib/set/Set<i8>#get:size
     (get_local $1)
    )
    (i32.const 100)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 12)
     (i32.const 2)
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
     (i32.ge_u
      (get_local $0)
      (i32.const 100)
     )
    )
    (if
     (i32.eqz
      (call $~lib/set/Set<u16>#has
       (get_local $1)
       (get_local $0)
      )
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 16)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    (call $~lib/set/Set<u16>#add
     (get_local $1)
     (get_local $0)
    )
    (if
     (call $~lib/set/Set<u16>#has
      (get_local $1)
      (get_local $0)
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
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 18)
       (i32.const 4)
      )
      (unreachable)
     )
    )
   )
  )
  (if
   (i32.ne
    (call $~lib/set/Set<i8>#get:size
     (get_local $1)
    )
    (i32.const 100)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 20)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|2
   (set_local $0
    (i32.const 0)
   )
   (loop $repeat|2
    (br_if $break|2
     (i32.ge_u
      (get_local $0)
      (i32.const 50)
     )
    )
    (if
     (i32.eqz
      (call $~lib/set/Set<u16>#has
       (get_local $1)
       (get_local $0)
      )
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 24)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    (drop
     (call $~lib/set/Set<u16>#delete
      (get_local $1)
      (get_local $0)
     )
    )
    (if
     (call $~lib/set/Set<u16>#has
      (get_local $1)
      (get_local $0)
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 26)
       (i32.const 4)
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
      (br $repeat|2)
     )
    )
   )
  )
  (if
   (i32.ne
    (call $~lib/set/Set<i8>#get:size
     (get_local $1)
    )
    (i32.const 50)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 28)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|3
   (set_local $0
    (i32.const 0)
   )
   (loop $repeat|3
    (br_if $break|3
     (i32.ge_u
      (get_local $0)
      (i32.const 50)
     )
    )
    (if
     (call $~lib/set/Set<u16>#has
      (get_local $1)
      (get_local $0)
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 32)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    (call $~lib/set/Set<u16>#add
     (get_local $1)
     (get_local $0)
    )
    (if
     (i32.eqz
      (call $~lib/set/Set<u16>#has
       (get_local $1)
       (get_local $0)
      )
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 34)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    (drop
     (call $~lib/set/Set<u16>#delete
      (get_local $1)
      (get_local $0)
     )
    )
    (if
     (call $~lib/set/Set<u16>#has
      (get_local $1)
      (get_local $0)
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 36)
       (i32.const 4)
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
      (br $repeat|3)
     )
    )
   )
  )
  (if
   (i32.ne
    (call $~lib/set/Set<i8>#get:size
     (get_local $1)
    )
    (i32.const 50)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 38)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (call $~lib/set/Set<i8>#clear
   (get_local $1)
  )
  (if
   (call $~lib/set/Set<i8>#get:size
    (get_local $1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 42)
     (i32.const 2)
    )
    (unreachable)
   )
  )
 )
 (func $~lib/internal/hash/hash32 (; 37 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $~lib/internal/hash/hash<i32> (; 38 ;) (type $ii) (param $0 i32) (result i32)
  (call $~lib/internal/hash/hash32
   (get_local $0)
  )
 )
 (func $~lib/set/Set<i32>#find (; 39 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
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
         (i32.load offset=4
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
       (i32.load offset=4
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
 (func $~lib/set/Set<i32>#has (; 40 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (i32.ne
   (call $~lib/set/Set<i32>#find
    (get_local $0)
    (get_local $1)
    (call $~lib/internal/hash/hash<i32>
     (get_local $1)
    )
   )
   (i32.const 0)
  )
 )
 (func $~lib/set/Set<i32>#rehash (; 41 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (set_local $4
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.shl
     (tee_local $2
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
     )
     (i32.const 2)
    )
    (i32.const 0)
   )
  )
  (set_local $5
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.shl
     (tee_local $7
      (i32.trunc_s/f64
       (f64.mul
        (f64.convert_s/i32
         (get_local $2)
        )
        (f64.const 2.6666666666666665)
       )
      )
     )
     (i32.const 3)
    )
    (i32.const 1)
   )
  )
  (set_local $8
   (i32.add
    (tee_local $2
     (i32.add
      (i32.load offset=8
       (get_local $0)
      )
      (i32.const 8)
     )
    )
    (i32.shl
     (i32.load offset=16
      (get_local $0)
     )
     (i32.const 3)
    )
   )
  )
  (set_local $3
   (i32.add
    (get_local $5)
    (i32.const 8)
   )
  )
  (loop $continue|0
   (if
    (i32.ne
     (get_local $2)
     (get_local $8)
    )
    (block
     (if
      (i32.eqz
       (i32.and
        (i32.load offset=4
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
        (i32.load offset=8
         (tee_local $6
          (i32.add
           (get_local $4)
           (i32.shl
            (i32.and
             (tee_local $6
              (call $~lib/internal/hash/hash32
               (i32.load
                (get_local $2)
               )
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
        (get_local $6)
        (get_local $3)
       )
       (set_local $3
        (i32.add
         (get_local $3)
         (i32.const 8)
        )
       )
      )
     )
     (set_local $2
      (i32.add
       (get_local $2)
       (i32.const 8)
      )
     )
     (br $continue|0)
    )
   )
  )
  (i32.store
   (get_local $0)
   (get_local $4)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $1)
  )
  (i32.store offset=8
   (get_local $0)
   (get_local $5)
  )
  (i32.store offset=12
   (get_local $0)
   (get_local $7)
  )
  (i32.store offset=16
   (get_local $0)
   (i32.load offset=20
    (get_local $0)
   )
  )
 )
 (func $~lib/set/Set<i32>#add (; 42 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.eqz
    (call $~lib/set/Set<i32>#find
     (get_local $0)
     (get_local $1)
     (tee_local $4
      (call $~lib/internal/hash/hash<i32>
       (get_local $1)
      )
     )
    )
   )
   (block
    (if
     (i32.eq
      (i32.load offset=16
       (get_local $0)
      )
      (i32.load offset=12
       (get_local $0)
      )
     )
     (call $~lib/set/Set<i32>#rehash
      (get_local $0)
      (tee_local $2
       (if (result i32)
        (i32.lt_s
         (i32.load offset=20
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
        (i32.load offset=4
         (get_local $0)
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
       )
      )
     )
    )
    (set_local $2
     (i32.load offset=8
      (get_local $0)
     )
    )
    (i32.store offset=16
     (get_local $0)
     (i32.add
      (tee_local $3
       (i32.load offset=16
        (get_local $0)
       )
      )
      (i32.const 1)
     )
    )
    (i32.store
     (tee_local $2
      (i32.add
       (i32.add
        (get_local $2)
        (i32.const 8)
       )
       (i32.shl
        (get_local $3)
        (i32.const 3)
       )
      )
     )
     (get_local $1)
    )
    (i32.store offset=20
     (get_local $0)
     (i32.add
      (i32.load offset=20
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store offset=4
     (get_local $2)
     (i32.load offset=8
      (tee_local $3
       (i32.add
        (i32.load
         (get_local $0)
        )
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
    (i32.store offset=8
     (get_local $3)
     (get_local $2)
    )
   )
  )
 )
 (func $~lib/set/Set<i32>#delete (; 43 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (if
   (i32.eqz
    (tee_local $0
     (call $~lib/set/Set<i32>#find
      (tee_local $2
       (get_local $0)
      )
      (get_local $1)
      (tee_local $0
       (call $~lib/internal/hash/hash32
        (get_local $1)
       )
      )
     )
    )
   )
   (return
    (i32.const 0)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (i32.or
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 1)
   )
  )
  (i32.store offset=20
   (get_local $2)
   (i32.sub
    (i32.load offset=20
     (get_local $2)
    )
    (i32.const 1)
   )
  )
  (if
   (tee_local $0
    (i32.ge_u
     (i32.add
      (tee_local $1
       (i32.shr_u
        (i32.load offset=4
         (get_local $2)
        )
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
     (select
      (i32.const 4)
      (tee_local $0
       (i32.load offset=20
        (get_local $2)
       )
      )
      (i32.gt_u
       (i32.const 4)
       (get_local $0)
      )
     )
    )
   )
   (set_local $0
    (i32.lt_s
     (i32.load offset=20
      (get_local $2)
     )
     (i32.trunc_s/f64
      (f64.mul
       (f64.convert_s/i32
        (i32.load offset=12
         (get_local $2)
        )
       )
       (f64.const 0.75)
      )
     )
    )
   )
  )
  (if
   (get_local $0)
   (call $~lib/set/Set<i32>#rehash
    (get_local $2)
    (get_local $1)
   )
  )
  (i32.const 1)
 )
 (func $std/set/test<i32> (; 44 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (set_local $1
   (call $~lib/set/Set<i8>#constructor
    (i32.const 0)
   )
  )
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $0)
      (i32.const 100)
     )
    )
    (if
     (call $~lib/set/Set<i32>#has
      (get_local $1)
      (get_local $0)
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 8)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    (call $~lib/set/Set<i32>#add
     (get_local $1)
     (get_local $0)
    )
    (if
     (call $~lib/set/Set<i32>#has
      (get_local $1)
      (get_local $0)
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
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 10)
       (i32.const 4)
      )
      (unreachable)
     )
    )
   )
  )
  (if
   (i32.ne
    (call $~lib/set/Set<i8>#get:size
     (get_local $1)
    )
    (i32.const 100)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 12)
     (i32.const 2)
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
     (i32.ge_s
      (get_local $0)
      (i32.const 100)
     )
    )
    (if
     (i32.eqz
      (call $~lib/set/Set<i32>#has
       (get_local $1)
       (get_local $0)
      )
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 16)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    (call $~lib/set/Set<i32>#add
     (get_local $1)
     (get_local $0)
    )
    (if
     (call $~lib/set/Set<i32>#has
      (get_local $1)
      (get_local $0)
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
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 18)
       (i32.const 4)
      )
      (unreachable)
     )
    )
   )
  )
  (if
   (i32.ne
    (call $~lib/set/Set<i8>#get:size
     (get_local $1)
    )
    (i32.const 100)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 20)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|2
   (set_local $0
    (i32.const 0)
   )
   (loop $repeat|2
    (br_if $break|2
     (i32.ge_s
      (get_local $0)
      (i32.const 50)
     )
    )
    (if
     (i32.eqz
      (call $~lib/set/Set<i32>#has
       (get_local $1)
       (get_local $0)
      )
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 24)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    (drop
     (call $~lib/set/Set<i32>#delete
      (get_local $1)
      (get_local $0)
     )
    )
    (if
     (call $~lib/set/Set<i32>#has
      (get_local $1)
      (get_local $0)
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 26)
       (i32.const 4)
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
      (br $repeat|2)
     )
    )
   )
  )
  (if
   (i32.ne
    (call $~lib/set/Set<i8>#get:size
     (get_local $1)
    )
    (i32.const 50)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 28)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|3
   (set_local $0
    (i32.const 0)
   )
   (loop $repeat|3
    (br_if $break|3
     (i32.ge_s
      (get_local $0)
      (i32.const 50)
     )
    )
    (if
     (call $~lib/set/Set<i32>#has
      (get_local $1)
      (get_local $0)
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 32)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    (call $~lib/set/Set<i32>#add
     (get_local $1)
     (get_local $0)
    )
    (if
     (i32.eqz
      (call $~lib/set/Set<i32>#has
       (get_local $1)
       (get_local $0)
      )
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 34)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    (drop
     (call $~lib/set/Set<i32>#delete
      (get_local $1)
      (get_local $0)
     )
    )
    (if
     (call $~lib/set/Set<i32>#has
      (get_local $1)
      (get_local $0)
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 36)
       (i32.const 4)
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
      (br $repeat|3)
     )
    )
   )
  )
  (if
   (i32.ne
    (call $~lib/set/Set<i8>#get:size
     (get_local $1)
    )
    (i32.const 50)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 38)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (call $~lib/set/Set<i8>#clear
   (get_local $1)
  )
  (if
   (call $~lib/set/Set<i8>#get:size
    (get_local $1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 42)
     (i32.const 2)
    )
    (unreachable)
   )
  )
 )
 (func $std/set/test<u32> (; 45 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (set_local $1
   (call $~lib/set/Set<i8>#constructor
    (i32.const 0)
   )
  )
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_u
      (get_local $0)
      (i32.const 100)
     )
    )
    (if
     (call $~lib/set/Set<i32>#has
      (get_local $1)
      (get_local $0)
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 8)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    (call $~lib/set/Set<i32>#add
     (get_local $1)
     (get_local $0)
    )
    (if
     (call $~lib/set/Set<i32>#has
      (get_local $1)
      (get_local $0)
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
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 10)
       (i32.const 4)
      )
      (unreachable)
     )
    )
   )
  )
  (if
   (i32.ne
    (call $~lib/set/Set<i8>#get:size
     (get_local $1)
    )
    (i32.const 100)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 12)
     (i32.const 2)
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
     (i32.ge_u
      (get_local $0)
      (i32.const 100)
     )
    )
    (if
     (i32.eqz
      (call $~lib/set/Set<i32>#has
       (get_local $1)
       (get_local $0)
      )
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 16)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    (call $~lib/set/Set<i32>#add
     (get_local $1)
     (get_local $0)
    )
    (if
     (call $~lib/set/Set<i32>#has
      (get_local $1)
      (get_local $0)
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
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 18)
       (i32.const 4)
      )
      (unreachable)
     )
    )
   )
  )
  (if
   (i32.ne
    (call $~lib/set/Set<i8>#get:size
     (get_local $1)
    )
    (i32.const 100)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 20)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|2
   (set_local $0
    (i32.const 0)
   )
   (loop $repeat|2
    (br_if $break|2
     (i32.ge_u
      (get_local $0)
      (i32.const 50)
     )
    )
    (if
     (i32.eqz
      (call $~lib/set/Set<i32>#has
       (get_local $1)
       (get_local $0)
      )
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 24)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    (drop
     (call $~lib/set/Set<i32>#delete
      (get_local $1)
      (get_local $0)
     )
    )
    (if
     (call $~lib/set/Set<i32>#has
      (get_local $1)
      (get_local $0)
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 26)
       (i32.const 4)
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
      (br $repeat|2)
     )
    )
   )
  )
  (if
   (i32.ne
    (call $~lib/set/Set<i8>#get:size
     (get_local $1)
    )
    (i32.const 50)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 28)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|3
   (set_local $0
    (i32.const 0)
   )
   (loop $repeat|3
    (br_if $break|3
     (i32.ge_u
      (get_local $0)
      (i32.const 50)
     )
    )
    (if
     (call $~lib/set/Set<i32>#has
      (get_local $1)
      (get_local $0)
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 32)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    (call $~lib/set/Set<i32>#add
     (get_local $1)
     (get_local $0)
    )
    (if
     (i32.eqz
      (call $~lib/set/Set<i32>#has
       (get_local $1)
       (get_local $0)
      )
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 34)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    (drop
     (call $~lib/set/Set<i32>#delete
      (get_local $1)
      (get_local $0)
     )
    )
    (if
     (call $~lib/set/Set<i32>#has
      (get_local $1)
      (get_local $0)
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 36)
       (i32.const 4)
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
      (br $repeat|3)
     )
    )
   )
  )
  (if
   (i32.ne
    (call $~lib/set/Set<i8>#get:size
     (get_local $1)
    )
    (i32.const 50)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 38)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (call $~lib/set/Set<i8>#clear
   (get_local $1)
  )
  (if
   (call $~lib/set/Set<i8>#get:size
    (get_local $1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 42)
     (i32.const 2)
    )
    (unreachable)
   )
  )
 )
 (func $~lib/set/Set<i64>#clear (; 46 ;) (type $iv) (param $0 i32)
  (i32.store
   (get_local $0)
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.const 16)
    (i32.const 0)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (i32.const 3)
  )
  (i32.store offset=8
   (get_local $0)
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.const 64)
    (i32.const 1)
   )
  )
  (i32.store offset=12
   (get_local $0)
   (i32.const 4)
  )
  (i32.store offset=16
   (get_local $0)
   (i32.const 0)
  )
  (i32.store offset=20
   (get_local $0)
   (i32.const 0)
  )
 )
 (func $~lib/set/Set<i64>#constructor (; 47 ;) (type $ii) (param $0 i32) (result i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (block
    (i32.store
     (tee_local $0
      (call $~lib/allocator/arena/allocate_memory
       (i32.const 24)
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
    (i32.store offset=20
     (get_local $0)
     (i32.const 0)
    )
   )
  )
  (call $~lib/set/Set<i64>#clear
   (get_local $0)
  )
  (get_local $0)
 )
 (func $~lib/internal/hash/hash64 (; 48 ;) (type $Ii) (param $0 i64) (result i32)
  (local $1 i32)
  (i32.mul
   (i32.xor
    (i32.mul
     (i32.xor
      (i32.mul
       (i32.xor
        (i32.mul
         (i32.xor
          (i32.mul
           (i32.xor
            (i32.mul
             (i32.xor
              (i32.mul
               (i32.xor
                (i32.mul
                 (i32.xor
                  (i32.and
                   (tee_local $1
                    (i32.wrap/i64
                     (get_local $0)
                    )
                   )
                   (i32.const 255)
                  )
                  (i32.const -2128831035)
                 )
                 (i32.const 16777619)
                )
                (i32.and
                 (i32.shr_u
                  (get_local $1)
                  (i32.const 8)
                 )
                 (i32.const 255)
                )
               )
               (i32.const 16777619)
              )
              (i32.and
               (i32.shr_u
                (get_local $1)
                (i32.const 16)
               )
               (i32.const 255)
              )
             )
             (i32.const 16777619)
            )
            (i32.shr_u
             (get_local $1)
             (i32.const 24)
            )
           )
           (i32.const 16777619)
          )
          (i32.and
           (tee_local $1
            (i32.wrap/i64
             (i64.shr_u
              (get_local $0)
              (i64.const 32)
             )
            )
           )
           (i32.const 255)
          )
         )
         (i32.const 16777619)
        )
        (i32.and
         (i32.shr_u
          (get_local $1)
          (i32.const 8)
         )
         (i32.const 255)
        )
       )
       (i32.const 16777619)
      )
      (i32.and
       (i32.shr_u
        (get_local $1)
        (i32.const 16)
       )
       (i32.const 255)
      )
     )
     (i32.const 16777619)
    )
    (i32.shr_u
     (get_local $1)
     (i32.const 24)
    )
   )
   (i32.const 16777619)
  )
 )
 (func $~lib/internal/hash/hash<i64> (; 49 ;) (type $Ii) (param $0 i64) (result i32)
  (call $~lib/internal/hash/hash64
   (get_local $0)
  )
 )
 (func $~lib/set/Set<i64>#find (; 50 ;) (type $iIii) (param $0 i32) (param $1 i64) (param $2 i32) (result i32)
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
       (i64.eq
        (i64.load
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
 (func $~lib/set/Set<i64>#has (; 51 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (i32.ne
   (call $~lib/set/Set<i64>#find
    (get_local $0)
    (get_local $1)
    (call $~lib/internal/hash/hash<i64>
     (get_local $1)
    )
   )
   (i32.const 0)
  )
 )
 (func $~lib/set/Set<i64>#rehash (; 52 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (set_local $4
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.shl
     (tee_local $2
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
     )
     (i32.const 2)
    )
    (i32.const 0)
   )
  )
  (set_local $5
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.shl
     (tee_local $7
      (i32.trunc_s/f64
       (f64.mul
        (f64.convert_s/i32
         (get_local $2)
        )
        (f64.const 2.6666666666666665)
       )
      )
     )
     (i32.const 4)
    )
    (i32.const 1)
   )
  )
  (set_local $8
   (i32.add
    (tee_local $2
     (i32.add
      (i32.load offset=8
       (get_local $0)
      )
      (i32.const 8)
     )
    )
    (i32.shl
     (i32.load offset=16
      (get_local $0)
     )
     (i32.const 4)
    )
   )
  )
  (set_local $3
   (i32.add
    (get_local $5)
    (i32.const 8)
   )
  )
  (loop $continue|0
   (if
    (i32.ne
     (get_local $2)
     (get_local $8)
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
       (i64.store
        (get_local $3)
        (i64.load
         (get_local $2)
        )
       )
       (i32.store offset=8
        (get_local $3)
        (i32.load offset=8
         (tee_local $6
          (i32.add
           (get_local $4)
           (i32.shl
            (i32.and
             (tee_local $6
              (call $~lib/internal/hash/hash64
               (i64.load
                (get_local $2)
               )
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
        (get_local $6)
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
   (get_local $4)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $1)
  )
  (i32.store offset=8
   (get_local $0)
   (get_local $5)
  )
  (i32.store offset=12
   (get_local $0)
   (get_local $7)
  )
  (i32.store offset=16
   (get_local $0)
   (i32.load offset=20
    (get_local $0)
   )
  )
 )
 (func $~lib/set/Set<i64>#add (; 53 ;) (type $iIv) (param $0 i32) (param $1 i64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.eqz
    (call $~lib/set/Set<i64>#find
     (get_local $0)
     (get_local $1)
     (tee_local $4
      (call $~lib/internal/hash/hash<i64>
       (get_local $1)
      )
     )
    )
   )
   (block
    (if
     (i32.eq
      (i32.load offset=16
       (get_local $0)
      )
      (i32.load offset=12
       (get_local $0)
      )
     )
     (call $~lib/set/Set<i64>#rehash
      (get_local $0)
      (tee_local $2
       (if (result i32)
        (i32.lt_s
         (i32.load offset=20
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
        (i32.load offset=4
         (get_local $0)
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
       )
      )
     )
    )
    (set_local $2
     (i32.load offset=8
      (get_local $0)
     )
    )
    (i32.store offset=16
     (get_local $0)
     (i32.add
      (tee_local $3
       (i32.load offset=16
        (get_local $0)
       )
      )
      (i32.const 1)
     )
    )
    (i64.store
     (tee_local $2
      (i32.add
       (i32.add
        (get_local $2)
        (i32.const 8)
       )
       (i32.shl
        (get_local $3)
        (i32.const 4)
       )
      )
     )
     (get_local $1)
    )
    (i32.store offset=20
     (get_local $0)
     (i32.add
      (i32.load offset=20
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store offset=8
     (get_local $2)
     (i32.load offset=8
      (tee_local $3
       (i32.add
        (i32.load
         (get_local $0)
        )
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
    (i32.store offset=8
     (get_local $3)
     (get_local $2)
    )
   )
  )
 )
 (func $~lib/set/Set<i64>#delete (; 54 ;) (type $iIi) (param $0 i32) (param $1 i64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i32.eqz
    (tee_local $0
     (call $~lib/set/Set<i64>#find
      (tee_local $2
       (get_local $0)
      )
      (get_local $1)
      (tee_local $0
       (call $~lib/internal/hash/hash64
        (get_local $1)
       )
      )
     )
    )
   )
   (return
    (i32.const 0)
   )
  )
  (i32.store offset=8
   (get_local $0)
   (i32.or
    (i32.load offset=8
     (get_local $0)
    )
    (i32.const 1)
   )
  )
  (i32.store offset=20
   (get_local $2)
   (i32.sub
    (i32.load offset=20
     (get_local $2)
    )
    (i32.const 1)
   )
  )
  (if
   (tee_local $0
    (i32.ge_u
     (i32.add
      (tee_local $3
       (i32.shr_u
        (i32.load offset=4
         (get_local $2)
        )
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
     (select
      (i32.const 4)
      (tee_local $0
       (i32.load offset=20
        (get_local $2)
       )
      )
      (i32.gt_u
       (i32.const 4)
       (get_local $0)
      )
     )
    )
   )
   (set_local $0
    (i32.lt_s
     (i32.load offset=20
      (get_local $2)
     )
     (i32.trunc_s/f64
      (f64.mul
       (f64.convert_s/i32
        (i32.load offset=12
         (get_local $2)
        )
       )
       (f64.const 0.75)
      )
     )
    )
   )
  )
  (if
   (get_local $0)
   (call $~lib/set/Set<i64>#rehash
    (get_local $2)
    (get_local $3)
   )
  )
  (i32.const 1)
 )
 (func $std/set/test<i64> (; 55 ;) (type $v)
  (local $0 i64)
  (local $1 i32)
  (set_local $1
   (call $~lib/set/Set<i64>#constructor
    (i32.const 0)
   )
  )
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i64.ge_s
      (get_local $0)
      (i64.const 100)
     )
    )
    (if
     (call $~lib/set/Set<i64>#has
      (get_local $1)
      (get_local $0)
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 8)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    (call $~lib/set/Set<i64>#add
     (get_local $1)
     (get_local $0)
    )
    (if
     (call $~lib/set/Set<i64>#has
      (get_local $1)
      (get_local $0)
     )
     (block
      (set_local $0
       (i64.add
        (get_local $0)
        (i64.const 1)
       )
      )
      (br $repeat|0)
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 10)
       (i32.const 4)
      )
      (unreachable)
     )
    )
   )
  )
  (if
   (i32.ne
    (call $~lib/set/Set<i8>#get:size
     (get_local $1)
    )
    (i32.const 100)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 12)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|1
   (set_local $0
    (i64.const 50)
   )
   (loop $repeat|1
    (br_if $break|1
     (i64.ge_s
      (get_local $0)
      (i64.const 100)
     )
    )
    (if
     (i32.eqz
      (call $~lib/set/Set<i64>#has
       (get_local $1)
       (get_local $0)
      )
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 16)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    (call $~lib/set/Set<i64>#add
     (get_local $1)
     (get_local $0)
    )
    (if
     (call $~lib/set/Set<i64>#has
      (get_local $1)
      (get_local $0)
     )
     (block
      (set_local $0
       (i64.add
        (get_local $0)
        (i64.const 1)
       )
      )
      (br $repeat|1)
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 18)
       (i32.const 4)
      )
      (unreachable)
     )
    )
   )
  )
  (if
   (i32.ne
    (call $~lib/set/Set<i8>#get:size
     (get_local $1)
    )
    (i32.const 100)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 20)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|2
   (set_local $0
    (i64.const 0)
   )
   (loop $repeat|2
    (br_if $break|2
     (i64.ge_s
      (get_local $0)
      (i64.const 50)
     )
    )
    (if
     (i32.eqz
      (call $~lib/set/Set<i64>#has
       (get_local $1)
       (get_local $0)
      )
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 24)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    (drop
     (call $~lib/set/Set<i64>#delete
      (get_local $1)
      (get_local $0)
     )
    )
    (if
     (call $~lib/set/Set<i64>#has
      (get_local $1)
      (get_local $0)
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 26)
       (i32.const 4)
      )
      (unreachable)
     )
     (block
      (set_local $0
       (i64.add
        (get_local $0)
        (i64.const 1)
       )
      )
      (br $repeat|2)
     )
    )
   )
  )
  (if
   (i32.ne
    (call $~lib/set/Set<i8>#get:size
     (get_local $1)
    )
    (i32.const 50)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 28)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|3
   (set_local $0
    (i64.const 0)
   )
   (loop $repeat|3
    (br_if $break|3
     (i64.ge_s
      (get_local $0)
      (i64.const 50)
     )
    )
    (if
     (call $~lib/set/Set<i64>#has
      (get_local $1)
      (get_local $0)
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 32)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    (call $~lib/set/Set<i64>#add
     (get_local $1)
     (get_local $0)
    )
    (if
     (i32.eqz
      (call $~lib/set/Set<i64>#has
       (get_local $1)
       (get_local $0)
      )
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 34)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    (drop
     (call $~lib/set/Set<i64>#delete
      (get_local $1)
      (get_local $0)
     )
    )
    (if
     (call $~lib/set/Set<i64>#has
      (get_local $1)
      (get_local $0)
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 36)
       (i32.const 4)
      )
      (unreachable)
     )
     (block
      (set_local $0
       (i64.add
        (get_local $0)
        (i64.const 1)
       )
      )
      (br $repeat|3)
     )
    )
   )
  )
  (if
   (i32.ne
    (call $~lib/set/Set<i8>#get:size
     (get_local $1)
    )
    (i32.const 50)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 38)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (call $~lib/set/Set<i64>#clear
   (get_local $1)
  )
  (if
   (call $~lib/set/Set<i8>#get:size
    (get_local $1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 42)
     (i32.const 2)
    )
    (unreachable)
   )
  )
 )
 (func $std/set/test<u64> (; 56 ;) (type $v)
  (local $0 i64)
  (local $1 i32)
  (set_local $1
   (call $~lib/set/Set<i64>#constructor
    (i32.const 0)
   )
  )
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i64.ge_u
      (get_local $0)
      (i64.const 100)
     )
    )
    (if
     (call $~lib/set/Set<i64>#has
      (get_local $1)
      (get_local $0)
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 8)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    (call $~lib/set/Set<i64>#add
     (get_local $1)
     (get_local $0)
    )
    (if
     (call $~lib/set/Set<i64>#has
      (get_local $1)
      (get_local $0)
     )
     (block
      (set_local $0
       (i64.add
        (get_local $0)
        (i64.const 1)
       )
      )
      (br $repeat|0)
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 10)
       (i32.const 4)
      )
      (unreachable)
     )
    )
   )
  )
  (if
   (i32.ne
    (call $~lib/set/Set<i8>#get:size
     (get_local $1)
    )
    (i32.const 100)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 12)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|1
   (set_local $0
    (i64.const 50)
   )
   (loop $repeat|1
    (br_if $break|1
     (i64.ge_u
      (get_local $0)
      (i64.const 100)
     )
    )
    (if
     (i32.eqz
      (call $~lib/set/Set<i64>#has
       (get_local $1)
       (get_local $0)
      )
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 16)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    (call $~lib/set/Set<i64>#add
     (get_local $1)
     (get_local $0)
    )
    (if
     (call $~lib/set/Set<i64>#has
      (get_local $1)
      (get_local $0)
     )
     (block
      (set_local $0
       (i64.add
        (get_local $0)
        (i64.const 1)
       )
      )
      (br $repeat|1)
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 18)
       (i32.const 4)
      )
      (unreachable)
     )
    )
   )
  )
  (if
   (i32.ne
    (call $~lib/set/Set<i8>#get:size
     (get_local $1)
    )
    (i32.const 100)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 20)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|2
   (set_local $0
    (i64.const 0)
   )
   (loop $repeat|2
    (br_if $break|2
     (i64.ge_u
      (get_local $0)
      (i64.const 50)
     )
    )
    (if
     (i32.eqz
      (call $~lib/set/Set<i64>#has
       (get_local $1)
       (get_local $0)
      )
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 24)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    (drop
     (call $~lib/set/Set<i64>#delete
      (get_local $1)
      (get_local $0)
     )
    )
    (if
     (call $~lib/set/Set<i64>#has
      (get_local $1)
      (get_local $0)
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 26)
       (i32.const 4)
      )
      (unreachable)
     )
     (block
      (set_local $0
       (i64.add
        (get_local $0)
        (i64.const 1)
       )
      )
      (br $repeat|2)
     )
    )
   )
  )
  (if
   (i32.ne
    (call $~lib/set/Set<i8>#get:size
     (get_local $1)
    )
    (i32.const 50)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 28)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|3
   (set_local $0
    (i64.const 0)
   )
   (loop $repeat|3
    (br_if $break|3
     (i64.ge_u
      (get_local $0)
      (i64.const 50)
     )
    )
    (if
     (call $~lib/set/Set<i64>#has
      (get_local $1)
      (get_local $0)
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 32)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    (call $~lib/set/Set<i64>#add
     (get_local $1)
     (get_local $0)
    )
    (if
     (i32.eqz
      (call $~lib/set/Set<i64>#has
       (get_local $1)
       (get_local $0)
      )
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 34)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    (drop
     (call $~lib/set/Set<i64>#delete
      (get_local $1)
      (get_local $0)
     )
    )
    (if
     (call $~lib/set/Set<i64>#has
      (get_local $1)
      (get_local $0)
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 36)
       (i32.const 4)
      )
      (unreachable)
     )
     (block
      (set_local $0
       (i64.add
        (get_local $0)
        (i64.const 1)
       )
      )
      (br $repeat|3)
     )
    )
   )
  )
  (if
   (i32.ne
    (call $~lib/set/Set<i8>#get:size
     (get_local $1)
    )
    (i32.const 50)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 38)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (call $~lib/set/Set<i64>#clear
   (get_local $1)
  )
  (if
   (call $~lib/set/Set<i8>#get:size
    (get_local $1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 42)
     (i32.const 2)
    )
    (unreachable)
   )
  )
 )
 (func $~lib/internal/hash/hash<f32> (; 57 ;) (type $fi) (param $0 f32) (result i32)
  (call $~lib/internal/hash/hash32
   (i32.reinterpret/f32
    (get_local $0)
   )
  )
 )
 (func $~lib/set/Set<f32>#find (; 58 ;) (type $ifii) (param $0 i32) (param $1 f32) (param $2 i32) (result i32)
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
         (i32.load offset=4
          (get_local $2)
         )
         (i32.const 1)
        )
       )
      )
      (set_local $0
       (f32.eq
        (f32.load
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
       (i32.load offset=4
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
 (func $~lib/set/Set<f32>#has (; 59 ;) (type $ifi) (param $0 i32) (param $1 f32) (result i32)
  (i32.ne
   (call $~lib/set/Set<f32>#find
    (get_local $0)
    (get_local $1)
    (call $~lib/internal/hash/hash<f32>
     (get_local $1)
    )
   )
   (i32.const 0)
  )
 )
 (func $~lib/set/Set<f32>#rehash (; 60 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (set_local $4
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.shl
     (tee_local $2
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
     )
     (i32.const 2)
    )
    (i32.const 0)
   )
  )
  (set_local $5
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.shl
     (tee_local $7
      (i32.trunc_s/f64
       (f64.mul
        (f64.convert_s/i32
         (get_local $2)
        )
        (f64.const 2.6666666666666665)
       )
      )
     )
     (i32.const 3)
    )
    (i32.const 1)
   )
  )
  (set_local $8
   (i32.add
    (tee_local $2
     (i32.add
      (i32.load offset=8
       (get_local $0)
      )
      (i32.const 8)
     )
    )
    (i32.shl
     (i32.load offset=16
      (get_local $0)
     )
     (i32.const 3)
    )
   )
  )
  (set_local $3
   (i32.add
    (get_local $5)
    (i32.const 8)
   )
  )
  (loop $continue|0
   (if
    (i32.ne
     (get_local $2)
     (get_local $8)
    )
    (block
     (if
      (i32.eqz
       (i32.and
        (i32.load offset=4
         (get_local $2)
        )
        (i32.const 1)
       )
      )
      (block
       (f32.store
        (get_local $3)
        (f32.load
         (get_local $2)
        )
       )
       (i32.store offset=4
        (get_local $3)
        (i32.load offset=8
         (tee_local $6
          (i32.add
           (get_local $4)
           (i32.shl
            (i32.and
             (tee_local $6
              (call $~lib/internal/hash/hash32
               (i32.reinterpret/f32
                (f32.load
                 (get_local $2)
                )
               )
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
        (get_local $6)
        (get_local $3)
       )
       (set_local $3
        (i32.add
         (get_local $3)
         (i32.const 8)
        )
       )
      )
     )
     (set_local $2
      (i32.add
       (get_local $2)
       (i32.const 8)
      )
     )
     (br $continue|0)
    )
   )
  )
  (i32.store
   (get_local $0)
   (get_local $4)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $1)
  )
  (i32.store offset=8
   (get_local $0)
   (get_local $5)
  )
  (i32.store offset=12
   (get_local $0)
   (get_local $7)
  )
  (i32.store offset=16
   (get_local $0)
   (i32.load offset=20
    (get_local $0)
   )
  )
 )
 (func $~lib/set/Set<f32>#add (; 61 ;) (type $ifv) (param $0 i32) (param $1 f32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.eqz
    (call $~lib/set/Set<f32>#find
     (get_local $0)
     (get_local $1)
     (tee_local $4
      (call $~lib/internal/hash/hash<f32>
       (get_local $1)
      )
     )
    )
   )
   (block
    (if
     (i32.eq
      (i32.load offset=16
       (get_local $0)
      )
      (i32.load offset=12
       (get_local $0)
      )
     )
     (call $~lib/set/Set<f32>#rehash
      (get_local $0)
      (tee_local $2
       (if (result i32)
        (i32.lt_s
         (i32.load offset=20
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
        (i32.load offset=4
         (get_local $0)
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
       )
      )
     )
    )
    (set_local $2
     (i32.load offset=8
      (get_local $0)
     )
    )
    (i32.store offset=16
     (get_local $0)
     (i32.add
      (tee_local $3
       (i32.load offset=16
        (get_local $0)
       )
      )
      (i32.const 1)
     )
    )
    (f32.store
     (tee_local $2
      (i32.add
       (i32.add
        (get_local $2)
        (i32.const 8)
       )
       (i32.shl
        (get_local $3)
        (i32.const 3)
       )
      )
     )
     (get_local $1)
    )
    (i32.store offset=20
     (get_local $0)
     (i32.add
      (i32.load offset=20
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store offset=4
     (get_local $2)
     (i32.load offset=8
      (tee_local $3
       (i32.add
        (i32.load
         (get_local $0)
        )
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
    (i32.store offset=8
     (get_local $3)
     (get_local $2)
    )
   )
  )
 )
 (func $~lib/set/Set<f32>#delete (; 62 ;) (type $ifi) (param $0 i32) (param $1 f32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i32.eqz
    (tee_local $0
     (call $~lib/set/Set<f32>#find
      (tee_local $2
       (get_local $0)
      )
      (get_local $1)
      (tee_local $0
       (call $~lib/internal/hash/hash32
        (i32.reinterpret/f32
         (get_local $1)
        )
       )
      )
     )
    )
   )
   (return
    (i32.const 0)
   )
  )
  (i32.store offset=4
   (get_local $0)
   (i32.or
    (i32.load offset=4
     (get_local $0)
    )
    (i32.const 1)
   )
  )
  (i32.store offset=20
   (get_local $2)
   (i32.sub
    (i32.load offset=20
     (get_local $2)
    )
    (i32.const 1)
   )
  )
  (if
   (tee_local $0
    (i32.ge_u
     (i32.add
      (tee_local $3
       (i32.shr_u
        (i32.load offset=4
         (get_local $2)
        )
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
     (select
      (i32.const 4)
      (tee_local $0
       (i32.load offset=20
        (get_local $2)
       )
      )
      (i32.gt_u
       (i32.const 4)
       (get_local $0)
      )
     )
    )
   )
   (set_local $0
    (i32.lt_s
     (i32.load offset=20
      (get_local $2)
     )
     (i32.trunc_s/f64
      (f64.mul
       (f64.convert_s/i32
        (i32.load offset=12
         (get_local $2)
        )
       )
       (f64.const 0.75)
      )
     )
    )
   )
  )
  (if
   (get_local $0)
   (call $~lib/set/Set<f32>#rehash
    (get_local $2)
    (get_local $3)
   )
  )
  (i32.const 1)
 )
 (func $std/set/test<f32> (; 63 ;) (type $v)
  (local $0 f32)
  (local $1 i32)
  (set_local $1
   (call $~lib/set/Set<i8>#constructor
    (i32.const 0)
   )
  )
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (f32.lt
       (get_local $0)
       (f32.const 100)
      )
     )
    )
    (if
     (call $~lib/set/Set<f32>#has
      (get_local $1)
      (get_local $0)
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 8)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    (call $~lib/set/Set<f32>#add
     (get_local $1)
     (get_local $0)
    )
    (if
     (call $~lib/set/Set<f32>#has
      (get_local $1)
      (get_local $0)
     )
     (block
      (set_local $0
       (f32.add
        (get_local $0)
        (f32.const 1)
       )
      )
      (br $repeat|0)
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 10)
       (i32.const 4)
      )
      (unreachable)
     )
    )
   )
  )
  (if
   (i32.ne
    (call $~lib/set/Set<i8>#get:size
     (get_local $1)
    )
    (i32.const 100)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 12)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|1
   (set_local $0
    (f32.const 50)
   )
   (loop $repeat|1
    (br_if $break|1
     (i32.eqz
      (f32.lt
       (get_local $0)
       (f32.const 100)
      )
     )
    )
    (if
     (i32.eqz
      (call $~lib/set/Set<f32>#has
       (get_local $1)
       (get_local $0)
      )
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 16)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    (call $~lib/set/Set<f32>#add
     (get_local $1)
     (get_local $0)
    )
    (if
     (call $~lib/set/Set<f32>#has
      (get_local $1)
      (get_local $0)
     )
     (block
      (set_local $0
       (f32.add
        (get_local $0)
        (f32.const 1)
       )
      )
      (br $repeat|1)
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 18)
       (i32.const 4)
      )
      (unreachable)
     )
    )
   )
  )
  (if
   (i32.ne
    (call $~lib/set/Set<i8>#get:size
     (get_local $1)
    )
    (i32.const 100)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 20)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|2
   (set_local $0
    (f32.const 0)
   )
   (loop $repeat|2
    (br_if $break|2
     (i32.eqz
      (f32.lt
       (get_local $0)
       (f32.const 50)
      )
     )
    )
    (if
     (i32.eqz
      (call $~lib/set/Set<f32>#has
       (get_local $1)
       (get_local $0)
      )
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 24)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    (drop
     (call $~lib/set/Set<f32>#delete
      (get_local $1)
      (get_local $0)
     )
    )
    (if
     (call $~lib/set/Set<f32>#has
      (get_local $1)
      (get_local $0)
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 26)
       (i32.const 4)
      )
      (unreachable)
     )
     (block
      (set_local $0
       (f32.add
        (get_local $0)
        (f32.const 1)
       )
      )
      (br $repeat|2)
     )
    )
   )
  )
  (if
   (i32.ne
    (call $~lib/set/Set<i8>#get:size
     (get_local $1)
    )
    (i32.const 50)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 28)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|3
   (set_local $0
    (f32.const 0)
   )
   (loop $repeat|3
    (br_if $break|3
     (i32.eqz
      (f32.lt
       (get_local $0)
       (f32.const 50)
      )
     )
    )
    (if
     (call $~lib/set/Set<f32>#has
      (get_local $1)
      (get_local $0)
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 32)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    (call $~lib/set/Set<f32>#add
     (get_local $1)
     (get_local $0)
    )
    (if
     (i32.eqz
      (call $~lib/set/Set<f32>#has
       (get_local $1)
       (get_local $0)
      )
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 34)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    (drop
     (call $~lib/set/Set<f32>#delete
      (get_local $1)
      (get_local $0)
     )
    )
    (if
     (call $~lib/set/Set<f32>#has
      (get_local $1)
      (get_local $0)
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 36)
       (i32.const 4)
      )
      (unreachable)
     )
     (block
      (set_local $0
       (f32.add
        (get_local $0)
        (f32.const 1)
       )
      )
      (br $repeat|3)
     )
    )
   )
  )
  (if
   (i32.ne
    (call $~lib/set/Set<i8>#get:size
     (get_local $1)
    )
    (i32.const 50)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 38)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (call $~lib/set/Set<i8>#clear
   (get_local $1)
  )
  (if
   (call $~lib/set/Set<i8>#get:size
    (get_local $1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 42)
     (i32.const 2)
    )
    (unreachable)
   )
  )
 )
 (func $~lib/internal/hash/hash<f64> (; 64 ;) (type $Fi) (param $0 f64) (result i32)
  (call $~lib/internal/hash/hash64
   (i64.reinterpret/f64
    (get_local $0)
   )
  )
 )
 (func $~lib/set/Set<f64>#find (; 65 ;) (type $iFii) (param $0 i32) (param $1 f64) (param $2 i32) (result i32)
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
       (f64.eq
        (f64.load
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
 (func $~lib/set/Set<f64>#has (; 66 ;) (type $iFi) (param $0 i32) (param $1 f64) (result i32)
  (i32.ne
   (call $~lib/set/Set<f64>#find
    (get_local $0)
    (get_local $1)
    (call $~lib/internal/hash/hash<f64>
     (get_local $1)
    )
   )
   (i32.const 0)
  )
 )
 (func $~lib/set/Set<f64>#rehash (; 67 ;) (type $iiv) (param $0 i32) (param $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (set_local $4
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.shl
     (tee_local $2
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
     )
     (i32.const 2)
    )
    (i32.const 0)
   )
  )
  (set_local $5
   (call $~lib/arraybuffer/ArrayBuffer#constructor
    (i32.const 0)
    (i32.shl
     (tee_local $7
      (i32.trunc_s/f64
       (f64.mul
        (f64.convert_s/i32
         (get_local $2)
        )
        (f64.const 2.6666666666666665)
       )
      )
     )
     (i32.const 4)
    )
    (i32.const 1)
   )
  )
  (set_local $8
   (i32.add
    (tee_local $2
     (i32.add
      (i32.load offset=8
       (get_local $0)
      )
      (i32.const 8)
     )
    )
    (i32.shl
     (i32.load offset=16
      (get_local $0)
     )
     (i32.const 4)
    )
   )
  )
  (set_local $3
   (i32.add
    (get_local $5)
    (i32.const 8)
   )
  )
  (loop $continue|0
   (if
    (i32.ne
     (get_local $2)
     (get_local $8)
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
       (f64.store
        (get_local $3)
        (f64.load
         (get_local $2)
        )
       )
       (i32.store offset=8
        (get_local $3)
        (i32.load offset=8
         (tee_local $6
          (i32.add
           (get_local $4)
           (i32.shl
            (i32.and
             (tee_local $6
              (call $~lib/internal/hash/hash64
               (i64.reinterpret/f64
                (f64.load
                 (get_local $2)
                )
               )
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
        (get_local $6)
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
   (get_local $4)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $1)
  )
  (i32.store offset=8
   (get_local $0)
   (get_local $5)
  )
  (i32.store offset=12
   (get_local $0)
   (get_local $7)
  )
  (i32.store offset=16
   (get_local $0)
   (i32.load offset=20
    (get_local $0)
   )
  )
 )
 (func $~lib/set/Set<f64>#add (; 68 ;) (type $iFv) (param $0 i32) (param $1 f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.eqz
    (call $~lib/set/Set<f64>#find
     (get_local $0)
     (get_local $1)
     (tee_local $4
      (call $~lib/internal/hash/hash<f64>
       (get_local $1)
      )
     )
    )
   )
   (block
    (if
     (i32.eq
      (i32.load offset=16
       (get_local $0)
      )
      (i32.load offset=12
       (get_local $0)
      )
     )
     (call $~lib/set/Set<f64>#rehash
      (get_local $0)
      (tee_local $2
       (if (result i32)
        (i32.lt_s
         (i32.load offset=20
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
        (i32.load offset=4
         (get_local $0)
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
       )
      )
     )
    )
    (set_local $2
     (i32.load offset=8
      (get_local $0)
     )
    )
    (i32.store offset=16
     (get_local $0)
     (i32.add
      (tee_local $3
       (i32.load offset=16
        (get_local $0)
       )
      )
      (i32.const 1)
     )
    )
    (f64.store
     (tee_local $2
      (i32.add
       (i32.add
        (get_local $2)
        (i32.const 8)
       )
       (i32.shl
        (get_local $3)
        (i32.const 4)
       )
      )
     )
     (get_local $1)
    )
    (i32.store offset=20
     (get_local $0)
     (i32.add
      (i32.load offset=20
       (get_local $0)
      )
      (i32.const 1)
     )
    )
    (i32.store offset=8
     (get_local $2)
     (i32.load offset=8
      (tee_local $3
       (i32.add
        (i32.load
         (get_local $0)
        )
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
    (i32.store offset=8
     (get_local $3)
     (get_local $2)
    )
   )
  )
 )
 (func $~lib/set/Set<f64>#delete (; 69 ;) (type $iFi) (param $0 i32) (param $1 f64) (result i32)
  (local $2 i32)
  (local $3 i32)
  (if
   (i32.eqz
    (tee_local $0
     (call $~lib/set/Set<f64>#find
      (tee_local $2
       (get_local $0)
      )
      (get_local $1)
      (tee_local $0
       (call $~lib/internal/hash/hash64
        (i64.reinterpret/f64
         (get_local $1)
        )
       )
      )
     )
    )
   )
   (return
    (i32.const 0)
   )
  )
  (i32.store offset=8
   (get_local $0)
   (i32.or
    (i32.load offset=8
     (get_local $0)
    )
    (i32.const 1)
   )
  )
  (i32.store offset=20
   (get_local $2)
   (i32.sub
    (i32.load offset=20
     (get_local $2)
    )
    (i32.const 1)
   )
  )
  (if
   (tee_local $0
    (i32.ge_u
     (i32.add
      (tee_local $3
       (i32.shr_u
        (i32.load offset=4
         (get_local $2)
        )
        (i32.const 1)
       )
      )
      (i32.const 1)
     )
     (select
      (i32.const 4)
      (tee_local $0
       (i32.load offset=20
        (get_local $2)
       )
      )
      (i32.gt_u
       (i32.const 4)
       (get_local $0)
      )
     )
    )
   )
   (set_local $0
    (i32.lt_s
     (i32.load offset=20
      (get_local $2)
     )
     (i32.trunc_s/f64
      (f64.mul
       (f64.convert_s/i32
        (i32.load offset=12
         (get_local $2)
        )
       )
       (f64.const 0.75)
      )
     )
    )
   )
  )
  (if
   (get_local $0)
   (call $~lib/set/Set<f64>#rehash
    (get_local $2)
    (get_local $3)
   )
  )
  (i32.const 1)
 )
 (func $std/set/test<f64> (; 70 ;) (type $v)
  (local $0 f64)
  (local $1 i32)
  (set_local $1
   (call $~lib/set/Set<i64>#constructor
    (i32.const 0)
   )
  )
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (f64.lt
       (get_local $0)
       (f64.const 100)
      )
     )
    )
    (if
     (call $~lib/set/Set<f64>#has
      (get_local $1)
      (get_local $0)
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 8)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    (call $~lib/set/Set<f64>#add
     (get_local $1)
     (get_local $0)
    )
    (if
     (call $~lib/set/Set<f64>#has
      (get_local $1)
      (get_local $0)
     )
     (block
      (set_local $0
       (f64.add
        (get_local $0)
        (f64.const 1)
       )
      )
      (br $repeat|0)
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 10)
       (i32.const 4)
      )
      (unreachable)
     )
    )
   )
  )
  (if
   (i32.ne
    (call $~lib/set/Set<i8>#get:size
     (get_local $1)
    )
    (i32.const 100)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 12)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|1
   (set_local $0
    (f64.const 50)
   )
   (loop $repeat|1
    (br_if $break|1
     (i32.eqz
      (f64.lt
       (get_local $0)
       (f64.const 100)
      )
     )
    )
    (if
     (i32.eqz
      (call $~lib/set/Set<f64>#has
       (get_local $1)
       (get_local $0)
      )
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 16)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    (call $~lib/set/Set<f64>#add
     (get_local $1)
     (get_local $0)
    )
    (if
     (call $~lib/set/Set<f64>#has
      (get_local $1)
      (get_local $0)
     )
     (block
      (set_local $0
       (f64.add
        (get_local $0)
        (f64.const 1)
       )
      )
      (br $repeat|1)
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 18)
       (i32.const 4)
      )
      (unreachable)
     )
    )
   )
  )
  (if
   (i32.ne
    (call $~lib/set/Set<i8>#get:size
     (get_local $1)
    )
    (i32.const 100)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 20)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|2
   (set_local $0
    (f64.const 0)
   )
   (loop $repeat|2
    (br_if $break|2
     (i32.eqz
      (f64.lt
       (get_local $0)
       (f64.const 50)
      )
     )
    )
    (if
     (i32.eqz
      (call $~lib/set/Set<f64>#has
       (get_local $1)
       (get_local $0)
      )
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 24)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    (drop
     (call $~lib/set/Set<f64>#delete
      (get_local $1)
      (get_local $0)
     )
    )
    (if
     (call $~lib/set/Set<f64>#has
      (get_local $1)
      (get_local $0)
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 26)
       (i32.const 4)
      )
      (unreachable)
     )
     (block
      (set_local $0
       (f64.add
        (get_local $0)
        (f64.const 1)
       )
      )
      (br $repeat|2)
     )
    )
   )
  )
  (if
   (i32.ne
    (call $~lib/set/Set<i8>#get:size
     (get_local $1)
    )
    (i32.const 50)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 28)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block $break|3
   (set_local $0
    (f64.const 0)
   )
   (loop $repeat|3
    (br_if $break|3
     (i32.eqz
      (f64.lt
       (get_local $0)
       (f64.const 50)
      )
     )
    )
    (if
     (call $~lib/set/Set<f64>#has
      (get_local $1)
      (get_local $0)
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 32)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    (call $~lib/set/Set<f64>#add
     (get_local $1)
     (get_local $0)
    )
    (if
     (i32.eqz
      (call $~lib/set/Set<f64>#has
       (get_local $1)
       (get_local $0)
      )
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 34)
       (i32.const 4)
      )
      (unreachable)
     )
    )
    (drop
     (call $~lib/set/Set<f64>#delete
      (get_local $1)
      (get_local $0)
     )
    )
    (if
     (call $~lib/set/Set<f64>#has
      (get_local $1)
      (get_local $0)
     )
     (block
      (call $~lib/env/abort
       (i32.const 0)
       (i32.const 112)
       (i32.const 36)
       (i32.const 4)
      )
      (unreachable)
     )
     (block
      (set_local $0
       (f64.add
        (get_local $0)
        (f64.const 1)
       )
      )
      (br $repeat|3)
     )
    )
   )
  )
  (if
   (i32.ne
    (call $~lib/set/Set<i8>#get:size
     (get_local $1)
    )
    (i32.const 50)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 38)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (call $~lib/set/Set<i64>#clear
   (get_local $1)
  )
  (if
   (call $~lib/set/Set<i8>#get:size
    (get_local $1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 112)
     (i32.const 42)
     (i32.const 2)
    )
    (unreachable)
   )
  )
 )
 (func $start (; 71 ;) (type $v)
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
  (call $std/set/test<i8>)
  (call $std/set/test<u8>)
  (call $std/set/test<i16>)
  (call $std/set/test<u16>)
  (call $std/set/test<i32>)
  (call $std/set/test<u32>)
  (call $std/set/test<i64>)
  (call $std/set/test<u64>)
  (call $std/set/test<f32>)
  (call $std/set/test<f64>)
 )
)
