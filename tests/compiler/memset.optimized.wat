(module
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (global $memset/dest (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 32))
 (memory $0 1)
 (data (i32.const 8) "\t\00\00\00m\00e\00m\00s\00e\00t\00.\00t\00s")
 (export "memory" (memory $0))
 (start $start)
 (func $memset/memset (; 1 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i64)
  (block $folding-inner0
   (set_local $3
    (get_local $0)
   )
   (br_if $folding-inner0
    (i32.eqz
     (get_local $2)
    )
   )
   (i32.store8
    (get_local $3)
    (get_local $1)
   )
   (i32.store8
    (i32.sub
     (i32.add
      (get_local $3)
      (get_local $2)
     )
     (i32.const 1)
    )
    (get_local $1)
   )
   (br_if $folding-inner0
    (i32.le_u
     (get_local $2)
     (i32.const 2)
    )
   )
   (i32.store8
    (i32.add
     (get_local $3)
     (i32.const 1)
    )
    (get_local $1)
   )
   (i32.store8
    (i32.add
     (get_local $3)
     (i32.const 2)
    )
    (get_local $1)
   )
   (i32.store8
    (i32.sub
     (tee_local $0
      (i32.add
       (get_local $3)
       (get_local $2)
      )
     )
     (i32.const 2)
    )
    (get_local $1)
   )
   (i32.store8
    (i32.sub
     (get_local $0)
     (i32.const 3)
    )
    (get_local $1)
   )
   (br_if $folding-inner0
    (i32.le_u
     (get_local $2)
     (i32.const 6)
    )
   )
   (i32.store8
    (i32.add
     (get_local $3)
     (i32.const 3)
    )
    (get_local $1)
   )
   (i32.store8
    (i32.sub
     (i32.add
      (get_local $3)
      (get_local $2)
     )
     (i32.const 4)
    )
    (get_local $1)
   )
   (br_if $folding-inner0
    (i32.le_u
     (get_local $2)
     (i32.const 8)
    )
   )
   (set_local $2
    (i32.sub
     (get_local $2)
     (tee_local $4
      (i32.and
       (i32.sub
        (i32.const 0)
        (get_local $3)
       )
       (i32.const 3)
      )
     )
    )
   )
   (i32.store
    (tee_local $0
     (i32.add
      (get_local $3)
      (get_local $4)
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
   (br_if $folding-inner0
    (i32.le_u
     (get_local $2)
     (i32.const 8)
    )
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
     (tee_local $4
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
     (get_local $4)
     (i32.const 8)
    )
    (get_local $1)
   )
   (br_if $folding-inner0
    (i32.le_u
     (get_local $2)
     (i32.const 24)
    )
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
     (tee_local $4
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
     (get_local $4)
     (i32.const 24)
    )
    (get_local $1)
   )
   (i32.store
    (i32.sub
     (get_local $4)
     (i32.const 20)
    )
    (get_local $1)
   )
   (i32.store
    (i32.sub
     (get_local $4)
     (i32.const 16)
    )
    (get_local $1)
   )
   (set_local $0
    (i32.add
     (get_local $0)
     (tee_local $4
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
     (get_local $4)
    )
   )
   (set_local $5
    (i64.or
     (tee_local $5
      (i64.extend_u/i32
       (get_local $1)
      )
     )
     (i64.shl
      (get_local $5)
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
      (br $continue|0)
     )
    )
   )
   (return
    (get_local $3)
   )
  )
  (get_local $3)
 )
 (func $start (; 2 ;) (type $v)
  (set_global $memset/dest
   (get_global $HEAP_BASE)
  )
  (drop
   (call $memset/memset
    (get_global $memset/dest)
    (i32.const 1)
    (i32.const 16)
   )
  )
  (if
   (i32.ne
    (i32.load8_u
     (get_global $memset/dest)
    )
    (i32.const 1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 72)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.load8_u
     (i32.add
      (get_global $memset/dest)
      (i32.const 15)
     )
    )
    (i32.const 1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 73)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (drop
   (call $memset/memset
    (i32.add
     (get_global $memset/dest)
     (i32.const 1)
    )
    (i32.const 2)
    (i32.const 14)
   )
  )
  (if
   (i32.ne
    (i32.load8_u
     (get_global $memset/dest)
    )
    (i32.const 1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 77)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.load8_u
     (i32.add
      (get_global $memset/dest)
      (i32.const 1)
     )
    )
    (i32.const 2)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 78)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.load8_u
     (i32.add
      (get_global $memset/dest)
      (i32.const 14)
     )
    )
    (i32.const 2)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 79)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (i32.load8_u
     (i32.add
      (get_global $memset/dest)
      (i32.const 15)
     )
    )
    (i32.const 1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 80)
     (i32.const 0)
    )
    (unreachable)
   )
  )
 )
)
