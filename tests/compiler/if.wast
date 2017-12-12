(module
 (type $ii (func (param i32) (result i32)))
 (global $HEAP_START i32 (i32.const 4))
 (memory $0 1)
 (export "ifThenElse" (func $if/ifThenElse))
 (export "ifThen" (func $if/ifThen))
 (export "ifThenElseBlock" (func $if/ifThenElseBlock))
 (export "memory" (memory $0))
 (func $if/ifThenElse (; 0 ;) (type $ii) (param $0 i32) (result i32)
  (if
   (get_local $0)
   (return
    (i32.const 1)
   )
   (return
    (i32.const 0)
   )
  )
 )
 (func $if/ifThen (; 1 ;) (type $ii) (param $0 i32) (result i32)
  (if
   (get_local $0)
   (return
    (i32.const 1)
   )
  )
  (return
   (i32.const 0)
  )
 )
 (func $if/ifThenElseBlock (; 2 ;) (type $ii) (param $0 i32) (result i32)
  (if
   (get_local $0)
   (block
    (nop)
    (return
     (i32.const 1)
    )
   )
   (block
    (nop)
    (return
     (i32.const 0)
    )
   )
  )
 )
)
(;
[program.elements]
  clz
  ctz
  popcnt
  rotl
  rotr
  abs
  ceil
  copysign
  floor
  max
  min
  nearest
  sqrt
  trunc
  current_memory
  grow_memory
  unreachable
  load
  store
  reinterpret
  select
  sizeof
  changetype
  isNaN
  isFinite
  assert
  parseInt
  parseFloat
  if/ifThenElse
  if/ifThen
  if/ifThenElseBlock
[program.exports]
  if/ifThenElse
  if/ifThen
  if/ifThenElseBlock
;)
