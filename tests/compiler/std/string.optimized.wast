(module
 (type $i (func (result i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $v (func))
 (global $std/string/str (mut i32) (i32.const 8))
 (memory $0 1)
 (data (i32.const 8) "\10\00\00\00h\00i\00,\00 \00I\00\'\00m\00 \00a\00 \00s\00t\00r\00i\00n\00g")
 (data (i32.const 48) "\02\00\00\00h\00i")
 (data (i32.const 56) "\06\00\00\00s\00t\00r\00i\00n\00g")
 (data (i32.const 72) "\03\00\00\00I\00\'\00m")
 (data (i32.const 88) "\01\00\00\00,")
 (data (i32.const 96) "\01\00\00\00x")
 (export "getString" (func $std/string/getString))
 (export "memory" (memory $0))
 (start $start)
 (func $std:heap/compare_memory (; 0 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (if
   (i32.eq
    (get_local $0)
    (get_local $1)
   )
   (return
    (i32.const 0)
   )
  )
  (loop $continue|0
   (if
    (if (result i32)
     (get_local $2)
     (i32.eq
      (i32.load8_u
       (get_local $0)
      )
      (i32.load8_u
       (get_local $1)
      )
     )
     (get_local $2)
    )
    (block
     (set_local $2
      (i32.sub
       (get_local $2)
       (i32.const 1)
      )
     )
     (set_local $0
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
     )
     (br $continue|0)
    )
   )
  )
  (if (result i32)
   (get_local $2)
   (i32.sub
    (i32.load8_u
     (get_local $0)
    )
    (i32.load8_u
     (get_local $1)
    )
   )
   (i32.const 0)
  )
 )
 (func $std:string/String#startsWith (; 1 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (get_local $1)
   )
   (unreachable)
  )
  (if
   (i32.gt_s
    (i32.add
     (tee_local $4
      (i32.load
       (get_local $1)
      )
     )
     (tee_local $2
      (select
       (tee_local $2
        (select
         (get_local $2)
         (i32.const 0)
         (i32.gt_s
          (get_local $2)
          (get_local $3)
         )
        )
       )
       (tee_local $3
        (tee_local $5
         (i32.load
          (get_local $0)
         )
        )
       )
       (i32.lt_s
        (get_local $2)
        (get_local $3)
       )
      )
     )
    )
    (get_local $5)
   )
   (return
    (i32.const 0)
   )
  )
  (i32.eqz
   (call $std:heap/compare_memory
    (i32.add
     (i32.add
      (get_local $0)
      (i32.const 4)
     )
     (i32.shl
      (get_local $2)
      (i32.const 1)
     )
    )
    (i32.add
     (get_local $1)
     (i32.const 4)
    )
    (i32.shl
     (get_local $4)
     (i32.const 1)
    )
   )
  )
 )
 (func $std:string/String#endsWith (; 2 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (if
   (i32.eqz
    (get_local $1)
   )
   (unreachable)
  )
  (if
   (i32.lt_s
    (tee_local $3
     (i32.sub
      (select
       (tee_local $2
        (select
         (get_local $2)
         (i32.const 0)
         (i32.gt_s
          (get_local $2)
          (get_local $3)
         )
        )
       )
       (tee_local $3
        (i32.load
         (get_local $0)
        )
       )
       (i32.lt_s
        (get_local $2)
        (get_local $3)
       )
      )
      (tee_local $2
       (i32.load
        (get_local $1)
       )
      )
     )
    )
    (i32.const 0)
   )
   (return
    (i32.const 0)
   )
  )
  (i32.eqz
   (call $std:heap/compare_memory
    (i32.add
     (i32.add
      (get_local $0)
      (i32.const 4)
     )
     (i32.shl
      (get_local $3)
      (i32.const 1)
     )
    )
    (i32.add
     (get_local $1)
     (i32.const 4)
    )
    (i32.shl
     (get_local $2)
     (i32.const 1)
    )
   )
  )
 )
 (func $std:string/String#indexOf (; 3 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (if
   (i32.eqz
    (get_local $1)
   )
   (unreachable)
  )
  (set_local $4
   (i32.load
    (get_local $1)
   )
  )
  (set_local $2
   (select
    (tee_local $2
     (select
      (get_local $2)
      (i32.const 0)
      (i32.gt_s
       (get_local $2)
       (get_local $3)
      )
     )
    )
    (tee_local $3
     (tee_local $5
      (i32.load
       (get_local $0)
      )
     )
    )
    (i32.lt_s
     (get_local $2)
     (get_local $3)
    )
   )
  )
  (loop $continue|0
   (if
    (i32.le_s
     (i32.add
      (get_local $2)
      (get_local $4)
     )
     (get_local $5)
    )
    (block
     (if
      (i32.eqz
       (call $std:heap/compare_memory
        (i32.add
         (i32.add
          (get_local $0)
          (i32.const 4)
         )
         (i32.shl
          (get_local $2)
          (i32.const 1)
         )
        )
        (i32.add
         (get_local $1)
         (i32.const 4)
        )
        (i32.shl
         (get_local $4)
         (i32.const 1)
        )
       )
      )
      (return
       (get_local $2)
      )
     )
     (set_local $2
      (i32.add
       (get_local $2)
       (i32.const 1)
      )
     )
     (br $continue|0)
    )
   )
  )
  (i32.const -1)
 )
 (func $std/string/getString (; 4 ;) (type $i) (result i32)
  (get_global $std/string/str)
 )
 (func $start (; 5 ;) (type $v)
  (local $0 i32)
  (if
   (i32.ne
    (get_global $std/string/str)
    (i32.const 8)
   )
   (unreachable)
  )
  (if
   (i32.ne
    (i32.load
     (get_global $std/string/str)
    )
    (i32.const 16)
   )
   (unreachable)
  )
  (if
   (i32.ne
    (block $__inlined_func$std:string/String#charCodeAt (result i32)
     (drop
      (br_if $__inlined_func$std:string/String#charCodeAt
       (i32.const -1)
       (i32.ge_u
        (i32.const 0)
        (i32.load
         (tee_local $0
          (get_global $std/string/str)
         )
        )
       )
      )
     )
     (i32.load16_u offset=4
      (i32.add
       (get_local $0)
       (i32.const 0)
      )
     )
    )
    (i32.const 104)
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (call $std:string/String#startsWith
     (get_global $std/string/str)
     (i32.const 48)
     (i32.const 0)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (call $std:string/String#endsWith
     (get_global $std/string/str)
     (i32.const 56)
     (i32.const 2147483647)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.ne
     (call $std:string/String#indexOf
      (tee_local $0
       (get_global $std/string/str)
      )
      (i32.const 72)
      (i32.const 0)
     )
     (i32.const -1)
    )
   )
   (unreachable)
  )
  (if
   (i32.ne
    (call $std:string/String#indexOf
     (get_global $std/string/str)
     (i32.const 88)
     (i32.const 0)
    )
    (i32.const 2)
   )
   (unreachable)
  )
  (if
   (i32.ne
    (call $std:string/String#indexOf
     (get_global $std/string/str)
     (i32.const 96)
     (i32.const 0)
    )
    (i32.const -1)
   )
   (unreachable)
  )
 )
)
