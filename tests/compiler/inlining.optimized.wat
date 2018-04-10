(module
 (type $i (func (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (import "env" "abort" (func $abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 4) "\0b\00\00\00i\00n\00l\00i\00n\00i\00n\00g\00.\00t\00s")
 (export "test" (func $inlining/test))
 (export "memory" (memory $0))
 (start $start)
 (func $inlining/test (; 1 ;) (type $i) (result i32)
  (i32.const 3)
 )
 (func $inlining/test_funcs (; 2 ;) (type $v)
  (local $0 i32)
  (if
   (i32.ne
    (block $inlining/func_ii|inlined.0 (result i32)
     (drop
      (br_if $inlining/func_ii|inlined.0
       (i32.const 1)
       (i32.eq
        (tee_local $0
         (i32.const 42)
        )
        (i32.const 42)
       )
      )
     )
     (select
      (i32.const 2)
      (i32.const 3)
      (i32.lt_s
       (get_local $0)
       (i32.const 42)
      )
     )
    )
    (i32.const 1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 50)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (block $inlining/func_ii|inlined.1 (result i32)
     (drop
      (br_if $inlining/func_ii|inlined.1
       (i32.const 1)
       (i32.eq
        (tee_local $0
         (i32.const 41)
        )
        (i32.const 42)
       )
      )
     )
     (select
      (i32.const 2)
      (i32.const 3)
      (i32.lt_s
       (get_local $0)
       (i32.const 42)
      )
     )
    )
    (i32.const 2)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 51)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (block $inlining/func_ii|inlined.2 (result i32)
     (drop
      (br_if $inlining/func_ii|inlined.2
       (i32.const 1)
       (i32.eq
        (tee_local $0
         (i32.const 43)
        )
        (i32.const 42)
       )
      )
     )
     (select
      (i32.const 2)
      (i32.const 3)
      (i32.lt_s
       (get_local $0)
       (i32.const 42)
      )
     )
    )
    (i32.const 3)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 52)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (tee_local $0
     (i32.add
      (tee_local $0
       (i32.const 2)
      )
      (i32.const 1)
     )
    )
    (i32.const 3)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 55)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (tee_local $0
     (i32.add
      (tee_local $0
       (i32.const 3)
      )
      (i32.const 1)
     )
    )
    (i32.const 4)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 56)
     (i32.const 2)
    )
    (unreachable)
   )
  )
 )
 (func $start (; 3 ;) (type $v)
  (if
   (i32.ne
    (call $inlining/test)
    (i32.const 3)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 10)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (call $inlining/test_funcs)
 )
)
