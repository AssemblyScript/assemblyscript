(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (global $do/n (mut i32) (i32.const 10))
 (global $do/m (mut i32) (i32.const 0))
 (global $do/o (mut i32) (i32.const 0))
 (memory $0 1)
 (data (i32.const 8) "\05\00\00\00d\00o\00.\00t\00s")
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 1 ;) (type $v)
  (local $0 i32)
  (loop $continue|0
   (set_global $do/n
    (i32.sub
     (get_global $do/n)
     (i32.const 1)
    )
   )
   (set_global $do/m
    (i32.add
     (get_global $do/m)
     (i32.const 1)
    )
   )
   (br_if $continue|0
    (get_global $do/n)
   )
  )
  (if
   (get_global $do/n)
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 7)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (get_global $do/m)
    (i32.const 10)
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
  (set_global $do/n
   (i32.const 10)
  )
  (loop $continue|1
   (set_global $do/n
    (i32.sub
     (tee_local $0
      (get_global $do/n)
     )
     (i32.const 1)
    )
   )
   (br_if $continue|1
    (get_local $0)
   )
  )
  (if
   (i32.ne
    (get_global $do/n)
    (i32.const -1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 12)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $do/n
   (i32.const 10)
  )
  (set_global $do/m
   (i32.const 0)
  )
  (loop $continue|2
   (set_global $do/n
    (i32.sub
     (get_global $do/n)
     (i32.const 1)
    )
   )
   (set_global $do/m
    (i32.add
     (get_global $do/m)
     (i32.const 1)
    )
   )
   (loop $continue|3
    (set_global $do/n
     (i32.sub
      (get_global $do/n)
      (i32.const 1)
     )
    )
    (set_global $do/o
     (i32.add
      (get_global $do/o)
      (i32.const 1)
     )
    )
    (br_if $continue|3
     (get_global $do/n)
    )
   )
   (if
    (get_global $do/n)
    (block
     (call $~lib/env/abort
      (i32.const 0)
      (i32.const 8)
      (i32.const 24)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   (if
    (i32.ne
     (get_global $do/o)
     (i32.const 9)
    )
    (block
     (call $~lib/env/abort
      (i32.const 0)
      (i32.const 8)
      (i32.const 25)
      (i32.const 2)
     )
     (unreachable)
    )
   )
   (br_if $continue|2
    (get_global $do/n)
   )
  )
  (if
   (get_global $do/n)
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 27)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (get_global $do/m)
    (i32.const 1)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 28)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (get_global $do/o)
    (i32.const 9)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 29)
     (i32.const 0)
    )
    (unreachable)
   )
  )
 )
)
