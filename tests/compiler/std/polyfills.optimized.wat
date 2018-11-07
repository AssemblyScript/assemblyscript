(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$j (func (result i64)))
 (memory $0 1)
 (data (i32.const 8) "\11\00\00\00~\00l\00i\00b\00/\00p\00o\00l\00y\00f\00i\00l\00l\00s\00.\00t\00s")
 (data (i32.const 48) "\10\00\00\00s\00t\00d\00/\00p\00o\00l\00y\00f\00i\00l\00l\00s\00.\00t\00s")
 (table 1 anyfunc)
 (elem (i32.const 0) $null)
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $~lib/polyfills/bswap<u16> (; 1 ;) (; has Stack IR ;) (type $FUNCSIG$i) (result i32)
  (i32.const 11189162)
 )
 (func $~lib/polyfills/bswap<u32> (; 2 ;) (; has Stack IR ;) (type $FUNCSIG$i) (result i32)
  (i32.const -573785174)
 )
 (func $~lib/polyfills/bswap<u64> (; 3 ;) (; has Stack IR ;) (type $FUNCSIG$j) (result i64)
  (i64.const -2464388556401798912)
 )
 (func $start (; 4 ;) (; has Stack IR ;) (type $v)
  (local $0 i32)
  (block $folding-inner0
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
      (call $~lib/polyfills/bswap<u16>)
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
    (i32.eqz
     (tee_local $0
      (i32.const 1)
     )
    )
    (set_local $0
     (i32.const 0)
    )
   )
   (if
    (i32.eqz
     (get_local $0)
    )
    (br $folding-inner0)
   )
   (if
    (i32.eqz
     (tee_local $0
      (i32.const 1)
     )
    )
    (set_local $0
     (i32.const 0)
    )
   )
   (if
    (i32.eqz
     (get_local $0)
    )
    (br $folding-inner0)
   )
   (if
    (i32.eqz
     (tee_local $0
      (i32.const 1)
     )
    )
    (br $folding-inner0)
   )
   (if
    (i32.eqz
     (i32.const 1)
    )
    (br $folding-inner0)
   )
   (return)
  )
  (call $~lib/env/abort
   (i32.const 0)
   (i32.const 8)
   (i32.const 28)
   (i32.const 2)
  )
  (unreachable)
 )
 (func $null (; 5 ;) (; has Stack IR ;) (type $v)
  (nop)
 )
)
