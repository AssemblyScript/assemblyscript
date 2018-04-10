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
 (func $start (; 2 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
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
     (i32.const 8)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (block $inlining/foo|inlined.0 (result i32)
      (set_local $0
       (i32.const 42)
      )
      (if
       (i32.eq
        (get_local $0)
        (i32.const 42)
       )
       (br $inlining/foo|inlined.0
        (i32.const 1)
       )
      )
      (br $inlining/foo|inlined.0
       (if (result i32)
        (i32.lt_s
         (get_local $0)
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
     (i32.const 16)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (block $inlining/foo|inlined.1 (result i32)
      (set_local $1
       (i32.const 41)
      )
      (if
       (i32.eq
        (get_local $1)
        (i32.const 42)
       )
       (br $inlining/foo|inlined.1
        (i32.const 1)
       )
      )
      (br $inlining/foo|inlined.1
       (if (result i32)
        (i32.lt_s
         (get_local $1)
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
     (i32.const 17)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (block $inlining/foo|inlined.2 (result i32)
      (set_local $2
       (i32.const 43)
      )
      (if
       (i32.eq
        (get_local $2)
        (i32.const 42)
       )
       (br $inlining/foo|inlined.2
        (i32.const 1)
       )
      )
      (br $inlining/foo|inlined.2
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
     (i32.const 18)
     (i32.const 0)
    )
    (unreachable)
   )
  )
 )
)
