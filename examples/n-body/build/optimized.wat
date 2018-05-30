(module
 (type $v (func))
 (type $iFFFFFFFi (func (param i32 f64 f64 f64 f64 f64 f64 f64) (result i32)))
 (type $ii (func (param i32) (result i32)))
 (type $iii (func (param i32 i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $iiiv (func (param i32 i32 i32)))
 (type $F (func (result f64)))
 (type $iFv (func (param i32 f64)))
 (type $iF (func (param i32) (result f64)))
 (type $iv (func (param i32)))
 (import "env" "abort" (func $~lib/env/abort (param i32 i32 i32 i32)))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $assembly/index/system (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 40))
 (memory $0 1)
 (data (i32.const 8) "\0d\00\00\00~\00l\00i\00b\00/\00a\00r\00r\00a\00y\00.\00t\00s")
 (export "init" (func $assembly/index/init))
 (export "getBody" (func $assembly/index/getBody))
 (export "step" (func $assembly/index/step))
 (export "bench" (func $assembly/index/bench))
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
      (tee_local $0
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
       (tee_local $2
        (current_memory)
       )
       (i32.const 16)
      )
     )
     (if
      (i32.lt_s
       (grow_memory
        (select
         (get_local $2)
         (tee_local $4
          (tee_local $3
           (i32.shr_u
            (i32.and
             (i32.add
              (i32.sub
               (get_local $0)
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
          (get_local $2)
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
     (get_local $0)
    )
    (return
     (get_local $1)
    )
   )
  )
  (i32.const 0)
 )
 (func $assembly/index/Body#constructor (; 2 ;) (type $iFFFFFFFi) (param $0 i32) (param $1 f64) (param $2 f64) (param $3 f64) (param $4 f64) (param $5 f64) (param $6 f64) (param $7 f64) (result i32)
  (local $8 i32)
  (if (result i32)
   (get_local $0)
   (get_local $0)
   (block (result i32)
    (f64.store
     (tee_local $8
      (call $~lib/allocator/arena/allocate_memory
       (i32.const 56)
      )
     )
     (get_local $1)
    )
    (f64.store offset=8
     (get_local $8)
     (get_local $2)
    )
    (f64.store offset=16
     (get_local $8)
     (get_local $3)
    )
    (f64.store offset=24
     (get_local $8)
     (get_local $4)
    )
    (f64.store offset=32
     (get_local $8)
     (get_local $5)
    )
    (f64.store offset=40
     (get_local $8)
     (get_local $6)
    )
    (f64.store offset=48
     (get_local $8)
     (get_local $7)
    )
    (get_local $8)
   )
  )
 )
 (func $~lib/memory/set_memory (; 3 ;) (type $iiiv) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i64)
  (local $4 i32)
  (if
   (i32.eqz
    (get_local $2)
   )
   (return)
  )
  (i32.store8
   (get_local $0)
   (get_local $1)
  )
  (i32.store8
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 1)
   )
   (get_local $1)
  )
  (if
   (i32.le_u
    (get_local $2)
    (i32.const 2)
   )
   (return)
  )
  (i32.store8
   (i32.add
    (get_local $0)
    (i32.const 1)
   )
   (get_local $1)
  )
  (i32.store8
   (i32.add
    (get_local $0)
    (i32.const 2)
   )
   (get_local $1)
  )
  (i32.store8
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 2)
   )
   (get_local $1)
  )
  (i32.store8
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 3)
   )
   (get_local $1)
  )
  (if
   (i32.le_u
    (get_local $2)
    (i32.const 6)
   )
   (return)
  )
  (i32.store8
   (i32.add
    (get_local $0)
    (i32.const 3)
   )
   (get_local $1)
  )
  (i32.store8
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 4)
   )
   (get_local $1)
  )
  (if
   (i32.le_u
    (get_local $2)
    (i32.const 8)
   )
   (return)
  )
  (i32.store
   (tee_local $0
    (i32.add
     (get_local $0)
     (tee_local $4
      (i32.and
       (i32.sub
        (i32.const 0)
        (get_local $0)
       )
       (i32.const 3)
      )
     )
    )
   )
   (tee_local $1
    (i32.mul
     (i32.and
      (get_local $1)
      (i32.const 255)
     )
     (i32.const 16843009)
    )
   )
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (tee_local $2
      (i32.and
       (i32.sub
        (get_local $2)
        (get_local $4)
       )
       (i32.const -4)
      )
     )
    )
    (i32.const 4)
   )
   (get_local $1)
  )
  (if
   (i32.le_u
    (get_local $2)
    (i32.const 8)
   )
   (return)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (get_local $1)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (get_local $1)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 12)
   )
   (get_local $1)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 8)
   )
   (get_local $1)
  )
  (if
   (i32.le_u
    (get_local $2)
    (i32.const 24)
   )
   (return)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 12)
   )
   (get_local $1)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 16)
   )
   (get_local $1)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 20)
   )
   (get_local $1)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 24)
   )
   (get_local $1)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 28)
   )
   (get_local $1)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 24)
   )
   (get_local $1)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 20)
   )
   (get_local $1)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 16)
   )
   (get_local $1)
  )
  (set_local $0
   (i32.add
    (get_local $0)
    (tee_local $4
     (i32.add
      (i32.and
       (get_local $0)
       (i32.const 4)
      )
      (i32.const 24)
     )
    )
   )
  )
  (set_local $2
   (i32.sub
    (get_local $2)
    (get_local $4)
   )
  )
  (set_local $3
   (i64.or
    (i64.extend_u/i32
     (get_local $1)
    )
    (i64.shl
     (i64.extend_u/i32
      (get_local $1)
     )
     (i64.const 32)
    )
   )
  )
  (loop $continue|0
   (if
    (i32.ge_u
     (get_local $2)
     (i32.const 32)
    )
    (block
     (i64.store
      (get_local $0)
      (get_local $3)
     )
     (i64.store
      (i32.add
       (get_local $0)
       (i32.const 8)
      )
      (get_local $3)
     )
     (i64.store
      (i32.add
       (get_local $0)
       (i32.const 16)
      )
      (get_local $3)
     )
     (i64.store
      (i32.add
       (get_local $0)
       (i32.const 24)
      )
      (get_local $3)
     )
     (set_local $2
      (i32.sub
       (get_local $2)
       (i32.const 32)
      )
     )
     (set_local $0
      (i32.add
       (get_local $0)
       (i32.const 32)
      )
     )
     (br $continue|0)
    )
   )
  )
 )
 (func $~lib/array/Array<Body>#constructor (; 4 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.gt_u
    (get_local $1)
    (i32.const 268435454)
   )
   (block
    (call $~lib/env/abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 23)
     (i32.const 39)
    )
    (unreachable)
   )
  )
  (i32.store
   (tee_local $4
    (call $~lib/allocator/arena/allocate_memory
     (i32.shl
      (i32.const 1)
      (i32.sub
       (i32.const 32)
       (i32.clz
        (i32.add
         (tee_local $2
          (tee_local $3
           (i32.shl
            (get_local $1)
            (i32.const 2)
           )
          )
         )
         (i32.const 7)
        )
       )
      )
     )
    )
   )
   (get_local $2)
  )
  (set_local $2
   (get_local $4)
  )
  (if
   (i32.eqz
    (get_local $0)
   )
   (block
    (i32.store
     (tee_local $0
      (call $~lib/allocator/arena/allocate_memory
       (i32.const 8)
      )
     )
     (i32.const 0)
    )
    (i32.store offset=4
     (get_local $0)
     (i32.const 0)
    )
   )
  )
  (i32.store
   (get_local $0)
   (get_local $2)
  )
  (i32.store offset=4
   (get_local $0)
   (get_local $1)
  )
  (call $~lib/memory/set_memory
   (i32.add
    (get_local $2)
    (i32.const 8)
   )
   (i32.const 0)
   (get_local $3)
  )
  (get_local $0)
 )
 (func $assembly/index/NBodySystem#constructor (; 5 ;) (type $iii) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 f64)
  (local $6 f64)
  (local $7 f64)
  (local $8 i32)
  (set_local $8
   (i32.load offset=4
    (get_local $1)
   )
  )
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_s
      (get_local $2)
      (get_local $8)
     )
    )
    (set_local $4
     (f64.load offset=48
      (tee_local $3
       (i32.load offset=8
        (i32.add
         (i32.load
          (get_local $1)
         )
         (i32.shl
          (get_local $2)
          (i32.const 2)
         )
        )
       )
      )
     )
    )
    (set_local $5
     (f64.add
      (get_local $5)
      (f64.mul
       (f64.load offset=24
        (get_local $3)
       )
       (get_local $4)
      )
     )
    )
    (set_local $6
     (f64.add
      (get_local $6)
      (f64.mul
       (f64.load offset=32
        (get_local $3)
       )
       (get_local $4)
      )
     )
    )
    (set_local $7
     (f64.add
      (get_local $7)
      (f64.mul
       (f64.load offset=40
        (get_local $3)
       )
       (get_local $4)
      )
     )
    )
    (set_local $2
     (i32.add
      (get_local $2)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (f64.store offset=24
   (tee_local $2
    (if (result i32)
     (i32.lt_u
      (i32.const 0)
      (i32.shr_u
       (i32.load
        (tee_local $2
         (i32.load
          (get_local $1)
         )
        )
       )
       (i32.const 2)
      )
     )
     (i32.load offset=8
      (get_local $2)
     )
     (unreachable)
    )
   )
   (f64.div
    (f64.neg
     (get_local $5)
    )
    (f64.const 39.47841760435743)
   )
  )
  (f64.store offset=32
   (get_local $2)
   (f64.div
    (f64.neg
     (get_local $6)
    )
    (f64.const 39.47841760435743)
   )
  )
  (f64.store offset=40
   (get_local $2)
   (f64.div
    (f64.neg
     (get_local $7)
    )
    (f64.const 39.47841760435743)
   )
  )
  (if (result i32)
   (get_local $0)
   (get_local $0)
   (block (result i32)
    (i32.store
     (tee_local $2
      (call $~lib/allocator/arena/allocate_memory
       (i32.const 4)
      )
     )
     (get_local $1)
    )
    (get_local $2)
   )
  )
 )
 (func $assembly/index/init (; 6 ;) (type $v)
  (local $0 i32)
  (local $1 i32)
  (local $2 i32)
  (set_global $assembly/index/system
   (call $assembly/index/NBodySystem#constructor
    (i32.const 0)
    (block (result i32)
     (set_local $0
      (tee_local $1
       (call $~lib/array/Array<Body>#constructor
        (i32.const 0)
        (i32.const 5)
       )
      )
     )
     (set_local $2
      (call $assembly/index/Body#constructor
       (i32.const 0)
       (f64.const 0)
       (f64.const 0)
       (f64.const 0)
       (f64.const 0)
       (f64.const 0)
       (f64.const 0)
       (f64.const 39.47841760435743)
      )
     )
     (i32.store offset=8
      (i32.load
       (get_local $0)
      )
      (get_local $2)
     )
     (set_local $0
      (call $assembly/index/Body#constructor
       (i32.const 0)
       (f64.const 4.841431442464721)
       (f64.const -1.1603200440274284)
       (f64.const -0.10362204447112311)
       (f64.const 0.606326392995832)
       (f64.const 2.81198684491626)
       (f64.const -0.02521836165988763)
       (f64.const 0.03769367487038949)
      )
     )
     (i32.store offset=8
      (i32.add
       (i32.load
        (get_local $1)
       )
       (i32.const 4)
      )
      (get_local $0)
     )
     (set_local $0
      (call $assembly/index/Body#constructor
       (i32.const 0)
       (f64.const 8.34336671824458)
       (f64.const 4.124798564124305)
       (f64.const -0.4035234171143214)
       (f64.const -1.0107743461787924)
       (f64.const 1.8256623712304119)
       (f64.const 0.008415761376584154)
       (f64.const 0.011286326131968767)
      )
     )
     (i32.store offset=8
      (i32.add
       (i32.load
        (get_local $1)
       )
       (i32.const 8)
      )
      (get_local $0)
     )
     (set_local $0
      (call $assembly/index/Body#constructor
       (i32.const 0)
       (f64.const 12.894369562139131)
       (f64.const -15.111151401698631)
       (f64.const -0.22330757889265573)
       (f64.const 1.0827910064415354)
       (f64.const 0.8687130181696082)
       (f64.const -0.010832637401363636)
       (f64.const 1.7237240570597112e-03)
      )
     )
     (i32.store offset=8
      (i32.add
       (i32.load
        (get_local $1)
       )
       (i32.const 12)
      )
      (get_local $0)
     )
     (set_local $0
      (call $assembly/index/Body#constructor
       (i32.const 0)
       (f64.const 15.379697114850917)
       (f64.const -25.919314609987964)
       (f64.const 0.17925877295037118)
       (f64.const 0.979090732243898)
       (f64.const 0.5946989986476762)
       (f64.const -0.034755955504078104)
       (f64.const 2.0336868699246304e-03)
      )
     )
     (i32.store offset=8
      (i32.add
       (i32.load
        (get_local $1)
       )
       (i32.const 16)
      )
      (get_local $0)
     )
     (get_local $1)
    )
   )
  )
 )
 (func $assembly/index/getBody (; 7 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (if (result i32)
   (i32.lt_u
    (get_local $0)
    (i32.load offset=4
     (tee_local $1
      (i32.load
       (get_global $assembly/index/system)
      )
     )
    )
   )
   (if (result i32)
    (i32.lt_u
     (get_local $0)
     (i32.shr_u
      (i32.load
       (tee_local $1
        (i32.load
         (get_local $1)
        )
       )
      )
      (i32.const 2)
     )
    )
    (i32.load offset=8
     (i32.add
      (get_local $1)
      (i32.shl
       (get_local $0)
       (i32.const 2)
      )
     )
    )
    (unreachable)
   )
   (i32.const 0)
  )
 )
 (func $assembly/index/NBodySystem#advance (; 8 ;) (type $iFv) (param $0 i32) (param $1 f64)
  (local $2 i32)
  (local $3 f64)
  (local $4 i32)
  (local $5 f64)
  (local $6 f64)
  (local $7 f64)
  (local $8 i32)
  (local $9 f64)
  (local $10 f64)
  (local $11 f64)
  (local $12 f64)
  (local $13 i32)
  (local $14 i32)
  (local $15 f64)
  (local $16 f64)
  (local $17 f64)
  (local $18 f64)
  (set_local $14
   (i32.load offset=4
    (tee_local $13
     (i32.load
      (get_local $0)
     )
    )
   )
  )
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_u
      (get_local $4)
      (get_local $14)
     )
    )
    (set_local $15
     (f64.load
      (tee_local $0
       (i32.load offset=8
        (i32.add
         (i32.load
          (get_local $13)
         )
         (i32.shl
          (get_local $4)
          (i32.const 2)
         )
        )
       )
      )
     )
    )
    (set_local $16
     (f64.load offset=8
      (get_local $0)
     )
    )
    (set_local $17
     (f64.load offset=16
      (get_local $0)
     )
    )
    (set_local $5
     (f64.load offset=24
      (get_local $0)
     )
    )
    (set_local $6
     (f64.load offset=32
      (get_local $0)
     )
    )
    (set_local $7
     (f64.load offset=40
      (get_local $0)
     )
    )
    (set_local $18
     (f64.load offset=48
      (get_local $0)
     )
    )
    (block $break|1
     (set_local $8
      (i32.add
       (get_local $4)
       (i32.const 1)
      )
     )
     (loop $repeat|1
      (br_if $break|1
       (i32.ge_u
        (get_local $8)
        (get_local $14)
       )
      )
      (set_local $3
       (f64.mul
        (get_local $18)
        (tee_local $9
         (f64.div
          (get_local $1)
          (f64.mul
           (tee_local $3
            (f64.add
             (f64.add
              (f64.mul
               (tee_local $10
                (f64.sub
                 (get_local $15)
                 (f64.load
                  (tee_local $2
                   (i32.load offset=8
                    (i32.add
                     (i32.load
                      (get_local $13)
                     )
                     (i32.shl
                      (get_local $8)
                      (i32.const 2)
                     )
                    )
                   )
                  )
                 )
                )
               )
               (get_local $10)
              )
              (f64.mul
               (tee_local $11
                (f64.sub
                 (get_local $16)
                 (f64.load offset=8
                  (get_local $2)
                 )
                )
               )
               (get_local $11)
              )
             )
             (f64.mul
              (tee_local $12
               (f64.sub
                (get_local $17)
                (f64.load offset=16
                 (get_local $2)
                )
               )
              )
              (get_local $12)
             )
            )
           )
           (f64.sqrt
            (get_local $3)
           )
          )
         )
        )
       )
      )
      (set_local $5
       (f64.sub
        (get_local $5)
        (f64.mul
         (get_local $10)
         (tee_local $9
          (f64.mul
           (f64.load offset=48
            (get_local $2)
           )
           (get_local $9)
          )
         )
        )
       )
      )
      (set_local $6
       (f64.sub
        (get_local $6)
        (f64.mul
         (get_local $11)
         (get_local $9)
        )
       )
      )
      (set_local $7
       (f64.sub
        (get_local $7)
        (f64.mul
         (get_local $12)
         (get_local $9)
        )
       )
      )
      (f64.store offset=24
       (get_local $2)
       (f64.add
        (f64.load offset=24
         (get_local $2)
        )
        (f64.mul
         (get_local $10)
         (get_local $3)
        )
       )
      )
      (f64.store offset=32
       (get_local $2)
       (f64.add
        (f64.load offset=32
         (get_local $2)
        )
        (f64.mul
         (get_local $11)
         (get_local $3)
        )
       )
      )
      (f64.store offset=40
       (get_local $2)
       (f64.add
        (f64.load offset=40
         (get_local $2)
        )
        (f64.mul
         (get_local $12)
         (get_local $3)
        )
       )
      )
      (set_local $8
       (i32.add
        (get_local $8)
        (i32.const 1)
       )
      )
      (br $repeat|1)
     )
    )
    (f64.store offset=24
     (get_local $0)
     (get_local $5)
    )
    (f64.store offset=32
     (get_local $0)
     (get_local $6)
    )
    (f64.store offset=40
     (get_local $0)
     (get_local $7)
    )
    (f64.store
     (get_local $0)
     (f64.add
      (f64.load
       (get_local $0)
      )
      (f64.mul
       (get_local $1)
       (get_local $5)
      )
     )
    )
    (f64.store offset=8
     (get_local $0)
     (f64.add
      (f64.load offset=8
       (get_local $0)
      )
      (f64.mul
       (get_local $1)
       (get_local $6)
      )
     )
    )
    (f64.store offset=16
     (get_local $0)
     (f64.add
      (f64.load offset=16
       (get_local $0)
      )
      (f64.mul
       (get_local $1)
       (get_local $7)
      )
     )
    )
    (set_local $4
     (i32.add
      (get_local $4)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
 )
 (func $assembly/index/NBodySystem#energy (; 9 ;) (type $iF) (param $0 i32) (result f64)
  (local $1 f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 f64)
  (local $7 f64)
  (local $8 f64)
  (local $9 f64)
  (local $10 f64)
  (block $break|0
   (set_local $5
    (i32.load offset=4
     (tee_local $4
      (i32.load
       (get_local $0)
      )
     )
    )
   )
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_u
      (get_local $2)
      (get_local $5)
     )
    )
    (set_local $7
     (f64.load
      (tee_local $0
       (i32.load offset=8
        (i32.add
         (i32.load
          (get_local $4)
         )
         (i32.shl
          (get_local $2)
          (i32.const 2)
         )
        )
       )
      )
     )
    )
    (set_local $8
     (f64.load offset=8
      (get_local $0)
     )
    )
    (set_local $9
     (f64.load offset=16
      (get_local $0)
     )
    )
    (set_local $1
     (f64.add
      (get_local $1)
      (f64.mul
       (f64.mul
        (f64.const 0.5)
        (tee_local $10
         (f64.load offset=48
          (get_local $0)
         )
        )
       )
       (f64.add
        (f64.add
         (f64.mul
          (tee_local $1
           (f64.load offset=24
            (get_local $0)
           )
          )
          (get_local $1)
         )
         (f64.mul
          (tee_local $1
           (f64.load offset=32
            (get_local $0)
           )
          )
          (get_local $1)
         )
        )
        (f64.mul
         (tee_local $1
          (f64.load offset=40
           (get_local $0)
          )
         )
         (get_local $1)
        )
       )
      )
     )
    )
    (block $break|1
     (set_local $0
      (i32.add
       (get_local $2)
       (i32.const 1)
      )
     )
     (loop $repeat|1
      (br_if $break|1
       (i32.ge_u
        (get_local $0)
        (get_local $5)
       )
      )
      (set_local $6
       (f64.sub
        (get_local $7)
        (f64.load
         (tee_local $3
          (i32.load offset=8
           (i32.add
            (i32.load
             (get_local $4)
            )
            (i32.shl
             (get_local $0)
             (i32.const 2)
            )
           )
          )
         )
        )
       )
      )
      (set_local $1
       (f64.sub
        (get_local $1)
        (f64.div
         (f64.mul
          (get_local $10)
          (f64.load offset=48
           (get_local $3)
          )
         )
         (f64.sqrt
          (f64.add
           (f64.add
            (f64.mul
             (get_local $6)
             (get_local $6)
            )
            (f64.mul
             (tee_local $1
              (f64.sub
               (get_local $8)
               (f64.load offset=8
                (get_local $3)
               )
              )
             )
             (get_local $1)
            )
           )
           (f64.mul
            (tee_local $1
             (f64.sub
              (get_local $9)
              (f64.load offset=16
               (get_local $3)
              )
             )
            )
            (get_local $1)
           )
          )
         )
        )
       )
      )
      (set_local $0
       (i32.add
        (get_local $0)
        (i32.const 1)
       )
      )
      (br $repeat|1)
     )
    )
    (set_local $2
     (i32.add
      (get_local $2)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
  (get_local $1)
 )
 (func $assembly/index/step (; 10 ;) (type $F) (result f64)
  (call $assembly/index/NBodySystem#advance
   (get_global $assembly/index/system)
   (f64.const 0.01)
  )
  (call $assembly/index/NBodySystem#energy
   (get_global $assembly/index/system)
  )
 )
 (func $assembly/index/bench (; 11 ;) (type $iv) (param $0 i32)
  (local $1 i32)
  (block $break|0
   (loop $repeat|0
    (br_if $break|0
     (i32.ge_u
      (get_local $1)
      (get_local $0)
     )
    )
    (call $assembly/index/NBodySystem#advance
     (get_global $assembly/index/system)
     (f64.const 0.01)
    )
    (set_local $1
     (i32.add
      (get_local $1)
      (i32.const 1)
     )
    )
    (br $repeat|0)
   )
  )
 )
 (func $start (; 12 ;) (type $v)
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
 )
)
