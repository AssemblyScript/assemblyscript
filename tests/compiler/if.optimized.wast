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
   (i32.const 1)
   (i32.const 0)
   (get_local $0)
  )
 )
 (func $if/ifThen (; 1 ;) (type $ii) (param $0 i32) (result i32)
  (if
   (get_local $0)
   (return
    (i32.const 1)
   )
  )
  (i32.const 0)
 )
 (func $if/ifAlwaysReturns (; 2 ;) (type $ii) (param $0 i32) (result i32)
  (if
   (get_local $0)
   (return
    (i32.const 1)
   )
   (unreachable)
  )
 )
 (func $start (; 3 ;) (type $v)
  (if
   (call $if/ifThenElse
    (i32.const 0)
   )
   (unreachable)
  )
  (if
   (i32.ne
    (call $if/ifThenElse
     (i32.const 1)
    )
    (i32.const 1)
   )
   (unreachable)
  )
  (if
   (call $if/ifThen
    (i32.const 0)
   )
   (unreachable)
  )
  (if
   (i32.ne
    (call $if/ifThen
     (i32.const 1)
    )
    (i32.const 1)
   )
   (unreachable)
  )
  (if
   (call $if/ifThenElse
    (i32.const 0)
   )
   (unreachable)
  )
  (if
   (i32.ne
    (call $if/ifThenElse
     (i32.const 1)
    )
    (i32.const 1)
   )
   (unreachable)
  )
 )
)
