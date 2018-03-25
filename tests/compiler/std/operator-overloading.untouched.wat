(module
 (type $i (func (result i32)))
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $ii (func (param i32) (result i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (import "env" "abort" (func $abort (param i32 i32 i32 i32)))
 (global "$(lib)/allocator/common/alignment/BITS" i32 (i32.const 3))
 (global "$(lib)/allocator/common/alignment/SIZE" i32 (i32.const 8))
 (global "$(lib)/allocator/common/alignment/MASK" i32 (i32.const 7))
 (global "$(lib)/allocator/arena/startOffset" (mut i32) (i32.const 0))
 (global "$(lib)/allocator/arena/offset" (mut i32) (i32.const 0))
 (global $std/operator-overloading/a1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/a2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/a (mut i32) (i32.const 0))
 (global $std/operator-overloading/s1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/s2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/s (mut i32) (i32.const 0))
 (global $std/operator-overloading/m1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/m2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/m (mut i32) (i32.const 0))
 (global $std/operator-overloading/d1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/d2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/d (mut i32) (i32.const 0))
 (global $std/operator-overloading/f1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/f2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/f (mut i32) (i32.const 0))
 (global $std/operator-overloading/n1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/n2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/n (mut i32) (i32.const 0))
 (global $std/operator-overloading/o1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/o2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/o (mut i32) (i32.const 0))
 (global $std/operator-overloading/x1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/x2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/x (mut i32) (i32.const 0))
 (global $std/operator-overloading/eq1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/eq2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/eq (mut i32) (i32.const 0))
 (global $std/operator-overloading/eq3 (mut i32) (i32.const 0))
 (global $std/operator-overloading/eq4 (mut i32) (i32.const 0))
 (global $std/operator-overloading/eqf (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 64))
 (memory $0 1)
 (data (i32.const 4) "\1b\00\00\00s\00t\00d\00/\00o\00p\00e\00r\00a\00t\00o\00r\00-\00o\00v\00e\00r\00l\00o\00a\00d\00i\00n\00g\00.\00t\00s\00")
 (export "memory" (memory $0))
 (start $start)
 (func "$(lib)/allocator/arena/allocate_memory" (; 1 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (return
    (i32.const 0)
   )
  )
  (set_local $1
   (get_global "$(lib)/allocator/arena/offset")
  )
  (set_local $2
   (i32.and
    (i32.add
     (i32.add
      (get_local $1)
      (get_local $0)
     )
     (i32.const 7)
    )
    (i32.xor
     (i32.const 7)
     (i32.const -1)
    )
   )
  )
  (set_local $3
   (current_memory)
  )
  (if
   (i32.gt_u
    (get_local $2)
    (i32.shl
     (get_local $3)
     (i32.const 16)
    )
   )
   (block
    (set_local $4
     (i32.shr_u
      (i32.and
       (i32.add
        (i32.sub
         (get_local $2)
         (get_local $1)
        )
        (i32.const 65535)
       )
       (i32.xor
        (i32.const 65535)
        (i32.const -1)
       )
      )
      (i32.const 16)
     )
    )
    (set_local $5
     (select
      (tee_local $5
       (get_local $3)
      )
      (tee_local $6
       (get_local $4)
      )
      (i32.gt_s
       (get_local $5)
       (get_local $6)
      )
     )
    )
    (if
     (i32.lt_s
      (grow_memory
       (get_local $5)
      )
      (i32.const 0)
     )
     (if
      (i32.lt_s
       (grow_memory
        (get_local $4)
       )
       (i32.const 0)
      )
      (unreachable)
     )
    )
   )
  )
  (set_global "$(lib)/allocator/arena/offset"
   (get_local $2)
  )
  (return
   (get_local $1)
  )
 )
 (func $std/operator-overloading/Tester#constructor (; 2 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (block
   (i32.store
    (tee_local $0
     (if (result i32)
      (get_local $0)
      (get_local $0)
      (tee_local $0
       (block (result i32)
        (set_local $3
         (call "$(lib)/allocator/arena/allocate_memory"
          (i32.const 8)
         )
        )
        (i32.store
         (get_local $3)
         (i32.const 0)
        )
        (i32.store offset=4
         (get_local $3)
         (i32.const 0)
        )
        (get_local $3)
       )
      )
     )
    )
    (get_local $1)
   )
   (i32.store offset=4
    (get_local $0)
    (get_local $2)
   )
  )
  (get_local $0)
 )
 (func $std/operator-overloading/Tester.add (; 3 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (return
   (call $std/operator-overloading/Tester#constructor
    (i32.const 0)
    (i32.add
     (i32.load
      (get_local $0)
     )
     (i32.load
      (get_local $1)
     )
    )
    (i32.add
     (i32.load offset=4
      (get_local $0)
     )
     (i32.load offset=4
      (get_local $1)
     )
    )
   )
  )
 )
 (func $std/operator-overloading/Tester.sub (; 4 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (return
   (call $std/operator-overloading/Tester#constructor
    (i32.const 0)
    (i32.sub
     (i32.load
      (get_local $0)
     )
     (i32.load
      (get_local $1)
     )
    )
    (i32.sub
     (i32.load offset=4
      (get_local $0)
     )
     (i32.load offset=4
      (get_local $1)
     )
    )
   )
  )
 )
 (func $std/operator-overloading/Tester.mul (; 5 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (return
   (call $std/operator-overloading/Tester#constructor
    (i32.const 0)
    (i32.mul
     (i32.load
      (get_local $0)
     )
     (i32.load
      (get_local $1)
     )
    )
    (i32.mul
     (i32.load offset=4
      (get_local $0)
     )
     (i32.load offset=4
      (get_local $1)
     )
    )
   )
  )
 )
 (func $std/operator-overloading/Tester.div (; 6 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (return
   (call $std/operator-overloading/Tester#constructor
    (i32.const 0)
    (i32.div_s
     (i32.load
      (get_local $0)
     )
     (i32.load
      (get_local $1)
     )
    )
    (i32.div_s
     (i32.load offset=4
      (get_local $0)
     )
     (i32.load offset=4
      (get_local $1)
     )
    )
   )
  )
 )
 (func $std/operator-overloading/Tester.mod (; 7 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (return
   (call $std/operator-overloading/Tester#constructor
    (i32.const 0)
    (i32.rem_s
     (i32.load
      (get_local $0)
     )
     (i32.load
      (get_local $1)
     )
    )
    (i32.rem_s
     (i32.load offset=4
      (get_local $0)
     )
     (i32.load offset=4
      (get_local $1)
     )
    )
   )
  )
 )
 (func $std/operator-overloading/Tester.and (; 8 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (return
   (call $std/operator-overloading/Tester#constructor
    (i32.const 0)
    (i32.and
     (i32.load
      (get_local $0)
     )
     (i32.load
      (get_local $1)
     )
    )
    (i32.and
     (i32.load offset=4
      (get_local $0)
     )
     (i32.load offset=4
      (get_local $1)
     )
    )
   )
  )
 )
 (func $std/operator-overloading/Tester.or (; 9 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (return
   (call $std/operator-overloading/Tester#constructor
    (i32.const 0)
    (i32.or
     (i32.load
      (get_local $0)
     )
     (i32.load
      (get_local $1)
     )
    )
    (i32.or
     (i32.load offset=4
      (get_local $0)
     )
     (i32.load offset=4
      (get_local $1)
     )
    )
   )
  )
 )
 (func $std/operator-overloading/Tester.xor (; 10 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (return
   (call $std/operator-overloading/Tester#constructor
    (i32.const 0)
    (i32.xor
     (i32.load
      (get_local $0)
     )
     (i32.load
      (get_local $1)
     )
    )
    (i32.xor
     (i32.load offset=4
      (get_local $0)
     )
     (i32.load offset=4
      (get_local $1)
     )
    )
   )
  )
 )
 (func $std/operator-overloading/Tester.equal (; 11 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (return
   (i32.and
    (if (result i32)
     (tee_local $2
      (i32.eq
       (i32.load
        (get_local $0)
       )
       (i32.load
        (get_local $1)
       )
      )
     )
     (i32.eq
      (i32.load offset=4
       (get_local $0)
      )
      (i32.load offset=4
       (get_local $1)
      )
     )
     (get_local $2)
    )
    (i32.const 1)
   )
  )
 )
 (func $start (; 12 ;) (type $v)
  (local $0 i32)
  (set_global "$(lib)/allocator/arena/startOffset"
   (i32.and
    (i32.add
     (get_global $HEAP_BASE)
     (i32.const 7)
    )
    (i32.xor
     (i32.const 7)
     (i32.const -1)
    )
   )
  )
  (set_global "$(lib)/allocator/arena/offset"
   (get_global "$(lib)/allocator/arena/startOffset")
  )
  (set_global $std/operator-overloading/a1
   (call $std/operator-overloading/Tester#constructor
    (i32.const 0)
    (i32.const 1)
    (i32.const 2)
   )
  )
  (set_global $std/operator-overloading/a2
   (call $std/operator-overloading/Tester#constructor
    (i32.const 0)
    (i32.const 2)
    (i32.const 3)
   )
  )
  (set_global $std/operator-overloading/a
   (call $std/operator-overloading/Tester.add
    (get_global $std/operator-overloading/a1)
    (get_global $std/operator-overloading/a2)
   )
  )
  (if
   (i32.eqz
    (i32.and
     (if (result i32)
      (tee_local $0
       (i32.eq
        (i32.load
         (get_global $std/operator-overloading/a)
        )
        (i32.const 3)
       )
      )
      (i32.eq
       (i32.load offset=4
        (get_global $std/operator-overloading/a)
       )
       (i32.const 5)
      )
      (get_local $0)
     )
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 62)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/operator-overloading/s1
   (call $std/operator-overloading/Tester#constructor
    (i32.const 0)
    (i32.const 2)
    (i32.const 3)
   )
  )
  (set_global $std/operator-overloading/s2
   (call $std/operator-overloading/Tester#constructor
    (i32.const 0)
    (i32.const 2)
    (i32.const -3)
   )
  )
  (set_global $std/operator-overloading/s
   (call $std/operator-overloading/Tester.sub
    (get_global $std/operator-overloading/s1)
    (get_global $std/operator-overloading/s2)
   )
  )
  (if
   (i32.eqz
    (i32.and
     (if (result i32)
      (tee_local $0
       (i32.eq
        (i32.load
         (get_global $std/operator-overloading/s)
        )
        (i32.const 0)
       )
      )
      (i32.eq
       (i32.load offset=4
        (get_global $std/operator-overloading/s)
       )
       (i32.const 6)
      )
      (get_local $0)
     )
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 68)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/operator-overloading/m1
   (call $std/operator-overloading/Tester#constructor
    (i32.const 0)
    (i32.const 2)
    (i32.const 5)
   )
  )
  (set_global $std/operator-overloading/m2
   (call $std/operator-overloading/Tester#constructor
    (i32.const 0)
    (i32.const 3)
    (i32.const 2)
   )
  )
  (set_global $std/operator-overloading/m
   (call $std/operator-overloading/Tester.mul
    (get_global $std/operator-overloading/m1)
    (get_global $std/operator-overloading/m2)
   )
  )
  (if
   (i32.eqz
    (i32.and
     (if (result i32)
      (tee_local $0
       (i32.eq
        (i32.load
         (get_global $std/operator-overloading/m)
        )
        (i32.const 6)
       )
      )
      (i32.eq
       (i32.load offset=4
        (get_global $std/operator-overloading/m)
       )
       (i32.const 10)
      )
      (get_local $0)
     )
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 74)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/operator-overloading/d1
   (call $std/operator-overloading/Tester#constructor
    (i32.const 0)
    (i32.const 6)
    (i32.const 50)
   )
  )
  (set_global $std/operator-overloading/d2
   (call $std/operator-overloading/Tester#constructor
    (i32.const 0)
    (i32.const 3)
    (i32.const 10)
   )
  )
  (set_global $std/operator-overloading/d
   (call $std/operator-overloading/Tester.div
    (get_global $std/operator-overloading/d1)
    (get_global $std/operator-overloading/d2)
   )
  )
  (if
   (i32.eqz
    (i32.and
     (if (result i32)
      (tee_local $0
       (i32.eq
        (i32.load
         (get_global $std/operator-overloading/d)
        )
        (i32.const 2)
       )
      )
      (i32.eq
       (i32.load offset=4
        (get_global $std/operator-overloading/d)
       )
       (i32.const 5)
      )
      (get_local $0)
     )
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 80)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/operator-overloading/f1
   (call $std/operator-overloading/Tester#constructor
    (i32.const 0)
    (i32.const 10)
    (i32.const 10)
   )
  )
  (set_global $std/operator-overloading/f2
   (call $std/operator-overloading/Tester#constructor
    (i32.const 0)
    (i32.const 6)
    (i32.const 10)
   )
  )
  (set_global $std/operator-overloading/f
   (call $std/operator-overloading/Tester.mod
    (get_global $std/operator-overloading/f1)
    (get_global $std/operator-overloading/f2)
   )
  )
  (if
   (i32.eqz
    (i32.and
     (if (result i32)
      (tee_local $0
       (i32.eq
        (i32.load
         (get_global $std/operator-overloading/f)
        )
        (i32.const 4)
       )
      )
      (i32.eq
       (i32.load offset=4
        (get_global $std/operator-overloading/f)
       )
       (i32.const 0)
      )
      (get_local $0)
     )
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 86)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/operator-overloading/n1
   (call $std/operator-overloading/Tester#constructor
    (i32.const 0)
    (i32.const 255)
    (i32.const 15)
   )
  )
  (set_global $std/operator-overloading/n2
   (call $std/operator-overloading/Tester#constructor
    (i32.const 0)
    (i32.const 15)
    (i32.const 255)
   )
  )
  (set_global $std/operator-overloading/n
   (call $std/operator-overloading/Tester.and
    (get_global $std/operator-overloading/n1)
    (get_global $std/operator-overloading/n2)
   )
  )
  (if
   (i32.eqz
    (i32.and
     (if (result i32)
      (tee_local $0
       (i32.eq
        (i32.load
         (get_global $std/operator-overloading/n)
        )
        (i32.const 15)
       )
      )
      (i32.eq
       (i32.load offset=4
        (get_global $std/operator-overloading/n)
       )
       (i32.const 15)
      )
      (get_local $0)
     )
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 92)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/operator-overloading/o1
   (call $std/operator-overloading/Tester#constructor
    (i32.const 0)
    (i32.const 3855)
    (i32.const 255)
   )
  )
  (set_global $std/operator-overloading/o2
   (call $std/operator-overloading/Tester#constructor
    (i32.const 0)
    (i32.const 61680)
    (i32.const 0)
   )
  )
  (set_global $std/operator-overloading/o
   (call $std/operator-overloading/Tester.or
    (get_global $std/operator-overloading/o1)
    (get_global $std/operator-overloading/o2)
   )
  )
  (if
   (i32.eqz
    (i32.and
     (if (result i32)
      (tee_local $0
       (i32.eq
        (i32.load
         (get_global $std/operator-overloading/o)
        )
        (i32.const 65535)
       )
      )
      (i32.eq
       (i32.load offset=4
        (get_global $std/operator-overloading/o)
       )
       (i32.const 255)
      )
      (get_local $0)
     )
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 98)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/operator-overloading/x1
   (call $std/operator-overloading/Tester#constructor
    (i32.const 0)
    (i32.const 255)
    (i32.const 255)
   )
  )
  (set_global $std/operator-overloading/x2
   (call $std/operator-overloading/Tester#constructor
    (i32.const 0)
    (i32.const 65280)
    (i32.const 0)
   )
  )
  (set_global $std/operator-overloading/x
   (call $std/operator-overloading/Tester.xor
    (get_global $std/operator-overloading/x1)
    (get_global $std/operator-overloading/x2)
   )
  )
  (if
   (i32.eqz
    (i32.and
     (if (result i32)
      (tee_local $0
       (i32.eq
        (i32.load
         (get_global $std/operator-overloading/x)
        )
        (i32.const 65535)
       )
      )
      (i32.eq
       (i32.load offset=4
        (get_global $std/operator-overloading/x)
       )
       (i32.const 255)
      )
      (get_local $0)
     )
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 104)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/operator-overloading/eq1
   (call $std/operator-overloading/Tester#constructor
    (i32.const 0)
    (i32.const 1)
    (i32.const -2)
   )
  )
  (set_global $std/operator-overloading/eq2
   (call $std/operator-overloading/Tester#constructor
    (i32.const 0)
    (i32.const 1)
    (i32.const -2)
   )
  )
  (set_global $std/operator-overloading/eq
   (call $std/operator-overloading/Tester.equal
    (get_global $std/operator-overloading/eq1)
    (get_global $std/operator-overloading/eq2)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/operator-overloading/eq)
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 110)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/operator-overloading/eq3
   (call $std/operator-overloading/Tester#constructor
    (i32.const 0)
    (i32.const 1)
    (i32.const 0)
   )
  )
  (set_global $std/operator-overloading/eq4
   (call $std/operator-overloading/Tester#constructor
    (i32.const 0)
    (i32.const 0)
    (i32.const 1)
   )
  )
  (set_global $std/operator-overloading/eqf
   (call $std/operator-overloading/Tester.equal
    (get_global $std/operator-overloading/eq3)
    (get_global $std/operator-overloading/eq4)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (get_global $std/operator-overloading/eqf)
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 116)
     (i32.const 0)
    )
    (unreachable)
   )
  )
 )
)
