(module
 (type $i (func (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (type $ii (func (param i32) (result i32)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (global $inlining/constantGlobal i32 (i32.const 1))
 (global $~argc (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 36))
 (table 1 1 anyfunc)
 (elem (i32.const 0) $inlining/test_funcs~anonymous|0)
 (memory $0 1)
 (data (i32.const 8) "\0b\00\00\00i\00n\00l\00i\00n\00i\00n\00g\00.\00t\00s\00")
 (export "test" (func $inlining/test))
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $inlining/test (; 1 ;) (type $i) (result i32)
  (i32.add
   (i32.const 1)
   (i32.const 2)
  )
 )
 (func $inlining/test_funcs~anonymous|0 (; 2 ;) (type $ii) (param $0 i32) (result i32)
  (get_local $0)
 )
 (func $inlining/test_funcs (; 3 ;) (type $v)
  (local $0 f32)
  (local $1 f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (set_local $0
   (f32.const -1)
  )
  (set_local $1
   (f64.const -2)
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
      (if (result i32)
       (i32.lt_s
        (get_local $2)
        (i32.const 42)
       )
       (i32.const 2)
       (i32.const 3)
      )
     )
     (i32.const 1)
    )
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
      (if (result i32)
       (i32.lt_s
        (get_local $2)
        (i32.const 42)
       )
       (i32.const 2)
       (i32.const 3)
      )
     )
     (i32.const 2)
    )
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
      (if (result i32)
       (i32.lt_s
        (get_local $2)
        (i32.const 42)
       )
       (i32.const 2)
       (i32.const 3)
      )
     )
     (i32.const 3)
    )
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
   (i32.eqz
    (i32.eq
     (block $inlining/func_ii_opt|inlined.0 (result i32)
      (set_local $2
       (i32.const 0)
      )
      (get_local $2)
     )
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 63)
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
      (get_local $2)
     )
     (i32.const 1)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 64)
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
      (get_local $4)
     )
     (i32.const 3)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 65)
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
      (get_local $2)
     )
     (i32.const 4)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 66)
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
  (if
   (i32.eqz
    (i32.eq
     (block (result i32)
      (set_global $~argc
       (i32.const 1)
      )
      (call_indirect (type $ii)
       (i32.const 2)
       (block $inlining/func_fe|inlined.0 (result i32)
        (i32.const 0)
       )
      )
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
  (if
   (i32.eqz
    (i32.eq
     (block $inlining/Foo.method_static|inlined.0 (result i32)
      (set_local $2
       (i32.const 42)
      )
      (set_local $3
       (i32.const 2)
      )
      (i32.add
       (get_local $2)
       (get_local $3)
      )
     )
     (i32.const 44)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 69)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (set_local $7
   (i32.const 123)
  )
  (if
   (i32.eqz
    (i32.eq
     (block $inlining/Foo#method_this|inlined.0 (result i32)
      (set_local $3
       (i32.const 43)
      )
      (set_local $2
       (i32.const 3)
      )
      (get_local $7)
     )
     (i32.const 123)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 71)
     (i32.const 2)
    )
    (unreachable)
   )
  )
 )
 (func $start (; 4 ;) (type $v)
  (if
   (i32.eqz
    (i32.eq
     (call $inlining/test)
     (i32.const 3)
    )
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
