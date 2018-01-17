(module
 (type $iiii (func (param i32 i32 i32) (result i32)))
 (type $v (func))
 (global $memset/dest (mut i32) (i32.const 0))
 (global $HEAP_BASE i32 (i32.const 4))
 (memory $0 1)
 (export "memory" (memory $0))
 (start $start)
 (func $memset/memset (; 0 ;) (type $iiii) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i64)
  (block
   (set_local $3
    (get_local $0)
   )
  )
  (if
   (i32.eqz
    (get_local $2)
   )
   (return
    (get_local $3)
   )
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
   (return
    (get_local $3)
   )
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
   (return
    (get_local $3)
   )
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
   (return
    (get_local $3)
   )
  )
  (block
   (set_local $4
    (i32.and
     (i32.sub
      (i32.const 0)
      (get_local $0)
     )
     (i32.const 3)
    )
   )
  )
  (set_local $0
   (i32.add
    (get_local $0)
    (get_local $4)
   )
  )
  (set_local $2
   (i32.sub
    (get_local $2)
    (get_local $4)
   )
  )
  (set_local $2
   (i32.and
    (get_local $2)
    (i32.sub
     (i32.const 0)
     (i32.const 4)
    )
   )
  )
  (block
   (set_local $5
    (i32.mul
     (i32.div_u
      (i32.sub
       (i32.const 0)
       (i32.const 1)
      )
      (i32.const 255)
     )
     (get_local $1)
    )
   )
  )
  (i32.store
   (get_local $0)
   (get_local $5)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 4)
   )
   (get_local $5)
  )
  (if
   (i32.le_u
    (get_local $2)
    (i32.const 8)
   )
   (return
    (get_local $3)
   )
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 4)
   )
   (get_local $5)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 8)
   )
   (get_local $5)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 12)
   )
   (get_local $5)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 8)
   )
   (get_local $5)
  )
  (if
   (i32.le_u
    (get_local $2)
    (i32.const 24)
   )
   (return
    (get_local $3)
   )
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 12)
   )
   (get_local $5)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 16)
   )
   (get_local $5)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 20)
   )
   (get_local $5)
  )
  (i32.store
   (i32.add
    (get_local $0)
    (i32.const 24)
   )
   (get_local $5)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 28)
   )
   (get_local $5)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 24)
   )
   (get_local $5)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 20)
   )
   (get_local $5)
  )
  (i32.store
   (i32.sub
    (i32.add
     (get_local $0)
     (get_local $2)
    )
    (i32.const 16)
   )
   (get_local $5)
  )
  (set_local $4
   (i32.add
    (i32.const 24)
    (i32.and
     (get_local $0)
     (i32.const 4)
    )
   )
  )
  (set_local $0
   (i32.add
    (get_local $0)
    (get_local $4)
   )
  )
  (set_local $2
   (i32.sub
    (get_local $2)
    (get_local $4)
   )
  )
  (block
   (set_local $6
    (i64.or
     (i64.extend_u/i32
      (get_local $5)
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
  (block $break|0
   (loop $continue|0
    (if
     (i32.ge_u
      (get_local $2)
      (i32.const 32)
     )
     (block
      (block
       (i64.store
        (get_local $0)
        (get_local $6)
       )
       (i64.store
        (i32.add
         (get_local $0)
         (i32.const 8)
        )
        (get_local $6)
       )
       (i64.store
        (i32.add
         (get_local $0)
         (i32.const 16)
        )
        (get_local $6)
       )
       (i64.store
        (i32.add
         (get_local $0)
         (i32.const 24)
        )
        (get_local $6)
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
      )
      (br $continue|0)
     )
    )
   )
  )
  (return
   (get_local $3)
  )
 )
 (func $start (; 1 ;) (type $v)
  (set_global $memset/dest
   (get_global $HEAP_BASE)
  )
  (drop
   (call $memset/memset
    (get_global $memset/dest)
    (i32.const 1)
    (i32.const 16)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.load8_u
      (get_global $memset/dest)
     )
     (i32.const 1)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.load8_u
      (i32.add
       (get_global $memset/dest)
       (i32.const 15)
      )
     )
     (i32.const 1)
    )
   )
   (unreachable)
  )
  (drop
   (call $memset/memset
    (i32.add
     (get_global $memset/dest)
     (i32.const 1)
    )
    (i32.const 2)
    (i32.const 14)
   )
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.load8_u
      (get_global $memset/dest)
     )
     (i32.const 1)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.load8_u
      (i32.add
       (get_global $memset/dest)
       (i32.const 1)
      )
     )
     (i32.const 2)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.load8_u
      (i32.add
       (get_global $memset/dest)
       (i32.const 14)
      )
     )
     (i32.const 2)
    )
   )
   (unreachable)
  )
  (if
   (i32.eqz
    (i32.eq
     (i32.load8_u
      (i32.add
       (get_global $memset/dest)
       (i32.const 15)
      )
     )
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
  FUNCTION_PROTOTYPE: memset/memset
  GLOBAL: memset/dest
[program.exports]
  
;)
