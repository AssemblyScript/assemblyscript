(module
 (type $i (func (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (import "env" "abort" (func $abort (param i32 i32 i32 i32)))
 (global $inlining/constantGlobal i32 (i32.const 1))
 (global $HEAP_BASE i32 (i32.const 32))
 (memory $0 1)
 (data (i32.const 4) "\0b\00\00\00i\00n\00l\00i\00n\00i\00n\00g\00.\00t\00s\00")
 (export "test" (func $inlining/test))
 (export "memory" (memory $0))
 (start $start)
 (func $inlining/test (; 1 ;) (type $i) (result i32)
  (nop)
  (return
   (i32.add
    (i32.const 1)
    (i32.const 2)
   )
  )
 )
 (func $inlining/test_funcs (; 2 ;) (type $v)
  (local $0 f32)
  (local $1 f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (block
   (set_local $0
    (f32.const -1)
   )
   (set_local $1
    (f64.const -2)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (block $inlining/func_ii|inlined.0 (result i32)
      (set_local $2
       (i32.const 42)
      )
      (if
       (i32.eq
        (get_local $2)
        (i32.const 42)
       )
       (br $inlining/func_ii|inlined.0
        (i32.const 1)
       )
      )
      (br $inlining/func_ii|inlined.0
       (if (result i32)
        (i32.lt_s
         (get_local $2)
         (i32.const 42)
        )
        (i32.const 2)
        (i32.const 3)
       )
      )
     )
     (i32.const 1)
    )
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
   (i32.eqz
    (i32.eq
     (block $inlining/func_ii|inlined.1 (result i32)
      (set_local $2
       (i32.const 41)
      )
      (if
       (i32.eq
        (get_local $2)
        (i32.const 42)
       )
       (br $inlining/func_ii|inlined.1
        (i32.const 1)
       )
      )
      (br $inlining/func_ii|inlined.1
       (if (result i32)
        (i32.lt_s
         (get_local $2)
         (i32.const 42)
        )
        (i32.const 2)
        (i32.const 3)
       )
      )
     )
     (i32.const 2)
    )
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
   (i32.eqz
    (i32.eq
     (block $inlining/func_ii|inlined.2 (result i32)
      (set_local $2
       (i32.const 43)
      )
      (if
       (i32.eq
        (get_local $2)
        (i32.const 42)
       )
       (br $inlining/func_ii|inlined.2
        (i32.const 1)
       )
      )
      (br $inlining/func_ii|inlined.2
       (if (result i32)
        (i32.lt_s
         (get_local $2)
         (i32.const 42)
        )
        (i32.const 2)
        (i32.const 3)
       )
      )
     )
     (i32.const 3)
    )
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
   (i32.eqz
    (i32.eq
     (block $inlining/func_ii_opt|inlined.0 (result i32)
      (set_local $2
       (i32.const 0)
      )
      (br $inlining/func_ii_opt|inlined.0
       (get_local $2)
      )
     )
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 53)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (block $inlining/func_ii_opt|inlined.1 (result i32)
      (set_local $2
       (i32.const 1)
      )
      (br $inlining/func_ii_opt|inlined.1
       (get_local $2)
      )
     )
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 54)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (block $inlining/func_ii_loc|inlined.0 (result i32)
      (set_local $2
       (i32.const 2)
      )
      (set_local $3
       (get_local $2)
      )
      (nop)
      (if
       (i32.const 1)
       (block
        (set_local $5
         (get_local $3)
        )
        (set_local $6
         (get_local $5)
        )
        (set_local $4
         (i32.add
          (get_local $6)
          (i32.const 1)
         )
        )
       )
      )
      (br $inlining/func_ii_loc|inlined.0
       (get_local $4)
      )
     )
     (i32.const 3)
    )
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
   (i32.eqz
    (i32.eq
     (block $inlining/func_ii_loc|inlined.1 (result i32)
      (set_local $4
       (i32.const 3)
      )
      (set_local $3
       (get_local $4)
      )
      (nop)
      (if
       (i32.const 1)
       (block
        (set_local $6
         (get_local $3)
        )
        (set_local $5
         (get_local $6)
        )
        (set_local $2
         (i32.add
          (get_local $5)
          (i32.const 1)
         )
        )
       )
      )
      (br $inlining/func_ii_loc|inlined.1
       (get_local $2)
      )
     )
     (i32.const 4)
    )
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
  (block $inlining/func_iv|inlined.0
   (set_local $2
    (i32.const 0)
   )
  )
  (set_local $7
   (i32.const 123)
  )
  (if
   (i32.eqz
    (i32.eq
     (block $inlining/Foo#method_this|inlined.0 (result i32)
      (set_local $2
       (get_local $7)
      )
      (br $inlining/Foo#method_this|inlined.0
       (get_local $2)
      )
     )
     (i32.const 123)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 59)
     (i32.const 2)
    )
    (unreachable)
   )
  )
 )
 (func $start (; 3 ;) (type $v)
  (if
   (i32.eqz
    (i32.eq
     (call $inlining/test)
     (i32.const 3)
    )
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
