(module
 (type $ii (func (param i32) (result i32)))
 (type $v (func))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "ifThenElse" (func $if/ifThenElse))
 (export "ifThen" (func $if/ifThen))
 (export "ifThenElseBlock" (func $if/ifThenElseBlock))
 (export "ifAlwaysReturns" (func $if/ifAlwaysReturns))
 (export "memory" (memory $0))
 (start $start)
 (func $if/ifThenElse (; 0 ;) (type $ii) (param $0 i32) (result i32)
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
  (return
   (i32.const 0)
  )
 )
 (func $if/ifThenElseBlock (; 2 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $if/ifAlwaysReturns (; 3 ;) (type $ii) (param $0 i32) (result i32)
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
 (func $start (; 4 ;) (type $v)
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
   (unreachable)
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
   (unreachable)
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
   (unreachable)
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
   (unreachable)
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
   (unreachable)
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
   (unreachable)
  )
 )
)
(;
[program.elements]
  GLOBAL: NaN
  GLOBAL: Infinity
  FUNCTION_PROTOTYPE: isNaN
  FUNCTION_PROTOTYPE: isFinite
  FUNCTION_PROTOTYPE: clz
  FUNCTION_PROTOTYPE: ctz
  FUNCTION_PROTOTYPE: popcnt
  FUNCTION_PROTOTYPE: rotl
  FUNCTION_PROTOTYPE: rotr
  FUNCTION_PROTOTYPE: abs
  FUNCTION_PROTOTYPE: max
  FUNCTION_PROTOTYPE: min
  FUNCTION_PROTOTYPE: ceil
  FUNCTION_PROTOTYPE: floor
  FUNCTION_PROTOTYPE: copysign
  FUNCTION_PROTOTYPE: nearest
  FUNCTION_PROTOTYPE: reinterpret
  FUNCTION_PROTOTYPE: sqrt
  FUNCTION_PROTOTYPE: trunc
  FUNCTION_PROTOTYPE: load
  FUNCTION_PROTOTYPE: store
  FUNCTION_PROTOTYPE: sizeof
  FUNCTION_PROTOTYPE: select
  FUNCTION_PROTOTYPE: unreachable
  FUNCTION_PROTOTYPE: current_memory
  FUNCTION_PROTOTYPE: grow_memory
  FUNCTION_PROTOTYPE: changetype
  FUNCTION_PROTOTYPE: assert
  FUNCTION_PROTOTYPE: abort
  FUNCTION_PROTOTYPE: i8
  FUNCTION_PROTOTYPE: i16
  FUNCTION_PROTOTYPE: i32
  FUNCTION_PROTOTYPE: i64
  FUNCTION_PROTOTYPE: u8
  FUNCTION_PROTOTYPE: u16
  FUNCTION_PROTOTYPE: u32
  FUNCTION_PROTOTYPE: u64
  FUNCTION_PROTOTYPE: bool
  FUNCTION_PROTOTYPE: f32
  FUNCTION_PROTOTYPE: f64
  FUNCTION_PROTOTYPE: isize
  FUNCTION_PROTOTYPE: usize
  GLOBAL: HEAP_BASE
  FUNCTION_PROTOTYPE: if/ifThenElse
  FUNCTION_PROTOTYPE: if/ifThen
  FUNCTION_PROTOTYPE: if/ifThenElseBlock
  FUNCTION_PROTOTYPE: if/ifAlwaysReturns
[program.exports]
  FUNCTION_PROTOTYPE: if/ifThenElse
  FUNCTION_PROTOTYPE: if/ifThen
  FUNCTION_PROTOTYPE: if/ifThenElseBlock
  FUNCTION_PROTOTYPE: if/ifAlwaysReturns
;)
