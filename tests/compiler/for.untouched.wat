(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (memory $0 1)
 (data (i32.const 8) "\06\00\00\00f\00o\00r\00.\00t\00s\00")
 (table 1 anyfunc)
 (elem (i32.const 0) $null)
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (global $for/i (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 24))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $start (; 1 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (block $break|0
   (set_global $for/i
    (i32.const 0)
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.eqz
      (i32.lt_s
       (get_global $for/i)
       (i32.const 10)
      )
     )
    )
    (nop)
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
   (i32.eqz
    (i32.eq
     (get_global $for/i)
     (i32.const 10)
    )
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
   (set_local $0
    (i32.const 0)
   )
   (loop $repeat|1
    (br_if $break|1
     (i32.eqz
      (i32.lt_s
       (get_local $0)
       (i32.const 10)
      )
     )
    )
    (nop)
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
     (i32.eqz
      (i32.gt_s
       (get_global $for/i)
       (i32.const 0)
      )
     )
    )
    (nop)
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
   (i32.eqz
    (i32.eq
     (get_global $for/i)
     (i32.const 0)
    )
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
  (block $break|3
   (loop $repeat|3
    (br_if $break|3
     (i32.eqz
      (i32.const 1)
     )
    )
    (if
     (i32.eq
      (get_global $for/i)
      (i32.const 10)
     )
     (br $break|3)
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
  (block $break|4
   (loop $repeat|4
    (br_if $break|4
     (i32.eqz
      (i32.const 1)
     )
    )
    (if
     (i32.eq
      (block (result i32)
       (set_global $for/i
        (i32.sub
         (get_global $for/i)
         (i32.const 1)
        )
       )
       (get_global $for/i)
      )
      (i32.const 0)
     )
     (br $break|4)
    )
    (br $repeat|4)
   )
  )
  (block $break|5
   (set_local $1
    (i32.const 0)
   )
   (loop $repeat|5
    (block $continue|5
     (br_if $break|5
      (i32.eqz
       (i32.lt_s
        (get_local $1)
        (i32.const 10)
       )
      )
     )
     (br $continue|5)
    )
    (set_local $1
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
    (br $repeat|5)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_local $1)
     (i32.const 10)
    )
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
  (block $break|6
   (set_local $2
    (i32.const 0)
   )
   (loop $repeat|6
    (br_if $break|6
     (i32.eqz
      (i32.lt_s
       (get_local $2)
       (i32.const 10)
      )
     )
    )
    (block $break|7
     (set_local $3
      (i32.const 0)
     )
     (loop $repeat|7
      (block $continue|7
       (br_if $break|7
        (i32.eqz
         (i32.lt_s
          (get_local $3)
          (i32.const 10)
         )
        )
       )
       (if
        (i32.eq
         (get_local $2)
         (get_local $3)
        )
        (br $continue|7)
       )
      )
      (set_local $3
       (i32.add
        (get_local $3)
        (i32.const 1)
       )
      )
      (br $repeat|7)
     )
    )
    (set_local $2
     (i32.add
      (get_local $2)
      (i32.const 1)
     )
    )
    (br $repeat|6)
   )
  )
 )
 (func $null (; 2 ;) (type $v)
 )
)
