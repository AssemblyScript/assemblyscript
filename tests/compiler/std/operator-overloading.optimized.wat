(module
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $ii (func (param i32) (result i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $FFF (func (param f64 f64) (result f64)))
 (type $FiF (func (param f64 i32) (result f64)))
 (type $v (func))
 (import "env" "abort" (func $abort (param i32 i32 i32 i32)))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
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
 (global $std/operator-overloading/p1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/p2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/p (mut i32) (i32.const 0))
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
 (global $std/operator-overloading/gt1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/gt2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/gt (mut i32) (i32.const 0))
 (global $std/operator-overloading/gte1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/gte2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/gte (mut i32) (i32.const 0))
 (global $std/operator-overloading/le1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/le2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/le (mut i32) (i32.const 0))
 (global $std/operator-overloading/leq1 (mut i32) (i32.const 0))
 (global $std/operator-overloading/leq2 (mut i32) (i32.const 0))
 (global $std/operator-overloading/leq (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 64))
 (memory $0 1)
 (data (i32.const 4) "\1b\00\00\00s\00t\00d\00/\00o\00p\00e\00r\00a\00t\00o\00r\00-\00o\00v\00e\00r\00l\00o\00a\00d\00i\00n\00g\00.\00t\00s")
 (export "memory" (memory $0))
 (start $start)
 (func $~lib/allocator/arena/allocate_memory (; 1 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (get_local $0)
   (block
    (if
     (i32.gt_u
      (get_local $0)
      (i32.const 1073741824)
     )
     (unreachable)
    )
    (if
     (i32.gt_u
      (tee_local $2
       (i32.and
        (i32.add
         (i32.add
          (tee_local $1
           (get_global $~lib/allocator/arena/offset)
          )
          (get_local $0)
         )
         (i32.const 7)
        )
        (i32.const -8)
       )
      )
      (i32.shl
       (tee_local $0
        (current_memory)
       )
       (i32.const 16)
      )
     )
     (if
      (i32.lt_s
       (grow_memory
        (select
         (get_local $0)
         (tee_local $4
          (tee_local $3
           (i32.shr_u
            (i32.and
             (i32.add
              (i32.sub
               (get_local $2)
               (get_local $1)
              )
              (i32.const 65535)
             )
             (i32.const -65536)
            )
            (i32.const 16)
           )
          )
         )
         (i32.gt_s
          (get_local $0)
          (get_local $4)
         )
        )
       )
       (i32.const 0)
      )
      (if
       (i32.lt_s
        (grow_memory
         (get_local $3)
        )
        (i32.const 0)
       )
       (unreachable)
      )
     )
    )
    (set_global $~lib/allocator/arena/offset
     (get_local $2)
    )
    (return
     (get_local $1)
    )
   )
  )
  (i32.const 0)
 )
 (func $std/operator-overloading/Tester#constructor (; 2 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (if (result i32)
   (get_local $0)
   (get_local $0)
   (block (result i32)
    (i32.store
     (tee_local $3
      (call $~lib/allocator/arena/allocate_memory
       (i32.const 8)
      )
     )
     (get_local $1)
    )
    (i32.store offset=4
     (get_local $3)
     (get_local $2)
    )
    (get_local $3)
   )
  )
 )
 (func $std/operator-overloading/Tester.add (; 3 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $std/operator-overloading/Tester.sub (; 4 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $std/operator-overloading/Tester.mul (; 5 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $std/operator-overloading/Tester.div (; 6 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $std/operator-overloading/Tester.mod (; 7 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $~lib/math/NativeMath.scalbn (; 8 ;) (type $FiF) (param $0 f64) (param $1 i32) (result f64)
  (local $2 f64)
  (set_local $2
   (get_local $0)
  )
  (if
   (i32.gt_s
    (get_local $1)
    (i32.const 1023)
   )
   (block
    (set_local $2
     (f64.mul
      (get_local $2)
      (f64.const 8988465674311579538646525e283)
     )
    )
    (if
     (i32.gt_s
      (tee_local $1
       (i32.sub
        (get_local $1)
        (i32.const 1023)
       )
      )
      (i32.const 1023)
     )
     (block
      (set_local $2
       (f64.mul
        (get_local $2)
        (f64.const 8988465674311579538646525e283)
       )
      )
      (if
       (i32.gt_s
        (tee_local $1
         (i32.sub
          (get_local $1)
          (i32.const 1023)
         )
        )
        (i32.const 1023)
       )
       (set_local $1
        (i32.const 1023)
       )
      )
     )
    )
   )
   (if
    (i32.lt_s
     (get_local $1)
     (i32.const -1022)
    )
    (block
     (set_local $2
      (f64.mul
       (get_local $2)
       (f64.const 2.2250738585072014e-308)
      )
     )
     (if
      (i32.lt_s
       (tee_local $1
        (i32.add
         (get_local $1)
         (i32.const 1022)
        )
       )
       (i32.const -1022)
      )
      (block
       (set_local $2
        (f64.mul
         (get_local $2)
         (f64.const 2.2250738585072014e-308)
        )
       )
       (if
        (i32.lt_s
         (tee_local $1
          (i32.add
           (get_local $1)
           (i32.const 1022)
          )
         )
         (i32.const -1022)
        )
        (set_local $1
         (i32.const -1022)
        )
       )
      )
     )
    )
   )
  )
  (f64.mul
   (get_local $2)
   (f64.reinterpret/i64
    (i64.shl
     (i64.add
      (i64.extend_u/i32
       (get_local $1)
      )
      (i64.const 1023)
     )
     (i64.const 52)
    )
   )
  )
 )
 (func $~lib/math/NativeMath.pow (; 9 ;) (type $FFF) (param $0 f64) (param $1 f64) (result f64)
  (local $2 f64)
  (local $3 f64)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 f64)
  (local $10 i32)
  (local $11 i32)
  (local $12 f64)
  (local $13 i32)
  (local $14 f64)
  (local $15 i32)
  (local $16 f64)
  (local $17 f64)
  (local $18 f64)
  (local $19 i64)
  (block $folding-inner1
   (block $folding-inner0
    (set_local $4
     (i32.wrap/i64
      (i64.shr_u
       (tee_local $19
        (i64.reinterpret/f64
         (get_local $0)
        )
       )
       (i64.const 32)
      )
     )
    )
    (set_local $13
     (i32.wrap/i64
      (get_local $19)
     )
    )
    (set_local $5
     (i32.and
      (get_local $4)
      (i32.const 2147483647)
     )
    )
    (if
     (i32.eqz
      (i32.or
       (tee_local $10
        (i32.and
         (tee_local $11
          (i32.wrap/i64
           (i64.shr_u
            (tee_local $19
             (i64.reinterpret/f64
              (get_local $1)
             )
            )
            (i64.const 32)
           )
          )
         )
         (i32.const 2147483647)
        )
       )
       (tee_local $6
        (i32.wrap/i64
         (get_local $19)
        )
       )
      )
     )
     (return
      (f64.const 1)
     )
    )
    (if
     (i32.and
      (if (result i32)
       (tee_local $7
        (i32.and
         (if (result i32)
          (tee_local $7
           (i32.and
            (if (result i32)
             (tee_local $7
              (i32.gt_s
               (get_local $5)
               (i32.const 2146435072)
              )
             )
             (get_local $7)
             (if (result i32)
              (tee_local $7
               (i32.eq
                (get_local $5)
                (i32.const 2146435072)
               )
              )
              (i32.ne
               (get_local $13)
               (i32.const 0)
              )
              (get_local $7)
             )
            )
            (i32.const 1)
           )
          )
          (get_local $7)
          (i32.gt_s
           (get_local $10)
           (i32.const 2146435072)
          )
         )
         (i32.const 1)
        )
       )
       (get_local $7)
       (if (result i32)
        (tee_local $7
         (i32.eq
          (get_local $10)
          (i32.const 2146435072)
         )
        )
        (i32.ne
         (get_local $6)
         (i32.const 0)
        )
        (get_local $7)
       )
      )
      (i32.const 1)
     )
     (return
      (f64.add
       (get_local $0)
       (get_local $1)
      )
     )
    )
    (if
     (i32.lt_s
      (get_local $4)
      (i32.const 0)
     )
     (if
      (i32.ge_s
       (get_local $10)
       (i32.const 1128267776)
      )
      (set_local $15
       (i32.const 2)
      )
      (if
       (i32.ge_s
        (get_local $10)
        (i32.const 1072693248)
       )
       (if
        (i32.gt_s
         (tee_local $8
          (i32.sub
           (i32.shr_s
            (get_local $10)
            (i32.const 20)
           )
           (i32.const 1023)
          )
         )
         (i32.const 20)
        )
        (if
         (i32.eq
          (i32.shl
           (tee_local $7
            (i32.shr_u
             (get_local $6)
             (i32.sub
              (i32.const 52)
              (get_local $8)
             )
            )
           )
           (i32.sub
            (i32.const 52)
            (get_local $8)
           )
          )
          (get_local $6)
         )
         (set_local $15
          (i32.sub
           (i32.const 2)
           (i32.and
            (get_local $7)
            (i32.const 1)
           )
          )
         )
        )
        (if
         (i32.eqz
          (get_local $6)
         )
         (if
          (i32.eq
           (i32.shl
            (tee_local $7
             (i32.shr_s
              (get_local $10)
              (i32.sub
               (i32.const 20)
               (get_local $8)
              )
             )
            )
            (i32.sub
             (i32.const 20)
             (get_local $8)
            )
           )
           (get_local $10)
          )
          (set_local $15
           (i32.sub
            (i32.const 2)
            (i32.and
             (get_local $7)
             (i32.const 1)
            )
           )
          )
         )
        )
       )
      )
     )
    )
    (if
     (i32.eqz
      (get_local $6)
     )
     (block
      (if
       (i32.eq
        (get_local $10)
        (i32.const 2146435072)
       )
       (if
        (i32.or
         (i32.sub
          (get_local $5)
          (i32.const 1072693248)
         )
         (get_local $13)
        )
        (if
         (i32.ge_s
          (get_local $5)
          (i32.const 1072693248)
         )
         (return
          (select
           (get_local $1)
           (f64.const 0)
           (i32.ge_s
            (get_local $11)
            (i32.const 0)
           )
          )
         )
         (return
          (select
           (f64.const 0)
           (f64.neg
            (get_local $1)
           )
           (i32.ge_s
            (get_local $11)
            (i32.const 0)
           )
          )
         )
        )
        (return
         (f64.const nan:0x8000000000000)
        )
       )
      )
      (if
       (i32.eq
        (get_local $10)
        (i32.const 1072693248)
       )
       (block
        (if
         (i32.ge_s
          (get_local $11)
          (i32.const 0)
         )
         (return
          (get_local $0)
         )
        )
        (return
         (f64.div
          (f64.const 1)
          (get_local $0)
         )
        )
       )
      )
      (if
       (i32.eq
        (get_local $11)
        (i32.const 1073741824)
       )
       (return
        (f64.mul
         (get_local $0)
         (get_local $0)
        )
       )
      )
      (if
       (i32.eq
        (get_local $11)
        (i32.const 1071644672)
       )
       (if
        (i32.ge_s
         (get_local $4)
         (i32.const 0)
        )
        (return
         (f64.sqrt
          (get_local $0)
         )
        )
       )
      )
     )
    )
    (set_local $2
     (f64.abs
      (get_local $0)
     )
    )
    (if
     (i32.eqz
      (get_local $13)
     )
     (if
      (i32.and
       (if (result i32)
        (tee_local $7
         (i32.and
          (if (result i32)
           (tee_local $7
            (i32.eq
             (get_local $5)
             (i32.const 2146435072)
            )
           )
           (get_local $7)
           (i32.eqz
            (get_local $5)
           )
          )
          (i32.const 1)
         )
        )
        (get_local $7)
        (i32.eq
         (get_local $5)
         (i32.const 1072693248)
        )
       )
       (i32.const 1)
      )
      (block
       (if
        (i32.lt_s
         (get_local $11)
         (i32.const 0)
        )
        (set_local $2
         (f64.div
          (f64.const 1)
          (get_local $2)
         )
        )
       )
       (if
        (i32.lt_s
         (get_local $4)
         (i32.const 0)
        )
        (if
         (i32.or
          (i32.sub
           (get_local $5)
           (i32.const 1072693248)
          )
          (get_local $15)
         )
         (if
          (i32.eq
           (get_local $15)
           (i32.const 1)
          )
          (set_local $2
           (f64.neg
            (get_local $2)
           )
          )
         )
         (set_local $2
          (f64.div
           (f64.sub
            (get_local $2)
            (get_local $2)
           )
           (f64.sub
            (get_local $2)
            (get_local $2)
           )
          )
         )
        )
       )
       (return
        (get_local $2)
       )
      )
     )
    )
    (set_local $12
     (f64.const 1)
    )
    (if
     (i32.lt_s
      (get_local $4)
      (i32.const 0)
     )
     (block
      (if
       (i32.eqz
        (get_local $15)
       )
       (return
        (f64.div
         (f64.sub
          (get_local $0)
          (get_local $0)
         )
         (f64.sub
          (get_local $0)
          (get_local $0)
         )
        )
       )
      )
      (if
       (i32.eq
        (get_local $15)
        (i32.const 1)
       )
       (set_local $12
        (f64.const -1)
       )
      )
     )
    )
    (set_local $2
     (if (result f64)
      (i32.gt_s
       (get_local $10)
       (i32.const 1105199104)
      )
      (block (result f64)
       (if
        (i32.gt_s
         (get_local $10)
         (i32.const 1139802112)
        )
        (block
         (if
          (i32.le_s
           (get_local $5)
           (i32.const 1072693247)
          )
          (return
           (select
            (f64.const inf)
            (f64.const 0)
            (i32.lt_s
             (get_local $11)
             (i32.const 0)
            )
           )
          )
         )
         (if
          (i32.ge_s
           (get_local $5)
           (i32.const 1072693248)
          )
          (return
           (select
            (f64.const inf)
            (f64.const 0)
            (i32.gt_s
             (get_local $11)
             (i32.const 0)
            )
           )
          )
         )
        )
       )
       (if
        (i32.lt_s
         (get_local $5)
         (i32.const 1072693247)
        )
        (return
         (select
          (f64.mul
           (f64.mul
            (get_local $12)
            (f64.const 1.e+300)
           )
           (f64.const 1.e+300)
          )
          (f64.mul
           (f64.mul
            (get_local $12)
            (f64.const 1e-300)
           )
           (f64.const 1e-300)
          )
          (i32.lt_s
           (get_local $11)
           (i32.const 0)
          )
         )
        )
       )
       (if
        (i32.gt_s
         (get_local $5)
         (i32.const 1072693248)
        )
        (return
         (select
          (f64.mul
           (f64.mul
            (get_local $12)
            (f64.const 1.e+300)
           )
           (f64.const 1.e+300)
          )
          (f64.mul
           (f64.mul
            (get_local $12)
            (f64.const 1e-300)
           )
           (f64.const 1e-300)
          )
          (i32.gt_s
           (get_local $11)
           (i32.const 0)
          )
         )
        )
       )
       (set_local $0
        (f64.mul
         (f64.mul
          (tee_local $3
           (f64.sub
            (get_local $2)
            (f64.const 1)
           )
          )
          (get_local $3)
         )
         (f64.sub
          (f64.const 0.5)
          (f64.mul
           (get_local $3)
           (f64.sub
            (f64.const 0.3333333333333333)
            (f64.mul
             (get_local $3)
             (f64.const 0.25)
            )
           )
          )
         )
        )
       )
       (set_local $9
        (f64.reinterpret/i64
         (i64.and
          (i64.reinterpret/f64
           (f64.add
            (tee_local $16
             (f64.mul
              (f64.const 1.4426950216293335)
              (get_local $3)
             )
            )
            (tee_local $17
             (f64.sub
              (f64.mul
               (get_local $3)
               (f64.const 1.9259629911266175e-08)
              )
              (f64.mul
               (get_local $0)
               (f64.const 1.4426950408889634)
              )
             )
            )
           )
          )
          (i64.const -4294967296)
         )
        )
       )
       (f64.sub
        (get_local $17)
        (f64.sub
         (get_local $9)
         (get_local $16)
        )
       )
      )
      (block (result f64)
       (set_local $4
        (i32.const 0)
       )
       (if
        (i32.lt_s
         (get_local $5)
         (i32.const 1048576)
        )
        (block
         (set_local $4
          (i32.sub
           (get_local $4)
           (i32.const 53)
          )
         )
         (set_local $5
          (i32.wrap/i64
           (i64.shr_u
            (i64.reinterpret/f64
             (tee_local $2
              (f64.mul
               (get_local $2)
               (f64.const 9007199254740992)
              )
             )
            )
            (i64.const 32)
           )
          )
         )
        )
       )
       (set_local $4
        (i32.add
         (get_local $4)
         (i32.sub
          (i32.shr_s
           (get_local $5)
           (i32.const 20)
          )
          (i32.const 1023)
         )
        )
       )
       (set_local $5
        (i32.or
         (tee_local $6
          (i32.and
           (get_local $5)
           (i32.const 1048575)
          )
         )
         (i32.const 1072693248)
        )
       )
       (set_local $8
        (if (result i32)
         (i32.le_s
          (get_local $6)
          (i32.const 235662)
         )
         (i32.const 0)
         (if (result i32)
          (i32.lt_s
           (get_local $6)
           (i32.const 767610)
          )
          (i32.const 1)
          (block (result i32)
           (set_local $4
            (i32.add
             (get_local $4)
             (i32.const 1)
            )
           )
           (set_local $5
            (i32.sub
             (get_local $5)
             (i32.const 1048576)
            )
           )
           (i32.const 0)
          )
         )
        )
       )
       (set_local $3
        (f64.reinterpret/i64
         (i64.and
          (i64.reinterpret/f64
           (tee_local $18
            (f64.mul
             (tee_local $16
              (f64.sub
               (tee_local $2
                (f64.reinterpret/i64
                 (i64.or
                  (i64.and
                   (i64.reinterpret/f64
                    (get_local $2)
                   )
                   (i64.const 4294967295)
                  )
                  (i64.shl
                   (i64.extend_u/i32
                    (get_local $5)
                   )
                   (i64.const 32)
                  )
                 )
                )
               )
               (tee_local $0
                (select
                 (f64.const 1.5)
                 (f64.const 1)
                 (get_local $8)
                )
               )
              )
             )
             (tee_local $17
              (f64.div
               (f64.const 1)
               (f64.add
                (get_local $2)
                (get_local $0)
               )
              )
             )
            )
           )
          )
          (i64.const -4294967296)
         )
        )
       )
       (set_local $2
        (f64.sub
         (get_local $2)
         (f64.sub
          (tee_local $9
           (f64.reinterpret/i64
            (i64.shl
             (i64.extend_u/i32
              (i32.add
               (i32.add
                (i32.or
                 (i32.shr_s
                  (get_local $5)
                  (i32.const 1)
                 )
                 (i32.const 536870912)
                )
                (i32.const 524288)
               )
               (i32.shl
                (get_local $8)
                (i32.const 18)
               )
              )
             )
             (i64.const 32)
            )
           )
          )
          (get_local $0)
         )
        )
       )
       (set_local $2
        (f64.sub
         (tee_local $2
          (f64.add
           (f64.mul
            (f64.mul
             (tee_local $14
              (f64.mul
               (get_local $18)
               (get_local $18)
              )
             )
             (get_local $14)
            )
            (f64.add
             (f64.const 0.5999999999999946)
             (f64.mul
              (get_local $14)
              (f64.add
               (f64.const 0.4285714285785502)
               (f64.mul
                (get_local $14)
                (f64.add
                 (f64.const 0.33333332981837743)
                 (f64.mul
                  (get_local $14)
                  (f64.add
                   (f64.const 0.272728123808534)
                   (f64.mul
                    (get_local $14)
                    (f64.add
                     (f64.const 0.23066074577556175)
                     (f64.mul
                      (get_local $14)
                      (f64.const 0.20697501780033842)
                     )
                    )
                   )
                  )
                 )
                )
               )
              )
             )
            )
           )
           (f64.mul
            (tee_local $0
             (f64.mul
              (get_local $17)
              (f64.sub
               (f64.sub
                (get_local $16)
                (f64.mul
                 (get_local $3)
                 (get_local $9)
                )
               )
               (f64.mul
                (get_local $3)
                (get_local $2)
               )
              )
             )
            )
            (f64.add
             (get_local $3)
             (get_local $18)
            )
           )
          )
         )
         (f64.sub
          (f64.sub
           (tee_local $9
            (f64.reinterpret/i64
             (i64.and
              (i64.reinterpret/f64
               (f64.add
                (f64.add
                 (f64.const 3)
                 (tee_local $14
                  (f64.mul
                   (get_local $3)
                   (get_local $3)
                  )
                 )
                )
                (get_local $2)
               )
              )
              (i64.const -4294967296)
             )
            )
           )
           (f64.const 3)
          )
          (get_local $14)
         )
        )
       )
       (set_local $9
        (f64.reinterpret/i64
         (i64.and
          (i64.reinterpret/f64
           (f64.add
            (f64.add
             (f64.add
              (tee_local $18
               (f64.mul
                (f64.const 0.9617967009544373)
                (tee_local $0
                 (f64.reinterpret/i64
                  (i64.and
                   (i64.reinterpret/f64
                    (f64.add
                     (tee_local $16
                      (f64.mul
                       (get_local $3)
                       (get_local $9)
                      )
                     )
                     (tee_local $17
                      (f64.add
                       (f64.mul
                        (get_local $0)
                        (get_local $9)
                       )
                       (f64.mul
                        (get_local $2)
                        (get_local $18)
                       )
                      )
                     )
                    )
                   )
                   (i64.const -4294967296)
                  )
                 )
                )
               )
              )
              (tee_local $2
               (f64.add
                (f64.add
                 (f64.mul
                  (f64.const -7.028461650952758e-09)
                  (get_local $0)
                 )
                 (f64.mul
                  (f64.sub
                   (get_local $17)
                   (f64.sub
                    (get_local $0)
                    (get_local $16)
                   )
                  )
                  (f64.const 0.9617966939259756)
                 )
                )
                (select
                 (f64.const 1.350039202129749e-08)
                 (f64.const 0)
                 (get_local $8)
                )
               )
              )
             )
             (tee_local $0
              (select
               (f64.const 0.5849624872207642)
               (f64.const 0)
               (get_local $8)
              )
             )
            )
            (tee_local $3
             (f64.convert_s/i32
              (get_local $4)
             )
            )
           )
          )
          (i64.const -4294967296)
         )
        )
       )
       (f64.sub
        (get_local $2)
        (f64.sub
         (f64.sub
          (f64.sub
           (get_local $9)
           (get_local $3)
          )
          (get_local $0)
         )
         (get_local $18)
        )
       )
      )
     )
    )
    (set_local $6
     (i32.wrap/i64
      (i64.shr_u
       (tee_local $19
        (i64.reinterpret/f64
         (tee_local $2
          (f64.add
           (tee_local $1
            (f64.add
             (f64.mul
              (f64.sub
               (get_local $1)
               (tee_local $0
                (f64.reinterpret/i64
                 (i64.and
                  (i64.reinterpret/f64
                   (get_local $1)
                  )
                  (i64.const -4294967296)
                 )
                )
               )
              )
              (get_local $9)
             )
             (f64.mul
              (get_local $1)
              (get_local $2)
             )
            )
           )
           (tee_local $0
            (f64.mul
             (get_local $0)
             (get_local $9)
            )
           )
          )
         )
        )
       )
       (i64.const 32)
      )
     )
    )
    (set_local $13
     (i32.wrap/i64
      (get_local $19)
     )
    )
    (if
     (i32.ge_s
      (get_local $6)
      (i32.const 1083179008)
     )
     (br_if $folding-inner1
      (i32.or
       (i32.or
        (i32.sub
         (get_local $6)
         (i32.const 1083179008)
        )
        (get_local $13)
       )
       (f64.gt
        (f64.add
         (get_local $1)
         (f64.const 8.008566259537294e-17)
        )
        (f64.sub
         (get_local $2)
         (get_local $0)
        )
       )
      )
     )
     (if
      (i32.ge_s
       (i32.and
        (get_local $6)
        (i32.const 2147483647)
       )
       (i32.const 1083231232)
      )
      (br_if $folding-inner0
       (i32.or
        (i32.or
         (i32.sub
          (get_local $6)
          (i32.const -1064252416)
         )
         (get_local $13)
        )
        (f64.le
         (get_local $1)
         (f64.sub
          (get_local $2)
          (get_local $0)
         )
        )
       )
      )
     )
    )
    (set_local $8
     (i32.sub
      (i32.shr_s
       (tee_local $13
        (i32.and
         (get_local $6)
         (i32.const 2147483647)
        )
       )
       (i32.const 20)
      )
      (i32.const 1023)
     )
    )
    (set_local $4
     (i32.const 0)
    )
    (if
     (i32.gt_s
      (get_local $13)
      (i32.const 1071644672)
     )
     (block
      (set_local $8
       (i32.sub
        (i32.shr_s
         (i32.and
          (tee_local $4
           (i32.add
            (get_local $6)
            (i32.shr_s
             (i32.const 1048576)
             (i32.add
              (get_local $8)
              (i32.const 1)
             )
            )
           )
          )
          (i32.const 2147483647)
         )
         (i32.const 20)
        )
        (i32.const 1023)
       )
      )
      (set_local $3
       (f64.reinterpret/i64
        (i64.shl
         (i64.extend_u/i32
          (i32.and
           (get_local $4)
           (i32.xor
            (i32.shr_s
             (i32.const 1048575)
             (get_local $8)
            )
            (i32.const -1)
           )
          )
         )
         (i64.const 32)
        )
       )
      )
      (set_local $4
       (i32.shr_s
        (i32.or
         (i32.and
          (get_local $4)
          (i32.const 1048575)
         )
         (i32.const 1048576)
        )
        (i32.sub
         (i32.const 20)
         (get_local $8)
        )
       )
      )
      (if
       (i32.lt_s
        (get_local $6)
        (i32.const 0)
       )
       (set_local $4
        (i32.sub
         (i32.const 0)
         (get_local $4)
        )
       )
      )
      (set_local $0
       (f64.sub
        (get_local $0)
        (get_local $3)
       )
      )
     )
    )
    (return
     (f64.mul
      (get_local $12)
      (tee_local $2
       (if (result f64)
        (i32.le_s
         (i32.shr_s
          (tee_local $6
           (i32.add
            (i32.wrap/i64
             (i64.shr_u
              (i64.reinterpret/f64
               (tee_local $2
                (f64.sub
                 (f64.const 1)
                 (f64.sub
                  (f64.sub
                   (f64.div
                    (f64.mul
                     (tee_local $2
                      (f64.add
                       (tee_local $16
                        (f64.mul
                         (tee_local $3
                          (f64.reinterpret/i64
                           (i64.and
                            (i64.reinterpret/f64
                             (f64.add
                              (get_local $1)
                              (get_local $0)
                             )
                            )
                            (i64.const -4294967296)
                           )
                          )
                         )
                         (f64.const 0.6931471824645996)
                        )
                       )
                       (tee_local $17
                        (f64.add
                         (f64.mul
                          (f64.sub
                           (get_local $1)
                           (f64.sub
                            (get_local $3)
                            (get_local $0)
                           )
                          )
                          (f64.const 0.6931471805599453)
                         )
                         (f64.mul
                          (get_local $3)
                          (f64.const -1.904654299957768e-09)
                         )
                        )
                       )
                      )
                     )
                     (tee_local $9
                      (f64.sub
                       (get_local $2)
                       (f64.mul
                        (tee_local $3
                         (f64.mul
                          (get_local $2)
                          (get_local $2)
                         )
                        )
                        (f64.add
                         (f64.const 0.16666666666666602)
                         (f64.mul
                          (get_local $3)
                          (f64.add
                           (f64.const -2.7777777777015593e-03)
                           (f64.mul
                            (get_local $3)
                            (f64.add
                             (f64.const 6.613756321437934e-05)
                             (f64.mul
                              (get_local $3)
                              (f64.add
                               (f64.const -1.6533902205465252e-06)
                               (f64.mul
                                (get_local $3)
                                (f64.const 4.1381367970572385e-08)
                               )
                              )
                             )
                            )
                           )
                          )
                         )
                        )
                       )
                      )
                     )
                    )
                    (f64.sub
                     (get_local $9)
                     (f64.const 2)
                    )
                   )
                   (f64.add
                    (tee_local $0
                     (f64.sub
                      (get_local $17)
                      (f64.sub
                       (get_local $2)
                       (get_local $16)
                      )
                     )
                    )
                    (f64.mul
                     (get_local $2)
                     (get_local $0)
                    )
                   )
                  )
                  (get_local $2)
                 )
                )
               )
              )
              (i64.const 32)
             )
            )
            (i32.shl
             (get_local $4)
             (i32.const 20)
            )
           )
          )
          (i32.const 20)
         )
         (i32.const 0)
        )
        (call $~lib/math/NativeMath.scalbn
         (get_local $2)
         (get_local $4)
        )
        (f64.reinterpret/i64
         (i64.or
          (i64.and
           (i64.reinterpret/f64
            (get_local $2)
           )
           (i64.const 4294967295)
          )
          (i64.shl
           (i64.extend_u/i32
            (get_local $6)
           )
           (i64.const 32)
          )
         )
        )
       )
      )
     )
    )
   )
   (return
    (f64.mul
     (f64.mul
      (get_local $12)
      (f64.const 1e-300)
     )
     (f64.const 1e-300)
    )
   )
  )
  (f64.mul
   (f64.mul
    (get_local $12)
    (f64.const 1.e+300)
   )
   (f64.const 1.e+300)
  )
 )
 (func $std/operator-overloading/Tester.pow (; 10 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (call $std/operator-overloading/Tester#constructor
   (i32.const 0)
   (i32.trunc_s/f64
    (call $~lib/math/NativeMath.pow
     (f64.convert_s/i32
      (i32.load
       (get_local $0)
      )
     )
     (f64.convert_s/i32
      (i32.load
       (get_local $1)
      )
     )
    )
   )
   (i32.trunc_s/f64
    (call $~lib/math/NativeMath.pow
     (f64.convert_s/i32
      (i32.load offset=4
       (get_local $0)
      )
     )
     (f64.convert_s/i32
      (i32.load offset=4
       (get_local $1)
      )
     )
    )
   )
  )
 )
 (func $std/operator-overloading/Tester.and (; 11 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $std/operator-overloading/Tester.or (; 12 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $std/operator-overloading/Tester.xor (; 13 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
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
 (func $std/operator-overloading/Tester.equals (; 14 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
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
 (func $std/operator-overloading/Tester.notEquals (; 15 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (i32.and
   (if (result i32)
    (tee_local $2
     (i32.ne
      (i32.load
       (get_local $0)
      )
      (i32.load
       (get_local $1)
      )
     )
    )
    (i32.ne
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
 (func $std/operator-overloading/Tester.greater (; 16 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (i32.and
   (if (result i32)
    (tee_local $2
     (i32.gt_s
      (i32.load
       (get_local $0)
      )
      (i32.load
       (get_local $1)
      )
     )
    )
    (i32.gt_s
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
 (func $std/operator-overloading/Tester.greaterEquals (; 17 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (i32.and
   (if (result i32)
    (tee_local $2
     (i32.ge_s
      (i32.load
       (get_local $0)
      )
      (i32.load
       (get_local $1)
      )
     )
    )
    (i32.ge_s
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
 (func $std/operator-overloading/Tester.less (; 18 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (i32.and
   (if (result i32)
    (tee_local $2
     (i32.lt_s
      (i32.load
       (get_local $0)
      )
      (i32.load
       (get_local $1)
      )
     )
    )
    (i32.lt_s
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
 (func $std/operator-overloading/Tester.lessEquals (; 19 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (i32.and
   (if (result i32)
    (tee_local $2
     (i32.le_s
      (i32.load
       (get_local $0)
      )
      (i32.load
       (get_local $1)
      )
     )
    )
    (i32.le_s
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
 (func $start (; 20 ;) (type $v)
  (local $0 i32)
  (set_global $~lib/allocator/arena/startOffset
   (i32.and
    (i32.add
     (get_global $HEAP_BASE)
     (i32.const 7)
    )
    (i32.const -8)
   )
  )
  (set_global $~lib/allocator/arena/offset
   (get_global $~lib/allocator/arena/startOffset)
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
     (i32.const 87)
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
       (i32.eqz
        (i32.load
         (get_global $std/operator-overloading/s)
        )
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
     (i32.const 93)
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
     (i32.const 99)
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
     (i32.const 105)
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
      (i32.eqz
       (i32.load offset=4
        (get_global $std/operator-overloading/f)
       )
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
     (i32.const 111)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/operator-overloading/p1
   (call $std/operator-overloading/Tester#constructor
    (i32.const 0)
    (i32.const 2)
    (i32.const 3)
   )
  )
  (set_global $std/operator-overloading/p2
   (call $std/operator-overloading/Tester#constructor
    (i32.const 0)
    (i32.const 4)
    (i32.const 5)
   )
  )
  (set_global $std/operator-overloading/p
   (call $std/operator-overloading/Tester.pow
    (get_global $std/operator-overloading/p1)
    (get_global $std/operator-overloading/p2)
   )
  )
  (if
   (i32.eqz
    (i32.and
     (if (result i32)
      (tee_local $0
       (i32.eq
        (i32.load
         (get_global $std/operator-overloading/p)
        )
        (i32.const 16)
       )
      )
      (i32.eq
       (i32.load offset=4
        (get_global $std/operator-overloading/p)
       )
       (i32.const 243)
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
     (i32.const 117)
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
     (i32.const 123)
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
     (i32.const 129)
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
     (i32.const 135)
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
   (call $std/operator-overloading/Tester.equals
    (get_global $std/operator-overloading/eq1)
    (get_global $std/operator-overloading/eq2)
   )
  )
  (if
   (i32.ne
    (get_global $std/operator-overloading/eq)
    (i32.const 1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 141)
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
   (call $std/operator-overloading/Tester.equals
    (get_global $std/operator-overloading/eq3)
    (get_global $std/operator-overloading/eq4)
   )
  )
  (if
   (get_global $std/operator-overloading/eqf)
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 147)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/operator-overloading/eq
   (call $std/operator-overloading/Tester.notEquals
    (get_global $std/operator-overloading/eq1)
    (get_global $std/operator-overloading/eq2)
   )
  )
  (if
   (get_global $std/operator-overloading/eq)
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 151)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/operator-overloading/eqf
   (call $std/operator-overloading/Tester.notEquals
    (get_global $std/operator-overloading/eq3)
    (get_global $std/operator-overloading/eq4)
   )
  )
  (if
   (i32.ne
    (get_global $std/operator-overloading/eqf)
    (i32.const 1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 155)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/operator-overloading/gt1
   (call $std/operator-overloading/Tester#constructor
    (i32.const 0)
    (i32.const 2)
    (i32.const 2147483647)
   )
  )
  (set_global $std/operator-overloading/gt2
   (call $std/operator-overloading/Tester#constructor
    (i32.const 0)
    (i32.const 1)
    (i32.const 0)
   )
  )
  (set_global $std/operator-overloading/gt
   (call $std/operator-overloading/Tester.greater
    (get_global $std/operator-overloading/gt1)
    (get_global $std/operator-overloading/gt2)
   )
  )
  (if
   (i32.ne
    (get_global $std/operator-overloading/gt)
    (i32.const 1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 161)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/operator-overloading/gte1
   (call $std/operator-overloading/Tester#constructor
    (i32.const 0)
    (i32.const 2)
    (i32.const 2)
   )
  )
  (set_global $std/operator-overloading/gte2
   (call $std/operator-overloading/Tester#constructor
    (i32.const 0)
    (i32.const 2)
    (i32.const 2)
   )
  )
  (set_global $std/operator-overloading/gte
   (call $std/operator-overloading/Tester.greaterEquals
    (get_global $std/operator-overloading/gte1)
    (get_global $std/operator-overloading/gte2)
   )
  )
  (if
   (i32.ne
    (get_global $std/operator-overloading/gte)
    (i32.const 1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 167)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/operator-overloading/le1
   (call $std/operator-overloading/Tester#constructor
    (i32.const 0)
    (i32.const 5)
    (i32.const -1)
   )
  )
  (set_global $std/operator-overloading/le2
   (call $std/operator-overloading/Tester#constructor
    (i32.const 0)
    (i32.const 6)
    (i32.const 6)
   )
  )
  (set_global $std/operator-overloading/le
   (call $std/operator-overloading/Tester.less
    (get_global $std/operator-overloading/le1)
    (get_global $std/operator-overloading/le2)
   )
  )
  (if
   (i32.ne
    (get_global $std/operator-overloading/le)
    (i32.const 1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 173)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  (set_global $std/operator-overloading/leq1
   (call $std/operator-overloading/Tester#constructor
    (i32.const 0)
    (i32.const 4)
    (i32.const 3)
   )
  )
  (set_global $std/operator-overloading/leq2
   (call $std/operator-overloading/Tester#constructor
    (i32.const 0)
    (i32.const 4)
    (i32.const 3)
   )
  )
  (set_global $std/operator-overloading/leq
   (call $std/operator-overloading/Tester.lessEquals
    (get_global $std/operator-overloading/leq1)
    (get_global $std/operator-overloading/leq2)
   )
  )
  (if
   (i32.ne
    (get_global $std/operator-overloading/leq)
    (i32.const 1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 179)
     (i32.const 0)
    )
    (unreachable)
   )
  )
 )
)
