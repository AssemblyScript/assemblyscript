(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (global $comma/a (mut i32) (i32.const 0))
 (global $comma/b (mut i32) (i32.const 0))
 (memory $0 1)
 (data (i32.const 8) "\08\00\00\00c\00o\00m\00m\00a\00.\00t\00s")
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 1 ;) (type $v)
  (local $0 i32)
  (set_global $comma/a
   (i32.add
    (tee_local $0
     (get_global $comma/a)
    )
    (i32.const 1)
   )
  )
  (set_global $comma/b
   (get_local $0)
  )
  (if
   (i32.ne
    (get_global $comma/a)
    (i32.const 1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 4)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (get_global $comma/b)
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 5)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $comma/a
   (i32.add
    (get_global $comma/a)
    (i32.const 1)
   )
  )
  (set_global $comma/b
   (get_global $comma/a)
  )
  (if
   (i32.ne
    (get_global $comma/a)
    (i32.const 2)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 8)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (get_global $comma/b)
    (i32.const 2)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 9)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $comma/b
   (i32.const 0)
  )
  (set_global $comma/a
   (get_global $comma/b)
  )
  (set_global $comma/a
   (i32.add
    (get_global $comma/a)
    (i32.const 1)
   )
  )
  (set_global $comma/b
   (get_global $comma/a)
  )
  (if
   (i32.ne
    (get_global $comma/a)
    (i32.const 1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 14)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (get_global $comma/b)
    (i32.const 1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 15)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $comma/a
   (i32.add
    (get_global $comma/a)
    (i32.const 1)
   )
  )
  (set_global $comma/b
   (get_global $comma/a)
  )
  (set_global $comma/a
   (get_global $comma/b)
  )
  (if
   (i32.ne
    (get_global $comma/a)
    (i32.const 2)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 18)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (get_global $comma/b)
    (i32.const 2)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 19)
     (i32.const 0)
    )
    (unreachable)
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
      (get_global $comma/a)
     )
    )
    (set_global $comma/a
     (i32.sub
      (get_global $comma/a)
      (i32.const 1)
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
  (if
   (i32.ne
    (get_local $0)
    (i32.const 1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 22)
     (i32.const 0)
    )
    (unreachable)
   )
  )
 )
)
