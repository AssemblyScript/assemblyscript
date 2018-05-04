(module
 (type $i (func (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (import "env" "abort" (func $abort (param i32 i32 i32 i32)))
 (global $abi/condition (mut i32) (i32.const 0))
 (global $abi/y (mut i32) (i32.const 0))
 (memory $0 1)
 (data (i32.const 4) "\06\00\00\00a\00b\00i\00.\00t\00s")
 (export "exported" (func $abi/exported))
 (export "exportedExported" (func $abi/exportedExported))
 (export "exportedInternal" (func $abi/exportedInternal))
 (export "memory" (memory $0))
 (start $start)
 (func $abi/exported (; 1 ;) (type $i) (result i32)
  (i32.const -128)
 )
 (func $abi/exportedExported (; 2 ;) (type $i) (result i32)
  (call $abi/exported)
 )
 (func $abi/internal (; 3 ;) (type $i) (result i32)
  (i32.const 128)
 )
 (func $abi/exportedInternal (; 4 ;) (type $i) (result i32)
  (i32.shr_s
   (i32.shl
    (call $abi/internal)
    (i32.const 24)
   )
   (i32.const 24)
  )
 )
 (func $start (; 5 ;) (type $v)
  (local $0 i32)
  (drop
   (call $abi/internal)
  )
  (set_global $abi/condition
   (i32.const 1)
  )
  (set_local $0
   (i32.const 256)
  )
  (if
   (i32.and
    (tee_local $0
     (if (result i32)
      (get_global $abi/condition)
      (i32.div_s
       (i32.shr_s
        (i32.shl
         (get_local $0)
         (i32.const 24)
        )
        (i32.const 24)
       )
       (i32.const 2)
      )
      (i32.shl
       (i32.shr_s
        (i32.shl
         (get_local $0)
         (i32.const 24)
        )
        (i32.const 24)
       )
       (i32.const 1)
      )
     )
    )
    (i32.const 255)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 45)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (set_local $0
   (i32.const 256)
  )
  (if
   (tee_local $0
    (select
     (i32.shr_s
      (i32.shr_s
       (i32.shl
        (get_local $0)
        (i32.const 24)
       )
       (i32.const 24)
      )
      (i32.const 24)
     )
     (i32.and
      (get_local $0)
      (i32.const 127)
     )
     (get_global $abi/condition)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 58)
     (i32.const 2)
    )
    (unreachable)
   )
  )
  (set_global $abi/y
   (i32.const 0)
  )
  (if
   (get_global $abi/y)
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 65)
     (i32.const 2)
    )
    (unreachable)
   )
  )
 )
)
