(module
 (type $ii (func (param i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$j (func (result i64)))
 (memory $0 1)
 (data (i32.const 8) "\11\00\00\00~\00l\00i\00b\00/\00p\00o\00l\00y\00f\00i\00l\00l\00s\00.\00t\00s")
 (data (i32.const 48) "\10\00\00\00s\00t\00d\00/\00p\00o\00l\00y\00f\00i\00l\00l\00s\00.\00t\00s")
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (export "memory" (memory $0))
 (start $start)
 (func $~lib/polyfills/bswap16<u16> (; 1 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (if
   (i32.eqz
    (tee_local $1
     (i32.const 1)
    )
   )
   (set_local $1
    (i32.const 0)
   )
  )
  (if
   (i32.eqz
    (get_local $1)
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
   (tee_local $1
    (i32.const 1)
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
      (i32.shr_u
       (i32.and
        (get_local $0)
        (i32.const 65535)
       )
       (i32.const 8)
      )
     )
     (i32.and
      (get_local $0)
      (i32.const -65536)
     )
    )
   )
  )
  (get_local $0)
 )
 (func $~lib/polyfills/bswap<u16> (; 2 ;) (; has Stack IR ;) (type $FUNCSIG$i) (result i32)
  (call $~lib/polyfills/bswap16<u16>
   (i32.const 43707)
  )
 )
 (func $~lib/polyfills/bswap16<i16> (; 3 ;) (; has Stack IR ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (if
   (i32.eqz
    (tee_local $1
     (i32.const 1)
    )
   )
   (set_local $1
    (i32.const 0)
   )
  )
  (if
   (i32.eqz
    (get_local $1)
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
   (tee_local $1
    (i32.const 1)
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
        (i32.shl
         (get_local $0)
         (i32.const 16)
        )
        (i32.const 24)
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
  (get_local $0)
 )
 (func $~lib/polyfills/bswap<i16> (; 4 ;) (; has Stack IR ;) (type $FUNCSIG$i) (result i32)
  (call $~lib/polyfills/bswap16<i16>
   (i32.const 43707)
  )
 )
 (func $~lib/polyfills/bswap<u32> (; 5 ;) (; has Stack IR ;) (type $FUNCSIG$i) (result i32)
  (i32.const -573785174)
 )
 (func $~lib/polyfills/bswap<u64> (; 6 ;) (; has Stack IR ;) (type $FUNCSIG$j) (result i64)
  (i64.const -2464388556401798912)
 )
 (func $~lib/polyfills/bswap16<u32> (; 7 ;) (; has Stack IR ;) (type $FUNCSIG$i) (result i32)
  (i32.const -7816278)
 )
 (func $start (; 8 ;) (; has Stack IR ;) (type $v)
  (if
   (i32.ne
    (i32.and
     (call $~lib/polyfills/bswap<u16>)
     (i32.const 65535)
    )
    (i32.const 48042)
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
   (i32.ne
    (i32.and
     (call $~lib/polyfills/bswap<i16>)
     (i32.const 65535)
    )
    (i32.const 48042)
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
   (i32.ne
    (call $~lib/polyfills/bswap<u32>)
    (i32.const -573785174)
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
   (i32.ne
    (call $~lib/polyfills/bswap<u32>)
    (i32.const -573785174)
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
   (i64.ne
    (call $~lib/polyfills/bswap<u64>)
    (i64.const -2464388556401798912)
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
   (i64.ne
    (call $~lib/polyfills/bswap<u64>)
    (i64.const -2464388556401798912)
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
   (i32.ne
    (call $~lib/polyfills/bswap<u32>)
    (i32.const -573785174)
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
   (i32.ne
    (call $~lib/polyfills/bswap<u32>)
    (i32.const -573785174)
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
   (i32.ne
    (i32.and
     (call $~lib/polyfills/bswap16<u16>
      (i32.const 43707)
     )
     (i32.const 65535)
    )
    (i32.const 48042)
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
   (i32.ne
    (i32.and
     (call $~lib/polyfills/bswap16<i16>
      (i32.const 43707)
     )
     (i32.const 65535)
    )
    (i32.const 48042)
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
   (i32.ne
    (call $~lib/polyfills/bswap16<u32>)
    (i32.const -7816278)
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
   (i32.ne
    (call $~lib/polyfills/bswap16<u32>)
    (i32.const -7816278)
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
 (func $null (; 9 ;) (; has Stack IR ;) (type $v)
  (nop)
 )
)
