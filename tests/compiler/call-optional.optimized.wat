(module
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $iiiii (func (param i32 i32 i32 i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (import "env" "abort" (func $abort (param i32 i32 i32 i32)))
 (memory $0 1)
 (data (i32.const 4) "\10\00\00\00c\00a\00l\00l\00-\00o\00p\00t\00i\00o\00n\00a\00l\00.\00t\00s")
 (export "memory" (memory $0))
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
 (func $call-optional/opt|trampoline (; 2 ;) (type $iiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (block $N=2
   (block $N=1
    (block $N=0
     (block $N=invalid
      (br_table $N=0 $N=1 $N=2 $N=invalid
       (i32.sub
        (get_local $3)
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
   (call $call-optional/opt|trampoline
    (i32.const 3)
    (i32.const 0)
    (i32.const 0)
    (i32.const 1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 4)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $call-optional/opt|trampoline
     (i32.const 3)
     (i32.const 4)
     (i32.const 0)
     (i32.const 2)
    )
    (i32.const 5)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 5)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (if
   (i32.ne
    (call $call-optional/opt
     (i32.const 3)
     (i32.const 4)
     (i32.const 5)
    )
    (i32.const 12)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 6)
     (i32.const 0)
    )
    (unreachable)
   )
  )
 )
)
