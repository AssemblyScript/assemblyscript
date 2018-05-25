(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (global $for/i (mut i32) (i32.const 0))
 (memory $0 1)
 (data (i32.const 8) "\06\00\00\00f\00o\00r\00.\00t\00s")
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 1 ;) (type $v)
  (local $0 i32)
  (block $break|0
   (set_global $for/i
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_global $for/i)
      (i32.const 10)
     )
    )
    (set_global $for/i
     (i32.add
      (get_global $for/i)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (if
   (i32.ne
    (get_global $for/i)
    (i32.const 10)
   )
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
  (block $break|1
   (loop $repeat|1
    (br_if $break|1
     (i32.ge_s
      (get_local $0)
      (i32.const 10)
     )
    )
    (set_local $0
     (i32.add
      (get_local $0)
      (i32.const 1)
     )
    )
    (br $repeat|1)
   )
  )
  (block $break|2
   (loop $repeat|2
    (br_if $break|2
     (i32.le_s
      (get_global $for/i)
      (i32.const 0)
     )
    )
    (set_global $for/i
     (i32.sub
      (get_global $for/i)
      (i32.const 1)
     )
    )
    (br $repeat|2)
   )
  )
  (if
   (get_global $for/i)
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
  (block $break|3
   (loop $repeat|3
    (br_if $break|3
     (i32.eq
      (get_global $for/i)
      (i32.const 10)
     )
    )
    (set_global $for/i
     (i32.add
      (get_global $for/i)
      (i32.const 1)
     )
    )
    (br $repeat|3)
   )
  )
  (loop $repeat|4
   (set_global $for/i
    (i32.sub
     (get_global $for/i)
     (i32.const 1)
    )
   )
   (br_if $repeat|4
    (get_global $for/i)
   )
  )
  (block $break|5
   (set_local $0
    (i32.const 0)
   )
   (loop $repeat|5
    (br_if $break|5
     (i32.ge_s
      (get_local $0)
      (i32.const 10)
     )
    )
    (set_local $0
     (i32.add
      (get_local $0)
      (i32.const 1)
     )
    )
    (br $repeat|5)
   )
  )
  (if
   (i32.ne
    (get_local $0)
    (i32.const 10)
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
 )
)
