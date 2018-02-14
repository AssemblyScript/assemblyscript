(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (import "env" "abort" (func $abort (param i32 i32 i32 i32)))
 (global $logical/i (mut i32) (i32.const 0))
 (global $logical/I (mut i64) (i64.const 0))
 (global $logical/f (mut f32) (f32.const 0))
 (global $logical/F (mut f64) (f64.const 0))
 (memory $0 1)
 (data (i32.const 4) "\n\00\00\00l\00o\00g\00i\00c\00a\00l\00.\00t\00s")
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 1 ;) (type $v)
  (local $0 i32)
  (local $1 f64)
  (if
   (i32.eqz
    (tee_local $0
     (i32.const 2)
    )
   )
   (unreachable)
  )
  (if
   (f64.eq
    (tee_local $1
     (f64.const 2)
    )
    (f64.const 0)
   )
   (unreachable)
  )
  (set_global $logical/i
   (i32.const 2)
  )
  (if
   (i32.ne
    (get_global $logical/i)
    (i32.const 2)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 12)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $logical/i
   (i32.const 1)
  )
  (if
   (i32.ne
    (get_global $logical/i)
    (i32.const 1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 15)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $logical/I
   (i64.const 2)
  )
  (if
   (i64.ne
    (get_global $logical/I)
    (i64.const 2)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 20)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $logical/I
   (i64.const 1)
  )
  (if
   (i64.ne
    (get_global $logical/I)
    (i64.const 1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 23)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $logical/f
   (f32.const 2)
  )
  (if
   (f32.ne
    (get_global $logical/f)
    (f32.const 2)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 28)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $logical/f
   (f32.const 1)
  )
  (if
   (f32.ne
    (get_global $logical/f)
    (f32.const 1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 31)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $logical/F
   (f64.const 2)
  )
  (if
   (f64.ne
    (get_global $logical/F)
    (f64.const 2)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 36)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $logical/F
   (f64.const 1)
  )
  (if
   (f64.ne
    (get_global $logical/F)
    (f64.const 1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 39)
     (i32.const 0)
    )
    (unreachable)
   )
  )
 )
)
