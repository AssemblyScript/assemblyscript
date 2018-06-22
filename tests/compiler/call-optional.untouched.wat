(module
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (global $~argc (mut i32) (i32.const 0))
 (global $call-optional/optIndirect (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 44))
 (table 1 1 anyfunc)
 (elem (i32.const 0) $call-optional/opt|trampoline)
 (memory $0 1)
 (data (i32.const 8) "\10\00\00\00c\00a\00l\00l\00-\00o\00p\00t\00i\00o\00n\00a\00l\00.\00t\00s\00")
 (export "memory" (memory $0))
 (export "table" (table $0))
 (start $start)
 (func $call-optional/opt (; 1 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (i32.add
   (i32.add
    (get_local $0)
    (get_local $1)
   )
   (get_local $2)
  )
 )
 (func $call-optional/opt|trampoline (; 2 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (block $2of2
   (block $1of2
    (block $0of2
     (block $oob
      (br_table $0of2 $1of2 $2of2 $oob
       (i32.sub
        (get_global $~argc)
        (i32.const 1)
       )
      )
     )
     (unreachable)
    )
    (set_local $1
     (i32.const -1)
    )
   )
   (set_local $2
    (i32.const -2)
   )
  )
  (call $call-optional/opt
   (get_local $0)
   (get_local $1)
   (get_local $2)
  )
 )
 (func $start (; 3 ;) (type $v)
  (if
   (i32.eqz
    (i32.eq
     (block (result i32)
      (set_global $~argc
       (i32.const 1)
      )
      (call $call-optional/opt|trampoline
       (i32.const 3)
       (i32.const 0)
       (i32.const 0)
      )
     )
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 4)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (block (result i32)
      (set_global $~argc
       (i32.const 2)
      )
      (call $call-optional/opt|trampoline
       (i32.const 3)
       (i32.const 4)
       (i32.const 0)
      )
     )
     (i32.const 5)
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
  (if
   (i32.eqz
    (i32.eq
     (call $call-optional/opt
      (i32.const 3)
      (i32.const 4)
      (i32.const 5)
     )
     (i32.const 12)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 6)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (block (result i32)
      (set_global $~argc
       (i32.const 1)
      )
      (call_indirect (type $iiii)
       (i32.const 3)
       (i32.const 0)
       (i32.const 0)
       (get_global $call-optional/optIndirect)
      )
     )
     (i32.const 0)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 9)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (block (result i32)
      (set_global $~argc
       (i32.const 2)
      )
      (call_indirect (type $iiii)
       (i32.const 3)
       (i32.const 4)
       (i32.const 0)
       (get_global $call-optional/optIndirect)
      )
     )
     (i32.const 5)
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
  (if
   (i32.eqz
    (i32.eq
     (block (result i32)
      (set_global $~argc
       (i32.const 3)
      )
      (call_indirect (type $iiii)
       (i32.const 3)
       (i32.const 4)
       (i32.const 5)
       (get_global $call-optional/optIndirect)
      )
     )
     (i32.const 12)
    )
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 11)
     (i32.const 0)
    )
    (unreachable)
   )
  )
 )
)
