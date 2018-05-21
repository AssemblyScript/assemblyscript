(module
 (type $ii (func (param i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $II (func (param i64) (result i64)))
 (type $v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (global $HEAP_BASE i32 (i32.const 84))
 (memory $0 1)
 (data (i32.const 8) "\11\00\00\00~\00l\00i\00b\00/\00p\00o\00l\00y\00f\00i\00l\00l\00s\00.\00t\00s\00")
 (data (i32.const 48) "\10\00\00\00s\00t\00d\00/\00p\00o\00l\00y\00f\00i\00l\00l\00s\00.\00t\00s\00")
 (export "memory" (memory $0))
 (start $start)
 (func $~lib/polyfills/bswap16<u16> (; 1 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (if
   (i32.eqz
    (if (result i32)
     (tee_local $1
      (if (result i32)
       (tee_local $1
        (i32.eq
         (i32.const 2)
         (i32.const 1)
        )
       )
       (get_local $1)
       (i32.eq
        (i32.const 2)
        (i32.const 2)
       )
      )
     )
     (get_local $1)
     (i32.eq
      (i32.const 2)
      (i32.const 4)
     )
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 27)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (if
   (if (result i32)
    (tee_local $1
     (i32.eq
      (i32.const 2)
      (i32.const 2)
     )
    )
    (get_local $1)
    (i32.eq
     (i32.const 2)
     (i32.const 4)
    )
   )
   (return
    (i32.or
     (i32.or
      (i32.and
       (i32.shl
        (get_local $0)
        (i32.const 8)
       )
       (i32.const 65280)
      )
      (i32.and
       (i32.shr_u
        (i32.and
         (get_local $0)
         (i32.const 65535)
        )
        (i32.const 8)
       )
       (i32.const 255)
      )
     )
     (i32.and
      (get_local $0)
      (i32.wrap/i64
       (i64.const 4294901760)
      )
     )
    )
   )
  )
  (return
   (get_local $0)
  )
 )
 (func $~lib/polyfills/bswap<u16> (; 2 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (if
   (i32.eqz
    (if (result i32)
     (tee_local $1
      (if (result i32)
       (tee_local $1
        (if (result i32)
         (tee_local $1
          (i32.eq
           (i32.const 2)
           (i32.const 1)
          )
         )
         (get_local $1)
         (i32.eq
          (i32.const 2)
          (i32.const 2)
         )
        )
       )
       (get_local $1)
       (i32.eq
        (i32.const 2)
        (i32.const 4)
       )
      )
     )
     (get_local $1)
     (i32.eq
      (i32.const 2)
      (i32.const 8)
     )
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (return
   (call $~lib/polyfills/bswap16<u16>
    (get_local $0)
   )
  )
 )
 (func $~lib/polyfills/bswap16<i16> (; 3 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (if
   (i32.eqz
    (if (result i32)
     (tee_local $1
      (if (result i32)
       (tee_local $1
        (i32.eq
         (i32.const 2)
         (i32.const 1)
        )
       )
       (get_local $1)
       (i32.eq
        (i32.const 2)
        (i32.const 2)
       )
      )
     )
     (get_local $1)
     (i32.eq
      (i32.const 2)
      (i32.const 4)
     )
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 27)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (if
   (if (result i32)
    (tee_local $1
     (i32.eq
      (i32.const 2)
      (i32.const 2)
     )
    )
    (get_local $1)
    (i32.eq
     (i32.const 2)
     (i32.const 4)
    )
   )
   (return
    (i32.or
     (i32.or
      (i32.and
       (i32.shl
        (get_local $0)
        (i32.const 8)
       )
       (i32.const 65280)
      )
      (i32.and
       (i32.shr_s
        (i32.shr_s
         (i32.shl
          (get_local $0)
          (i32.const 16)
         )
         (i32.const 16)
        )
        (i32.const 8)
       )
       (i32.const 255)
      )
     )
     (i32.and
      (get_local $0)
      (i32.wrap/i64
       (i64.const 4294901760)
      )
     )
    )
   )
  )
  (return
   (get_local $0)
  )
 )
 (func $~lib/polyfills/bswap<i16> (; 4 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (if
   (i32.eqz
    (if (result i32)
     (tee_local $1
      (if (result i32)
       (tee_local $1
        (if (result i32)
         (tee_local $1
          (i32.eq
           (i32.const 2)
           (i32.const 1)
          )
         )
         (get_local $1)
         (i32.eq
          (i32.const 2)
          (i32.const 2)
         )
        )
       )
       (get_local $1)
       (i32.eq
        (i32.const 2)
        (i32.const 4)
       )
      )
     )
     (get_local $1)
     (i32.eq
      (i32.const 2)
      (i32.const 8)
     )
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (return
   (call $~lib/polyfills/bswap16<i16>
    (get_local $0)
   )
  )
 )
 (func $~lib/polyfills/bswap<u32> (; 5 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (if
   (i32.eqz
    (if (result i32)
     (tee_local $1
      (if (result i32)
       (tee_local $1
        (if (result i32)
         (tee_local $1
          (i32.eq
           (i32.const 4)
           (i32.const 1)
          )
         )
         (get_local $1)
         (i32.eq
          (i32.const 4)
          (i32.const 2)
         )
        )
       )
       (get_local $1)
       (i32.eq
        (i32.const 4)
        (i32.const 4)
       )
      )
     )
     (get_local $1)
     (i32.eq
      (i32.const 4)
      (i32.const 8)
     )
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (return
   (i32.or
    (i32.rotl
     (i32.and
      (get_local $0)
      (i32.const -16711936)
     )
     (i32.const 8)
    )
    (i32.rotr
     (i32.and
      (get_local $0)
      (i32.const 16711935)
     )
     (i32.const 8)
    )
   )
  )
 )
 (func $~lib/polyfills/bswap<i32> (; 6 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (if
   (i32.eqz
    (if (result i32)
     (tee_local $1
      (if (result i32)
       (tee_local $1
        (if (result i32)
         (tee_local $1
          (i32.eq
           (i32.const 4)
           (i32.const 1)
          )
         )
         (get_local $1)
         (i32.eq
          (i32.const 4)
          (i32.const 2)
         )
        )
       )
       (get_local $1)
       (i32.eq
        (i32.const 4)
        (i32.const 4)
       )
      )
     )
     (get_local $1)
     (i32.eq
      (i32.const 4)
      (i32.const 8)
     )
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (return
   (i32.or
    (i32.rotl
     (i32.and
      (get_local $0)
      (i32.const -16711936)
     )
     (i32.const 8)
    )
    (i32.rotr
     (i32.and
      (get_local $0)
      (i32.const 16711935)
     )
     (i32.const 8)
    )
   )
  )
 )
 (func $~lib/polyfills/bswap<u64> (; 7 ;) (type $II) (param $0 i64) (result i64)
  (local $1 i32)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (if
   (i32.eqz
    (if (result i32)
     (tee_local $1
      (if (result i32)
       (tee_local $1
        (if (result i32)
         (tee_local $1
          (i32.eq
           (i32.const 8)
           (i32.const 1)
          )
         )
         (get_local $1)
         (i32.eq
          (i32.const 8)
          (i32.const 2)
         )
        )
       )
       (get_local $1)
       (i32.eq
        (i32.const 8)
        (i32.const 4)
       )
      )
     )
     (get_local $1)
     (i32.eq
      (i32.const 8)
      (i32.const 8)
     )
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block
   (set_local $2
    (i64.and
     (i64.shr_u
      (get_local $0)
      (i64.const 8)
     )
     (i64.const 71777214294589695)
    )
   )
   (set_local $3
    (i64.shl
     (i64.and
      (get_local $0)
      (i64.const 71777214294589695)
     )
     (i64.const 8)
    )
   )
   (set_local $4
    (i64.or
     (get_local $2)
     (get_local $3)
    )
   )
   (set_local $2
    (i64.and
     (i64.shr_u
      (get_local $4)
      (i64.const 16)
     )
     (i64.const 281470681808895)
    )
   )
   (set_local $3
    (i64.shl
     (i64.and
      (get_local $4)
      (i64.const 281470681808895)
     )
     (i64.const 16)
    )
   )
   (return
    (i64.rotr
     (i64.or
      (get_local $2)
      (get_local $3)
     )
     (i64.const 32)
    )
   )
  )
 )
 (func $~lib/polyfills/bswap<i64> (; 8 ;) (type $II) (param $0 i64) (result i64)
  (local $1 i32)
  (local $2 i64)
  (local $3 i64)
  (local $4 i64)
  (if
   (i32.eqz
    (if (result i32)
     (tee_local $1
      (if (result i32)
       (tee_local $1
        (if (result i32)
         (tee_local $1
          (i32.eq
           (i32.const 8)
           (i32.const 1)
          )
         )
         (get_local $1)
         (i32.eq
          (i32.const 8)
          (i32.const 2)
         )
        )
       )
       (get_local $1)
       (i32.eq
        (i32.const 8)
        (i32.const 4)
       )
      )
     )
     (get_local $1)
     (i32.eq
      (i32.const 8)
      (i32.const 8)
     )
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (block
   (set_local $2
    (i64.and
     (i64.shr_u
      (get_local $0)
      (i64.const 8)
     )
     (i64.const 71777214294589695)
    )
   )
   (set_local $3
    (i64.shl
     (i64.and
      (get_local $0)
      (i64.const 71777214294589695)
     )
     (i64.const 8)
    )
   )
   (set_local $4
    (i64.or
     (get_local $2)
     (get_local $3)
    )
   )
   (set_local $2
    (i64.and
     (i64.shr_u
      (get_local $4)
      (i64.const 16)
     )
     (i64.const 281470681808895)
    )
   )
   (set_local $3
    (i64.shl
     (i64.and
      (get_local $4)
      (i64.const 281470681808895)
     )
     (i64.const 16)
    )
   )
   (return
    (i64.rotr
     (i64.or
      (get_local $2)
      (get_local $3)
     )
     (i64.const 32)
    )
   )
  )
 )
 (func $~lib/polyfills/bswap<usize> (; 9 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (if
   (i32.eqz
    (if (result i32)
     (tee_local $1
      (if (result i32)
       (tee_local $1
        (if (result i32)
         (tee_local $1
          (i32.eq
           (i32.const 4)
           (i32.const 1)
          )
         )
         (get_local $1)
         (i32.eq
          (i32.const 4)
          (i32.const 2)
         )
        )
       )
       (get_local $1)
       (i32.eq
        (i32.const 4)
        (i32.const 4)
       )
      )
     )
     (get_local $1)
     (i32.eq
      (i32.const 4)
      (i32.const 8)
     )
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (return
   (i32.or
    (i32.rotl
     (i32.and
      (get_local $0)
      (i32.const -16711936)
     )
     (i32.const 8)
    )
    (i32.rotr
     (i32.and
      (get_local $0)
      (i32.const 16711935)
     )
     (i32.const 8)
    )
   )
  )
 )
 (func $~lib/polyfills/bswap<isize> (; 10 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (if
   (i32.eqz
    (if (result i32)
     (tee_local $1
      (if (result i32)
       (tee_local $1
        (if (result i32)
         (tee_local $1
          (i32.eq
           (i32.const 4)
           (i32.const 1)
          )
         )
         (get_local $1)
         (i32.eq
          (i32.const 4)
          (i32.const 2)
         )
        )
       )
       (get_local $1)
       (i32.eq
        (i32.const 4)
        (i32.const 4)
       )
      )
     )
     (get_local $1)
     (i32.eq
      (i32.const 4)
      (i32.const 8)
     )
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (return
   (i32.or
    (i32.rotl
     (i32.and
      (get_local $0)
      (i32.const -16711936)
     )
     (i32.const 8)
    )
    (i32.rotr
     (i32.and
      (get_local $0)
      (i32.const 16711935)
     )
     (i32.const 8)
    )
   )
  )
 )
 (func $~lib/polyfills/bswap16<u32> (; 11 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (if
   (i32.eqz
    (if (result i32)
     (tee_local $1
      (if (result i32)
       (tee_local $1
        (i32.eq
         (i32.const 4)
         (i32.const 1)
        )
       )
       (get_local $1)
       (i32.eq
        (i32.const 4)
        (i32.const 2)
       )
      )
     )
     (get_local $1)
     (i32.eq
      (i32.const 4)
      (i32.const 4)
     )
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 27)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (if
   (if (result i32)
    (tee_local $1
     (i32.eq
      (i32.const 4)
      (i32.const 2)
     )
    )
    (get_local $1)
    (i32.eq
     (i32.const 4)
     (i32.const 4)
    )
   )
   (return
    (i32.or
     (i32.or
      (i32.and
       (i32.shl
        (get_local $0)
        (i32.const 8)
       )
       (i32.const 65280)
      )
      (i32.and
       (i32.shr_u
        (get_local $0)
        (i32.const 8)
       )
       (i32.const 255)
      )
     )
     (i32.and
      (get_local $0)
      (i32.const -65536)
     )
    )
   )
  )
  (return
   (get_local $0)
  )
 )
 (func $~lib/polyfills/bswap16<i32> (; 12 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (if
   (i32.eqz
    (if (result i32)
     (tee_local $1
      (if (result i32)
       (tee_local $1
        (i32.eq
         (i32.const 4)
         (i32.const 1)
        )
       )
       (get_local $1)
       (i32.eq
        (i32.const 4)
        (i32.const 2)
       )
      )
     )
     (get_local $1)
     (i32.eq
      (i32.const 4)
      (i32.const 4)
     )
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 27)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (if
   (if (result i32)
    (tee_local $1
     (i32.eq
      (i32.const 4)
      (i32.const 2)
     )
    )
    (get_local $1)
    (i32.eq
     (i32.const 4)
     (i32.const 4)
    )
   )
   (return
    (i32.or
     (i32.or
      (i32.and
       (i32.shl
        (get_local $0)
        (i32.const 8)
       )
       (i32.const 65280)
      )
      (i32.and
       (i32.shr_s
        (get_local $0)
        (i32.const 8)
       )
       (i32.const 255)
      )
     )
     (i32.and
      (get_local $0)
      (i32.const -65536)
     )
    )
   )
  )
  (return
   (get_local $0)
  )
 )
 (func $start (; 13 ;) (type $v)
  (if
   (i32.eqz
    (i32.eq
     (i32.and
      (call $~lib/polyfills/bswap<u16>
       (i32.const 43707)
      )
      (i32.const 65535)
     )
     (i32.const 48042)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 4)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.shr_s
      (i32.shl
       (call $~lib/polyfills/bswap<i16>
        (i32.const 43707)
       )
       (i32.const 16)
      )
      (i32.const 16)
     )
     (i32.shr_s
      (i32.shl
       (i32.const 48042)
       (i32.const 16)
      )
      (i32.const 16)
     )
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 5)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/polyfills/bswap<u32>
      (i32.const -1430532899)
     )
     (i32.const -573785174)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 8)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/polyfills/bswap<i32>
      (i32.const -1430532899)
     )
     (i32.const -573785174)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 9)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i64.eq
     (call $~lib/polyfills/bswap<u64>
      (i64.const 4822679907192029)
     )
     (i64.const -2464388556401798912)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 12)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i64.eq
     (call $~lib/polyfills/bswap<i64>
      (i64.const 4822679907192029)
     )
     (i64.const -2464388556401798912)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 13)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/polyfills/bswap<usize>
      (i32.const -1430532899)
     )
     (i32.const -573785174)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 16)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/polyfills/bswap<isize>
      (i32.const -1430532899)
     )
     (i32.const -573785174)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 17)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.and
      (call $~lib/polyfills/bswap16<u16>
       (i32.const 43707)
      )
      (i32.const 65535)
     )
     (i32.const 48042)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 20)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.shr_s
      (i32.shl
       (call $~lib/polyfills/bswap16<i16>
        (i32.const 43707)
       )
       (i32.const 16)
      )
      (i32.const 16)
     )
     (i32.shr_s
      (i32.shl
       (i32.const 48042)
       (i32.const 16)
      )
      (i32.const 16)
     )
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 21)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/polyfills/bswap16<u32>
      (i32.const -7820613)
     )
     (i32.const -7816278)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 24)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (call $~lib/polyfills/bswap16<i32>
      (i32.const -7820613)
     )
     (i32.const -7816278)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 48)
     (i32.const 25)
     (i32.const 0)
    )
    (unreachable)
   )
  )
 )
)
