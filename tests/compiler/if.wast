(module
 (type $ii (func (param i32) (result i32)))
 (type $iiiiv (func (param i32 i32 i32 i32)))
 (type $v (func))
 (import "env" "abort" (func $abort (param i32 i32 i32 i32)))
 (global $HEAP_BASE i32 (i32.const 20))
 (memory $0 1)
 (data (i32.const 4) "\05\00\00\00i\00f\00.\00t\00s\00")
 (export "ifThenElse" (func $if/ifThenElse))
 (export "ifThen" (func $if/ifThen))
 (export "ifThenElseBlock" (func $if/ifThenElseBlock))
 (export "ifAlwaysReturns" (func $if/ifAlwaysReturns))
 (export "memory" (memory $0))
 (start $start)
 (func $if/ifThenElse (; 1 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ if.ts:2:2
  (if
   ;;@ if.ts:2:6
   (get_local $0)
   ;;@ if.ts:3:11
   (return
    (i32.const 1)
   )
   ;;@ if.ts:5:11
   (return
    (i32.const 0)
   )
  )
 )
 (func $if/ifThen (; 2 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ if.ts:12:2
  (if
   ;;@ if.ts:12:6
   (get_local $0)
   ;;@ if.ts:13:11
   (return
    (i32.const 1)
   )
  )
  ;;@ if.ts:14:9
  (return
   (i32.const 0)
  )
 )
 (func $if/ifThenElseBlock (; 3 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ if.ts:21:2
  (if
   ;;@ if.ts:21:6
   (get_local $0)
   ;;@ if.ts:21:9
   (block
    ;;@ if.ts:22:4
    (nop)
    ;;@ if.ts:23:11
    (return
     (i32.const 1)
    )
   )
   ;;@ if.ts:24:9
   (block
    ;;@ if.ts:25:4
    (nop)
    ;;@ if.ts:26:11
    (return
     (i32.const 0)
    )
   )
  )
 )
 (func $if/ifAlwaysReturns (; 4 ;) (type $ii) (param $0 i32) (result i32)
  ;;@ if.ts:34:2
  (if
   ;;@ if.ts:34:6
   (get_local $0)
   ;;@ if.ts:35:11
   (return
    (i32.const 1)
   )
   ;;@ if.ts:37:4
   (unreachable)
  )
 )
 (func $start (; 5 ;) (type $v)
  ;;@ if.ts:8:0
  (if
   (i32.eqz
    ;;@ if.ts:8:7
    (i32.eq
     (call $if/ifThenElse
      ;;@ if.ts:8:18
      (i32.const 0)
     )
     ;;@ if.ts:8:24
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 8)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ if.ts:9:0
  (if
   (i32.eqz
    ;;@ if.ts:9:7
    (i32.eq
     (call $if/ifThenElse
      ;;@ if.ts:9:18
      (i32.const 1)
     )
     ;;@ if.ts:9:24
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 9)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ if.ts:17:0
  (if
   (i32.eqz
    ;;@ if.ts:17:7
    (i32.eq
     (call $if/ifThen
      ;;@ if.ts:17:14
      (i32.const 0)
     )
     ;;@ if.ts:17:20
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 17)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ if.ts:18:0
  (if
   (i32.eqz
    ;;@ if.ts:18:7
    (i32.eq
     (call $if/ifThen
      ;;@ if.ts:18:14
      (i32.const 1)
     )
     ;;@ if.ts:18:20
     (i32.const 1)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 18)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ if.ts:30:0
  (if
   (i32.eqz
    ;;@ if.ts:30:7
    (i32.eq
     (call $if/ifThenElseBlock
      ;;@ if.ts:30:23
      (i32.const 0)
     )
     ;;@ if.ts:30:29
     (i32.const 0)
    )
   )
   (block
    (call $abort
     (i32.const 0)
     (i32.const 4)
     (i32.const 30)
     (i32.const 0)
    )
    (unreachable)
   )
  )
  ;;@ if.ts:31:0
  (if
   (i32.eqz
    ;;@ if.ts:31:7
    (i32.eq
     (call $if/ifThenElseBlock
      ;;@ if.ts:31:23
      (i32.const 1)
     )
     ;;@ if.ts:31:29
     (i32.const 1)
    )
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
 )
)
