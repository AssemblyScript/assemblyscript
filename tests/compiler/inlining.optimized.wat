(module
 (type $i (func (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (type $ii (func (param i32) (result i32)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (global $~argc (mut i32) (i32.const 0))
 (table 1 1 anyfunc)
 (elem (i32.const 0) $inlining/test_funcs~anonymous|0)
 (memory $0 1)
 (data (i32.const 8) "\0b\00\00\00i\00n\00l\00i\00n\00i\00n\00g\00.\00t\00s")
 (export "test" (func $inlining/test))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $inlining/test (; 1 ;) (type $i) (result i32)
  (i32.const 3)
 )
 (func $inlining/test_funcs~anonymous|0 (; 2 ;) (type $ii) (param $0 i32) (result i32)
  (get_local $0)
 )
 (func $inlining/test_funcs (; 3 ;) (type $v)
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
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 60)
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
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 61)
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
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 62)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (if
   (block (result i32)
    (set_global $~argc
     (i32.const 1)
    )
    (i32.ne
     (call_indirect (type $ii)
      (i32.const 2)
      (i32.const 0)
     )
     (i32.const 2)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 68)
     (i32.const 2)
    )
    (unreachable)
   )
  )
 )
 (func $start (; 4 ;) (type $v)
  (if
   (i32.ne
    (call $inlining/test)
    (i32.const 3)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 10)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (call $inlining/test_funcs)
 )
)
