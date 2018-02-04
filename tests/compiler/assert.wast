(module
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (import "env" "abort" (func $abort (param i32 i32 i32 i32)))
 (global $HEAP_BASE i32 (i32.const 60))
 (memory $0 1)
 (data (i32.const 8) "\t\00\00\00a\00s\00s\00e\00r\00t\00.\00t\00s\00")
 (data (i32.const 32) "\0c\00\00\00m\00u\00s\00t\00 \00b\00e\00 \00t\00r\00u\00e\00")
 (export "memory" (memory $0))
 (start $start)
 (func $start (; 1 ;) (type $v)
  (local $0 i32)
  ;;@ assert.ts:1:0
  (if
   (i32.eqz
    ;;@ assert.ts:1:7
    (i32.const 1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 1)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ assert.ts:2:0
  (if
   (i32.eqz
    ;;@ assert.ts:2:7
    (i32.const 1)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 2)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ assert.ts:3:0
  (if
   (i32.eqz
    ;;@ assert.ts:3:7
    (i32.gt_s
     (i32.const 1)
     ;;@ assert.ts:3:11
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 3)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ assert.ts:4:0
  (if
   (f64.eq
    ;;@ assert.ts:4:7
    (f64.const 0.5)
    (f64.const 0)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 4)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ assert.ts:5:0
  (if
   (i32.eqz
    ;;@ assert.ts:5:7
    (f64.gt
     (f64.const 0.5)
     ;;@ assert.ts:5:13
     (f64.const 0.4)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 5)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ assert.ts:6:0
  (if
   (i64.eqz
    ;;@ assert.ts:6:7
    (i64.const 4294967296)
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 6)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ assert.ts:7:0
  (if
   (i32.eqz
    ;;@ assert.ts:7:7
    (i64.gt_s
     (i64.const 4294967296)
     ;;@ assert.ts:7:21
     (i64.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 8)
     (i32.const 7)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ assert.ts:10:0
  (if
   ;;@ assert.ts:10:4
   (i32.eqz
    ;;@ assert.ts:10:5
    (if (result i32)
     (i32.eqz
      (tee_local $0
       ;;@ assert.ts:10:12
       (i32.const 1)
      )
     )
     (block
      (call $abort
       ;;@ assert.ts:10:18
       (i32.const 32)
       (i32.const 8)
       (i32.const 10)
       (i32.const 5)
      )
      (unreachable)
     )
     (get_local $0)
    )
   )
   ;;@ assert.ts:11:2
   (unreachable)
  )
 )
)
