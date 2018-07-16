[memory-imports] shared=true(module
 (type $i (func (result i32)))
 (type $iv (func (param i32)))
 (type $iiiiii (func (param i32 i32 i32 i32 i32) (result i32)))
 (type $iiiiiii (func (param i32 i32 i32 i32 i32 i32) (result i32)))
 (type $ii (func (param i32) (result i32)))
 (type $v (func))
 (import "index" "onTraceJobComplete" (func $assembly/index/onTraceJobComplete (param i32)))
 (import "env" "memory" (memory $0 (shared 0 65534)))
 (global $~lib/allocator/arena/startOffset (mut i32) (i32.const 0))
 (global $~lib/allocator/arena/offset (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 8))
 (export "loadScene" (func $assembly/index/loadScene))
 (export "trace" (func $assembly/index/trace))
 (export "createTraceJob" (func $assembly/index/createTraceJob))
 (export "createTraceParameters" (func $assembly/index/createTraceParameters))
 (export "memory" (memory $0))
 (start $start)
 (func $assembly/index/loadScene (; 1 ;) (type $i) (result i32)
  (i32.const 1)
 )
 (func $assembly/index/trace (; 2 ;) (type $iv) (param $0 i32)
  (call $assembly/index/onTraceJobComplete
   (get_local $0)
  )
 )
 (func $~lib/allocator/arena/allocate_memory (; 3 ;) (type $ii) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
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
         (i32.gt_s
          (get_local $2)
          (get_local $3)
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
 (func $assembly/src/worker/trace-job/TraceJob#constructor (; 4 ;) (type $iiiiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (param $5 i32) (result i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (block
    (i32.store8
     (tee_local $0
      (call $~lib/allocator/arena/allocate_memory
       (i32.const 36)
      )
     )
     (i32.const 0)
    )
    (f64.store offset=8
     (get_local $0)
     (f64.const 0)
    )
    (i32.store offset=16
     (get_local $0)
     (i32.const 0)
    )
    (i32.store offset=20
     (get_local $0)
     (get_local $2)
    )
    (i32.store offset=24
     (get_local $0)
     (get_local $3)
    )
    (i32.store offset=28
     (get_local $0)
     (get_local $4)
    )
    (i32.store offset=32
     (get_local $0)
     (get_local $5)
    )
   )
  )
  (get_local $0)
 )
 (func $assembly/index/createTraceJob (; 5 ;) (type $iiiiii) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (call $assembly/src/worker/trace-job/TraceJob#constructor
   (i32.const 0)
   (get_local $0)
   (get_local $1)
   (get_local $2)
   (get_local $3)
   (get_local $4)
  )
 )
 (func $assembly/index/createTraceParameters (; 6 ;) (type $i) (result i32)
  (local $0 i32)
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
  (get_local $0)
 )
 (func $start (; 7 ;) (type $v)
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
