(module
 (type $ii (func (param i32) (result i32)))
 (type $v (func))
 (memory $0 1)
 (export "ifThenElse" (func $if/ifThenElse))
 (export "ifThen" (func $if/ifThen))
 (export "ifThenElseBlock" (func $if/ifThenElse))
 (export "ifAlwaysReturns" (func $if/ifAlwaysReturns))
 (export "memory" (memory $0))
 (start $start)
 (func $if/ifThenElse (; 0 ;) (type $ii) (param $0 i32) (result i32)
  (select
   ;;@ if.ts:3:11
   (i32.const 1)
   ;;@ if.ts:5:11
   (i32.const 0)
   ;;@ if.ts:2:6
   (get_local $0)
  )
 )
 (func $if/ifThen (; 1 ;) (type $ii) (param $0 i32) (result i32)
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
  (i32.const 0)
 )
 (func $if/ifAlwaysReturns (; 2 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $start (; 3 ;) (type $v)
  ;;@ if.ts:8:0
  (if
   ;;@ if.ts:8:7
   (call $if/ifThenElse
    ;;@ if.ts:8:18
    (i32.const 0)
   )
   (unreachable)
  )
  ;;@ if.ts:9:0
  (if
   ;;@ if.ts:9:7
   (i32.ne
    (call $if/ifThenElse
     ;;@ if.ts:9:18
     (i32.const 1)
    )
    ;;@ if.ts:9:24
    (i32.const 1)
   )
   (unreachable)
  )
  ;;@ if.ts:17:0
  (if
   ;;@ if.ts:17:7
   (call $if/ifThen
    ;;@ if.ts:17:14
    (i32.const 0)
   )
   (unreachable)
  )
  ;;@ if.ts:18:0
  (if
   ;;@ if.ts:18:7
   (i32.ne
    (call $if/ifThen
     ;;@ if.ts:18:14
     (i32.const 1)
    )
    ;;@ if.ts:18:20
    (i32.const 1)
   )
   (unreachable)
  )
  ;;@ if.ts:30:0
  (if
   ;;@ if.ts:30:7
   (call $if/ifThenElse
    ;;@ if.ts:30:23
    (i32.const 0)
   )
   (unreachable)
  )
  ;;@ if.ts:31:0
  (if
   ;;@ if.ts:31:7
   (i32.ne
    (call $if/ifThenElse
     ;;@ if.ts:31:23
     (i32.const 1)
    )
    ;;@ if.ts:31:29
    (i32.const 1)
   )
   (unreachable)
  )
 )
)
